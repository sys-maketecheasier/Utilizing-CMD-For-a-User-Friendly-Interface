@echo off
Cls
echo This will create a new text file, and then allow you to add text to it. By default, text starts at line 1, and continues down.
echo Change the %userprofile% to your user folder, and it will then save the text file to your desktop.
echo For more information, please check our Readme.md file.
set /p t2a=Text to Add: 
echo %t2a% >> C:\Users\joelt\Desktop\Your Text File.txt