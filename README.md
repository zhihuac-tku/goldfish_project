# goldfish_project

```text
# 🚀 快速開始
1. 安裝Git
🔗https://github.com/zhihuac-tku/goldfish_project/releases/download/v1.0.0/Git-2.54.0-64-bit.exe

2. 將專案 Clone 或下載到本地端
* 打開命令提示字元(cmd) 執行
git clone https://github.com/zhihuac-tku/goldfish_project.git

3. 執行安裝腳本
* 在命令提示字元(cmd)中 依序執行：
cd goldfish_project
.\setup.bat

4. 開啟程式
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
            └── schema.sql 
            └── data.sql  # 資料表內容
