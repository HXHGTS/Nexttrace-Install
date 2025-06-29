@echo off

rem The executable file name can be modified according to the actual situation.

set EXEC_NAME=nexttrace_windows_amd64.exe

echo Copy file . . .

cd /d %~dp0

copy /y .\%EXEC_NAME% %WINDIR%\nexttrace.exe

echo Add ICMP allow rule in ipv4 and ipv6 . . .

netsh advfirewall firewall delete rule name="All ICMP v4 (Nexttrace)"

netsh advfirewall firewall delete rule name="All ICMP v6 (Nexttrace)"

netsh advfirewall firewall add rule name="All ICMP v4 (Nexttrace)" dir=in action=allow protocol=icmpv4:any,any

netsh advfirewall firewall add rule name="All ICMP v6 (Nexttrace)" dir=in action=allow protocol=icmpv6:any,any

echo Writing the running script to the system directory . . .

curl -sSL https://hxhgts.github.io/Nexttrace-Install/nexttraceo.bat > %WINDIR%\nexttraceo.bat

curl -sSL https://hxhgts.github.io/Nexttrace-Install/nexttracex.bat > %WINDIR%\nexttracex.bat

curl -sSL https://github.com/HXHGTS/ipinfo-mmdb/releases/latest/download/ipinfoLocal.mmdb > %WINDIR%\ipinfoLocal.mmdb

echo Finished!

pause > nul
