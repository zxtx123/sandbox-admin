@echo off
setlocal
cd /d "%~dp0"

echo Starting sandbox-admin local server...
node "%~dp0serve-local.cjs"

if errorlevel 1 (
  echo.
  echo Failed to start the local server.
  echo Please make sure Node.js is installed and port 9000 is available.
  pause
)
endlocal
