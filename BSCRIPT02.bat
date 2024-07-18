echo off


:menu
echo Choose one to Calculate
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
echo 4. Exit

choice /c 1234 /m "Choose an Option: "


if errorlevel 4 goto End
if errorlevel 3 goto Quadrilateral
if errorlevel 2 goto Triangle
if errorlevel 1 goto Circle

:Circle
set /p radius="Enter the radius: "
set /a area=31416*%radius%*%radius%/10000
echo The area of the Circle is: %area%
pause
cls
goto menu




:Triangle

set /p a="Enter the length of the first side of the triangle: "
set /p b="Enter the length of the second side of the triangle: "
set /p c="Enter the length of the third side of the triangle: "
set /a s=(%a%+%b%+%c%)/2
set /a area=s*(s-%a%)*(s-%b%)*(s-%c%)
echo The area of the triangle is: %area%

if %a%==%b% if %b%==%c% (
  echo The triangle is equilateral.

) else if %a%==%b% (
  echo The triangle is isosceles.

) else if %b%==%c% (
  echo The triangle is isosceles.

) else if %a%==%c% (
  echo The triangle is isosceles.

) else (
  echo The triangle is scalene.

)
pause
cls
goto menu

:Quadrilateral

set /p length="Enter the length of the quadrilateral: "
set /p width="Enter the width of the quadrilateral: "
set /a area=%length%*%width%
echo The area of the quadrilateral is: %area%

if %length%==%width% (
  echo The quadrilateral is a square.
) else (
  echo The quadrilateral is a rectangle.
)

echo.
pause
cls
goto menu






:End
exit
