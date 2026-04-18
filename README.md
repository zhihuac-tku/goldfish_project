# goldfish_project

```text
# 🚀 快速開始
1. 系統需求
作業系統: Windows 10/11 
Python 版本: 3.11
資料庫(PostgreSQL) 版本： 18.3
硬體: 標籤機（請確保已安裝 Windows 驅動程式）

2. 安裝步驟
⚠️請先確保已安裝 Python、PostgreSQL、標籤機驅動程式後再執行
將專案 Clone 或下載到本地端
* 打開命令提示字元(cmd) 執行
git clone https://github.com/你的帳號/你的專案名.git

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
