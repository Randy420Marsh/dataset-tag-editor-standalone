@echo off

set "VENV_DIR=%~dp0%venv"

dir "%VENV_DIR%\Scripts\Python.exe"
if %ERRORLEVEL% == 0 goto :activate

python -m venv venv

:activate
call "%VENV_DIR%\Scripts\activate.bat"
pip install -r requirements.txt
