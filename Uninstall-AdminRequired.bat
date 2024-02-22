@echo off

rem The executable file name can be modified according to the actual situation.

set EXEC_NAME=nexttrace_windows_amd64.exe

echo Delete file . . .

del /f /s /q %WINDIR%\%EXEC_NAME%

del /f /s /q %WINDIR%\nexttrace.bat

echo Delete ICMP allow rule in ipv4 and ipv6 . . .

netsh advfirewall firewall delete rule name="All ICMP v4 (Nexttrace)"

netsh advfirewall firewall delete rule name="All ICMP v6 (Nexttrace)"

echo Finished!

pause > nul
