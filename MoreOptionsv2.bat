@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------

::ENTER YOUR CODE BELOW:
@ECHO OFF
CLS
:ORIGIN
ECHO 1. Create a New User Account
ECHO 2. Change the Password of an Existing User Account
ECHO 3. Activate/Deactivate a User Account
ECHO 4. Activate/Deactivate the Built-In Administrator Account
ECHO 5. Exit
ECHO.

CHOICE /C 12345 /M "Enter your choice: "

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 5 GOTO Exit
IF ERRORLEVEL 4 GOTO Operation4
IF ERRORLEVEL 3 GOTO Operation3
IF ERRORLEVEL 2 GOTO Operation2
IF ERRORLEVEL 1 GOTO Operation1

:Operation1
@echo off
Cls
echo Create a new User Account
set /p n=Username of New Account: 
set /p np= Password for New Account: 
net user %n% %np% /ADD
Pause
GOTO ORIGIN

:Operation2
@echo off
Cls
ECHO Change the Password of an Existing User Account
set /p j=Username of the Account: 
set /p k=Current Password of the Account:
set /p l=New Password for the Account: 
net user %j% %l% /CHANGE
Pause
GOTO ORIGIN

:Operation3
@echo off
Cls
ECHO Activate/Deactivate a User Account
set /p m=Username of the Account: 
set /p n=Current Password of the Account: 
echo Type Y to activate, and Type N to Deactivate
set/p "cho=>"
if %cho%==Y net user %m% /active:yes
if %cho%==y net user %m% /active:yes
if %cho%==n net user %m% /active:no
if %cho%==N net user %m% /active:no
Pause
GOTO ORIGIN

:Operation4
@echo off
Cls
ECHO Activate/Deactivate the Built-In Administrator Account
echo Type Y to activate the Built-In Administrator Account, and Type N to Deactivate the Built-In Administrator Account
set/p "cho=>"
if %cho%==Y net user Administrator /active:yes
if %cho%==y net user Administrator /active:yes
if %cho%==n net user Administrator /active:no
if %cho%==N net user Administrator /active:no
Pause
GOTO ORIGIN

:Exit
@echo off
Cls
ECHO Exit the Program
Pause
Exit