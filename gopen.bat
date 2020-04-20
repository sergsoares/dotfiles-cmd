@echo off

:: [Set value inside variable from command](https://stackoverflow.com/questions/14952295/set-output-of-a-command-as-a-variable-with-pipes)

for /f "delims=" %%A in ('git config --get remote.origin.url') do set "var=%%A"


if "%var%"=="" (
    ECHO "Not exists link to access."
) else (
    start "" %var% 
)
