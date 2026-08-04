@echo off
echo Starting Steam Spoofer (Seamless)...
cd /d "%~dp0"

echo Menunggu Internet dan Steam berjalan...
:wait_for_conditions
ping -n 1 8.8.8.8 >nul 2>&1
if "%ERRORLEVEL%" NEQ "0" (
    timeout /t 5 /nobreak >nul
    goto wait_for_conditions
)

tasklist /FI "IMAGENAME eq steam.exe" 2>NUL | find /I /N "steam.exe">NUL
if "%ERRORLEVEL%"=="1" (
    timeout /t 5 /nobreak >nul
    goto wait_for_conditions
)
timeout /t 10 /nobreak >nul

set "SAM_EXE=SAM.Game.exe"
if exist "bin\SAM.Game.exe" set "SAM_EXE=bin\SAM.Game.exe"
if exist "upload\SAM.Game.exe" set "SAM_EXE=upload\SAM.Game.exe"

if not exist "%SAM_EXE%" (
    echo Error: SAM.Game.exe not found! Please build the project first.
    pause
    exit /b 1
)

if not exist "games.json" (
    echo Error: games.json not found!
    pause
    exit /b 1
)

powershell -NoProfile -Command "(Get-Content games.json | ConvertFrom-Json).games" > "%TEMP%\sam_games.txt"
for /f "usebackq tokens=*" %%i in ("%TEMP%\sam_games.txt") do (
    echo Spoofing AppID: %%i
    start "" "%SAM_EXE%" %%i --headless
)
del "%TEMP%\sam_games.txt" >nul 2>&1

echo.
echo Spoofer berjalan di background! (Seamless)
pause
