@echo off

setlocal

rem set proxy=127.0.0.1:1080

set EXEC_NAME=nexttrace_windows_amd64.exe

set pow_provider=sakura

set target=%1

if "%target%"=="" (

  echo Usage: nexttrace.bat [target]

  exit /b 1

)

rem echo Adding proxy server %proxy%...

rem set http_proxy=%proxy%

rem set https_proxy=%proxy%

echo Running %EXEC_NAME% with pow provider %pow_provider% and target %target%...

%EXEC_NAME% --pow-provider %pow_provider% %target%

endlocal
