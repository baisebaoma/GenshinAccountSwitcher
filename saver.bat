@echo off
title 《原神》账号保存工具 by baisebaoma
echo 本工具将快照当前的账号登录状态。
set /p usrname=输入当前《原神》已经登录的账号的一个昵称：
if "%usrname%" == "" set usrname=default
reg export "HKEY_CURRENT_USER\Software\miHoYo\原神" "%usrname%.reg"
if %ERRORLEVEL% == 0 (
    echo 成功。在您下次需要登录这个账号的时候，请使用 switcher.bat。
) else (
    echo 失败了！
)

:goodbye
echo 按任意键退出
pause>nul
exit