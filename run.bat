@echo off
echo 正在啟動旅遊推薦系統程式...

chcp 65001 > nul

cd goldfish_project\py\goldfish\code
streamlit run realtime_tc_tourist_recommend_app_sql_ver.py

pause
