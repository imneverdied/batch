@echo off

%echo off
for /f %%a in (NAME.txt) do (
    echo %%a >> %%a.txt
)

rem echo "讀取NAME內容產生檔案"




