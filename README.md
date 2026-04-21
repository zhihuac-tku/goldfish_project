# goldfish_project

```text
# 🚀 快速開始
1. 安裝Git
🔗https://github.com/zhihuac-tku/goldfish_project/releases/download/v1.0.0/Git-2.54.0-64-bit.exe

2. clone專案
* 打開命令提示字元(cmd) / powershell 執行
💬 git clone https://github.com/zhihuac-tku/goldfish_project.git

3. 跳出視窗，登入GitHub
（完成後可至電腦 "C:\使用者\User" 中查看專案資料夾）

4. 執行安裝腳本
* 在命令提示字元(cmd)中，依序輸入後按enter：
💬 cd goldfish_project
💬 .\setup.bat
（或雙擊資料夾中的bat檔案，直接開始執行）

5. 資料庫建置
* 開啟新的命令提示字元(cmd)，依序輸入後按enter：
💬 cd goldfish_project\py\goldfish\tripdb
💬 .\init_db.bat
（或雙擊資料夾中的bat檔案，直接開始執行）

6. 開啟程式
* 開啟新的命令提示字元(cmd)，依序輸入後按enter：
💬 cd goldfish_project
💬.\run.bat
（或雙擊資料夾中的bat檔案，直接開始執行）

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
            └── init_db.bat #批次檔
            └── schema.sql #建表格
            └── data.sql  # 塞資料
