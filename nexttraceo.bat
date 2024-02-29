@echo off

setlocal

set EXEC_NAME=nexttrace.exe

set pow_provider=sakura

set target=%1

if "%target%"=="" (

  echo Usage: nexttraceo [target]

  exit /b 1

)

echo Running %EXEC_NAME% with pow provider %pow_provider% and target %target%...

%EXEC_NAME% --pow-provider %pow_provider% %target%

endlocal
