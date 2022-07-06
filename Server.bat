@echo off
cls
title Python Server
echo ==================================================
echo           Simple HTTP Python Server
echo    Use manually: python3 -m http.server {port}
echo ==================================================
echo.  
echo Local IP:
ipconfig | findstr "IPv4 Address"\n
echo.
echo Public IP:
nslookup myip.opendns.com. resolver1.opendns.com
echo.
set /p port=Enter port (Default is 8080):
if [%port%]==[] (python3 -m http.server 8080) else (python3 -m http.server %port%)
cmd /k