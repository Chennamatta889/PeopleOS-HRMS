@echo off
cd /d "%~dp0"
if not exist .venv python -m venv .venv
call .venv\Scripts\activate
python -m pip install -r requirements-roles.txt
start "PeopleOS React UI" cmd /k "cd frontend && npm install && npm run dev"
python -m uvicorn api.main:app --host 127.0.0.1 --port 8001
