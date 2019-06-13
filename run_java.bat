REM JAVA COMPILATION BATCH FILE 
REM Made by Sharad Raj
REM Author's Github: https://www.github.com/sharadcodes
cls
@ECHO OFF
ECHO. Source file name: %~n1
ECHO. Source path     : %~f1

if %~x1%==.java (
ECHO.
ECHO. JAVA COMPILATION IS GOING ON ------------------------------------------
ECHO.
javac "%~f1"

ECHO.
if exist "%~dp1%~n1.class"  ECHO. ############################ OUTPUT ##############################
ECHO.
ECHO.

if exist "%~dp1%~n1.class" (
cd %~dp1
java %~n1
REM del "%~dp1%~n1.class"
)
ECHO.
ECHO.
)
pause
