@echo off
echo ==========================================
echo    Mtech TV Launcher - Setup Script
echo ==========================================
echo.

REM Check for Node.js
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js nao encontrado!
    echo Por favor, instale o Node.js de: https://nodejs.org/
    echo Ou via winget: winget install OpenJS.NodeJS.LTS
    pause
    exit /b 1
)

echo [OK] Node.js encontrado
node --version

REM Navigate to Win folder
cd /d "%~dp0"

REM Install dependencies
echo.
echo Instalando dependencias...
call npm install

if %errorlevel% neq 0 (
    echo [ERROR] Falha ao instalar dependencias
    pause
    exit /b 1
)

echo.
echo [OK] Dependencias instaladas!
echo.
echo Para iniciar o launcher:
echo   npm start
echo.
echo Para gerar o .exe:
echo   npm run make
echo.
pause
