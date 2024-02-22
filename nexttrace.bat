@echo off

setlocal

set EXEC_NAME=nexttrace_windows_amd64.exe

set pow_provider=sakura

set target=%1

if "%target%"=="" (

  echo Usage: nexttrace.bat [target]

  exit /b 1

)

rem echo Adding proxy server %proxy%...

rem set NEXTTRACE_PROXY=socks5://127.0.0.1:10808

echo Running %EXEC_NAME% with pow provider %pow_provider% and target %target%...

%EXEC_NAME% --pow-provider %pow_provider% %target%

endlocal
