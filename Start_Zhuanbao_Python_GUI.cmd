@echo off
setlocal
set "APP_DIR=%~dp0"
set "PYTHONW=D:\Anaconda\envs\CodexWorkSpace\pythonw.exe"
set "PYTHON=D:\Anaconda\envs\CodexWorkSpace\python.exe"

if exist "%PYTHONW%" (
    start "" "%PYTHONW%" "%APP_DIR%zhuanbao_gui.py"
) else if exist "%PYTHON%" (
    start "" "%PYTHON%" "%APP_DIR%zhuanbao_gui.py"
) else (
    echo Cannot find Python in D:\Anaconda\envs\CodexWorkSpace.
    pause
)
