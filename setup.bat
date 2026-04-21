@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

:: 0. 定義路徑
set "PROJECT_DIR=%~dp0"
set "DOWNLOAD_DIR=%USERPROFILE%\Downloads"

:: 1. 設定 URL
cd /d "%DOWNLOAD_DIR%"
set "BASE_URL=https://github.com/zhihuac-tku/goldfish_project/releases/download/v1.0"
set "FILE_PY=python_installer.exe"
set "FILE_DRIVER=NIIMBOT_Driver.exe"
set "FILE_OLLAMA=OllamaSetup.exe"
set "FILE_PSQL=postgresql_installer.exe"

:: --- 步驟 1: 下載檔案 (加入錯誤檢查) ---
echo [1/3] 正在下載安裝程式至下載區...

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
echo ⚠️  請注意：當視窗彈出時，請手動點擊「安裝/下一步」。

echo    > 正在安裝 Python (請稍候)...
echo    💡 提示：請務必勾選「Add Python to PATH」！
start /wait "" "%FILE_PY%"

:: 自動抓取當前使用者的 Python 3.11 路徑
set "PY_USER_PATH=%LocalAppData%\Programs\Python\Python311"
set "PY_GLOBAL_PATH=C:\Program Files\Python311"

if exist "%PY_USER_PATH%\python.exe" (
    set "FINAL_PY_PATH=%PY_USER_PATH%"
) else if exist "%PY_GLOBAL_PATH%\python.exe" (
    set "FINAL_PY_PATH=%PY_GLOBAL_PATH%"
) else (
    for /f "delims=" %%i in ('where python 2^>nul') do set "FINAL_PY_PATH=%%~dpi"
    if defined FINAL_PY_PATH set "FINAL_PY_PATH=!FINAL_PY_PATH:~0,-1!"
)

if defined FINAL_PY_PATH (
    set "PATH=%PATH%;%FINAL_PY_PATH%;%FINAL_PY_PATH%\Scripts\"
    echo [確認] 已偵測 Python 路徑: %FINAL_PY_PATH%
)

echo    > 正在安裝標籤機驅動...
start /wait "" "%FILE_DRIVER%"

echo    > 正在安裝 PostgreSQL...
echo    💡 提示：跳出安裝視窗時，請「取消」勾選Stack Builder，並將密碼設定為：trip123
start /wait "" "%FILE_PSQL%"

echo    > 正在安裝 Ollama...
start /wait "" "%FILE_OLLAMA%"

:: --- 步驟 3: 啟動與服務 ---
echo.
echo [3/3] 環境啟動中...

cd /d "%USERPROFILE%"

:: 確保 Ollama 已在執行
tasklist /fi "imagename eq ollama.exe" | find ":" > nul
if !errorlevel! neq 0 (
    start "" "ollama" serve
    timeout /t 5
)

echo    > 正在取得 AI 模型 Gemma 4...
ollama pull gemma4

:: --- 步驟 4: 安裝套件 ---
cd /d "%PROJECT_DIR%"

echo    > 正在安裝依賴套件(讀取 requirements.txt)...
if defined FINAL_PY_PATH (
    "%FINAL_PY_PATH%\python.exe" -m pip install --upgrade pip
    "%FINAL_PY_PATH%\python.exe" -m pip install -r requirements.txt
) else (
    python -m pip install --upgrade pip
    pip install -r requirements.txt
)

echo    > 恭喜！部署完成。

pause
