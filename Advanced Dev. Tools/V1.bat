@ECHO OFF
CLS
:ORIGIN
@echo OFF
Cls
ECHO 1. Save Text to a Text File
ECHO 2. Adjust User Accounts and Admin Settings
ECHO 3. Text To Speech
ECHO 4. COMING SOON
ECHO 5. COMING SOON
ECHO 6. Exit
ECHO.

CHOICE /C 123456 /M "Enter your choice: "

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 6 GOTO Operation6
IF ERRORLEVEL 5 GOTO Operation5
IF ERRORLEVEL 4 GOTO Operation4
IF ERRORLEVEL 3 GOTO Operation3
IF ERRORLEVEL 2 GOTO Operation2
IF ERRORLEVEL 1 GOTO Operation1

:Operation6
@echo all
Cls
echo Are you sure you would like to exit the program?
echo Type Yes to exit, or type No to return to the main menu.
set/p "cho=>"
if %cho%==Yes goto LOCK
if %cho%==yes goto LOCK
if %cho%==no goto ORIGIN
if %cho%==No goto ORIGIN
:Operation5
@echo all
CLS
echo This feature is coming soon. Press any key to go back to the main menu.
PAUSE >NUL
goto ORIGIN

:Operation4
@echo all
CLS
echo This feature is coming soon. Press any key to go back to the main menu.
PAUSE >NUL
goto ORIGIN