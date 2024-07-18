@echo off

:menu

echo Select a Windows utility to execute:
echo 1. IPconfig
echo 2. Tasklist/Taskkill
echo 3. chkdsk
echo 4. Format
echo 5. Defrag
echo 6. Find
echo 7. Attrib
echo 8. Exit
choice /c 12345678 /n /m "Enter your choice (1-8): "


if errorlevel 8 goto Exit
if errorlevel 7 goto Attrib
if errorlevel 6 goto Find
if errorlevel 5 goto Defrag
if errorlevel 4 goto Format
if errorlevel 3 goto Chkdsk
if errorlevel 2 goto TasklistKill
if errorlevel 1 goto IPconfig

rem ip
:IPconfig
ipconfig
goto menu

rem task kill/list
:TasklistKill
echo 1. tasklist
echo 2. taskkill
choice /c 12 /n /m "Enter your choice (1-2): "

rem taskkill options
if errorlevel 2 (
    set /p taskname="Enter the task name or Process ID to End: "
    taskkill /f /im !taskname!
    echo Failed to kill task.
) else (
    tasklist
)

goto menu

rem checkdisk
:Chkdsk
set /p drive="Enter the drive letter to check (Sample C:/): "
chkdsk !drive!
goto menu

rem format put warning
:Format
set /p drive="Enter the drive letter to format (Sample D:/): "
echo WARNING: Formatting will erase all data.
pause
format !drive!
goto menu

rem defrag
:Defrag
set /p drive="Enter the drive letter to defrag (Sample A:/ - Z:/): "
pause
defrag !drive!
goto menu

rem find
:Find
set /p searchfile="Enter the file to search within: "
set /p searchterm="Enter the search term: "
find "!searchterm!" !searchfile!
pause
goto menu

rem change attrib
:Attrib
set /p filename="Enter the file to change attributes: "
set /p attribs="Enter the new attributes (Sample +r -h): "
attrib !attribs! !filename!
pause
goto menu

rem exit
:Exit
exit