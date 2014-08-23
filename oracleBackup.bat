chcp 936
set mydate=%date:~0,4%%date:~5,2%%date:~8,2%
exp jc6_product/jc6_product@prodb file=d:\back\oracle\jc6_product_11_%mydate%.dmp full=y log=d:\log\expLog%mydate%
copy  d:\back\oracle\jc6_product_11_%mydate%.dmp Z:\11\
forfiles /p "d:\back\oracle" /s /m *.* /d -20 /c "cmd /c del @path" 
forfiles /p "d:\log" /s /m *.* /d -20 /c "cmd /c del @path"
pause
