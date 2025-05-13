@echo off
time /t
jwasm -c -bin -0 -D?LANG=ctm-en -D?LANG2=ctm-ja -Foctmouse.bin  ctmouse.asm
bin2exe -s 512 ctmouse.bin ctmouse.exe
del ctmouse.bin
