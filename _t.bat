@set path=C:\Programok\cygwin\bin;%PATH%
::efax.exe -d "/dev/com3" %*
efax.exe -d "/dev/com3" -t 3829810 a4.tif
::efax.exe %*
::cygcheck ./efax.exe
