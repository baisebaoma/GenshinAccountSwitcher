@echo off
title ��ԭ���˺ű��湤�� by baisebaoma
echo �����߽����յ�ǰ���˺ŵ�¼״̬��
set /p usrname=���뵱ǰ��ԭ���Ѿ���¼���˺ŵ�һ���ǳƣ�
if "%usrname%" == "" set usrname=default
reg export "HKEY_CURRENT_USER\Software\miHoYo\ԭ��" "%usrname%.reg"
if %ERRORLEVEL% == 0 (
    echo �ɹ��������´���Ҫ��¼����˺ŵ�ʱ����ʹ�� switcher.bat��
) else (
    echo ʧ���ˣ�
)

:goodbye
echo ��������˳�
pause>nul
exit