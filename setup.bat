@echo off

chcp 65001 > nul

:: 切換到腳本所在的目錄，確保路徑正確
cd /d "%~dp0"

echo 正在檢查 Python 環境...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 錯誤: 找不到 Python。
    pause
    exit /b
)

echo 正在安裝套件到本機環境...
python -m pip install -r requirements.txt

echo 安裝完成！
pause
