@echo off
echo Starting Steam Spoofer (Seamless)...
cd /d "%~dp0"

echo Menunggu Steam berjalan...
:wait_for_steam
tasklist /FI "IMAGENAME eq steam.exe" 2>NUL | find /I /N "steam.exe">NUL
if "%ERRORLEVEL%"=="1" (
    timeout /t 5 /nobreak >nul
    goto wait_for_steam
)
:: Beri tambahan waktu 10 detik agar Steam benar-benar selesai loading & siap
timeout /t 10 /nobreak >nul

:: Set path to SAM.Game.exe
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

:: Parse games.json using powershell and loop through games
for /f "tokens=*" %%a in ('powershell -Command "(Get-Content games.json | ConvertFrom-Json).games -join ' '"') do (
    for %%i in (%%a) do (
        echo Spoofing AppID: %%i
        start "" "%SAM_EXE%" %%i --headless
    )
)

echo.
echo Spoofer berjalan di background! (Seamless)
pause
