@echo off

rem The executable file name can be modified according to the actual situation.

set ALL_PROXY=socks5://127.0.0.1:10808

rem set ALL_PROXY=socks5://{Your ProxyServer}:{Port}

set EXEC_NAME=nexttrace_windows_amd64.exe

echo Copy file . . .

cd /d %~dp0

curl -sSL https://github.com/nxtrace/NTrace-V1/releases/latest/download/nexttrace_windows_amd64.exe -o %EXEC_NAME%

copy /y .\%EXEC_NAME% %WINDIR%\nt.exe

echo Add ICMP allow rule in ipv4 and ipv6 . . .

netsh advfirewall firewall delete rule name="All ICMP v4 (Nexttrace)"

netsh advfirewall firewall delete rule name="All ICMP v6 (Nexttrace)"

netsh advfirewall firewall add rule name="All ICMP v4 (Nexttrace)" dir=in action=allow protocol=icmpv4:any,any

netsh advfirewall firewall add rule name="All ICMP v6 (Nexttrace)" dir=in action=allow protocol=icmpv6:any,any

echo Writing the running script to the system directory . . .

curl -sSL https://hxhgts.github.io/Nexttrace-Install/nexttraceo.bat > %WINDIR%\nto.bat

curl -sSL https://hxhgts.github.io/Nexttrace-Install/nexttracex.bat > %WINDIR%\ntx.bat

curl -sSL "https://github.com/HXHGTS/ipinfo-mmdb/releases/download/20250629044127/ipinfoLocal.mmdb" -o %WINDIR%\ipinfoLocal.mmdb

curl -sSL https://npcap.com/dist/npcap-1.83.exe -o d:\npcap-1.83.exe

curl -sSL https://github.com/basil00/WinDivert/releases/download/v2.2.2/WinDivert-2.2.2-A.zip -o d:\WinDivert-2.2.2-A.zip

echo Finished!

pause
