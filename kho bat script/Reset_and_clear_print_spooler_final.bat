title Reset Dich vu Printer - Nguyen Minh Trung 
color 0a
@echo off
powershell -windowstyle hidden -command "Start-Process cmd -ArgumentList '/s,/c,net stop spooler & DEL /F /S /Q %systemroot%\System32\spool\PRINTERS\* & net start spooler' -Verb runAs"

pause