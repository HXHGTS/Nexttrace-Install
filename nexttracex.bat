@echo off

setlocal

set EXEC_NAME=nexttrace.exe

set target=%1

if "%target%"=="" (

  echo Usage: nexttracex [target]

  exit /b 1

)

echo Adding proxy server %NEXTTRACE_PROXY%...

set NEXTTRACE_PROXY=http://127.0.0.1:10808

echo Running %EXEC_NAME% with target %target%...

%EXEC_NAME% %target%

endlocal
