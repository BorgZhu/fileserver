@echo off

rem �����ļ���Ŀ¼�����Ϊ�գ���ǰĿ¼Ϊ��Ŀ¼
set root.dir.path="D:\workspace\test"

if "%root.dir.path%"=="" set root.dir.path=%CD%

rem ��ɾ���ļ��б��ֺŷָ�
set root.dir.exclude="autoupdate-2.0.0-SNAPSHOT.jar;clientMd5.record;runClient.bat;Client.log"
rem ��ɾ��Ŀ¼�б��ֺŷָ�
set root.dir.excludeDir="log"

rem ��������
java -Droot.dir.path=%root.dir.path% -Droot.dir.exclude=%root.dir.exclude% -Droot.dir.excludeDir=%root.dir.excludeDir% -cp fileserver-0.0.1-SNAPSHOT.jar com.yhs.fileserver.client.Client 127.0.0.1 9999
if "%errorlevel%"=="0" echo [info]: ���ӹر�

rem ����Ӧ��
echo done
exit