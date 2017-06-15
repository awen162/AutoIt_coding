;@ScriptDir �ű�����Ŀ¼
#cs
���� ˵�� 
ConsoleRead �� AutoIt �ű������е� STDIN 
ConsoleWrite д�����ݵ� STDOUT.һЩ�ı��༭�����Զ�ȡ�������Ϊ��������ɽ��ܵ����� 
ConsoleWriteError д�����ݵ� STDERR. һЩ�ı��༭�����Զ�ȡ�������Ϊ��������ɽ��ܵ����� 
DirCopy ����Ŀ¼����������Ŀ¼���ļ�(���� xcopy ����) 
DirCreate ����Ŀ¼/�ļ��� 
DirGetSize ����ָ��Ŀ¼�Ĵ�С(�ֽ�) 
DirMove �ƶ�Ŀ¼����������Ŀ¼���ļ� 
DirRemove ɾ��Ŀ¼/�ļ��� 
DriveGetDrive ����ö�������������� 
DriveGetFileSystem �������������ļ�ϵͳ���� 
DriveGetLabel �����������ľ��(�������) 
DriveGetSerial �������������к� 
DriveGetType �������������� 
DriveMapAdd ӳ������������ 
DriveMapDel �Ͽ����������� 
DriveMapGet ��ȡӳ������������ϸ���� 
DriveSetLabel �޸���������� 
DriveSpaceFree ����·�����̵Ŀ��ÿռ�(MB) 
DriveSpaceTotal ����·�����̵��ܿռ�(MB) 
DriveStatus ������������״̬ 
FileChangeDir ���ĵ�ǰ����Ŀ¼ 
FileClose �ر���ǰ�򿪵��ļ� 
FileCopy ����һ�����ļ� 
FileCreateNTFSLink ���� NTFS Ӳ���ӵ��ļ���Ŀ¼ 
FileCreateShortcut �����ļ��Ŀ�ݷ�ʽ(.lnk) 
FileDelete ɾ��һ�����ļ� 
FileExists ����ļ���Ŀ¼�Ƿ���� 
FileFindFirstFile ָ��·�����ļ����봴��������� 
FileFindNextFile �����������ָ������һ���ļ��� 
FileFlush ˢ�»������ļ������� 
FileGetAttrib �����ļ������Դ��� 
FileGetEncoding ����ļ�ʹ�õ��ı����� 
FileGetLongName ��������·������ 
FileGetPos ������ǰ�ļ���λ�� 
FileGetShortcut ��ȡ��ݷ�ʽ����ϸ���� 
FileGetShortName ���� 8.3 ��ʽ��·������ 
FileGetSize �����ļ����ֽڴ�С 
FileGetTime �����ļ���ʱ���������Ϣ 
FileGetVersion �����ļ��İ汾��Ϣ 
FileInstall ������װ���ļ�������ű� 
FileMove �ƶ�һ�����ļ� 
FileOpen ���ļ��Թ���ȡ��д�� 
FileOpenDialog �������ļ��Ի��� 
FileRead ��ȡ��ǰ���ı��ļ���ָ���������ַ� 
FileReadLine ��ȡ�ı��ļ�ָ���е��ı� 
FileReadToArray ��ȡָ���ļ���һ�������� 
FileRecycle ɾ���ļ���Ŀ¼������վ 
FileRecycleEmpty ��ջ���վ 
FileSaveDialog ���������ļ��Ի��� 
FileSelectFolder ��������ļ��жԻ��� 
FileSetAttrib ����һ�����ļ���Ŀ¼������ 
FileSetEnd ���õ�ǰ�ļ���λ�õ��ļ�ĩβ 
FileSetPos ���õ�ǰ�ļ���λ�� 
FileSetTime ����һ�����ļ���ʱ��� 
FileWrite д�ı�/���ݵ���ǰ�򿪵��ļ� 
FileWriteLine ���һ���ı����򿪵��ı��ļ�β�� 
IniDelete ɾ�������ļ�(*.ini)��ֵ 
IniRead �������ļ�(*.ini)��ֵ 
IniReadSection �������ļ�(*.ini)�ֶε�ȫ���ؼ�����ֵ 
IniReadSectionNames �������ļ�(*.ini)��ȫ���ֶ���Ϣ 
IniRenameSection �����������ļ�(*.ini)���ֶ��� 
IniWrite д��׼��ʽ�������ļ�(*.ini) 
IniWriteSection д�����ļ�(*.ini)���ֶ����� 
#ce

#include <MsgBoxConstants.au3>

_DirSearch()

Func _DirSearch()
	; Assign a Local variable the search handle of all files in the current directory.
	Local $hSearch = FileFindFirstFile("*.*")

	; Check if the search was successful, if not display a message and return False.
	If $hSearch = -1 Then
		MsgBox($MB_SYSTEMMODAL, "", "Error: No files/directories matched the search pattern.")
		Return False
	EndIf

	; Assign a Local variable the empty string which will contain the files names found.
	Local $sFileName = "", $iResult = 0

	While 1
		$sFileName = FileFindNextFile($hSearch)
		; If there is no more file matching the search.
		If @error Then ExitLoop

		; Display the file name.
		$iResult = MsgBox(BitOR($MB_SYSTEMMODAL, $MB_OKCANCEL), "", "File: " & $sFileName)
		If $iResult <> $IDOK Then ExitLoop ; If the user clicks on the cancel/close button.
	WEnd

	; Close the search handle.
	FileClose($hSearch)
EndFunc   ;==>Example
































