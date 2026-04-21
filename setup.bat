@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

:: 切換到腳本所在的目錄，確保路徑正確
cd /d "%~dp0"

set "BASE_URL=https://github.com/zhihuac-tku/goldfish_project/releases/download/v1.0"

:: 定義檔案清單
set "FILE_PY=python_installer.exe"
set "FILE_DRIVER=NIIMBOT_Driver.exe"
set "FILE_OLLAMA=OllamaSetup.exe"
set "FILE_PSQL=postgresql_installer.exe"

:: --- 步驟 1: 下載檔案 ---
echo [1/3] 正在從 GitHub 下載必要的安裝程式...

for %%F in (%FILE_PY% %FILE_DRIVER% %FILE_OLLAMA% %FILE_PSQL%) do (
    if not exist "%%F" (
        echo   -> 正在下載 %%F...
        curl -L "%BASE_URL%/%%F" -o "%%F"
    ) else (
        echo   -> %%F 已存在，跳過下載。
    )
)

:: --- 步驟 2: 依序安裝 ---
echo.
echo [2/3] 開始安裝程序 (請依照各安裝程式指示操作)...

:: 1. 安裝 Python 
echo    > 正在安裝 Python...
start /wait "" "%FILE_PY%" /quiet InstallAllUsers=1 PrependPath=1

:: 2. 安裝標籤機驅動
echo    > 正在安裝標籤機驅動...
start /wait "" "%FILE_DRIVER%"

:: 3. 安裝 PostgreSQL
echo    > 正在安裝 PostgreSQL...
start /wait "" "%FILE_PSQL%"

:: 4. 安裝 Ollama
echo    > 正在安裝 Ollama...
start /wait "" "%FILE_OLLAMA%"

:: --- 步驟 3: 啟動與檢查 ---
echo.
echo [3/3] 環境安裝完畢，正在啟動服務...

:: 啟動 Ollama 服務
start "" "ollama" serve

:: 等待服務啟動後下載 Gemma4 模型
timeout /t 5
ollama pull gemma4

:: 安裝套件庫
echo    > 正在安裝依賴套件...
pip install -r requirements.txt

pause
