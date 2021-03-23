
REM 列出檔案名稱，依照檔名排序
dir /b /on > list.txt

REM 建立資料夾
md HTML
md script
REM 讀資料夾內的list產出檔案
%echo off
for /f %%a in (list.txt) do (
  type nul  >> ./HTML/%%a.html  
  type nul  >> ./script/%%a.js 
)

REM 刪掉自己
del list.txt
del .\HTML\HTML.html
del .\HTML\list.txt.html
del .\script\script.js
del .\script\list.txt.js
