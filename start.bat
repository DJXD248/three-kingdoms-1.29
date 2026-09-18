@echo off
setlocal
pushd "%~dp0"
if errorlevel 1 goto :error
echo Current directory: %cd%
echo.
if not exist package.json (
    echo package.json not found.
    goto :error
)
if not exist node_modules (
    echo Installing dependencies, please wait...
    call npm ci
    if errorlevel 1 goto :error
)
echo Starting dev server...
echo.
call npm run dev -- --host
if errorlevel 1 goto :error
echo.
echo Server exited. Press any key to close.
popd
pause
exit /b 0

:error
echo.
echo Startup failed. Check the messages above.
popd
pause
exit /b 1