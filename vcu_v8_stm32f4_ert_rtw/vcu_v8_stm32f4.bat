
cd .

chcp 1252

if "%1"=="" ("D:\Matlab_23B\bin\win64\gmake"  -f vcu_v8_stm32f4.mk all) else ("D:\Matlab_23B\bin\win64\gmake"  -f vcu_v8_stm32f4.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1