@echo off
:: ============================================================
:: �뽫���ġ�ԭ��Ŀ¼�༭��������һ�д���ĵȺź��棬
:: һ����"Genshin Impact"��β�������� launcher.exe ����ļ���
:: �磺D:\Program Files\Genshin Impact
:: ************************************************************
set genshinDir=
:: ************************************************************
:: ============================================================

title ��ԭ���˺��л����� by baisebaoma
if "%1" == "" goto showAccount
if "%~x1" == ".reg" (
    set usrname=%~n1
    set filename=%1
    goto login
) else (
    echo.***************************************************
    echo.* ���ѣ������������˴�����ļ��������� reg �ļ��� *
    echo.***************************************************
)

:showAccount
echo �����߿����л������˺š�
echo ��ע�⣬�л��˺Ž�����Ϸ�ر�ʱ��Ч������������Ѿ���������Ϸ�������˳���
echo.
rem ����Ƿ���ں�׺��Ϊ.reg���ļ�
dir /b "*.reg" >nul 2>&1
if %errorlevel% == 0 (
    rem ������ڣ����������׺�����ļ���
    echo ����ǰ�ѱ���������˺��ǳƣ�
    for %%F in ("*.reg") do echo %%~nF
) else (
    rem ��������ڣ����������λ�
    echo ��Ŀǰδ�����κ��˺š�����ʹ�� saver.bat ��������һ���˺š�
    goto goodbye
)

:ask
echo.
set /p usrname=������Ҫ�л������˺��ǳƣ�
if exist "%usrname%.reg" (
    set filename=%usrname%.reg
) else (
    echo ����������������һ�Ρ���ο��������г����ǳƣ�������ȫһ�µ��ʺ��ǳơ�
    goto ask
)

:login
echo �� %usrname% ����ݵ�¼...
reg import %filename%
if %ERRORLEVEL% == 0 (
    echo �ɹ���
    echo ����������Ϸ...
    echo ��ע�⣺���ǡ����Ϸ���£���ô���ܻ���汾���޷�������Ϸ�������ֶ�ͨ������������֮����������
    start "" "%genshinDir%\Genshin Impact Game\YuanShen.exe"
) else (
    echo ʧ�ܡ�
)

:goodbye
echo ��������˳�
pause>nul
exit