@echo off
title YouTube Audio/Video Downloader (by Andr3aD)

:scelta
cls
echo Choose:
echo 1. Audio
echo 2. Video
set /p scelta=1 o 2 ? Insert: 
if not '%scelta%'== set scelta=%scelta:~0,1%
if '%scelta%'=='1' goto :Audio
if '%scelta%'=='2' goto :Video


:Audio
cls
audio.py
pause
echo.
echo 1. Continue to download
echo 2. Close the Program
goto final

:Video
cls
video.py
pause
echo.
echo 1. Continue to download
echo 2. Close the Program

:final
echo.
echo.
set /p final=1 o 2 ? Insert: 
if not '%final%'== set final=%final:~0,1%
if '%final%'=='1' goto :scelta
if '%final%'=='2' goto :exit


:exit
cls
color c
echo Thanks for using my Program! :D
echo Made by Andr3aD_

timeout /t 3 /nobreak >nul
exit