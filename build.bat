@echo off
@path=C:\Programok\cygwin\bin;%PATH%
rem set TMPDIR=c:\tmp
@set WORK_ROOT=%CD%
@set CYGWIN=nodosfilewarning
bash --login -i -c "make -C $WORK_ROOT %1 %2 %3 %4"
