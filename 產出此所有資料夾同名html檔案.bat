
REM 列出檔案名稱，依照檔名排序
dir /b /on > list.txt

REM 建立資料夾
md TEST
REM 讀資料夾內的list產出檔案
%echo off
for /f %%a in (list.txt) do (
  type nul  >> ./TEST/%%a.html  
)

REM 刪掉自己
del list.txt
del .\TEST\TEST.html
del .\TEST\list.txt.html
