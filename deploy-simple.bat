@echo off
echo JiXiaoZhu v2.0 - Simple Deploy Script
echo ========================================
echo.

REM Check if Node.js is installed
node --version >nul 2>nul
if %errorlevel% neq 0 (
    echo Node.js is not installed.
    echo Please download from: https://nodejs.org/
    echo.
    echo After installation, run this script again.
    pause
    exit /b 1
)

echo Node.js is installed.
echo.

REM Install Vercel CLI (if not already installed)
vercel --version >nul 2>nul
if %errorlevel% neq 0 (
    echo Installing Vercel CLI...
    call npm install -g vercel
)

echo Vercel CLI is ready.
echo.

REM Deploy to Vercel
echo Starting deployment...
echo.
call vercel --prod

echo.
echo ========================================
echo Deployment complete!
echo ========================================
echo.
echo Your app URL will be shown above.
echo Save it and access from anywhere!
echo.
pause
