# py code beginning

import streamlit as st
import numpy as np
import time
from PIL import Image
import torch
import os
import pandas as pd
from pathlib import Path
from typing import Dict, List, Tuple, Optional
from torchvision import transforms, models
import torch.nn as nn

import random

from fpdf import FPDF
from llama_index.llms.ollama import Ollama
import base64

import subprocess
import sys
import re

from llama_index.core.llms import ChatMessage, MessageRole  # for Ollama path
from openai import OpenAI  # already used for LM Studio Option A
    
import sys, os
# Try to switch the console to UTF-8
try:
    os.system("chcp 65001 >nul")
except Exception:
    pass
try:
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")
except Exception:
    pass

import psycopg2
import re

from psycopg2.extras import DictCursor
from psycopg2.extras import execute_values

from datetime import datetime

if "user_id" not in st.session_state:
    st.session_state["user_id"] = datetime.now().strftime("%Y%m%d_%H%M%S")

import subprocess

# --- 定義 Ollama 自動偵測函式 ---
def get_ollama_models():
    """使用內建 subprocess 抓取 ollama 清單"""
    try:
        # 執行系統指令
        result = subprocess.run(['ollama', 'list'], capture_output=True, text=True, encoding='utf-8')
        if result.returncode == 0:
            lines = result.stdout.strip().split('\n')
            if len(lines) > 1:
                # 抓取第一欄的模型名稱
                return [line.split()[0] for line in lines[1:] if line.strip()]
    except:
        pass
    # 如果偵測失敗，回傳一個基礎清單當備案
    return ["llama3:latest", "gemma2:latest"]
    
# === Config ===

# Example model id as shown by LM Studio (/v1/models or the Models tab):
LMSTUDIO_MODEL_ID = "llama3_2_3b"     # adjust if yours differs
LMSTUDIO_MODEL_ID_2k = "llama-3.2-3b-instruct"     # adjust if yours differs
st.set_page_config(page_title="One-Day Trip LLM Recommender", layout="centered")

LLM_BASE_URL = "http://127.0.0.1:11434"
LLM_TIMEOUT  = 120

LMSTUDIO_BASE_URL = "http://127.0.0.1:1234/v1"  # LM Studio local API
BACKEND = st.sidebar.selectbox("LLM 後端", ["Ollama", "LM Studio"], index=0)

TOP_K = 5
LANG_LABEL = {
    "zh": "繁體中文", 
    "en": "English", 
    "ja": "日本語"
}

REPORT_NAME_PREFIX = "llm_oneday_trip" # report name

image_map = {
    ("1", "5"): "label-15.png",
    ("1", "4"): "label-14.png",
    ("1", "3"): "label-13.png",
    ("1", "2"): "label-12.png",
    ("1", "1"): "label-11.png",
    ("2", "5"): "label-25.png",
    ("2", "4"): "label-24.png",
    ("2", "3"): "label-23.png",
    ("2", "2"): "label-22.png",
    ("2", "1"): "label-21.png",
}

niimbot_map = {
    ("1", "5"): "niimbot-15.png",
    ("1", "4"): "niimbot-14.png",
    ("1", "3"): "niimbot-13.png",
    ("1", "2"): "niimbot-12.png",
    ("1", "1"): "niimbot-11.png",
    ("2", "5"): "niimbot-25.png",
    ("2", "4"): "niimbot-24.png",
    ("2", "3"): "niimbot-23.png",
    ("2", "2"): "niimbot-22.png",
    ("2", "1"): "niimbot-21.png",
}


# --- 1. 資料庫連線與資料抓取函式 ---
def get_conn():
    """管理 PostgreSQL 連線池"""
    global _global_conn
    try:
        if _global_conn is None or _global_conn.closed != 0:
            _global_conn = psycopg2.connect(
                host="localhost", port=5432,
                database="tripdb", user="trip", password="trip123"
            )
    except Exception:
        _global_conn = psycopg2.connect(
            host="localhost", port=5432,
            database="tripdb", user="trip", password="trip123"
        )
    return _global_conn

@st.cache_data(ttl=600)  # 使用快取避免每次重新讀取資料庫

def load_all_languages_from_db():
    """一次性讀取 UI 與 鞋子翻譯，減少資料庫負擔"""
    conn = get_conn()
    try:
        # 1. 抓取 UI 文字
        df_ui = pd.read_sql("SELECT key, zh_text, en_text, ja_text FROM ui_texts", conn)
        ui_bundle = {
            "zh": df_ui.set_index("key")["zh_text"].to_dict(),
            "en": df_ui.set_index("key")["en_text"].to_dict(),
            "ja": df_ui.set_index("key")["ja_text"].to_dict(),
        }
        
        # 2. 抓取 鞋子名稱
        df_shoe = pd.read_sql("SELECT shoe_name_en, shoe_name_zh, shoe_name_ja FROM shoe_language", conn)
        shoe_bundle = {
            "zh": dict(zip(df_shoe["shoe_name_en"], df_shoe["shoe_name_zh"])),
            "en": dict(zip(df_shoe["shoe_name_en"], df_shoe["shoe_name_en"])),
            "ja": dict(zip(df_shoe["shoe_name_en"], df_shoe["shoe_name_ja"])),
        }
        return ui_bundle, shoe_bundle
    except Exception as e:
        st.error(f"❌ 資料庫載入失敗: {e}")
        return {"zh":{},"en":{},"ja":{}}, {"zh":{},"en":{},"ja":{}}

# --- 2. 初始化 Session State (確保資料存在) ---
if "ui_bundle" not in st.session_state or "shoe_bundle" not in st.session_state:
    ui, shoe = load_all_languages_from_db()
    st.session_state.ui_bundle = ui
    st.session_state.shoe_bundle = shoe

def build_reverse_shoe_map(shoe_bundle):
    reverse_map = {}
    for lang, mapping in shoe_bundle.items():
        reverse_map[lang] = {v: k for k, v in mapping.items()}
    return reverse_map

if "shoe_reverse_bundle" not in st.session_state:
    st.session_state.shoe_reverse_bundle = build_reverse_shoe_map(st.session_state.shoe_bundle)

if "ui_lang" not in st.session_state:
    st.session_state.ui_lang = "zh"

# --- 3. 側邊欄語言切換 (這會觸發全頁 rerun) ---
LANG_LABEL = {"zh": "繁體中文", "en": "English", "ja": "日本語"}

# 這裡直接連動 ui_lang，當選單改變，程式會重新從頂部執行
st.session_state.ui_lang = st.sidebar.selectbox(
    "🌐 選擇語言 / Language",
    options=list(LANG_LABEL.keys()),
    format_func=lambda x: LANG_LABEL[x],
    index=list(LANG_LABEL.keys()).index(st.session_state.ui_lang)
)

# --- 4. 定義當前語系物件 (L 與 S) ---
L = st.session_state.ui_bundle.get(st.session_state.ui_lang, st.session_state.ui_bundle["zh"])
S = st.session_state.shoe_bundle.get(st.session_state.ui_lang, st.session_state.shoe_bundle["zh"])

cat_map_full = {
    "place": L.get("all_categories_p"),
    "eat": L.get("all_categories_e"),
    "gift": L.get("all_categories_g")
}

# --- Length controls (global) ---
PLACE_INTRO_MIN_CHARS = 120        # if shorter than this, expand once
            # max tokens/words the LLM may generate
FALLBACK_CITY_DEFAULT = "宜蘭縣頭城鎮"  # 頭城預設安全地名
# Intro length limits: chars for zh/ja, words for en
PLACE_INTRO_MAX_LEN = {"zh": 280, "ja": 280}
PLACE_INTRO_EN_MAX_WORDS = 80

# --- LLM defaults ---
LLM_TEMPERATURE = 0.4
LLM_TOP_P = 0.85
LLM_REPEAT_PENALTY = 1.2
LLM_NUM_CTX = 4096
LLM_NUM_PREDICT = 320

# Summary target lengths
SUMMARY_WORD_LIMIT = 200  # zh/ja: ~chars; en: ~words
word_limit = 300

DIRECT_SHOE_IMAGE = True

FORCE_ZH_OUTPUT = False

ATTRIBUTE_MODEL_WEIGHTS = "../model/best_shoe.pt"  #shoe_cls_resnet.pth

NUM_ATTRIBUTES = 5

DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")

try:
    BASE_DIR = Path(__file__).parent.resolve()
except NameError:
    BASE_DIR = Path.cwd()

IMAGE_DIR = "../label/"

# Where you pre-unzipped the three bundles
ARTIF_DIRS = {
    "places": "../model/places",
    "foods":  "../model/foods",
    "gifts":  "../model/gifts",
}

def normalize_deepfm_item_id(raw_id: str) -> str | None:
    """
    將 DeepFM item id（like-p2 / like-g4）轉成 items code（P-2 / G-4）
    """
    if not raw_id:
        return None

    if raw_id.startswith("like-"):
        body = raw_id.replace("like-", "")
        prefix = body[0].upper()   # p / g / e → P / G / E
        number = body[1:]
        return f"{prefix}-{number}"

    return raw_id

# --- 1. 定義抓取資料的工具 (這只是工具，還沒執行) ---
@st.cache_data
def load_items(lang="zh"):
    conn = get_conn()
    cur = conn.cursor()
    name_col = f"item_name_{lang}"
    
    cur.execute(f"SELECT place_code, {name_col}, type, location FROM items")
    
    data = {}
    for code, name, type_str, location in cur.fetchall():
        data[code] = {
            "place_code": code,
            "items_name": name,  # 👈 確保這裡叫 items_name，對應後面的 display
            "type": type_str,
            "location": location
        }
    cur.close()
    conn.close() # 記得關閉連線
    return data

@st.cache_data
def build_code_index(items_dict):
    new_index = {}
    for code, info in items_dict.items():
        new_index[code] = {
            # 使用 .get 預防萬一，如果找不到 Key 至少不會崩潰
            "display": info.get("items_name", "Unknown"), 
            "type": info.get("type", "unknown")
        }
    return new_index

# ⭐ 語言變更時，重新載入與語言相關的資料
if "last_lang" not in st.session_state:
    st.session_state.last_lang = st.session_state.ui_lang

if st.session_state.last_lang != st.session_state.ui_lang:

    # 更新記錄的語言
    st.session_state.last_lang = st.session_state.ui_lang

    # 重新載入 items
    ITEM_INFO = load_items(st.session_state.ui_lang)
    CODE_INDEX = build_code_index(ITEM_INFO)

    # 清空會依賴語言的快取資料
    st.session_state.recommendations = None
    st.session_state.overall_text = None
    
# --- 2. 真正的初始化執行---
# 這裡才是程式啟動時會跑的地方
current_lang = st.session_state.get("ui_lang", "zh")

# 呼叫工具，把結果存進 ITEM_INFO
ITEM_INFO = load_items(st.session_state.ui_lang)

LABEL_ZH = {code: info['items_name'] for code, info in ITEM_INFO.items()}

# 呼叫工具，建立索引
CODE_INDEX = build_code_index(ITEM_INFO)

def normalize_topk_to_en(topk_str, lang):
    reverse_map = st.session_state.shoe_reverse_bundle.get(lang, {})
    
    pairs = topk_str.split("|")
    new_pairs = []
    
    for p in pairs:
        try:
            name, score = p.split(":")
            name_en = reverse_map.get(name, name)  # 🔥 關鍵
            new_pairs.append(f"{name_en}:{float(score):.4f}")
        except:
            continue
    
    return "|".join(new_pairs)
    
# UI 顯示名稱的對照（從 L 抓取）
# 假設 ui_text 有 'cat_place': '景點', 'cat_eat': '美食'...
def get_category_options():
    return {
        L.get("cat_place", "Attractions"): "place",
        L.get("cat_eat", "Food"): "eat",
        L.get("cat_gift", "Souvenirs"): "gift",
    }

def get_active_items(category_code, lang_code=None):
    """
    category_code: 傳入 'place', 'eat' 或 'gift'
    lang_code: "zh", "en", "ja"，None 表示從 st.session_state 取
    """
    if lang_code is None:
        lang_code = st.session_state.get("ui_lang", "zh")
    
    # 對應資料庫欄位
    col_map = {
        "zh": "item_name_zh",
        "en": "item_name_en",
        "ja": "item_name_ja"
    }
    target_col = col_map.get(lang_code, "item_name_zh")
    
    conn = get_conn()
    try:
        query = f"""
            SELECT place_code, {target_col} as items_name
            FROM items
            WHERE type = %s
            ORDER BY place_code ASC
        """
        df = pd.read_sql(query, conn, params=(category_code,))
        
        return [{"code": row["place_code"], "items_name": row["items_name"]} for _, row in df.iterrows()]
    
    except Exception as e:
        st.error(f"❌ SQL 錯誤: {e}")
        return []
    finally:
        conn.close()

def get_item_name_and_intro(item_code, lang_code=None):
    if lang_code is None:
        lang_code = st.session_state.get("ui_lang", "zh")

    col_map_name = {"zh": "item_name_zh", "en": "item_name_en", "ja": "item_name_ja"}
    target_name_col = col_map_name.get(lang_code, "item_name_zh")

    conn = get_conn()
    try:
        query = f"""
            SELECT {target_name_col} as name
            FROM items
            WHERE place_code = %s
        """
        row = pd.read_sql(query, conn, params=(item_code,))
        if not row.empty:
            return {"name": row.iloc[0]["name"], "intro": ""}  # intro 回傳空字串
        return {"name": item_code, "intro": ""}
    except Exception as e:
        st.error(f"❌ SQL 錯誤: {e}")
        return {"name": item_code, "intro": ""}
    finally:
        conn.close()


#-----鞋款偏好景點-----
@st.cache_data
def load_preference_rules_from_db():
    """
    讀取 preference_rules table：
    欄位: shoe_code, keyword_id, score
    回傳 dict[shoe_code][keyword_id] = score
    """
    conn = get_conn()
    cur = conn.cursor(cursor_factory=DictCursor)

    cur.execute("""
        SELECT shoe_code, keyword_id, score
        FROM preference_rules
        ORDER BY shoe_code, keyword_id
    """)

    prefs = {}
    for r in cur.fetchall():
        shoe = r["shoe_code"]
        kw = int(r["keyword_id"])
        score = float(r["score"])
        if shoe not in prefs:
            prefs[shoe] = {}
        prefs[shoe][kw] = score

    cur.close()
    return prefs

def load_shoe_language_from_db():
    conn = get_conn()
    cur = conn.cursor(cursor_factory=DictCursor)
    
    # 取得當前語系，預設為 zh
    lang_code = st.session_state.get("ui_lang", "zh")
    
    # 根據語系決定要抓哪一欄
    lang_col_map = {
        "zh": "shoe_name_zh",
        "en": "shoe_name_en",
        "ja": "shoe_name_ja"
    }
    target_col = lang_col_map.get(lang_code, "shoe_name_zh")

    try:
        # 1. 檢查欄位是否存在於 shoe_language 表中
        cur.execute(f"""
            SELECT shoe_name_en, {target_col}
            FROM shoe_language;
        """)

        rows = cur.fetchall()
        cur.close()

    except Exception as e:
        if cur: cur.close()
        st.error(f"❌ 無法讀取鞋款語言表: {e}")
        return {}

# --- 啟動時執行 ---
# 這樣你就有了一個隨語系變動的字典
SHOE_DICT = load_shoe_language_from_db()

# 1️⃣ 載入 item → keyword_id map
@st.cache_data
def load_llm_keywords_map():
    conn = get_conn()
    cur = conn.cursor()
    cur.execute("SELECT place_code, keyword_id FROM llm_keywords_map")
    result = {}
    for code, kw_id in cur.fetchall():
        result.setdefault(code, []).append(int(kw_id))
    cur.close()
    return result

LLM_KEYWORDS_MAP = load_llm_keywords_map()

CATEGORY_MAP = {
    "景點": "place",
    "美食": "eat",
    "伴手禮": "gift"
}

# 2️⃣ 載入 keyword 對照表
@st.cache_data
def load_keywords_table():
    conn = get_conn()
    cur = conn.cursor(cursor_factory=DictCursor)
    cur.execute("""
        SELECT keyword_id, value, value_en, value_ja, dimension, description
        FROM keywords
    """)
    keywords = {
        r["keyword_id"]: {
            "value": r["value"],
            "value_en": r["value_en"],
            "value_ja": r["value_ja"],
            "dimension": r["dimension"],
            "description": r["description"]
        }
        for r in cur.fetchall()
    }
    cur.close()
    conn.close()
    return keywords


KEYWORDS_TABLE = load_keywords_table()

ITEM_KEYWORDS_INFO = {}

kw_col_map = {"zh": "value", "en": "value_en", "ja": "value_ja"}
lang = st.session_state.get("ui_lang", "zh")
kw_col = kw_col_map.get(lang, "value")

for item_code, keywords_list in LLM_KEYWORDS_MAP.items():
    ITEM_KEYWORDS_INFO[item_code] = {}
    for kw in keywords_list:
        if kw in KEYWORDS_TABLE:
            ITEM_KEYWORDS_INFO[item_code][kw] = KEYWORDS_TABLE[kw]

@st.cache_data(ttl=60)
def load_user_rec():
    """
    Load user recommendation details from the database.

    Returns:
        dict: {
            "user_id1": {
                "P-1": {"score": 1.6, "is_checked": True},
                "P-2": {"score": 1.46, "is_checked": False},
                ...
            },
            "user_id2": { ... }
        }
    """
    conn = get_conn()
    cur = conn.cursor()
    cur.execute("""
        SELECT user_id, place_code, score, is_checked
        FROM user_rec
    """)
    result = {}
    for user_id, code, score, is_checked in cur.fetchall():
        if user_id not in result:
            result[user_id] = {}
        result[user_id][code] = {
            "score": float(score),
            "is_checked": bool(is_checked)
        }
    cur.close()
    return result

#-----兩張csv表存入資料庫-----
def save_log_to_db(log_data):
    log_data["user_id"] = st.session_state["user_id"]

    conn = get_conn()
    cur = conn.cursor()

    try:
        cur.execute("""
            INSERT INTO user_feedback (
                user_id, timestamp, language, age, gender,
                pc_type, selected_item, rc_type, shoe_code,
                shown_places, checked_places,
                correct_rate, declined,
                options_pic, options_rating, niimbot_label
            )
            VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
        """, (
            log_data["user_id"],
            log_data.get("timestamp"),        # 確保是 datetime
            log_data.get("language"),
            log_data.get("age"),
            log_data.get("gender"),
            log_data.get("pc_type"),
            log_data.get("selected_item"),
            log_data.get("rc_type"),
            log_data.get("shoe_code"),
            json.dumps(log_data.get("shown_places"), ensure_ascii=False),
            json.dumps(log_data.get("checked_places"), ensure_ascii=False),
            log_data.get("correct_rate"),
            log_data.get("declined"),
            log_data.get("options_pic"),
            log_data.get("options_rating"),
            log_data.get("niimbot_label"),
        ))

        conn.commit()

    except Exception as e:
        conn.rollback()
        st.error(f"user_feedback 寫入失敗：{e}")

    finally:
        cur.close()

def save_shoe_feedback_to_db(row):
    conn = get_conn()
    cur = conn.cursor(cursor_factory=DictCursor)

    current_lang = st.session_state.get("ui_lang", "zh")
    reverse_map = st.session_state.shoe_reverse_bundle.get(current_lang, {})

    # 🔥 統一英文
    predicted_attr_en = reverse_map.get(row["predicted_attr"], row["predicted_attr"])
    shoe_code_en = reverse_map.get(row["shoe_code"], row["shoe_code"])

    # 🔥 topk 轉英文
    topk_en = normalize_topk_to_en(row["topk"], current_lang)

    insert_sql = """
        INSERT INTO shoe_feedback (
            user_id,
            timestamp,
            predicted_attr,
            pred_conf,
            topk,
            shoe_code,
            shoe_name_zh,
            was_correct,
            image_path,
            location
        )
        VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
    """

    # 🔥 user_id 完全統一：永遠使用 session_state
    user_id = st.session_state["user_id"]

    cur.execute(insert_sql, (
        user_id,          # <--- 🔥 使用統一的 user_id
        row["timestamp"],
        predicted_attr_en,   # ✅ 統一英文
        row["pred_conf"],
        topk_en,             # ✅ 統一英文
        shoe_code_en,        # ✅ 統一英文
        row["shoe_name_zh"], # 顯示用保留
        row["was_correct"],
        row["image_path"],
        row["location"]
    ))

    conn.commit()
    cur.close()

def save_user_rec(user_id, recs):
    """
    recs = [
        {"place_code": "P-1", "score": 1.23, "is_checked": False},
        ...
    ]
    """
    conn = get_conn()
    cur = conn.cursor()

    values = [
        (user_id, r["place_code"], r["score"], r.get("is_checked", False))
        for r in recs
    ]

    execute_values(cur, """
        INSERT INTO user_rec (user_id, place_code, score, is_checked)
        VALUES %s
    """, values)

    conn.commit()
    cur.close()

def to_int_or_none(v):
    if v in ("", None):
        return None
    try:
        return int(v)
    except Exception:
        return None

# ----- csv 存至資料庫（修正版：確保所有欄位轉為中文原始資料）-----
def save_log_to_user_feedback(log_data):
    import pandas as pd
    import json
    from psycopg2.extras import execute_values, DictCursor

    # 1. 確保 log_data 是 DataFrame 格式
    log_df = pd.DataFrame([log_data] if isinstance(log_data, dict) else log_data)
    if "declined" not in log_df.columns:
        log_df["declined"] = 0

    # 2. 準備翻譯與映射字典 (直接從 session_state 抓取，確保作用域正確)
    ui_zh = st.session_state.ui_bundle.get("zh", {})
    # 取得「當前」顯示語言的字典，用來做逆向比對
    current_lang = st.session_state.get("ui_lang", "zh")
    ui_current = st.session_state.ui_bundle.get(current_lang, ui_zh)
    
    # 固定的類型與語言映射
    type_map_zh = {"place": "景點", "eat": "美食", "gift": "伴手禮"}
    lang_map = {"zh": "Traditional Chinese", "en": "English", "ja": "日本語"}

    conn = get_conn()
    cur = conn.cursor(cursor_factory=DictCursor)

    try:
        # 3. 獲取地點中文名稱對照表 (確保存入 P-4頭城老街)
        cur.execute("SELECT place_code, item_name_zh FROM items")
        zh_item_map = {r["place_code"]: r["item_name_zh"] for r in cur.fetchall()}

        # ========= user_feedback 寫入準備 =========
        insert_sql_feedback = """
            INSERT INTO user_feedback (
                user_id, timestamp, language, age, gender,
                pc_type, selected_item, rc_type, shoe_code,
                shown_places, checked_places, correct_rate,
                declined, options_pic, options_rating, niimbot_label
            )
            VALUES %s
        """

        values_feedback = []

        for _, row in log_df.iterrows():
            # --- (A) 語言：存入 "English" / "日本語" / "Traditional Chinese" ---
            language_display = lang_map.get(current_lang, "English")

            # --- (B) 性別：無論 UI 顯示什麼，一律存 "男" 或 "女" ---
            gender_val = str(row.get("gender", ""))
            if "Male" in gender_val or "男" in gender_val:
                gender_zh = "男"
            elif "Female" in gender_val or "女" in gender_val:
                gender_zh = "女"
            else:
                gender_zh = gender_val

            # --- (C) 年齡：比對翻譯 Key 轉回中文 (例如: 15 years old... -> 15歲以下) ---
            age_val = row.get("age")
            age_keys = ["age_option_below15", "age_option_16-30", "age_option_31-45", "age_option_46-60", "age_option_above60"]
            for k in age_keys:
                # 比對當前 UI 顯示的文字是否等於對應的 Key
                if age_val == ui_current.get(k):
                    # 換成中文版對應的文字
                    age_val = ui_zh.get(k, age_val)
                    break

            # --- (D) 項目名稱：P-4 Toucheng Old Street -> P-4頭城老街 ---
            sel_item = row.get("selected_item")
            if sel_item:
                item_code = str(sel_item).split(' ')[0]
                if item_code in zh_item_map:
                    sel_item = f"{item_code}{zh_item_map[item_code]}"

            # --- (E) 推薦類型與 shoe_code ---
            pc_type_zh = type_map_zh.get(row.get("pc_type"), row.get("pc_type"))
            rc_type_zh = type_map_zh.get(row.get("rc_type"), row.get("rc_type"))
            # shoe_code 保持英文標籤 (sandals)
            current_lang = st.session_state.get("ui_lang", "zh")
            reverse_map = st.session_state.shoe_reverse_bundle.get(current_lang, {})
            
            shoe_display = row.get("shoe_code")   # 例如：サンダル
            shoe_code_orig = reverse_map.get(shoe_display, shoe_display)

            # JSON 正規化
            shown_places = row.get("shown_places") or {}
            checked_places = row.get("checked_places") or []
            if isinstance(shown_places, list): shown_places = dict(shown_places)
            if not isinstance(shown_places, dict): shown_places = {}
            if isinstance(checked_places, set): checked_places = list(checked_places)

            values_feedback.append((
                st.session_state.get("user_id", "default_user"),
                row.get("timestamp"),
                language_display,
                age_val,
                gender_zh,
                pc_type_zh,
                sel_item,
                rc_type_zh,
                shoe_code_orig,
                json.dumps(shown_places, ensure_ascii=False),
                json.dumps(checked_places, ensure_ascii=False),
                float(row.get("correct_rate") or 0.0),
                int(row.get("declined") or 0),
                row.get("options_pic") or None,
                row.get("options_rating") or None,
                row.get("niimbot_label") or None
            ))

        # ========= user_rec 寫入 (保留原邏輯) =========
        insert_sql_user_rec = """
            INSERT INTO user_rec (user_id, place_code, score, is_checked)
            VALUES %s
        """
        values_user_rec = []
        for _, row in log_df.iterrows():
            shown_places = row.get("shown_places") or {}
            checked_places = set(row.get("checked_places") or [])
            u_id = st.session_state.get("user_id", "default_user")
            for p, s in shown_places.items():
                values_user_rec.append((u_id, p, float(s), p in checked_places))

        # 一次 commit (原子性)
        execute_values(cur, insert_sql_feedback, values_feedback)
        if values_user_rec:
            execute_values(cur, insert_sql_user_rec, values_user_rec)

        conn.commit()
        return True

    except Exception as e:
        conn.rollback()
        # 這裡會顯示錯誤訊息，方便您除錯
        st.error(f"❌ DB 寫入失敗：{e}")
        return False
    finally:
        cur.close()

# --- Fonts (absolute paths + fallback) ---
FONT_DIR = (BASE_DIR / "fonts").resolve()
FONT_REGULAR = str("../fonts/NotoSansTC-Regular.ttf")
FONT_BOLD    = str("../fonts/NotoSansTC-Bold.ttf")

REPORT_SAVE_FOLDER = str("../output") # report folder
os.makedirs(REPORT_SAVE_FOLDER, exist_ok=True)


# === 模型選擇（家族）===
FAMILY_MAP_LMSTUDIO = {
    "llama3.2":    "llama3.2:latest",
    "llama3.2-2k": "llama32-3b-2k:latest",  # point both to the same for now
    "llama3": "llama3:latest",
    "gemma4": "gemma4:latest",
}

if BACKEND == "Ollama":
    # 1. 自動偵測 Ollama
    available_models = get_ollama_models()
    
    # 2. 計算預設索引 (優先順序：gemma4 > llama3:latest > llama3.2)
    default_idx = 0
    priorities = ["gemma4", "llama3:latest", "llama3.2"]
    found_priority = False

    for target in priorities:
        for i, model_name in enumerate(available_models):
            if target in model_name.lower():
                default_idx = i
                found_priority = True
                break
        if found_priority: break # 找到最高優先級後就停止搜尋

    # 3. 帶入 Selectbox
    LLM_MODEL = st.sidebar.selectbox(
        "選擇 Ollama 模型", 
        available_models, 
        index=default_idx
    )
    st.sidebar.info(f"偵測到 {len(available_models)} 個模型")

else:
    # --- LM Studio 部分 (對照表家族選擇) ---
    lm_keys = list(FAMILY_MAP_LMSTUDIO.keys())
    lm_default_idx = 0
    priorities = ["gemma4", "llama3.2", "llama3"] 

    for target in priorities:
        for i, k in enumerate(lm_keys):
            if target in k.lower():
                lm_default_idx = i
                found_priority = True
                break
        if found_priority: break

    family_choice = st.sidebar.selectbox(
        "選擇 LM Studio 家族", 
        lm_keys, 
        index=lm_default_idx
    )
    LLM_MODEL = FAMILY_MAP_LMSTUDIO[family_choice]

st.sidebar.success(f"確認使用：{LLM_MODEL}")

# Normalize to short code "zh" | "en" | "ja"
def normalize_lang(x: str) -> str:
    if not x: return "en"
    s = str(x).strip().lower()
    if s.startswith("zh"): return "zh"
    if s.startswith("ja"): return "ja"
    return "en"

# -------- B21 Pro: print a 50×50 mm PNG exactly (Windows driver) --------
import platform

def print_png_50x50_exact(
    png_path: str,
    printer_name: str | None = None,
    rotate_deg: int = 0,
    ring_px: int = 10,
    margin_mm: float | None = 0.40,   # main size control (mm of white edge)
    bleed_pct: float | None = None,   # ignored when margin_mm is given
    x_shift_px: int = 0,              # +right / -left
    y_shift_px: int = 0,              # +down  / -up
):
    """
    Print a round 50×50mm label to NIIMBOT B21/B21 Pro.
    Works only on Windows with pywin32. On macOS/Linux, just warns.
    """
    import os
    from PIL import Image, ImageDraw

    # ✅ Guard: only Windows supports win32print
    if platform.system() != "Windows":
        print("⚠️ print_png_50x50_exact() is only supported on Windows.")
        return

    import win32print, win32ui
    from win32con import DM_OUT_BUFFER, DM_IN_BUFFER, DM_ORIENTATION, DM_PAPERWIDTH, DM_PAPERLENGTH
    from PIL import ImageWin

############

    HORZRES, VERTRES = 8, 10  # DeviceCaps constants

    if not os.path.exists(png_path):
        raise FileNotFoundError(png_path)

    # -- choose printer & set 50×50 mm paper --
    printer = printer_name or win32print.GetDefaultPrinter()
    hprinter = win32print.OpenPrinter(printer)
    try:
        props   = win32print.GetPrinter(hprinter, 2)
        devmode = props["pDevMode"]
        devmode.Fields     |= (DM_ORIENTATION | DM_PAPERWIDTH | DM_PAPERLENGTH)
        devmode.Orientation = 1                   # portrait
        devmode.PaperWidth  = int(50 * 10)        # tenths of mm
        devmode.PaperLength = int(50 * 10)
        win32print.DocumentProperties(
            None, hprinter, printer, devmode, devmode, DM_IN_BUFFER | DM_OUT_BUFFER
        )

        # -- query driver raster safely --
        hdc = win32ui.CreateDC()
        hdc.CreatePrinterDC(printer)
        try:
            px_w = int(hdc.GetDeviceCaps(HORZRES))
            px_h = int(hdc.GetDeviceCaps(VERTRES))
            if px_w <= 0 or px_h <= 0:
                raise ValueError("driver returned zero size")
        except Exception:
            px_w = px_h = 384  # safe default for B21-class engines

        # -- load art, square-crop, resize to square side --
        im = Image.open(png_path).convert("L")
        s  = min(im.size)
        L  = (im.width  - s) // 2
        T  = (im.height - s) // 2
        im = im.crop((L, T, L + s, T + s))

        side = min(px_w, px_h)                   # keep circle perfectly round
        im   = im.resize((side, side), Image.LANCZOS)

        # -- compute pad (in px) from margin_mm or bleed_pct; clamp to sane range --
        if margin_mm is not None:
            dpm = side / 50.0                    # dots per mm along the circle
            pad = int(round(float(margin_mm) * dpm))
        elif bleed_pct is not None:
            pad = int((1.0 - float(bleed_pct)) * side / 2)
        else:
            dpm = side / 50.0
            pad = int(round(0.40 * dpm))         # default 0.40 mm white edge

        pad = max(0, min(pad, (side - 2) // 2))  # clamp so ellipse stays valid

        # -- circular mask + bold ring for crisp thermal edge --
        mask = Image.new("L", (side, side), 0)
        ImageDraw.Draw(mask).ellipse(
            (pad, pad, side - pad - 1, side - pad - 1), fill=255
        )

        if ring_px and ring_px > 0:
            ImageDraw.Draw(im).ellipse(
                (pad, pad, side - pad - 1, side - pad - 1),
                outline=0, width=int(ring_px)
            )

        # -- compose full page; tiny upward nudge to counter common feed bias --
        canvas = Image.new("L", (px_w, px_h), 255)
        off_x  = (px_w - side) // 2 + int(x_shift_px)
        off_y  = (px_h - side) // 2 + int(y_shift_px) - 2   # ← small nudge up

        # keep inside page
        off_x = max(0, min(off_x, px_w - side))
        off_y = max(0, min(off_y, px_h - side))

        canvas.paste(im, (off_x, off_y), mask)

        # rotate if requested, then force back to driver size
        if rotate_deg:
            canvas = canvas.rotate(rotate_deg, expand=True).resize((px_w, px_h), Image.NEAREST)

        # 1-bit dither for thermal and print 1:1 pixels
        out_1b = canvas.convert("1", dither=Image.FLOYDSTEINBERG)

        hdc.StartDoc("B21Pro 50x50mm")
        hdc.StartPage()
        ImageWin.Dib(out_1b).draw(hdc.GetHandleOutput(), (0, 0, px_w, px_h))
        hdc.EndPage()
        hdc.EndDoc()
        hdc.DeleteDC()
        print(f"Sent to printer: {printer}")

    finally:
        win32print.ClosePrinter(hprinter)

# --- Shoe feedback helpers ---
def _inv_label_zh():
    return {v: k for k, v in LABEL_ZH.items()}

def save_user_image_copy(prefix="shoe", folder="../output/user_images"):
    """Save last_crop (preferred) or last_image as a JPEG and return full path (or '')."""
    try:
        img = st.session_state.get("last_crop") or st.session_state.get("last_image")
        if img is None:
            st.error("Debug: 找不到 session 中的圖片物件")
            return ""

        if not os.path.exists(folder):
            os.makedirs(folder, exist_ok=True)

        # 🔥 使用統一的 session user_id
        user_id = st.session_state["user_id"]

        fp = os.path.join(folder, f"{prefix}_{user_id}.jpg")
        img.convert("RGB").save(fp, format="JPEG", quality=92)
        return fp

    except Exception:
        return ""

def append_shoe_feedback_csv(row: dict, csv_path="../output/shoe_feedback.csv"):
    os.makedirs(os.path.dirname(csv_path), exist_ok=True)
    df = pd.DataFrame([row])
    if os.path.exists(csv_path):
        try:
            old = pd.read_csv(csv_path)
            # align columns if we ever add new keys later
            for c in df.columns:
                if c not in old.columns:
                    old[c] = ""
            for c in old.columns:
                if c not in df.columns:
                    df[c] = ""
            df = pd.concat([old, df], ignore_index=True)
        except Exception:
            pass
    df.to_csv(csv_path, index=False, encoding="utf-8-sig")

# --- Helpers: exclusive toggle group (single-select) ---
def exclusive_toggle_group(title: str, options: list[str], prefix: str, selected_state_key: str):
    st.write(title)

    # single source of truth: only this 'selected' is written by us
    if selected_state_key not in st.session_state:
        st.session_state[selected_state_key] = None

    def on_change(idx: int):
        # READ the widget state (ok) but DO NOT write to the widget's key
        turned_on = st.session_state.get(f"{prefix}_{idx}", False)
        current = st.session_state.get(selected_state_key)
        if turned_on:
            st.session_state[selected_state_key] = options[idx]
        else:
            # if the active one was turned off, clear selection
            if current == options[idx]:
                st.session_state[selected_state_key] = None

    # Render toggles. We pass value based on 'selected' only; we never set widget keys ourselves.
    cols = st.columns(len(options))
    selected = st.session_state.get(selected_state_key)
    for i, opt in enumerate(options):
        with cols[i]:
            st.toggle(
                opt,
                key=f"{prefix}_{i}",
                value=(selected == opt),     # derives from 'selected' only
                on_change=on_change,
                args=(i,),
            )

    return st.session_state[selected_state_key]

# Sidebar selectbox
# Save current language code for the whole app
# --- Force Traditional Chinese only ---
#lang_option = "中文"   # keep using this variable everywhere you pass 'lang'
#ui_lang = "zh"
#st.session_state["ui_lang"] = "zh"

st.sidebar.markdown("---")
if st.sidebar.button("🔌 Print welcome tag"):
    try:
        print_png_50x50_exact(
                r"..\label\welcome-01.png",
                printer_name="NIIMBOT B21_Pro",
                rotate_deg=0,
                ring_px=0,     # disables the black ring
                margin_mm=0.40,   # smaller → bigger circle; larger → more white edge
                x_shift_px=-10,    # ← move left
                y_shift_px=2      # nudges circle downward
)
        st.sidebar.success("✅ 已送印")
    except Exception as e:
        st.sidebar.error(f"❌ Test failed: {e}")

st.sidebar.markdown("### 列印模式")
st.session_state["printer_mode"] = st.sidebar.radio(
    "Printer mode",
    ("Test (no printing)", "Live (printing)"),
    index=1,
    key="printer_mode_radio",
)

st.sidebar.markdown("### 標籤來源")
st.session_state["tag_mode"] = st.sidebar.radio(
    "Tag selection",
    ("Test (always Welcome tag)", "Live (by user interactive)"),
    index=1,
    key="tag_mode_radio",
)

######

# --- Fixed welcome at bottom-right of the app ---

welcome_path = r"..\label\welcome-01.png"  # adjust path if needed
QRCODE_PATH = r"..\label\qrcode-01.png"

if os.path.exists(welcome_path):
    with open(welcome_path, "rb") as f:
        welcome_b64 = base64.b64encode(f.read()).decode()

    st.markdown(
        f"""
        <div style="position:fixed; bottom:15px; right:15px; z-index:1000;">
            <img src="data:image/png;base64,{welcome_b64}" width="120">
        </div>
        """,
        unsafe_allow_html=True
    )
    
# === 自訂按鈕樣式 ===
st.markdown("""
    <style>
    div.stButton > button {
        height: 100px !important;         /* 高度 */
        width: 200px !important;          /* 寬度 */
        font-size: 150px !important;      /* 文字大小 */
        border-radius: 12px !important;   /* 圓角 */
        background-color: white !important;  /* 背景顏色 */
        color: black !important;          /* 文字顏色 */
        border: 2px solid #999 !important; /* 邊框灰色 */
    }
    </style>
""", unsafe_allow_html=True)

st.markdown("""
    <style>
    button[data-testid="stButton"] {
        font-size: 28px !important;
        height: 70px !important;
    }
    </style>
""", unsafe_allow_html=True)


@st.cache_resource
def build_code_index():
    """
    {"P-3": {"display": "烏石漁港", "type": "place"}}
    """
    idx = {}

    for code, info in ITEM_INFO.items():
        idx[code] = {
            "display": info["items_name"],
            "type": info["type"]
        }
    return idx

CODE_INDEX = build_code_index()

def normalize_code(raw: str) -> str | None:
    raw = str(raw).strip()
    return raw if raw in ITEM_INFO else None

def resolve_item(raw_name: str) -> tuple[str | None, str]:
    """
    Returns (item_info_key_or_None, display_name).
    - If code maps to ITEM_INFO: returns (full_key, nice_display_without_code)
    - If not found: returns (None, raw_name) as a safe fallback
    """
    code = normalize_code(raw_name)
    if code and code in CODE_INDEX:
        d = CODE_INDEX[code]
        return code, d["display"]

    # fallback: exact key
    if raw_name in ITEM_INFO:
        disp = re.sub(r'^[PEGpeg]\s*[-]?\s*\d+\s*', '', raw_name).strip() or raw_name
        return raw_name, disp

    return None, raw_name

RC_FROM_PREFIX = {'P': '景點', 'E': '美食', 'G': '伴手禮'}

    
def infer_rc_from_code(code: str):
    info = ITEM_INFO.get(code)
    if not info:
        return None, None

    rc_map_rev = {
        "place": "景點",
        "eat": "美食",
        "gift": "伴手禮",
    }
    return info["name"], rc_map_rev.get(info["type"])

def infer_rc_from_name(raw_name: str):
    """
    Try to infer (key, display_name, code, rc_label) from any input string.

    Returns:
        key      : ITEM_INFO key (code) or None
        display  : human-readable name
        code     : code like 'P-1' or None
        rc       : '景點' | '美食' | '伴手禮' | None
    """
    if not raw_name:
        return None, raw_name, None, None

    s = str(raw_name).strip()

    # ---------- 1️⃣ 直接命中 code ----------
    if s in ITEM_INFO:
        info = ITEM_INFO[s]
        rc = {
            "place": "景點",
            "eat": "美食",
            "gift": "伴手禮",
        }.get(info["type"])
        return s, info["items_name"], s, rc

    # ---------- 2️⃣ 前綴解析：P-1蘭陽博物館 ----------
    m = re.match(r'^([PEGpeg]\s*-\s*\d+)', s)
    if m:
        code = m.group(1).upper().replace(" ", "")
        if code in ITEM_INFO:
            info = ITEM_INFO[code]
            rc = {
                "place": "景點",
                "eat": "美食",
                "gift": "伴手禮",
            }.get(info["type"])
            return code, info["items_name"], code, rc

    # ---------- 3️⃣ 用名稱反查 ITEM_INFO ----------
    for code, info in ITEM_INFO.items():
        if info["items_name"] == s:
            rc = {
                "place": "景點",
                "eat": "美食",
                "gift": "伴手禮",
            }.get(info["type"])
            return code, info["items_name"], code, rc

    # ---------- 4️⃣ 最後退回用字首猜 ----------
    prefix = s[0].upper() if s else ""
    rc = {
        "P": "景點",
        "E": "美食",
        "G": "伴手禮",
    }.get(prefix)

    return None, s, None, rc



def is_match_category(raw_name: str, target_type: str) -> bool:
    key, _, _, _ = infer_rc_from_name(raw_name)

    if not key:
        return False

    info = ITEM_INFO.get(key)
    if not info:
        return False

    return info.get("type") == target_type


def as_csv_pairs(recs) -> str:
    """
    Turn recommendations into 'name:score|name:score' for CSV.
    Works for dict items (new DeepFM) and tuple items (old flow).
    """
    parts = []
    for it in (recs or []):
        if isinstance(it, dict):
            name  = it.get("display") or it.get("key") or it.get("raw") or "?"
            score = float(it.get("score", 0.0))
        else:
            # fallback for (name, score) tuples
            try:
                name, score = it
                score = float(score)
            except Exception:
                name, score = str(it), 0.0
        parts.append(f"{name}:{score:.2f}")
    return "|".join(parts)


# === Model Definition ===
class AttributeClassifier(nn.Module):
    def __init__(self, num_classes: int, dropout_p: float = 0.2, freeze_backbone: bool = False):
        super().__init__()
        # modern torchvision API
        self.resnet = models.resnet50(weights=None)
        if freeze_backbone:
            for p in self.resnet.parameters():
                p.requires_grad = False

        in_features = self.resnet.fc.in_features
        self.resnet.fc = nn.Sequential(
            nn.Dropout(dropout_p),
            nn.Linear(in_features, num_classes),
        )
        # good init for the new head
        nn.init.kaiming_normal_(self.resnet.fc[1].weight, nonlinearity="linear")
        nn.init.zeros_(self.resnet.fc[1].bias)

    def forward(self, x):
        return self.resnet(x)

def load_attribute_checkpoint(model: nn.Module, ckpt_path: str, map_location="cpu"):
    import re
    ckpt = torch.load(ckpt_path, map_location=map_location)
    state = ckpt.get("model", ckpt)

    # 1) Strip common wrappers
    remapped = {}
    for k, v in state.items():
        k = k.replace("module.", "")          # DataParallel
        k = k.replace("model.", "")           # if someone saved with a top 'model.' key
        remapped[k] = v
    state = remapped

    # 2) If keys look like a bare ResNet (conv1, bn1, layerX, fc),
    #    add the "resnet." prefix so they match AttributeClassifier.resnet.*
    needs_prefix = any(
        re.match(r"^(conv1|bn1|layer[1-4]|fc)\.", k) for k in state.keys()
    )
    if needs_prefix:
        prefixed = {}
        for k, v in state.items():
            if k.startswith("resnet."):
                prefixed[k] = v
            elif re.match(r"^(conv1|bn1|layer[1-4]|fc)\.", k):
                prefixed[f"resnet.{k}"] = v
            else:
                # keep unknown keys as-is (won't load anyway)
                prefixed[k] = v
        state = prefixed

    # 3) If the checkpoint head (fc) doesn't match our NUM_ATTRIBUTES, drop it
    head_w = state.get("resnet.fc.1.weight", None)
    head_b = state.get("resnet.fc.1.bias", None)
    if head_w is not None:
        out_features = head_w.shape[0]
        want_out = model.resnet.fc[1].out_features  # should be NUM_ATTRIBUTES
        if out_features != want_out:
            # keep backbone, reinit our head
            state.pop("resnet.fc.1.weight", None)
            state.pop("resnet.fc.1.bias", None)

    missing, unexpected = model.load_state_dict(state, strict=False)

    # Classes list (if present in checkpoint)
    classes = ckpt.get("classes", ["boots","high_heels","sandals","slippers","sport_shoe"])

    return {"missing_keys": missing, "unexpected_keys": unexpected, "classes": classes}


DEFAULT_MAX_EMB_DIM = 16  # cap emb size

class DeepOnlyRec(nn.Module):
    def __init__(self, cat_cards, num_dim, out_dim, hidden=(512,256,128), pdrop=0.2):
        super().__init__()
        self.embeddings = nn.ModuleList()
        self.emb_dims = []
        for card in cat_cards:
            if card > 0:
                dim = min(DEFAULT_MAX_EMB_DIM, max(4, int(round(1.6 * (card ** 0.56)))))
                self.embeddings.append(nn.Embedding(card + 1, dim))  # +1 for unknown=0
                self.emb_dims.append(dim)
            else:
                self.embeddings.append(None)
                self.emb_dims.append(0)

        input_dim = sum(self.emb_dims) + num_dim
        layers = []
        for h in hidden:
            layers += [nn.Linear(input_dim, h), nn.ReLU(), nn.Dropout(pdrop)]
            input_dim = h
        self.mlp = nn.Sequential(*layers) if layers else nn.Identity()
        self.out = nn.Linear(input_dim, out_dim)

    def forward(self, Xc, Xn):
        if Xc.numel() > 0:
            embs = [emb(Xc[:, i]) for i, emb in enumerate(self.embeddings) if emb is not None]
            embs = torch.cat(embs, dim=1) if len(embs) else torch.zeros((Xc.size(0), 0), device=Xc.device)
        else:
            embs = torch.zeros((Xn.size(0), 0), device=Xn.device)
        x = torch.cat([embs, Xn], dim=1) if Xn.numel() > 0 else embs
        h = self.mlp(x)
        return self.out(h)  # logits


# --- NIIMBOT B21 printing helpers ---
import subprocess, sys, asyncio
from PIL import Image

def ensure_niimbot_png(path: str, max_width: int = 384) -> str:
    """
    Ensure PNG is <= max_width and 1-bit. Returns the same path after fixup.
    """
    img = Image.open(path)
    if img.width > max_width:
        h = int(img.height * (max_width / img.width))
        img = img.resize((max_width, h), Image.LANCZOS)
    # 1-bit for clean thermal output
    img = img.convert("1")
    img.save(path)
    return path

async def _print_with_niimprintx(img_path: str, density=3, quantity=1, rotate=0, hoff=0, voff=0):
    from PIL import Image as PILImage
    from NiimPrintX.nimmy.bluetooth import find_device
    from NiimPrintX.nimmy.printer import PrinterClient

    dev = await find_device("b21")
    if not dev:
        raise RuntimeError("B21/B21 Pro not found. Make sure it's paired and powered on.")
    cli = PrinterClient(dev)
    await cli.connect()
    img = PILImage.open(img_path)
    if rotate:
        img = img.rotate(rotate, expand=True)
    await cli.print_image(img, density=max(1, min(5, density)), quantity=max(1, quantity),
                          vertical_offset=voff, horizontal_offset=hoff)
    await cli.disconnect()

def print_png_b21(img_path: str,
                  backend: str = "niimprintx",  # "niimprintx" | "niimprint"
                  density: int = 3, quantity: int = 1, rotate: int = 0,
                  connection: str = "bluetooth", address: str = ""):
    """
    backend:
      - "niimprintx": auto-discover B21, no MAC/COM needed
      - "niimprint": requires --address (Bluetooth MAC like AA:BB:... or COM5)
    """
    # Make image printer-friendly first
    img_path = ensure_niimbot_png(img_path, max_width=384)

    if backend == "niimprintx":
        # Run the async client from Streamlit
        try:
            asyncio.run(_print_with_niimprintx(img_path, density, quantity, rotate))
        except RuntimeError as e:
            # Fallback in case there's already a running loop (rare)
            loop = asyncio.new_event_loop()
            asyncio.set_event_loop(loop)
            loop.run_until_complete(_print_with_niimprintx(img_path, density, quantity, rotate))
            loop.close()
        return

    # niimprint CLI
    if not address:
        raise ValueError("For niimprint backend, please provide --address (Bluetooth MAC or COM port).")

    cmd = [
        sys.executable, "-m", "niimprint",
        "-m", "b21",
        "-c", connection,          # "bluetooth" or "usb"
        "-a", address,             # "AA:BB:CC:DD:EE:FF" or "COM5"
        "-i", img_path,
        "-d", str(density),
        "-q", str(quantity)
    ]
    if rotate:
        cmd += ["-r", str(rotate)]

    out = subprocess.run(cmd, capture_output=True, text=True)
    if out.returncode != 0:
        raise RuntimeError(f"niimprint failed:\nSTDOUT:\n{out.stdout}\nSTDERR:\n{out.stderr}")

def preprocess_row_runtime(features: dict, runtime_pre: dict):
    """
    features: dict like {"gender": "男", "age_bin": "16-30", ...}
    runtime_pre: dict dumped from training with keys:
        cat_cols, num_cols, cat_maps, num_means, num_stds
    Returns: (Xc_np[int64 shape (1,C)], Xn_np[float32 shape (1,N)])
    """
    cat_cols = runtime_pre["cat_cols"]
    num_cols = runtime_pre["num_cols"]
    cat_maps = runtime_pre["cat_maps"]
    num_means = runtime_pre["num_means"]
    num_stds  = runtime_pre["num_stds"]

    Xc = []
    for c in cat_cols:
        m = cat_maps.get(c, {})
        val = features.get(c, None)
        idx = m.get(val, 0)  # 0 = unknown
        Xc.append(int(idx))
    Xc = np.array(Xc, dtype=np.int64).reshape(1, -1) if cat_cols else np.zeros((1,0), np.int64)

    Xn = []
    for c in num_cols:
        mean = float(num_means.get(c, 0.0))
        std  = float(num_stds.get(c, 1.0)) or 1.0
        v = features.get(c, mean)
        try:
            v = float(v)
        except:
            v = mean
        z = (v - mean) / std
        Xn.append(z)
    Xn = np.array(Xn, dtype=np.float32).reshape(1, -1) if num_cols else np.zeros((1,0), np.float32)

    return Xc, Xn

import os, glob, json, pickle
from pathlib import Path

def _latest(pattern: str) -> str | None:
    files = glob.glob(pattern)
    return max(files, key=os.path.getmtime) if files else None

def discover_artifacts(dir_path: str) -> dict:
    p = Path(dir_path)
    if not p.is_dir():
        raise FileNotFoundError(f"Artifacts dir not found: {p}")
    model_fp   = _latest(str(p / "*_model_*.pt"))
    pre_fp     = _latest(str(p / "*_preprocess_*.pkl"))
    classes_fp = _latest(str(p / "*_class_names_*.json"))
    cfg_fp     = _latest(str(p / "*_config_*.json"))
    if not all([model_fp, pre_fp, classes_fp]):
        raise RuntimeError(f"Missing files in {p}. Need model, preprocess, class_names.")
    return {"model": model_fp, "pre": pre_fp, "classes": classes_fp, "config": cfg_fp}


@st.cache_resource
def load_deepfm_from_dir(dir_path: str, device=None):
    art = discover_artifacts(dir_path)
    device = device or (torch.device("cuda") if torch.cuda.is_available() else torch.device("cpu"))

    # Preprocess dump
    with open(art["pre"], "rb") as f:
        pre = pickle.load(f)
    cat_cols = pre["cat_cols"]; num_cols = pre["num_cols"]
    cat_maps = pre["cat_maps"]; num_means = pre["num_means"]; num_stds = pre["num_stds"]

    # Classes
    with open(art["classes"], "r", encoding="utf-8") as f:
        class_names = json.load(f)
    out_dim = len(class_names)

    # Cards/dims and hidden/dropout from config (if present)
    cat_cards = [len(cat_maps[c]) for c in cat_cols]
    num_dim   = len(num_cols)
    hidden, dropout = (512,256,128), 0.2
    try:
        if art["config"]:
            with open(art["config"], "r", encoding="utf-8") as f:
                cfg = json.load(f)
            hidden  = tuple(int(x) for x in cfg.get("hidden", hidden))
            dropout = float(cfg.get("dropout", dropout))
    except Exception:
        pass

    model = DeepOnlyRec(cat_cards, num_dim, out_dim, hidden=hidden, pdrop=dropout).to(device)

    state = torch.load(art["model"], map_location=device)
    # Try direct; else unwrap dicts like {"state_dict": ...}
    try:
        model.load_state_dict(state, strict=False)
    except Exception:
        sd = state.get("state_dict", state)
        model.load_state_dict(sd, strict=False)

    model.eval()
    runtime_pre = {
        "cat_cols": cat_cols, "num_cols": num_cols,
        "cat_maps": cat_maps, "num_means": num_means, "num_stds": num_stds
    }
    return {"model": model, "pre": runtime_pre, "class_names": class_names, "paths": art}

# Auto-load local DeepFM bundles
if "deepfm" not in st.session_state:
    st.session_state.deepfm = {}

for key, path in ARTIF_DIRS.items():
    try:
        st.session_state.deepfm[key] = load_deepfm_from_dir(path)
    except Exception as e:
        st.sidebar.warning(f"{key.capitalize()} 模型未載入：{e}")



def build_features_from_session(bundle: dict) -> dict:
    pre = bundle["pre"]
    cats = pre["cat_cols"]; nums = pre["num_cols"]
    s = st.session_state

    # Example mapping — CHANGE keys to match your training columns exactly.
    # If your training used e.g. "gender", "age_bin", "shoe", fill them here.
    f = {}

    # categorical examples
    if "gender" in cats:
        f["gender"] = s.get("selected_gender", "__UNK__")
    if "age_bin" in cats:
        # convert UI text → the same bin tokens used in training
        ui_age = s.get("selected_age")
        # Example mapping; adjust to your bins
        age_map = {
            "15歲（含）以下": "age<=15", "16-30歲": "age16-30", "31-45歲": "age31-45",
            "46-60歲": "age46-60", "60歲（含）以上": "age>=60",
        }
        f["age_bin"] = age_map.get(ui_age, "__UNK__")
    if "shoe" in cats:
        # top-1 shoe predicted by your ResNet (already in s.predicted_label)
        f["shoe"] = s.get("predicted_label", "__UNK__")

    # numeric examples
    if "pref_walk_minutes" in nums:
        f["pref_walk_minutes"] = 30.0  # or a UI slider you add

    # Fill missing cats/nums with UNK/mean
    for c in cats:
        f.setdefault(c, "__UNK__")
    for n in nums:
        f.setdefault(n, 0.0)

    return f



def deepfm_transform_one(pre: dict, row_df: pd.DataFrame) -> tuple[np.ndarray, np.ndarray]:
    # pre = {"cat_cols": [...], "num_cols": [...], "cat_maps": {...}, "num_means": {...}, "num_stds": {...}}
    # Ensure all expected columns exist
    for c in pre["cat_cols"]:
        if c not in row_df.columns:
            row_df[c] = np.nan
    for c in pre["num_cols"]:
        if c not in row_df.columns:
            row_df[c] = np.nan

    # Categorical → ids (unknown → 0)
    cats = []
    for c in pre["cat_cols"]:
        m = pre["cat_maps"][c]
        arr = row_df[c].map(m).fillna(0).astype(int).to_numpy().reshape(-1, 1)
        cats.append(arr)
    Xc = np.hstack(cats) if cats else np.zeros((len(row_df), 0), dtype=np.int64)

    # Numeric → z-score with saved mean/std (std==0 → 1)
    nums = []
    for c in pre["num_cols"]:
        col = pd.to_numeric(row_df[c], errors="coerce")
        mean = float(pre["num_means"].get(c, 0.0))
        std  = float(pre["num_stds"].get(c, 1.0)) or 1.0
        z = ((col.fillna(mean) - mean) / std).to_numpy().reshape(-1, 1)
        nums.append(z.astype(np.float32))
    Xn = np.hstack(nums) if nums else np.zeros((len(row_df), 0), dtype=np.float32)
    return Xc.astype(np.int64), Xn.astype(np.float32)

def predict_topk_deepfm(bundle: dict, features: dict, top_k=5, threshold=None, device=None):
    """
    bundle: dict returned by load_deepfm_from_dir
    features: {"your_feature_name": value, ...} — must match training columns
    Returns: list[(label_name, score)], score = sigmoid(logit)
    """
    model = bundle["model"]
    pre   = bundle["pre"]
    names = bundle["class_names"]
    device = device or next(model.parameters()).device

    Xc_np, Xn_np = preprocess_row_runtime(features, pre)
    Xc = torch.from_numpy(Xc_np).long().to(device)
    Xn = torch.from_numpy(Xn_np).float().to(device)

    with torch.no_grad():
        logits = model(Xc, Xn).cpu().numpy()[0]
    probs = 1.0 / (1.0 + np.exp(-logits))

    pairs = list(zip(names, probs))
    if threshold is not None:
        pairs = [(n, s) for (n, s) in pairs if s >= float(threshold)]
        pairs.sort(key=lambda x: x[1], reverse=True)
        return pairs[:top_k]
    else:
        pairs.sort(key=lambda x: x[1], reverse=True)
        return pairs[:top_k]

import io, json, zipfile, pickle

@st.cache_resource
def load_deepfm_from_zip(zip_path: str, device: torch.device | str = "cpu"):
    with zipfile.ZipFile(zip_path, "r") as z:
        names = z.namelist()
        # Required
        model_name   = next(n for n in names if "_model_" in n and n.endswith(".pt"))
        pre_name     = next(n for n in names if "_preprocess_" in n and n.endswith(".pkl"))
        classes_name = next(n for n in names if "_class_names_" in n and n.endswith(".json"))
        cfg_name     = next(n for n in names if "_config_" in n and n.endswith(".json"))
        # Optional
        thr_name = next((n for n in names if "_per_class_thresholds_" in n and n.endswith(".json")), None)

        pre  = pickle.loads(z.read(pre_name))
        cfg  = json.loads(z.read(cfg_name).decode("utf-8"))
        classes = json.loads(z.read(classes_name).decode("utf-8"))
        thresholds = json.loads(z.read(thr_name).decode("utf-8")) if thr_name else None

        cat_cols = pre["cat_cols"]
        num_cols = pre["num_cols"]
        cat_cards = [len(pre["cat_maps"][c]) for c in cat_cols]
        hidden = tuple(cfg.get("hidden", [512,256,128]))
        pdrop  = float(cfg.get("dropout", 0.2))
        max_emb_dim = int(cfg.get("max_emb_dim", 16))
        out_dim = len(classes)

#        model = DeepOnlyRec(cat_cards, len(num_cols), out_dim, hidden=hidden, pdrop=pdrop, max_emb_dim=max_emb_dim)
        model = DeepOnlyRec(cat_cards, len(num_cols), out_dim, hidden=hidden, pdrop=pdrop)
        state = torch.load(io.BytesIO(z.read(model_name)), map_location=device)
        model.load_state_dict(state, strict=False)
        model.to(device)
        model.eval()

        return {"model": model, "pre": pre, "classes": classes, "thresholds": thresholds, "target_mode": cfg.get("target_mode","Multi-label")}

def deepfm_predict(bundle, row_dict: dict, top_k: int = 3):
    # Make a one-row DataFrame with exactly the columns the model expects
    pre = bundle["pre"]
    row = {c: row_dict.get(c, np.nan) for c in pre["cat_cols"] + pre["num_cols"]}
    row_df = pd.DataFrame([row])

    Xc, Xn = deepfm_transform_one(pre, row_df)
    device = next(bundle["model"].parameters()).device
    with torch.no_grad():
        logits = bundle["model"](torch.from_numpy(Xc).to(device), torch.from_numpy(Xn).to(device)).cpu().numpy()[0]

    if bundle["target_mode"].startswith("Multi-class"):
        idx = int(np.argmax(logits))
        return [(bundle["classes"][idx], float(logits[idx]))]

    # Multi-label
    probs = 1.0 / (1.0 + np.exp(-logits))
    sel = []
    if isinstance(bundle.get("thresholds"), dict):
        for i, name in enumerate(bundle["classes"]):
            thr = float(bundle["thresholds"].get(name, 0.5))
            if probs[i] >= thr:
                sel.append((name, float(probs[i])))
    # fallback: top-k
    if not sel:
        order = np.argsort(-probs)[:top_k]
        sel = [(bundle["classes"][i], float(probs[i])) for i in order]
    # Sort high→low
    sel.sort(key=lambda x: x[1], reverse=True)
    return sel

class ShoeAwareRandomRec:
    def __init__(self, top_k: int, preference_rules: dict, seed: int = 42, temperature: float = 0.08):
        """
        preference_rules: dict[shoe_code][keyword_id] = score
        """
        self.top_k = top_k
        self.preference_rules = preference_rules
        self.rng = np.random.default_rng(seed)
        self.temperature = float(temperature)

    def _pick_shoe(self, shoe_attr: dict) -> str | None:
        for k, v in shoe_attr.items():
            if v:
                return k
        return None

    def _random_topk(self, candidates: list[str]) -> list[tuple[str, float]]:
        if not candidates:
            return []
        k = min(self.top_k, len(candidates))
        chosen = self.rng.choice(candidates, size=k, replace=False)
        scores = self.rng.random(k)
        return list(zip(chosen, scores))

    def _compute_score(self, code: str, shoe: str, keywords: list[int]) -> float:
        """
        Compute score for a single candidate:
        - code: item code
        - shoe: predicted shoe_code
        - keywords: list of keyword_id for this item
        """
        base = 1.0
        prefs = self.preference_rules.get(shoe, {})
        bonus = sum([prefs.get(kw, 0) for kw in keywords])
        noise = self.rng.normal(0, self.temperature)
        return float(base + bonus + noise)

    def predict(self, shoe_attr: dict, selected_rc: str, candidates: dict) -> list[tuple[str, float]]:
        """
        candidates = {}
        for code, info in ITEM_INFO.items():
            candidates[code] = {
                "name": info["name"],
                "type": info["type"],
                "keywords": LLM_KEYWORDS_MAP.get(code, [])
            }
        selected_rc: "景點" | "美食" | "伴手禮"
        Returns top_k [(code, score)]
        """
        shoe = self._pick_shoe(shoe_attr)
        want_type = {"景點": "place", "美食": "eat", "伴手禮": "gift"}.get(selected_rc, None)
        if not want_type:
            return []

        # 篩選 candidates
        # step 1基礎篩選：只抓出符合類型的項目 (美食/景點/伴手禮)
        candidates_of_type = {
            code: info for code, info in candidates.items() if info["type"] == want_type
        }
    
        if not candidates_of_type:
            return []
    
        # step 2計算所有候選項目的分數
        scored = []
        for code, info in candidates_of_type.items():
            kw_list = info.get("keywords", [])
            # 呼叫您原本的計分邏輯
            score = self._compute_score(code, shoe, kw_list)
            scored.append({
                "place_code": code,
                "display": info.get("items_name", ""),
                "score": score,
                "type": want_type
            })
    
        # step 3依照分數從高到低排序
        scored.sort(key=lambda x: x["score"], reverse=True)
    
        # step 4🔥 核心修正：加入隨機擾動機制 (針對美食特別有效)
        # 如果是美食或伴手禮，或是分數差距很小時，擴大池子來隨機抽樣
        
        # 定義候選池大小 (例如取前 15 名)
        POOL_SIZE = 15 
        top_n_candidates = scored[:POOL_SIZE]
    
        # 從這 15 個高分項目中，隨機抽出 TOP_K (5) 個
        # 這樣就不會每次都只出現前 5 名
        final_k = min(self.top_k, len(top_n_candidates))
        final_recommendations = random.sample(top_n_candidates, k=final_k)
    
        # step 5(可選) 讓抽出來的這 5 個再按分數排一次，視覺上比較合理
        final_recommendations.sort(key=lambda x: x["score"], reverse=True)
    
        return final_recommendations

# === Load models with caching ===
@st.cache_resource
def load_models():
    try:
        # 1️⃣ 先建立模型（這才是 nn.Module）
        model = AttributeClassifier(num_classes=NUM_ATTRIBUTES)

        # 2️⃣ 載入 checkpoint（⚠️ 回傳的是 dict，不是 model）
        ret = load_attribute_checkpoint(
            model,
            ATTRIBUTE_MODEL_WEIGHTS,
            map_location="cpu"
        )

        # 3️⃣ 現在 model 仍然是 nn.Module，可以 eval()
        model.eval()

        # 4️⃣ 從 ret 拿 classes
        classes = ret.get(
            "classes",
            ["boots", "high_heels", "sandals", "slippers", "sport_shoe"]
        )

        return model, classes

    except Exception as e:
        st.error(f"模型載入失敗：{e}")
        import traceback
        st.text(traceback.format_exc())
        return None, None

# === Preprocess transform ===
preprocess = transforms.Compose([
    transforms.Resize((224, 224)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.485,0.456,0.406],
                         std=[0.229,0.224,0.225]),
])


# === 建立推薦模型實例（鞋款只影響景點，美食/伴手禮隨機） ===
# 讀取 DB
PREFERENCE_RULES = load_preference_rules_from_db()

# 建立 rec_model
rec_model = ShoeAwareRandomRec(
    top_k=TOP_K,
    preference_rules=PREFERENCE_RULES,
    seed=42,
    temperature=0.08
)

# --- Initialization ---
if "selected_rc" not in st.session_state:
    st.session_state.selected_rc = None

# === LLM ===
def get_llm(**overrides):
    """
    Return a client for the selected backend.
    - Ollama: returns a LlamaIndex Ollama LLM object (supports .stream_chat)
    - LM Studio: returns an OpenAI client (use .chat.completions.create)
    """
    temperature = float(LLM_TEMPERATURE)
    top_p = float(LLM_TOP_P)
    timeout = float(LLM_TIMEOUT)
    num_ctx = int(LLM_NUM_CTX)
    num_predict = int(LLM_NUM_PREDICT)

    if "num_predict" in overrides:
        num_predict = int(overrides.pop("num_predict"))

    if BACKEND == "LM Studio":
        # Option A: standard OpenAI client, pointed at LM Studio
        client = OpenAI(base_url=LMSTUDIO_BASE_URL, api_key="lm-studio")
        # we’ll pass temperature/top_p/max_tokens at call-time
        return client

    # Ollama path (unchanged)
    params = dict(
        model=LLM_MODEL,
        base_url=LLM_BASE_URL,
        request_timeout=timeout,
        temperature=temperature,
        top_p=top_p,
        repeat_penalty=float(LLM_REPEAT_PENALTY),
        num_ctx=num_ctx,
        additional_kwargs={"num_predict": num_predict},
    )
    params.update(overrides)
    return Ollama(**params)


def generate_with_ollama(prompt: str) -> str:
    try:
        llm = get_llm()

        if BACKEND == "LM Studio":
            # LM Studio (OpenAI client) expects list of dicts: {"role": "...", "content": "..."}
            messages = [{"role": "user", "content": prompt}]
            resp = llm.chat.completions.create(
                model=LLM_MODEL,
                messages=messages,
                temperature=float(LLM_TEMPERATURE),
                top_p=float(LLM_TOP_P),
                max_tokens=int(LLM_NUM_PREDICT),
            )
            return resp.choices[0].message.content

        else:
            # Ollama (LlamaIndex) expects list[ChatMessage]
            history = [ChatMessage(role=MessageRole.USER, content=prompt)]
            resp = llm.chat(history)  # non-streaming call
            return resp.message.content

    except Exception as e:
        return f"[LLM Error]: {e}"


# ⬇️ Load models into session state
if "attr_model" not in st.session_state or "classes" not in st.session_state:
    st.session_state.attr_model, st.session_state.classes = load_models()

def lang_display_name(lang: str) -> str:
    lang = (lang or "").lower()
    if lang.startswith("zh"): return "Traditional Chinese"
    if lang.startswith("ja"): return "Japanese"
    return "English"

# === Prompt builder: place/est/gift intro ===

def make_place_intro_prompt(place_name: str, lang: str, max_len: int) -> str:
    lang = normalize_lang(lang)
    is_cjk = lang in ("zh", "ja")
    target_lang = lang_display_name(lang)

    unit = "字" if is_cjk else "words"
    floor = max(1, int(max_len * 0.6))

    return f"""
You are a professional travel writer.

Write a short introduction for "{place_name}".

LANGUAGE REQUIREMENT:
You MUST write ONLY in {target_lang}. Do not mix languages.

STYLE:
Warm, vivid, and specific. 2–3 sentences.

LENGTH:
About {max_len} {unit}, and no fewer than {floor} {unit}.

CONTENT RULES:
- Be concrete and sensory.
- Do NOT mention the county/city.
- Avoid clichés.
- If unsure about facts, do not invent.

OUTPUT FORMAT:
One single paragraph only. No title, no list, no quotation marks.
"""

def fallback_overall_text(attrs, places, lang: str = "zh") -> str:
    if isinstance(lang, dict):
        lang = st.session_state.get("ui_lang", "zh")

    lang = normalize_lang(lang)

    shoe = next((k for k, v in (attrs or {}).items() if v), None)
    shoe_zh = LABEL_ZH.get(shoe, shoe or "鞋款")
    names = "、".join(places) if places else "多個熱門景點"

    if lang == "zh":
        return f"根據你的鞋款（{shoe_zh}），這份一日行程精選：{names}。路線步行友善、景觀與在地風味並重，適合輕鬆探索。"
    if lang == "ja":
        return f"靴の種類（{shoe_zh}）に合わせて、{names} を中心にめぐる1日プランです。景色と食をバランスよく楽しめる軽めのコースにしました。"
    return f"Based on your shoes ({shoe_zh}), this one-day plan highlights {names}. It mixes views and local tastes with easy walking."

def generate_overall_report_text(attributes, confirmed_places, correct_rate, lang_code: str) -> str:
    lang = normalize_lang(lang_code)
    target_lang = lang_display_name(lang)

    places_str = "、".join(confirmed_places) if lang in ("zh","ja") else ", ".join(confirmed_places)

    kw_texts = []
    for code in confirmed_places:
        item_name = ITEM_INFO.get(code, {}).get("name", code)
        keywords = ITEM_KEYWORDS_INFO.get(code, [])
        kw_descs = [f"{kw['value']} ({kw['dimension']}): {kw['description']}" for kw in keywords]
        kw_texts.append(f"{item_name}: {'; '.join(kw_descs)}")

    kw_prompt_text = "\n".join(kw_texts)

    shoe = next((k for k, v in (attributes or {}).items() if v), None)
    shoe_zh = LABEL_ZH.get(shoe, shoe or "shoe type")

    prompt = f"""
You are a travel itinerary writer.

LANGUAGE RULE:
You MUST respond ONLY in {target_lang}. Do not use other languages.

FORMAT RULES:
- One natural paragraph only.
- No bullet points, no schedule format.
- Only mention places from this list: {places_str}
- Do NOT mention counties or cities.

USER CONTEXT:
Shoe type: {shoe_zh}
Preference match rate: {correct_rate:.0f}%

PLACE FEATURES:
{kw_prompt_text}

TASK:
Write a warm, concrete recommendation description in 2–3 sentences.
"""

    return generate_with_ollama(prompt)


def fallback_intro(place_name: str, lang: str = "zh") -> str:
    lang = normalize_lang(lang)

    if lang == "zh":
        out = f"{place_name} 是適合輕鬆散步、拍照與在地小吃體驗的好去處。"
    elif lang == "ja":
        out = f"{place_name} は散策や写真撮影、ローカルフードを楽しめる心地よいスポットです。"
    else:
        out = f"{place_name} is a pleasant spot for easy walks, photos, and local food experiences."

    # 長度控制保留你原邏輯
    if lang in ("zh", "ja"):
        max_len = PLACE_INTRO_MAX_LEN.get(lang, 120)
        if len(out) > max_len:
            out = out[:max_len].rstrip("，,。.!?；; ") + "。"
    else:
        words = out.split()
        if len(words) > PLACE_INTRO_EN_MAX_WORDS:
            out = " ".join(words[:PLACE_INTRO_EN_MAX_WORDS]).rstrip(",.;:") + "."
    return out

def generate_place_intro(place_name: str, lang: str = "zh", max_len: int | None = None) -> str:
    lang = normalize_lang(lang)
    if max_len is None:
        max_len = PLACE_INTRO_MAX_LEN.get(lang, PLACE_INTRO_EN_MAX_WORDS)

    def measure(s: str) -> int:
        return len(s) if lang in ("zh", "ja") else len(s.split())

    # First try
    prompt = make_place_intro_prompt(place_name, lang, max_len)
    text = generate_with_ollama(prompt).strip()

    # Fallback template
    if not text or text.startswith("[LLM Error]"):
        return fallback_intro(place_name, lang)

    return text

def compute_report_labels(got_tag: str, selected_rc: str):
    """
    Return a tuple (lbl_intros, lbl_item, lbl_req) for the report UI.
    got_tag: internal tag -> "place" | "eat" | "gift"
    selected_rc: UI label (already localized text)
    """

    # --- UI text (multilingual) ---
    lbl_reco = L.get("lbl_recommend", "推薦")
    lbl_place = L.get("lbl_place", "景點")
    lbl_food = L.get("lbl_food", "美食")
    lbl_gift = L.get("lbl_gift", "伴手禮")

    lbl_like_place = L.get("lbl_like_place", "喜歡景點")
    lbl_like_food = L.get("lbl_like_food", "喜歡美食")
    lbl_like_gift = L.get("lbl_like_gift", "喜歡伴手禮")

    lbl_default_item = L.get("lbl_like_item", "喜歡項目")
    lbl_default_req = L.get("lbl_req_type", "推薦類型")
    lbl_default_intro = L.get("lbl_recommend_items", "推薦項目")

    # --- Mapping UI label → internal tag (language-agnostic) ---
    rc_map = {
        lbl_place: "place",
        lbl_food: "eat",
        lbl_gift: "gift",
    }
    selected_tag = rc_map.get(selected_rc)

    # --- Logic (same as your original rules) ---
    if got_tag == "place":
        if selected_tag == "eat":
            return lbl_reco, lbl_like_place, lbl_food
        if selected_tag == "gift":
            return lbl_reco, lbl_like_place, lbl_gift

    elif got_tag == "eat":
        if selected_tag == "place":
            return lbl_reco, lbl_like_food, lbl_place
        if selected_tag == "gift":
            return lbl_reco, lbl_like_food, lbl_gift

    elif got_tag == "gift":
        if selected_tag == "place":
            return lbl_reco, lbl_like_gift, lbl_place
        if selected_tag == "eat":
            return lbl_reco, lbl_like_gift, lbl_food

    # --- fallback ---
    return lbl_default_intro, lbl_default_item, lbl_default_req


def pdf_like_markdown(
    overall_text=None,
    correct_rate=0.0,
    predicted_label=None,
    predicted_conf=None,
    user_gender=None,
    user_age=None,
    selected_item=None,
    confirmed_places=None,
    requested_reco_category=None,
    place_intros=None,
    lbl_intros_override=None,
    lbl_item_override=None,
    lbl_req_override=None,
    QRCODE_PATH="qr_code.png"
):
    """
    Generate multilingual markdown-like report for recommendations.
    confirmed_places: list of item codes
    place_intros: dict {code: intro_text}
    requested_reco_category: 'place', 'eat', 'gift'
    """

    # ---- titles/labels (multilingual) ----
    lang = st.session_state.get("ui_lang", "zh")
    L = (st.session_state.get("ui_bundle") or {}).get(lang)
    if L is None:
        st.warning(f"⚠️ ui_bundle for lang '{lang}' not found, fallback to empty dict.")
        L = defaultdict(str)

    title = L.get("pdf_title", "一日旅遊推薦報告")
    lbl_summary = L.get("lbl_summary", "說明")
    lbl_profile = L.get("lbl_profile", "使用者資料")
    lbl_pc = L.get("lbl_pc", "地點介紹")
    lbl_detect = L.get("lbl_detect", "鞋款偵測")
    lbl_conf = L.get("lbl_conf", "信心")
    lbl_intros = L.get("lbl_intros", "推薦項目")
    lbl_item   = L.get("lbl_item", "喜歡項目")
    lbl_req    = L.get("lbl_req", "推薦類型")
    report_time_lbl = L.get("report_time", "報告時間")
    confirmed_rate_lbl = L.get("confirmed_rate", "確認正確率")

    # --- apply overrides if provided ---
    if lbl_intros_override: lbl_intros = lbl_intros_override
    if lbl_item_override:   lbl_item   = lbl_item_override
    if lbl_req_override:    lbl_req    = lbl_req_override

    lines = []
    lines.append(f"## {title}")
    lines.append(f"<div style='font-size:20px;'><b>{report_time_lbl}:</b> {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}</div>")
    lines.append(f"<div style='font-size:20px;'><b>{confirmed_rate_lbl}:</b> {correct_rate:.2f}%</div>")

    # detected shoe (optional)
    if predicted_label:
        shoe_zh = LABEL_ZH.get(predicted_label, predicted_label)
        conf_str = f"{predicted_conf*100:.1f}%" if isinstance(predicted_conf, (int, float)) else None
        meta = f"<b>{lbl_detect}</b>：{shoe_zh}" + (f"（{lbl_conf} {conf_str}）" if conf_str else "")
        lines.append(f"<div style='font-size:20px;'>{meta}</div>")

    # user profile (optional)
    if user_gender or user_age:
        profile_text = f"{('Gender: ' + user_gender) if user_gender else ''}{('，Age: ' + user_age) if user_age else ''}"
        lines.append(f"<div style='font-size:20px;'><b>{lbl_profile}</b>：{profile_text}</div>")

    # user choices (optional)
    sel_parts = []
    if selected_item:
        sel_parts.append(f"{lbl_item}: {selected_item}")
    if sel_parts:
        lines.append(f"<div style='font-size:20px;'><b>{'；'.join(sel_parts)}</b></div>")

    lines.append("")  # spacer

    # summary paragraph
    lines.append(f"<div style='font-size:20px;'><b>{lbl_summary}</b></div>")
    lines.append(f"<div style='font-size:20px;'>{overall_text.strip() if overall_text else '_(no summary)_'}</div>")

    # one-liners for each confirmed place
    lines.append(f"<div style='font-size:20px;'><b>{lbl_intros}</b></div>")
    if confirmed_places:
        # rc_key = 'place'/'eat'/'gift'
        rc_key = requested_reco_category or "place"

        # 依語言抓名稱
        items_list = get_active_items(rc_key, lang)  # list of dicts: {"code", "items_name"}

        for p in confirmed_places:
            display_name = next((x["items_name"] for x in items_list if x["code"] == p), p)
            intro = (place_intros or {}).get(p, "").strip()
            if intro:
                lines.append(f"<div style='font-size:20px;'>- <b>{display_name}</b>：{intro}</div>")
            else:
                lines.append(f"<div style='font-size:20px;'>- <b>{display_name}</b></div>")
    else:
        lines.append("<div style='font-size:20px;'>_(none)_</div>")

    # footer
    lines.append("\n<div align='right' style='font-size:20px;'>2025 InnoServe Competition – AMD Smart Environments & Open Innovation Track</div>")
    lines.append("\n<div align='right' style='font-size:20px;'>Project Team: “Head Leads, Feet Know”</div>")
    lines.append("\n<div align='right' style='font-size:20px;'>Generated by AMD AI PC (Llama 3.2)</div>")

    # QR code (optional)
    if os.path.exists(QRCODE_PATH):
        with open(QRCODE_PATH, "rb") as _f:
            _qr_b64 = base64.b64encode(_f.read()).decode()
        lines.append(f"\n<div align='right'> <img src='data:image/png;base64,{_qr_b64}' width='110'></div>")

    return "\n".join(lines)

def replace_codes_with_names(text: str):
    """
    自動將文本中的 P-1, E-2 等代碼替換為當前語系的名稱。
    對應全域的 ITEM_INFO (已隨 sidebar 語言變動)。
    """
    if not text or not isinstance(text, str):
        return text

    # 按代碼長度降序排序，避免 "P-11" 的 "P-1" 先被替換掉
    sorted_codes = sorted(ITEM_INFO.keys(), key=len, reverse=True)

    # 執行替換
    import re
    for code in sorted_codes:
        name = ITEM_INFO[code].get("items_name", code)
        # 使用 \b 確保精確匹配邊界，防止 P-1 誤傷 P-10
        pattern = rf"\b{re.escape(code)}\b"
        text = re.sub(pattern, name, text)
    
    return text

# === Run inference (DEBUG) ===
def run_inference():
    st.subheader(L.get("take_photo"))
    uploaded_img = st.camera_input(L.get("take_photo_error"))

    if uploaded_img is None:
        st.warning(L.get("take_photo_warning"))
        return None, None, None

    try:
        image = Image.open(uploaded_img).convert("RGB")
        st.image(image, caption="擷取影像", use_container_width=True)

        # 中心裁切，減少背景干擾
        w, h = image.size
        side = int(min(w, h) * 0.9)
        left = (w - side) // 2
        top  = (h - side) // 2
        pil_crop = image.crop((left, top, left + side, top + side)).convert("RGB")

        # 分類
        tensor_crop = preprocess(pil_crop).unsqueeze(0).to(DEVICE)
        with torch.no_grad():
            outputs = st.session_state.attr_model(tensor_crop)
            probs = torch.softmax(outputs, dim=1)[0].cpu().numpy()

        class_labels = st.session_state.classes
        # top-k (show 3; change K if you want)
        K = min(3, len(class_labels))
        topk_idx = np.argsort(-probs)[:K]
        topk = [(class_labels[i], float(probs[i])) for i in topk_idx]

        max_idx = int(topk_idx[0])
        predicted_label = class_labels[max_idx]
        
        # 存入 Session State
        st.session_state['predicted_label'] = predicted_label
        st.session_state['predicted_conf']  = float(probs[max_idx])
        st.session_state['pred_topk']       = topk 
        st.session_state.last_crop = pil_crop
        
        # 建立屬性字典
        predicted_attrs = {label: (label == predicted_label) for label in class_labels}
        
        return image, predicted_attrs, None

    except Exception as e:
        # ⚠️ 就是這裡！一定要有這個 except 區塊
        st.error(f"❌ 偵測過程出錯: {e}")
        return None, None, None

# --- 接下來才是你的 App Flow (st.title 等等) ---

# === Streamlit App Flow ===
st.title(L.get("title"))

# --- 初始化 session state ---
if "step" not in st.session_state:
    st.session_state.step = "start"
if "classes" not in st.session_state:
    st.session_state.classes = []
if "attributes" not in st.session_state:
    st.session_state.attributes = None
if "recommendations" not in st.session_state:
    st.session_state.recommendations = []
if "confirmed_recs" not in st.session_state:
    st.session_state.confirmed_recs = {}
if "selected_item" not in st.session_state:
    st.session_state.selected_item = None
if "primary_category" not in st.session_state:
    st.session_state.primary_category = None
if "llm_generated" not in st.session_state:
    st.session_state.llm_generated = False
if "scroll_trigger" not in st.session_state:
    st.session_state.scroll_trigger = False
if st.session_state.get("stage") == -1 and st.session_state.get("decline_pause"):
    st.info(L.get("declined_msg"))
    st.caption(L.get("countdown_msg"))

    time.sleep(5)

    st.session_state.stage = 0
    st.session_state.step = "start"

    # 清掉 Stage 0 相關狀態，保證相機 / inference 流程會被觸發
    for k in ["attributes", "recommendations", "show_detected_attrs", "confirmed_recs"]:
        st.session_state.pop(k, None)

    # 清掉暫停 flag
    st.session_state.pop("decline_pause", None)
    
    st.rerun()

# ✅ now it will actually run
if len(st.session_state.classes) != NUM_ATTRIBUTES:
    st.warning(f"class count mismatch: {len(st.session_state.classes)} vs NUM_ATTRIBUTES={NUM_ATTRIBUTES}")


if "correct_rate" not in st.session_state:
    st.session_state.correct_rate = 0

if "stage" not in st.session_state:
    st.session_state.stage = 0
if "show_detected_attrs" not in st.session_state:
    st.session_state.show_detected_attrs = False

model, classes = load_models()
if model is None:
    st.stop()

st.session_state.attr_model = model
st.session_state.classes = classes
# 🔹 直接跑偵測流程
if st.session_state.stage == 0:
    if not st.session_state.get("attributes"):
        img_pil, attrs, recs = run_inference()
        if attrs:
            st.session_state.attributes = attrs
            st.session_state.recommendations = recs
            st.session_state.show_detected_attrs = True

# 🔹 Stage 0 顯示偵測屬性
if st.session_state.get("show_detected_attrs", False):
    pred_label = st.session_state.get("predicted_label")
    topk = st.session_state.get("pred_topk", [])
    pred_conf = float(st.session_state.get("predicted_conf", 0.0))
    
    translated_top1 = S.get(pred_label, pred_label)
    st.subheader(L.get("stage0"))
    st.success(
        f"{L.get('stage0_shown')} **{translated_top1}** "
        f"({L.get('stage0_confidence')} {pred_conf*100:.1f}%)"
    )

    OTHER_LABEL = L.get("other", "Other")

    # --- 顯示全部鞋款 + Other ---
    all_classes = list(S.keys())
    opts_dict = {S.get(lbl, lbl): lbl for lbl in all_classes}
    opts_display = list(opts_dict.keys()) + [OTHER_LABEL]

    try:
        # 取得模型預測標籤的翻譯名稱
        current_pred_translated = S.get(pred_label, pred_label)
        # 找出該名稱在顯示清單中的位置
        default_idx = opts_display.index(current_pred_translated)
    except ValueError:
        # 如果不在清單內，才預設為 0
        default_idx = 0

    sel = st.radio(L.get("comfirm"), opts_display, index=default_idx, key="confirm_shoe_radio")

    final_label = None
    final_conf = 0.0
    manual_note = ""  # 新增：文字輸入內容

    # --- 邏輯判定區 ---
    final_label = None
    final_conf = 0.0
    manual_note = ""

    if sel == OTHER_LABEL:
        manual_note = st.text_input(L.get("input"), value=translated_top1)
        final_label = manual_note
        # 選 Other 通常視為預測錯誤
    else:
        final_label = opts_dict.get(sel)
        final_conf = float(dict(topk).get(final_label, 0.0))

    # --- 按鈕區 ---
    c1, c2 = st.columns(2)
    with c1: confirm_btn = st.button(L.get("stage0_next"))
    with c2: skip_btn = st.button(L.get("stage0_skip"))

    if confirm_btn or skip_btn:
        raw_pred = st.session_state.get("predicted_label_raw") or pred_label
        if skip_btn:
            was_correct_flag = True
            final_label = pred_label # 強制同步
            final_conf = pred_conf
        else:
            # 關鍵：直接比較原始 ID，避開翻譯表的干擾
            was_correct_flag = (str(final_label).strip() == str(raw_pred).strip())

        current_lang = st.session_state.get("ui_lang", "zh")
        reverse_map = st.session_state.shoe_reverse_bundle.get(current_lang, {})
        final_label_en = reverse_map.get(final_label, final_label)

        st.session_state["predicted_label"] = final_label_en
        st.session_state["predicted_conf"] = final_conf

        # --- attributes fallback ---
        classes = st.session_state.get("classes", [])
        if not classes:
            classes = list(S.keys())
        st.session_state["attributes"] = {lbl: (lbl == final_label) for lbl in classes}

        saved_img_path = save_user_image_copy(prefix="shoe")

        # --- 建立資料紀錄，新增備註欄位 ---
        row = {
            "user_id": st.session_state["user_id"],
            "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            "predicted_attr": final_label_en,
            "pred_conf": round(pred_conf, 6),
            "topk": "|".join([f"{lbl}:{score:.4f}" for lbl, score in topk]),
            "shoe_code": final_label,
            "shoe_name_zh": st.session_state.shoe_bundle.get("zh", {}).get(final_label, final_label),
            "was_correct": was_correct_flag,
            "image_path": saved_img_path,
            "location": "",
            "note": manual_note  # ✅ 新增備註欄位
        }

        save_shoe_feedback_to_db(row)
        st.info(L.get("stage0_info"))

        st.session_state.show_detected_attrs = False
        st.session_state.stage = 1
        st.rerun()

# --- 全域設定 ---
# 1. 性別選項：建立「顯示文字」到「資料庫數值」的映射
gender_map = {
    L.get("gender_male", "Male"): "男",
    L.get("gender_female", "Female"): "女"
}
gender_option = list(gender_map.keys())

# 2. 年齡選項：同樣從資料庫抓取翻譯，如果沒有就用預設值
age_option = [
    L.get("age_1", "15 or below"),
    L.get("age_2", "16-30"),
    L.get("age_3", "31-45"),
    L.get("age_4", "46-60"),
    L.get("age_5", "60 or above")
]

# 3. 類別選項：這對應到你 Stage 3 的標籤
all_categories = [
    L.get("all_categories_p", "Attractions"),
    L.get("all_categories_e", "Food"),
    L.get("all_categories_g", "Souvenirs")
]
# Safety: 已偵測到屬性、沒有顯示偵測區塊、卻仍停在 stage 0 → 推進到 stage 1
if st.session_state.get("attributes") and not st.session_state.get("show_detected_attrs", False) and st.session_state.stage == 0:
    st.session_state.stage = 1

# --- Stage 1: 基本資料 ---
elif int(st.session_state.stage) == 1:
    st.subheader(L.get("stage1"))

    # 1. 準備翻譯後的選項
    gender_map = {
        L.get("gender_male", "Male"): "男",
        L.get("gender_female", "Female"): "女"
    }
    gender_option_translated = list(gender_map.keys())
    
    age_map = {
        L.get("age_option_below15", "15 years old or below"): "15歲（含）以下",
        L.get("age_option_16-30", "16-30 years old"): "16-30歲",
        L.get("age_option_31-45", "31-45 years old"): "31-45歲",
        L.get("age_option_46-60", "46-60 years old"): "46-60歲",
        L.get("age_option_above60", "60 years old or above"): "60歲（含）以上"
    }
    age_option_translated = list(age_map.keys())
    
    # 2. 顯示 UI (傳入翻譯後的 Label 和 Options)
    st.session_state.selected_gender = exclusive_toggle_group(
        L.get("gender", "Gender:"), 
        gender_option_translated, 
        prefix="gender_toggle", 
        selected_state_key="selected_gender"
    )
    
    st.session_state.selected_age = exclusive_toggle_group(
        L.get("age", "Age:"), 
        age_option_translated, 
        prefix="age_toggle", 
        selected_state_key="selected_age"
    )
    
    # 3. 重要：轉換回「原始值」供後續程式邏輯使用
    final_gender_code = gender_map.get(st.session_state.selected_gender)
    final_age_code = age_map.get(st.session_state.selected_age)

    st.info(L.get("finish_info"))
    if st.button(L.get("next_btn")):
        if st.session_state.get("selected_gender") and st.session_state.get("selected_age"):
            st.session_state.stage = 2
            st.rerun()
        else:
            st.warning(L.get("stage1_warning"))

# --- Stage 2: 選擇要回答的題目 ---
elif int(st.session_state.stage) == 2:
    # 1. 建立「顯示文字」與「後端代碼」的雙向關係
    # 我們讓 Key 是代碼，Value 是翻譯後的文字
    categories = {
        "place": L.get("all_categories_p", "Attractions"),
        "eat": L.get("all_categories_e", "Food"),
        "gift": L.get("all_categories_g", "Souvenirs")
    }

    # 初始化
    if "primary_category" not in st.session_state:
        st.session_state.primary_category = None  # 這裡未來會存 'place', 'eat' 等

    st.markdown(f"## **{L.get('stage2_title')}**")

    # --- 按鈕區 ---
    cols = st.columns(len(categories))
    
    # 遍歷代碼與顯示文字
    for i, (code, display_name) in enumerate(categories.items()):
        # ✅ 判斷選中狀態：用 code 比對，這樣換語言勾勾也不會消失
        is_selected = (st.session_state.primary_category == code)
        label = f"☑️ {display_name}" if is_selected else display_name

        if cols[i].button(label, key=f"btn_{code}"):
            st.session_state.primary_category = code
            st.session_state.got_tag = code # 確保 got_tag 跟著更新
            st.rerun()

    # --- 顯示目前選擇 ---
    if st.session_state.primary_category:
        current_code = st.session_state.primary_category
        # 從字典抓出當前語系的顯示名稱
        current_display = categories.get(current_code)
        
        selected_text = L.get("stage2_shown")
        st.info(f" {selected_text} {current_display}")

        # --- 下一步 ---
        st.info(f" {L.get('finish_info')}")
        if st.button(L.get('next_btn')):
            # 注意：這裡進入 Stage 3 之前，你的 primary_category 已經是 'place' 了
            # 這正好符合你 get_active_items 需要的輸入！
            st.session_state.stage = 3
            st.rerun()

# --- Stage 3: 選擇具體項目 ---
elif int(st.session_state.stage) == 3:

    # 1️⃣ 取得目前語言
    lang_code = st.session_state.ui_lang
    cat_code = st.session_state.get("primary_category", "place")

    # 2️⃣ 取得資料庫活躍項目列表
    filtered_items = get_active_items(cat_code, lang_code)  # 回傳 list[dict]

    if not filtered_items:
        st.warning(L.get("no_items_warning", "No items found."))
        st.stop()

    # 3️⃣ 自然排序 (P-1, P-2, ...)
    def natural_sort_key(item):
        code = item.get("code", "")
        match = re.search(r"\d+", str(code))
        return int(match.group()) if match else 9999

    sorted_items = sorted(filtered_items, key=natural_sort_key)

    # 4️⃣ 顯示分類名稱（使用 ui_texts 中既有的 all_categories_*）
    cat_key_map = {
        "place": "all_categories_p",
        "eat": "all_categories_e",
        "gift": "all_categories_g",
    }

    cat_text_key = cat_key_map.get(cat_code)
    cat_display_name = L.get(cat_text_key, cat_code)

    template = L.get("stage3", "Please select {selected_category}")
    st.subheader(template.format(selected_category=cat_display_name))

    # --- 5️⃣ 摺疊列表區 ---
    with st.expander(
        L.get("expand_list", "Expand list"),
        expanded=st.session_state.get("expander_open", True)
    ):
        cols_per_row = 3

        for i in range(0, len(sorted_items), cols_per_row):
            row_items = sorted_items[i:i + cols_per_row]
            cols = st.columns(cols_per_row)

            for idx, item in enumerate(row_items):
                code = item.get("code", "")

                # 根據語言抓對應欄位
                display_text = item["items_name"]

                # 判斷是否已選擇
                is_selected = st.session_state.get("selected_item_code") == code
                btn_label = f"☑️ {display_text}" if is_selected else display_text

                if cols[idx].button(btn_label, key=f"place_btn_{code}"):
                    st.session_state.selected_item_code = code
                    st.session_state.selected_item_name = display_text
                    st.session_state.selected_item = f"{code} {display_text}"
                    st.session_state.expander_open = False
                    st.rerun()

    # --- 6️⃣ 下一步與操作按鈕區 ---
    if st.session_state.get("selected_item_code"):

        shown_text = L.get("stage3_shown", "You selected {selected_category}:").format(
            selected_category=cat_display_name
        )
        st.info(f"👉 {shown_text} **{st.session_state.selected_item_name}**")

        st.write(L.get("stage3_info", "Click Next to proceed."))

        col1, col2 = st.columns([1, 1])

        with col1:
            if st.button(L.get("next_btn", "Next"), type="primary", use_container_width=True):
                st.session_state.stage = 4
                st.session_state.pop("stage3_confirmed", None)
                st.rerun()

        with col2:
            if st.button(L.get("change_option", "Change"), use_container_width=True):
                st.session_state.expander_open = True
                st.rerun()

# --- Stage 4: 選擇推薦類型 ---
elif int(st.session_state.stage) == 4:
    
    # 1. 取得 Stage 2 存下的標籤與當前語言
    tag = st.session_state.get("got_tag") # 例如 'place', 'eat', 'gift'
    lang = st.session_state.get("ui_lang", "zh") # 例如 'zh', 'en', 'ja'
    
    if not tag:
        st.error("系統遺失了分類標籤 (got_tag)，請回到首頁重新開始。")
        st.stop()

    # 2. ❗ 解決 NameError：先準備所有選項對照表與計算剩餘選項
    # 這裡從 L (已載入的 ui_texts) 抓取顯示文字
    cat_map_full = {
        "place": L.get("all_categories_p"),
        "eat": L.get("all_categories_e"),
        "gift": L.get("all_categories_g")
    }
    
    # 核心邏輯：排除掉 Stage 2 選過的，算出剩下的選項
    remaining_codes = [code for code in cat_map_full.keys() if code != tag]

    # 3. 從 ui_texts 讀取動態標題 (stage4_title_place / eat / gift)
    # 根據您的檔案邏輯，L 已經是從 ui_texts 讀入的字典
    title_key = f"stage4_title_{tag}"
    display_title = L.get(title_key)

    # 顯示標題
    if display_title:
        st.markdown(f"## **{display_title}**")
    else:
        # 如果資料庫漏掉此 Key 的報錯提示
        st.error(f"❌ 資料庫 ui_texts 缺少 Key: **{title_key}**")
        st.info("請確認資料庫中 key 欄位包含 stage4_title_place, stage4_title_eat, stage4_title_gift")
        st.stop()

    # 4. 繪製按鈕區 (使用第 2 步定義好的 remaining_codes)
    if remaining_codes:
        cols = st.columns(len(remaining_codes))
        
        for i, code in enumerate(remaining_codes):
            display_name = cat_map_full[code]
            
            # 點擊按鈕後直接進入 Stage 5
            if cols[i].button(display_name, key=f"rc_{code}", use_container_width=True):
                st.session_state.selected_rc = code 
                st.session_state.selected_rc_display = display_name
                st.session_state.stage = 5
                st.rerun()
    else:
        st.warning("沒有其他可推薦的類型。")

    # 5. 顯示選擇資訊 (stage4_info)
    if st.session_state.get("selected_rc"):
        info_text = L.get("stage4_info", "您的選擇：")
        rc_display = cat_map_full.get(st.session_state.selected_rc)
        st.info(f"👉 {info_text} **{rc_display}**")
        
# --- Stage 5: 顯示推薦結果（多語系版，可直接貼上） ---
elif int(st.session_state.stage) == 5:

    # 1️⃣ 取得目前語言
    lang = st.session_state.get("ui_lang", "zh")
    L = st.session_state.ui_bundle.get(lang)

    # ⭐ 語言切換時清空推薦結果
    if st.session_state.get("rec_lang") != lang:
        st.session_state.recommendations = None
        st.session_state.rec_lang = lang

    # 2️⃣ 固定的 rc code（place / eat / gift）
    rc_code = st.session_state.selected_rc
    rc_cfg = {
        "place": {"bundle": "places", "type": "place", "label": L.get("all_categories_p")},
        "eat": {"bundle": "foods", "type": "eat", "label": L.get("all_categories_e")},
        "gift": {"bundle": "gifts", "type": "gift", "label": L.get("all_categories_g")},
    }[rc_code]

    st.subheader(L.get("stage5"))
    st.info(L.get("stage5_info").format(rc=rc_cfg["label"]))

    # 3️⃣ 載入 DeepFM 模型
    bundle = st.session_state.deepfm.get(rc_cfg["bundle"])
    if bundle is None:
        st.error(f"{rc_cfg['label']} 的 DeepFM 模型尚未載入。")
        st.stop()

    # 4️⃣ 第一次進 Stage 5 才產生推薦
    if not st.session_state.get("recommendations"):
        features = build_features_from_session(bundle)
        topk = predict_topk_deepfm(bundle, features, top_k=max(10, TOP_K))

        # 只留符合類型
        topk_filtered = [
            {"place_code": n, "score": float(s)}
            for (n, s) in topk
            if is_match_category(n, rc_cfg["type"])
        ]

        # fallback: 隨機推薦
        if not topk_filtered:
            attrs = dict(st.session_state.attributes or {})
            attrs["category"] = rc_cfg["type"]

            candidates = {
                code: info
                for code, info in ITEM_INFO.items()
                if info.get("type") == rc_cfg["type"]
            }

            fallback = rec_model.predict(attrs, rc_cfg["label"], candidates)
            topk_filtered = fallback

        # 排序並補齊到 TOP_K
        topk_filtered = sorted(topk_filtered, key=lambda x: x["score"], reverse=True)
        if len(topk_filtered) < TOP_K:
            used = {it["place_code"] for it in topk_filtered}
            pool = [
                k for k, v in ITEM_INFO.items()
                if v.get("type") == rc_cfg["type"] and k not in used
            ]
            np.random.shuffle(pool)
            for k in pool[: TOP_K - len(topk_filtered)]:
                topk_filtered.append({"place_code": k, "score": 0.01})

        st.session_state.recommendations = [
            {"code": it["place_code"], "score": it["score"]} for it in topk_filtered
        ]

    # 5️⃣ 顯示推薦列表（多語系 + 關鍵字）
    recs = st.session_state.recommendations
    st.subheader(L.get("stage5_title"))

    selected = {}
    kw_col_map = {"zh": "value", "en": "value_en", "ja": "value_ja"}
    kw_col = kw_col_map.get(lang, "value")

    for i, item in enumerate(recs, start=1):
        code = item["code"]
        score = item["score"]

        # 根據目前語言抓名稱與簡介（單一查詢）
        info = get_item_name_and_intro(code, lang)  # dict: {"name": ..., "intro": ...}
        display = info.get("name", "")
        intro = info.get("intro", "")

        # 關鍵字
        keywords = ITEM_KEYWORDS_INFO.get(code, {})
        kw_col_map = {"zh":"value","en":"value_en","ja":"value_ja"}
        kw_col = kw_col_map.get(lang, "value")
        kw_text = "、".join(k.get(kw_col,"") for k in keywords.values() if k.get(kw_col)) if keywords else ""


        # label 組成
        label = f"{i}. {display}（{L.get('score')} {score:.2f}）"
        if kw_text:
            label += f" ｜{L.get('keywords')}{kw_text}"
        if intro:
            label += f" ｜{intro}"

        selected[code] = st.checkbox(label, key=f"rec_{code}")

    st.session_state.confirmed_recs = {k: v for k, v in selected.items() if v}

    # 6️⃣ 確認 / 拒絕按鈕
    col1, col2 = st.columns(2)
    with col1:
        confirm_btn = st.button(L.get("stage5_con_btn"))
    with col2:
        decline_btn = st.button(L.get("stage5_dec_btn"))

    # 確認
    if confirm_btn:
        confirmed = st.session_state.confirmed_recs
        total = len(recs)
        correct_rate = (len(confirmed) / total * 100) if total else 0.0

        log_data = {
            "user_id": st.session_state["user_id"],
            "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            "language": lang,
            "age": st.session_state.get("selected_age"),
            "gender": st.session_state.get("selected_gender"),
            "pc_type": st.session_state.get("primary_category"),
            "selected_item": st.session_state.get("selected_item"),
            "rc_type": rc_code,
            "shoe_code": st.session_state.get("predicted_label"),
            "shown_places": {it["code"]: it["score"] for it in recs},
            "checked_places": list(confirmed.keys()),
            "correct_rate": correct_rate,
            "declined": False,
        }

        save_log_to_user_feedback(log_data)
        st.session_state.stage = 6
        st.rerun()

    # 全拒絕
    if decline_btn:
        log_data = {
            "user_id": st.session_state["user_id"],
            "timestamp": datetime.now().strftime("%Y-%m-%d %H:%M:%S"),
            "language": lang,
            "rc_type": rc_code,
            "shoe_code": st.session_state.get("predicted_label"),
            "shown_places": {},
            "checked_places": [],
            "correct_rate": 0.0,
            "declined": True,
        }

        save_log_to_user_feedback(log_data)
        st.session_state.stage = -1
        st.rerun()

# --- Stage 6: 生成報告 ---
elif int(st.session_state.stage) == 6:

    # 1️⃣ 蒐集基礎資料
    attrs = st.session_state.get("attributes", {}) or {}
    confirmed_place_codes = list(st.session_state.get("confirmed_recs", {}).keys())

    correct_rate = float(st.session_state.get("correct_rate", 0.0))
    lang_code = st.session_state.get("ui_lang", "zh")

    # 取得當前語言的地點名稱列表（用於校驗生成內容）
    items = get_active_items("place", lang_code)
    name_map = {x["code"]: x["items_name"] for x in items}
    confirmed_places_display = [name_map.get(code, code) for code in confirmed_place_codes]

    def _mentions_any_place(text, places):
        t = (text or "").strip()
        return bool(t) and any(p in t for p in places)
    
    # 從 session state 讀取現有文本
    overall_text = st.session_state.get("overall_text", "")
    
    # --- 生成 LLM 報告文本 ---
    if not overall_text or not isinstance(overall_text, str):
        with st.spinner(L.get("stage6_spinner")):
            try:
                # 這裡傳入 display 名稱給 LLM，讓它更有可能直接生出名稱
                overall_text = generate_overall_report_text(
                    attrs,
                    confirmed_places_display,
                    correct_rate,
                    lang_code
                )
            except Exception:
                overall_text = ""

            # --- 檢查生成內容是否有效 ---
            if (
                (not overall_text)
                or overall_text.startswith("[LLM Error]")
                or not _mentions_any_place(overall_text, confirmed_places_display)
            ):
                overall_text = fallback_overall_text(
                    attrs,
                    confirmed_places_display,
                    lang_code
                )

    # ⭐【關鍵改動】無論是 LLM 生成還是 Fallback，最後都跑一次代碼替換
    # 這樣即便 LLM 吐出 "去 E-1 逛逛"，也會被轉成 "去 某某店 逛逛"
    overall_text = replace_codes_with_names(overall_text)
    st.session_state.overall_text = overall_text

    # --- 顯示報告 ---
    got_tag = st.session_state.get("got_tag")
    selected_rc = st.session_state.get("selected_rc")
    lbl_intros, lbl_item, lbl_req = compute_report_labels(got_tag, selected_rc)

    # 產生 Markdown 格式
    report_md = pdf_like_markdown(
        confirmed_places=confirmed_place_codes,
        correct_rate=correct_rate,
        overall_text=st.session_state.overall_text,
        predicted_label=st.session_state.get("predicted_label"),
        predicted_conf=st.session_state.get("predicted_conf"),
        user_gender=st.session_state.get("selected_gender"),
        user_age=st.session_state.get("selected_age"),
        selected_item=st.session_state.get("selected_item"),
        requested_reco_category=st.session_state.get("selected_rc"),
        lbl_intros_override=lbl_intros,
        lbl_item_override=lbl_item,
        lbl_req_override=lbl_req,
        QRCODE_PATH=QRCODE_PATH
    )

    st.markdown(report_md, unsafe_allow_html=True)

    # --- 報告後的下一步按鈕 ---
    if not st.session_state.get("report_confirmed"):
        st.info(f"👉 {L.get('stage6_btn')}")
        if st.button(L.get("next_btn"), key="report_next"):
            st.session_state.report_confirmed = True
            st.session_state.stage = 7
            st.rerun()

# --- Stage 7: 評分 ---
elif int(st.session_state.stage) == 7:
    
    LANG_LABEL = {"zh": "繁體中文", "en": "English", "ja": "日本語"}

    # === 初始化展開狀態 ===
    if "expander_pic_open" not in st.session_state:
        st.session_state.expander_pic_open = True
    if "expander_like_open" not in st.session_state:
        st.session_state.expander_like_open = True

    # --- 1. 拍照紀念詢問 (key: stage7_pic) ---
    st.markdown(f"### {L.get('stage7_pic')}")
    with st.expander(L.get("expand_list"), expanded=st.session_state.expander_pic_open):
        # 選項對應 key: pic_option_1, pic_option_2
        options_pic = [L.get("pic_option_1"), L.get("pic_option_2")]
        
        # 建立底層代碼對應 (好哇 -> 1, 先不用 -> 2)
        OPTIONS_PIC_MAP = {
            L.get("pic_option_1"): "1",
            L.get("pic_option_2"): "2"
        }
        
        cols = st.columns(len(options_pic))
        for i, option in enumerate(options_pic):
            if cols[i].button(option, key=f"pic_btn_{i}"):
                st.session_state["options_pic"] = option
                st.session_state["take_pic"] = OPTIONS_PIC_MAP.get(option)
                st.session_state.expander_pic_open = False
                st.rerun()
                
    if "options_pic" in st.session_state:
        st.success(f"{L.get('stage2_shown')} {st.session_state['options_pic']}")

    # --- 2. 系統好感度評分 (key: stage7_rating) ---
    st.markdown(f"### {L.get('stage7_rating')}")
    with st.expander(L.get("expand_list"), expanded=st.session_state.expander_like_open):
        # 選項對應 key: rating_option_1 ~ 5
        options_rating = [
            L.get("rating_option_1"),
            L.get("rating_option_2"),
            L.get("rating_option_3"),
            L.get("rating_option_4"),
            L.get("rating_option_5")
        ]
        
        # 建立好感度分數對應
        rating_map = {
            L.get("rating_option_1"): "5",
            L.get("rating_option_2"): "4",
            L.get("rating_option_3"): "3",
            L.get("rating_option_4"): "2",
            L.get("rating_option_5"): "1"
        }

        # 分兩列呈現
        rows = [options_rating[:3], options_rating[3:]]
        for row_i, row in enumerate(rows):
            cols = st.columns(len(row))
            for i, option in enumerate(row):
                if cols[i].button(option, key=f"rating_btn_{row_i}_{i}"):
                    st.session_state["options_rating"] = option
                    st.session_state["like_type"] = rating_map.get(option)
                    st.session_state.expander_like_open = False
                    st.rerun()

    if "options_rating" in st.session_state:
        st.success(f"{L.get('stage2_shown')} {st.session_state['options_rating']}")

        # --- 3. 獲取獎勵按鈕 (key: stage3_info, stage7_fin_btn) ---
        st.info(L.get("finish_info"))
        if st.button(L.get("stage7_fin_btn"), type="primary"):
            st.session_state.reward_ready = True
            st.rerun()

        # --- 4. 獎勵與標籤列印邏輯 ---
        if st.session_state.get("reward_ready"):
            take_pic = st.session_state.get("take_pic")
            like_type = st.session_state.get("like_type")
############
            if not take_pic or not like_type:
                st.warning(L.get("stage7_warning"))
            else:
                import random
                LABEL_DIR = "../label/"
                niimbot_path = None  # 預設為 None，之後會被覆蓋\
                image_file = None
                niimbot_file = None
            
                # --- 決定使用哪個標籤模式 ---
                tag_mode = st.session_state.get("tag_mode", "Live (by user interactive)")
            
                if tag_mode.startswith("Test"):
                    # 🧪 測試模式：固定顯示歡迎標籤
                    niimbot_path = os.path.join(LABEL_DIR, "welcome-01.png")
                    st.info("🧪 測試模式：使用固定歡迎標籤 welcome-01.png")
            
                else:
                    # 🎲 Live 模式：隨機抽標籤（螢幕 + 列印一定同一組）
                    try:
                        if "selected_label_key" not in st.session_state:
                            key_candidates = list(niimbot_map.keys())   # 🔑 單一真實來源
                            chosen_pair = random.choice(key_candidates)
                    
                            st.session_state.selected_label_key = chosen_pair
                            st.session_state.selected_label_file = image_map[chosen_pair]
                            st.session_state.selected_niimbot_file = niimbot_map[chosen_pair]

                            # 🔹 使用表中的 key: label_random
                            # 規格表格式：🎲 已隨機選擇組合：{chosen_pair}
                            msg_template = L.get("label_random")
                            
                            # 填入變數
                            st.info(msg_template.format(chosen_pair=chosen_pair))
                        
                        # 取出固定結果
                        chosen_pair = st.session_state.selected_label_key
                        image_file = st.session_state.selected_label_file
                        niimbot_file = st.session_state.selected_niimbot_file
                    
                        image_path = os.path.join(LABEL_DIR, image_file)
                        niimbot_path = os.path.join(LABEL_DIR, niimbot_file)
                    
                    except Exception as e:
                        st.error(f"❌ 無法抽取標籤：{e}")
                        image_path = None
                        niimbot_path = None

        
                # --- 列印或測試輸出 ------------------------------------------------------
                if not niimbot_path or not os.path.exists(niimbot_path):
                    st.error(f"找不到 NIIMBOT 圖片：{niimbot_path}")
                else:
                    printer_mode = st.session_state.get("printer_mode", "Test (no printing)")
        
                    if printer_mode.startswith("Test"):
                        st.info(f"🧪 測試模式：將會列印 {os.path.basename(niimbot_path)}（實際不送印）")
                    else:
                        # 🖨️ 實際列印
                        try:
                            print_png_50x50_exact(
                                png_path=niimbot_path,
                                printer_name="NIIMBOT B21_Pro",
                                rotate_deg=0,
                                ring_px=0,
                                margin_mm=0.40,
                                x_shift_px=-10,
                                y_shift_px=2,
                            )
                            st.success("✅ 已送印")
                        except Exception as e:
                            st.error(f"❌ 列印失敗：{e}")
        
                # --- 顯示最終獎勵圖片（顯示的 label） -----------------------------------
                if image_file:
                    image_path = os.path.join(IMAGE_DIR, image_file)
                    if os.path.exists(image_path):
                        # 🔹 使用表中的 key: label_shown
                        caption_template = L.get("label_shown")
                        st.image(image_path, caption=caption_template.format(image_file=image_file))
                    else:
                        # 🔹 使用表中的 key: label_warning
                        warning_template = L.get("label_warning")
                        st.warning(warning_template.format(image_file=image_file))
        
                # --- 顯示配對資訊（除錯用） ---------------------------------------------
                com_template = L.get("label_com")
                selected_label_key = st.session_state.get("selected_label_key", "未選擇")
                selected_label_file = st.session_state.get("selected_label_file", "未選擇")
                selected_niimbot_file = st.session_state.get("selected_niimbot_file", "未選擇")
                
                debug_msg = (
                    com_template.format(selected_label_key=selected_label_key) + 
                    f" {selected_label_file} / {selected_niimbot_file}"
                )
                
                st.caption(debug_msg)
##########
                # ✅ When both choices exist, UPDATE the same row in PostgreSQL
                if "options_pic" in st.session_state and "options_rating" in st.session_state:
                
                    cur_uid = st.session_state["user_id"]
                
                    if not cur_uid:
                        st.error("❌ 找不到 user_id，無法更新資料庫。")
                    else:
                        try:
                            # 🔗 連線資料庫
                            conn = get_conn()
                            cur = conn.cursor(cursor_factory=DictCursor)
                
                            # 轉換語言顯示文字
                            lang_code = st.session_state.get("ui_lang", "zh")
                            lang_label = LANG_LABEL.get(lang_code, "繁體中文")
                
                            # 轉換使用者選擇
                            pic_value = OPTIONS_PIC_MAP.get(st.session_state["options_pic"], "")
                            rating_value = rating_map.get(st.session_state["options_rating"], "")
                            niimbot_value = os.path.basename(niimbot_path) if "niimbot_path" in locals() else ""
                
                            # 📝 UPDATE 資料庫
                            update_sql = """
                                UPDATE user_feedback
                                SET 
                                    options_pic = %s,
                                    options_rating = %s,
                                    language = %s,
                                    niimbot_label = %s
                                WHERE user_id = %s
                            """
                
                            cur.execute(update_sql, (
                                pic_value,
                                rating_value,
                                lang_label,
                                niimbot_value,
                                cur_uid
                            ))
                
                            conn.commit()
                            cur.close()
                
                            success_template = L.get("log_info")
                            st.success(success_template.format(cur_uid=cur_uid))
                        
                        except Exception as e:
                            error_template = L.get("log_error")
                            
                            # 將 Exception 物件轉為字串填入 {e}
                            st.error(error_template.format(e=str(e)))

##########

    if st.button(L.get("rerun")):
        st.session_state.clear()
        st.session_state.stage = 0
        st.session_state.show_detected_attrs = False
        st.rerun()
