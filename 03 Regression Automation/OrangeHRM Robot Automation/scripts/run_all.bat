@echo off
setlocal

if not exist "results" mkdir "results"
robot --outputdir "results" tests

endlocal
