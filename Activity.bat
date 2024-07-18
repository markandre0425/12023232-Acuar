echo off
@REM ################MENU################################################
:Menu
echo Main Menu
echo ------------
echo 1. Open Notes
echo 2. Update Apps
echo 3. Power Options
echo 4. Chill
echo 5. Canvas
echo -------------

choice /c "12345" /n

if Errorlevel 5 goto Canvas
if Errorlevel 4 goto Chill
if Errorlevel 3 goto PowerOptions
if Errorlevel 2 goto Update Apps
if Errorlevel 1 goto OpenNotes
@REM ###############################################################################





@REM #########################OPEN NOTES##################################################
:OpenNotes
echo off
start chrome "https://leonardreyes.notion.site/Platform-Technologies-1401038dae77468e9e76e0bcd20b4bc2"
cls
pause
goto Menu
@REM ############################################################################################






@REM ######################################WINGET#####################################
:UpdateApps
echo off
winget update
pause
cls
goto Menu



@REM #########################POWER OPTIONS#######################################

:PowerOptions
echo off
echo Power Options
echo -----------
echo 1. Shutdown
echo 2. Restart
echo 3. Menu
echo -----------

choice /c "123" /n

if Errorlevel 3 goto Menu
if Errorlevel 2 goto Restart
if Errorlevel 1 goto Shutdown

:Shutdown
shutdown -s -t 1000

:Restart
shutdown /r



rem ###########################CHILL######################################


:Chill
echo off
start chrome /incognito "netflix.com"
start chrome /incognito "youtube.com"
start chrome /incognito "pornhub.com"
pause
cls
goto Menu





rem ################CANVAS#######################################################
:Canvas
echo off
echo Canvas
echo --------
echo 1. Modules
echo 2. Assignments
echo 3. Announcement
echo 4. Quiz
echo 5. Discussions
echo 6. Inbox
echo 7. Back

choice /c "1234567" /n

if Errorlevel 7 goto CanvasMenu
if Errorlevel 6 goto Inbox
if Errorlevel 5 goto Discussions
if Errorlevel 4 goto Quiz
if Errorlevel 3 goto Announcement
if Errorlevel 2 goto Assignments
if Errorlevel 1 goto Modules


:Inbox
echo off
start chrome "https://uc-bcf.instructure.com/conversations"
cls
pause
goto Canvas

:Discussions
echo off
start chrome "https://uc-bcf.instructure.com/courses/39219/discussion_topics"
start chrome "https://uc-bcf.instructure.com/courses/39368/discussion_topics"
start chrome "https://uc-bcf.instructure.com/courses/39364/discussion_topics"
start chrome "https://uc-bcf.instructure.com/courses/39424/discussion_topics"
start chrome "https://uc-bcf.instructure.com/courses/38962/discussion_topics"
start chrome "https://uc-bcf.instructure.com/courses/39324/discussion_topics"
cls
pause
goto Canvas

:Quiz
echo off
start chrome "https://uc-bcf.instructure.com/courses/39364/quizzes"
start chrome "https://uc-bcf.instructure.com/courses/39368/quizzes"
start chrome "https://uc-bcf.instructure.com/courses/39219/quizzes"
start chrome "https://uc-bcf.instructure.com/courses/39321/quizzes"
start chrome "https://uc-bcf.instructure.com/courses/39424/quizzes"
cls
pause
goto Canvas

:CanvasMenu
goto :Menu

:Announcement
echo off
start chrome "https://uc-bcf.instructure.com/courses/39364/announcements"
start chrome "https://uc-bcf.instructure.com/courses/39368/announcements"
start chrome "https://uc-bcf.instructure.com/courses/39219/announcements"
start chrome "https://uc-bcf.instructure.com/courses/39321/annoucements"
start chrome "https://uc-bcf.instructure.com/courses/39324/announcements"
start chrome "https://uc-bcf.instructure.com/courses/38962/announcements"
start chrome "https://uc-bcf.instructure.com/courses/39424/announcements"
cls
pause
goto Canvas

:Assignments
echo off
start chrome "https://uc-bcf.instructure.com/courses/39364/assignments"
start chrome "https://uc-bcf.instructure.com/courses/39368/assignments"
start chrome "https://uc-bcf.instructure.com/courses/39219/assignments"
start chrome "https://uc-bcf.instructure.com/courses/39321/assignments"
start chrome "https://uc-bcf.instructure.com/courses/39324/assignments"
start chrome "https://uc-bcf.instructure.com/courses/38962/assignments"
start chrome "https://uc-bcf.instructure.com/courses/39424/assignments"
cls
pause
goto Canvas

:Modules
echo off
start chrome "https://uc-bcf.instructure.com/courses/39364/modules"
start chrome "https://uc-bcf.instructure.com/courses/39368/modules"
start chrome "https://uc-bcf.instructure.com/courses/39219/modules"
start chrome "https://uc-bcf.instructure.com/courses/39321/modules"
start chrome "https://uc-bcf.instructure.com/courses/39324/modules"
start chrome "https://uc-bcf.instructure.com/courses/38962/modules"
start chrome "https://uc-bcf.instructure.com/courses/39424/modules"
cls
pause
goto Canvas

rem ###############################################################################################