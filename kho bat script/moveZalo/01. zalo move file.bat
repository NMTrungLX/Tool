title Chuyen du lieu Zalo sang o D - Nguyen Minh Trung
color 0a
taskkill /f /im zalo.exe
mkdir D:\ZALO
mkdir D:\ZALO\zalo_files
mkdir D:\ZALO\ZaloPC
mkdir D:\ZALO\zalo-updater
mkdir D:\ZALO\ZaloApp

echo D|xcopy %USERPROFILE%\AppData\Local\ZaloPC\*.* /s /y /d D:\ZALO\ZaloPC
echo D|xcopy %USERPROFILE%\AppData\Local\zalo-updater\*.* /s /y /d D:\ZALO\zalo-updater
echo D|xcopy %USERPROFILE%\AppData\Roaming\ZaloApp\*.* /s /y /d D:\ZALO\ZaloApp

rmdir /s /q %USERPROFILE%\AppData\Local\ZaloPC
rmdir /s /q %USERPROFILE%\AppData\Local\zalo-updater
rmdir /s /q %USERPROFILE%\AppData\Roaming\ZaloApp
pause
