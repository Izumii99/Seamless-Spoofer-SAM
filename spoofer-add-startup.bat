@echo off
echo Menambahkan Spoofer ke Startup Windows...
set "STARTUP_FOLDER=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
set "VBS_PATH=%~dp0spoofer-hidden.vbs"

powershell -Command "$wshell = New-Object -ComObject WScript.Shell; $shortcut = $wshell.CreateShortcut('%STARTUP_FOLDER%\SteamSpoofer.lnk'); $shortcut.TargetPath = '%VBS_PATH%'; $shortcut.WorkingDirectory = '%~dp0'; $shortcut.Save()"

echo Selesai! Spoofer akan otomatis berjalan di background (secara hidden) setiap kali PC dinyalakan.
pause
