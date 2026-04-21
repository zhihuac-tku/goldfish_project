@echo off
chcp 65001 > nul

set "BASE_DIR=%~dp0"

:: 1. 輸入密碼
set "PGPASSWORD=trip123"

:: 2. 直接執行指令
echo 正在建立資料庫 tripdb...
"C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -c "CREATE DATABASE tripdb;"


:: 3. 使用現成的 schema.sql、data.sql建表
echo 正在建構資料表...
"C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -d tripdb -f "schema.sql"

echo 正在匯入初始資料...
"C:\Program Files\PostgreSQL\18\bin\psql.exe" -U postgres -d tripdb -f "data.sql"

:: 4. 清除密碼變數，保持安全
set "PGPASSWORD="

echo 資料庫建構完成！
pause