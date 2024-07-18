@echo off



REM Sort text files on Drive C: by date
echo Sort text files on Drive C: by date...
cd /d C:\
dir /b /o:d *.txt > temp.txt

REM Archive older files to a folder on Drive Z:
echo Archive older files to a folder on Drive Z:...
for /f "delims=" %%F in (temp.txt) do (
    set file=%%F
    set year=!file:~6,4!
    set month=!file:~3,2!
    set day=!file:~0,2!
    set folder=Z:\Archive\!year!-!month!-!day!
    if not exist "!folder!" mkdir "!folder!"
    move "%%F" "!folder!"
)

REM Sort the archived files by size
echo Sorting the archived files by size...
cd /d Z:\Archive
dir /b /os > temp.txt

REM Prompt the user for permission to delete old, large files
echo.
echo The following files are old and large:
type temp.txt


set /p delete="Do you want to delete these files? (Y/N): "
if /i "!delete!"=="Y" (
    for /f "delims=" %%F in (temp.txt) do (
        del "%%F"
    )
    echo Files deleted successfully.
    goto cleanup
) else if /i "!delete!"=="N" (
    echo Files not deleted.
    goto cleanup
) else (
    echo Invalid input. Files not deleted.
    goto cleanup
)

:cleanup
REM Clean up temporary files
del temp.txt


echo Task completed.

return