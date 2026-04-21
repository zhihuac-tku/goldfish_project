# goldfish_project

```text
# 🚀 快速開始
1. 系統需求
* 作業系統: Windows 10/11 
* Python 版本: 3.11
🔗下載連結：https://www.python.org/downloads/release/python-3110/

* 資料庫(PostgreSQL) 版本： 18.3
🔗下載連結：https://www.postgresql.org/download/

* Ollama
🔗下載連結：https://ollama.com/download/windows

* 硬體: 標籤機（請確保已安裝 Windows 驅動程式）
🔗下載連結：https://www.niimbot.com/tw/downloadCenter

2. 將專案 Clone 或下載到本地端（⚠️請先確保已安裝 Python、PostgreSQL、Ollama、標籤機驅動程式後再執行）
* 打開命令提示字元(cmd) 執行
git clone https://github.com/zhihuac-tku/goldfish_project.git

3. 執行安裝腳本
* 在命令提示字元(cmd)中 依序執行：
cd goldfish_project
.\setup.bat

4. 執行程式
* 執行安裝腳本後，接著執行：
.\run.bat

# 📂 資料夾結構說明
my_project/              
├── setup.bat            # 安裝腳本
├── run.bat              # 啟動腳本
├── requirements.txt     # 套件清單 
└── py/                  # 程式碼資料夾
    └── goldfish/
        └── code/
            └── realtime_tc_tourist_recommend_app_sql_ver.py  # 主程式
        └── data/
        └── fonts/
        └── label/ 
        └── model/
            └── foods
            └── places
            └── gifts 
            └── best_shoe.pt
        └── output/ 
        └── tripdb/
            └── table.sql # schema
            └── data.sql  # 資料表內容
