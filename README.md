# goldfish_project

```text
# 🚀 快速開始
1. 將專案 Clone 或下載到本地端
* 打開命令提示字元(cmd) 執行
git clone https://github.com/zhihuac-tku/goldfish_project.git

2. 執行安裝腳本
* 在命令提示字元(cmd)中 依序執行：
cd goldfish_project
.\setup.bat

3. 開啟程式
* 執行完安裝腳本後，接著執行：
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
