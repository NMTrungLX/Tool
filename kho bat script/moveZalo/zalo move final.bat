title Chuyen du lieu Zalo sang o D - Nguyen Minh Trung
color 0a
net stop "zalo" >nul 2>&1
taskkill /im "zalo.exe" /f >nul 2>&1
taskkill /im "ZaloCall.exe" /f >nul 2>&1
taskkill /im "ZaloMeet.exe" /f >nul 2>&1

mkdir D:\ZALO
mkdir D:\ZALO\ZaloPC
mkdir D:\ZALO\ZaloApp

echo D|xcopy "%LocalAppData%\ZaloPC\*.*" D:\ZALO\ZaloPC /s /y /d
echo D|xcopy "%APPDATA%\ZaloApp\*.*" D:\ZALO\ZaloApp /s /y /d

rmdir "%LocalAppData%\ZaloPC" /s /q
rmdir "%APPDATA%\ZaloApp" /s /q


mklink /j "%LocalAppData%\ZaloPC\" "D:\ZALO\ZaloPC"
mklink /j "%APPDATA%\ZaloApp\" "D:\ZALO\ZaloApp"
pause