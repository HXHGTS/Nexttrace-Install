@echo off

setlocal

set EXEC_NAME=nexttrace

set data-provider=IPInfo

set target=%1

if "%target%"=="" (

  echo Usage: nto [target]

  exit /b 1

)

echo Running %EXEC_NAME% with target %target%...

%EXEC_NAME% --data-provider %data-provider% %target%

endlocal
