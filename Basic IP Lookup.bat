rem Basic IP Lookup by @invalorable
rem Discord: https://discord.gg/RFANGAzNM8
rem Github: https://github.com/omvq

@echo off
chcp 65001
title Basic IP Lookup [Made by @invalorable]
mode con lines=20 cols=50
color 4

:Menu
cls
echo.
set /p ip=Enter an IP or URL: 
echo.

curl -s "https://ipinfo.io/%ip%/json" -o geolocation.json
type geolocation.json
del geolocation.json
echo.
echo.
pause
goto Menu