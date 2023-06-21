@echo off

title 《原神》账号切换工具 by baisebaoma
if "%1" == "" goto showAccount
if "%~x1" == ".reg" (
    set usrname=%~n1
    set filename=%1
    goto login
) else (
    echo.***************************************************
    echo.* 提醒：您尝试拖入了错误的文件。请拖入 reg 文件。 *
    echo.***************************************************
)

:showAccount
echo 本工具可以切换您的账号。
echo 请注意，切换账号仅在游戏关闭时有效，如果您现在已经开启了游戏，请先退出。
echo.
rem 检查是否存在后缀名为.reg的文件
dir /b "*.reg" >nul 2>&1
if %errorlevel% == 0 (
    rem 如果存在，输出不带后缀名的文件名
    echo 您当前已保存的所有账号昵称：
    for %%F in ("*.reg") do echo %%~nF
) else (
    rem 如果不存在，输出下面这段话
    echo 您目前未保存任何账号。请先使用 saver.bat 保存至少一个账号。
    goto goodbye
)

:ask
echo.
set /p usrname=输入您要切换到的账号昵称：
if exist "%usrname%.reg" (
    set filename=%usrname%.reg
) else (
    echo 您输入有误，请再试一次。请参考上面已列出的昵称，输入完全一致的帐号昵称。
    goto ask
)

:login
echo 以 %usrname% 的身份登录...
reg import %filename%
if %ERRORLEVEL% == 0 (
    echo 成功。请手动启动游戏。
) else (
    echo 失败。
)

:goodbye
echo 按任意键退出
pause>nul
exit