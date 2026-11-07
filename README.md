# PeopleOS HRMS

A local-demo Human Resource Management System with a React + Vite frontend and a FastAPI backend, backed by SQLite.

## Features

- Separate Employee, HR, and Super Admin workspaces
- Employee directory and attendance management
- Leave requests, balances, and HR approvals
- Earned-leave encashment workflow
- Payroll records and payslip views
- Role-based API authorization, hashed passwords, expiring sessions, and audit events

## Requirements

- Python 3.10+
- Node.js 20+ and npm

## Run the role-based application

### Windows

1. Extract or clone this repository.
2. Run `run_roles_windows.bat`.
3. Open http://127.0.0.1:5173.
4. API documentation: http://127.0.0.1:8001/docs.

### macOS / Linux

```bash
chmod +x run_roles_mac_linux.sh
./run_roles_mac_linux.sh
```

Install dependencies manually if required:

```bash
python -m pip install -r requirements-roles.txt
cd frontend && npm install
```

Start the API from the repository root in a separate terminal:

```bash
python -m uvicorn api.main:app --host 127.0.0.1 --port 8001
```

## Demo accounts

| Role | Username | Demo password |
|---|---|---|
| Super Admin | `admin@peopleos.demo` | `PeopleOS123!` |
| HR | `hr@peopleos.demo` | `PeopleOS123!` |
| Employee | `aarav.sharma@peopleos.demo` | `Employee123!` |

These are throwaway local-demo credentials. Change them before any non-demo use.

## Data and security

Database files and backups are excluded from version control. Do not enter real employee, salary, identity, or bank information.

This is a learning/portfolio demo, not production HR/payroll software. Production use would require a security review, HTTPS, hardened session and CSRF protections, rate limiting, account recovery and lockout controls, encrypted backups, automated tests, and compliance-reviewed payroll rules. Keep development servers bound to localhost.

The original lightweight demo is retained as a fallback. Use the `run_roles_*` scripts for the role-based React + FastAPI application.
