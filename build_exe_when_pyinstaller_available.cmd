@echo off
setlocal
set "APP_DIR=%~dp0"
set "PYTHON=D:\Anaconda\envs\CodexWorkSpace\python.exe"

if not exist "%PYTHON%" (
    echo Cannot find Python: %PYTHON%
    pause
    exit /b 1
)

"%PYTHON%" -m PyInstaller --version >nul 2>nul
if errorlevel 1 (
    echo PyInstaller is not installed in D:\Anaconda\envs\CodexWorkSpace.
    echo Install PyInstaller first, then run this file again.
    pause
    exit /b 1
)

cd /d "%APP_DIR%"
"%PYTHON%" -m PyInstaller ^
  --noconsole ^
  --onefile ^
  --name "ZhuanbaoGenerator" ^
  --add-data "专报格式模板.docx;." ^
  --add-data "zhuanbao.sample.json;." ^
  zhuanbao_gui.py

pause
