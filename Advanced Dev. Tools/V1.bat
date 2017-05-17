REM
::There are 3 features that are already thought of. These include:
::Save Text to a Text File
::Adjust User Accounts and Admin Settings
::And Text to Speech
::Code for these 3 things is already created, and the code for #2 can be manually created
::Make Sure to have a Menu inside the Menu, to make it more professional and include more features without cluttering
::the interface.
::COLOR CODE=
::0 = Black
::8 = Gray
::1 = Blue
::9 = Light Blue
::2 = Green
::A = Light Green
::3 = Aqua
::B = Light Aqua
::4 = Red
::C = Light Red
::5 = Purple
::D = Light Purple
::6 = Yellow
::E = Light Yellow
::7 = White
::F = Bright White

@ECHO OFF
CLS
:ORIGIN
@echo OFF
Cls
ECHO 1. Adjust User Accounts and Admin Settings
ECHO 2. COMING SOON
ECHO 3. COMING SOON
ECHO 4. COMING SOON
ECHO 5. COMING SOON
ECHO 6. Exit
ECHO.

CHOICE /C 123456 /M "Enter your choice: "

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
echo Type Y to exit, or type N to return to the main menu.
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto ORIGIN
if %cho%==N goto ORIGIN

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

:Operation3
@echo all
CLS
echo This feature is coming soon. Press any key to go back to the main menu.
PAUSE >NUL
goto ORIGIN

:Operation2
@echo all
CLS
echo This feature is coming soon. Press any key to go back to the main menu.
PAUSE >NUL
goto ORIGIN

:Operation1
@echo all
CLS
echo ------------------------------------------
echo Adjust User Accounts and Admin Settings
echo ------------------------------------------

echo 1. Adjust User Accounts
echo 2. Edit Administrator Settings
echo 3. Return to Main Meni
echo 4. Exit

CHOICE /C 1234 /M "Enter your choice: "

IF ERRORLEVEL 4 Goto LOCK
IF ERRORLEVEL 4 GOTO ORIGIN
IF ERRORLEVEL 2 Goto EAS
IF ERRORLEVEL 1 Goto AUA

:AUA
@echo all
Cls
echo ---------------------------
echo Adjust User Accounts
echo ---------------------------
echo.
echo Here is a list of the Current User Accounts on your computer
echo.
net user
echo.
echo What would you like to do?
echo.
echo 1. Create a New User Accounts
echo 2. Enable - Disable a User Account
echo 3. Enable - Disable the Built-in Administrator Account
echo 4. Change the Password of any Existing User Account
echo.
CHOICE /C 1234 /M "Enter your choice: "

IF ERRORLEVEL 4 GoTo EUA
IF ERRORLEVEL 3 GoTo BIIA
IF ERRORLEVEL 2 GoTo DAUA
IF ERRORLEVEL 1 GoTo NUA

:NUA
@echo all
CLS
echo Here is a list of the current user accounts on your computer. To add a new user account, press Enter.
net user
PAUSE >NUL
echo Please Enter the Username of the Account you wish to Create:
set /p UOTA=
echo Press any key to continue
PAUSE >NUL
echo Now, enter the Password of the Account you would like to Create:
set /p POA=
echo Press any key to continue.
PAUSE >NUL
net user %UOTA% %POA% /add
echo Creating User Account
echo User Account Completed
echo Press any Key to Return to the Main Menu
PAUSE >NUL
goto AUA

:DAUA
@echo all
CLS
echo Here is a list of the current user accounts on your omputer. To enable - disable a user account, press enter
echo.
net user
echo.
echo Enter the Username of the Account you would like to enable/disable.
set /p UOA=
echo Press any key to continue
PAUSE >NUL=
echo To disable this account, type y. To enable this account, type n.
set /p "cho=>"
if %cho%==Y goto BTEP
if %cho%==y goto BTEP
if %cho%==N goto BTDP
if %cho%==n goto BTDP

:BTEP
echo To begin the process, press any key
PAUSE >NUL
net user %UOA% /active:no
echo Press any key to return to the Main Menu
PAUSE >NUL
goto ORIGIN

:BTDP
echo To begin the process, press any key
PAUSE >NUL
net user %UOA% /active:no
echo Press any key to return to the Main Menu
PAUSE >NUL
goto Origin
:BIAA

:EUA
echo This command will change the password of any existing user account. Press any key to continue.
PAUSE >NUL
echo Please enter the username of the account:
set /p AA=
echo Press any key
echo.
echo Please enter the new password for the account
set /p AP
echo Press any key to continue
PAUSE >NUL
net user %AA% %AP% /change
echo Press any key to return to the main menu
PAUSE >NUA
goto ORIGIN


:LOCK
echo Press any key to exit.
PAUSE >NUL
Exit