@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

:: 1. 設定 URL
set "BASE_URL=https://github.com/zhihuac-tku/goldfish_project/releases/download/v1.0"

set "FILE_PY=python_installer.exe"
set "FILE_DRIVER=NIIMBOT_Driver.exe"
set "FILE_OLLAMA=OllamaSetup.exe"
set "FILE_PSQL=postgresql_installer.exe"

:: --- 步驟 1: 下載檔案 (加入錯誤檢查) ---
echo [1/3] 正在下載安裝程式...

for %%F in (%FILE_PY% %FILE_DRIVER% %FILE_OLLAMA% %FILE_PSQL%) do (
    if not exist "%%F" (
        echo   -> 正在下載 %%F...
        curl -L --fail "%BASE_URL%/%%F" -o "%%F"
        
        if !errorlevel! neq 0 (
            echo [錯誤] %%F 下載失敗！請檢查 GitHub Release 是否有該檔案。
            del "%%F" 2>nul
            pause
            exit /b
        )
    ) else (
        echo   -> %%F 已存在。
    )
)

:: --- 步驟 2: 依序安裝 ---
echo.
echo [2/3] 開始安裝程序...

echo    > 正在安裝 Python (請稍候)...
start /wait "" "%FILE_PY%" /quiet InstallAllUsers=1 PrependPath=1

set "PATH=%PATH%;C:\Program Files\Python312\;C:\Program Files\Python312\Scripts\"

echo    > 正在安裝標籤機驅動...
start /wait "" "%FILE_DRIVER%"

echo    > 正在安裝 PostgreSQL...
start /wait "" "%FILE_PSQL%"

echo    > 正在安裝 Ollama...
start /wait "" "%FILE_OLLAMA%"

:: --- 步驟 3: 啟動與服務 ---
echo.
echo [3/3] 環境啟動中...

:: 確保 Ollama 已在執行
tasklist /fi "imagename eq ollama.exe" | find ":" > nul
if !errorlevel! neq 0 (
    start "" "ollama" serve
    timeout /t 5
)

echo    > 正在取得 AI 模型 Gemma 4...
ollama pull gemma4

echo    > 正在安裝依賴套件...
python -m pip install --upgrade pip
pip install -r requirements.txt

pause
