:Beginning
@echo off
Cls
title Save Text to a Text Document
echo This will create a new text file, and then allow you to add text to it. By default, text starts at line 1, and continues down.
echo This command should default to your user folder, and it will then save the text file to your desktop.
echo By default, the text file should be called Save2Txt Info. To add more info, run this command again and enter the info
echo For more information, please check our Readme.md file.
set /p t2a=Text to Add: 
echo %t2a% >> C:\Users\joelt\Desktop\Save2Txt.txt
echo The command has completed. The following text has been added to the text file: %t2a%
Pause
Goto Beginning