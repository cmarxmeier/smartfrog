@echo off

if %1.==Sub. goto %2

for %%f in (*.264) do call %0 Sub action %%~nf
goto end

:action
echo The file is %3
C:\Programme\ffmpeg\bin\ffmpeg.exe -i  %3.264 %3.mp4

:end
