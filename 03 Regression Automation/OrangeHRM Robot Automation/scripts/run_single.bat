@echo off
setlocal

if "%~1"=="" (
    echo Usage: scripts\run_single.bat "tests\path\test.robot"
    exit /b 1
)

set "TEST_FILE=%~1"

if not exist "results" mkdir "results"
robot --outputdir "results" "%TEST_FILE%"

endlocal
