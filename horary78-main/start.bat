@echo off
setlocal

REM Ensure script runs from its directory
pushd %~dp0

if not defined PORT set PORT=5000

if not exist .venv (
    echo Creating virtual environment...
    python -m venv .venv
)

call .venv\Scripts\activate

pip install -r backend\requirements.txt

waitress-serve --port %PORT% wsgi:application

popd
endlocal
