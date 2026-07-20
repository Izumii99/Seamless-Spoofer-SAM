@echo off
echo Menghapus Spoofer dari Startup Windows...
set "STARTUP_FOLDER=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

if exist "%STARTUP_FOLDER%\SteamSpoofer.lnk" (
    del "%STARTUP_FOLDER%\SteamSpoofer.lnk"
    echo Shortcut berhasil dihapus dari Startup!
) else (
    echo Spoofer tidak ditemukan di folder Startup.
)
pause
