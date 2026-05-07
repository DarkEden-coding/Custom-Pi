@echo off
setlocal

set "ROOT=%~dp0"
cd /d "%ROOT%" || exit /b 1

echo Building pi from source...
call npm run build
if errorlevel 1 exit /b %errorlevel%

echo Installing built pi CLI globally...
cd /d "%ROOT%packages\coding-agent" || exit /b 1
call npm link
if errorlevel 1 exit /b %errorlevel%

echo.
echo Installed. The global pi command now points to:
where pi

endlocal
