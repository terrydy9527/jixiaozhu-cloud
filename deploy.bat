@echo off
echo ========================================
echo    JiXiaoZhu v2.0 - Deploy to Vercel
echo ========================================
echo.

REM Check Node.js
echo [1/5] Checking Node.js...
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Node.js not found!
    echo Please install Node.js: https://nodejs.org/
    pause
    exit /b 1
)
echo OK: Node.js installed
node --version
echo.

REM Check npm
echo [2/5] Checking npm...
where npm >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: npm not found!
    pause
    exit /b 1
)
echo OK: npm installed
npm --version
echo.

REM Check Vercel CLI
echo [3/5] Checking Vercel CLI...
where vercel >nul 2>nul
if %errorlevel% neq 0 (
    echo Installing Vercel CLI...
    call npm install -g vercel
    if %errorlevel% neq 0 (
        echo ERROR: Vercel CLI installation failed!
        pause
        exit /b 1
    )
    echo OK: Vercel CLI installed
) else (
    echo OK: Vercel CLI already installed
)
echo.

REM Check login status
echo [4/5] Checking login status...
vercel whoami >nul 2>nul
if %errorlevel% neq 0 (
    echo Not logged in. Opening login page...
    echo Please login with GitHub (recommended)
    pause
    call vercel login
    if %errorlevel% neq 0 (
        echo ERROR: Login failed!
        pause
        exit /b 1
    )
    echo OK: Login successful
) else (
    echo OK: Already logged in
    vercel whoami
)
echo.

REM Deploy
echo [5/5] Starting deployment...
echo.
echo Info:
echo - Project name: jixiaozhu-cloud
echo - Environment: Production
echo - Estimated time: 1-2 minutes
echo.
pause

call vercel --prod --yes

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Deployment failed!
    echo Please check the error message and retry
    pause
    exit /b 1
)

echo.
echo ========================================
echo    SUCCESS!
echo ========================================
echo.
echo JiXiaoZhu is now deployed to the cloud!
echo.
echo Access URL:
echo https://jixiaozhu-cloud.vercel.app
echo.
echo You can now access from anywhere with internet!
echo.
echo Tips:
echo - First load may take 1-2 minutes to initialize
echo - Save URL to bookmarks for quick access
echo - Share with other teachers
echo.
pause
