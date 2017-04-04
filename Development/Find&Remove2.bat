@echo off &setlocal
set "myfile=C:\Users\joelt\Desktop\Test2.txt"
(for /f "delims=" %%i in ('findstr /n "^" "%myfile%"') do (
    set "line=%%i"
    for /f "delims=:" %%a in ("%%i") do set "row=%%a"
    setlocal enabledelayedexpansion
    set "line=!line:*:=!"
    if !row! gtr 2 echo(!line!
    endlocal
))>newfile
type newfile