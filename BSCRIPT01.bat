echo off
REM let them know script is running
echo Initiating BSCRIPT01.bat
pause
REM Open 5 chrome tabs with different sites
start chrome  "fb.com"
start chrome  "youtube.com"
start chrome  "google.com"
start chrome  "https://uc-bcf.instructure.com/courses/39324"
start chrome  "https://leonardreyes.notion.site/Batch-File-Projects-5eb9f5527b2442fb821bd548c00cb86d"
rem open calculator
start calculator
rem open notepad
start notepad
rem shutdown pc
echo SHUTDOWN CONTINUE?
rem gives user time to think
pause
rem shutdown pc after x amount of time
shutdown -s -t 100