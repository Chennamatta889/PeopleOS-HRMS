#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements-roles.txt
(cd frontend && npm install && npm run dev) &
python -m uvicorn api.main:app --host 127.0.0.1 --port 8001
