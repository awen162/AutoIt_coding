#Region
#AccAu3Wrapper_Icon=										;����ͼ��
#AccAu3Wrapper_UseX64=n										;�Ƿ����Ϊ64λ����(y/n)
#AccAu3Wrapper_OutFile=										;�����Exe����
#AccAu3Wrapper_OutFile_x64=									;64λ�����Exe����
#AccAu3Wrapper_UseUpx=n										;�Ƿ�ʹ��UPXѹ��(y/n) ע:����ѹ����������������
#AccAu3Wrapper_Res_Comment=									;����ע��
#AccAu3Wrapper_Res_Description=								;��������
#AccAu3Wrapper_Res_Fileversion=1.0.0.1						;�ļ��汾
#AccAu3Wrapper_Res_FileVersion_AutoIncrement=y				;�Զ����°汾 y/n/p=�Զ�/���Զ�/ѯ��
#AccAu3Wrapper_Res_ProductVersion=1.0						;��Ʒ�汾
#AccAu3Wrapper_Res_Language=2052							;��Դ����, Ӣ��=2057/����=2052
#AccAu3Wrapper_Res_LegalCopyright=							;�����Ȩ
#AccAu3Wrapper_Res_RequestedExecutionLevel=					;����Ȩ��: None/asInvoker/highestAvailable/requireAdministrator
#AccAu3Wrapper_Run_Tidy=y									;����ǰ�Զ�����ű�(y/n)
#AccAu3Wrapper_Run_Obfuscator=y								;���ýű�����(y/n)
#Obfuscator_Parameters=/cs=1 /cn=1 /cf=1 /cv=1 /sf=1 /sv=1	;�ű����ܲ���: 0/1������/����, /cs�ַ��� /cn���� /cf������ /cv������ /sf������ /sv�������
#AccAu3Wrapper_DBSupport=y									;ʹ�ַ�������֧��˫�ֽ��ַ�(y/n) <- �ɶ������ַ���ʵ���ַ�������
#AccAu3Wrapper_AntiDecompile=y								;�Ƿ����÷�������(y/n) <- �򵥷���, ����Ӧ��ɵ��ʽ�����빤��
#EndRegion

#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

	��ӭʹ�� AutoIt v3 ���İ� !

	IT���:		https://www.itiankong.com/
	Au3ר��:	https://www.itiankong.net/forum-au3-1.html

	Au3�汾:	3.3.14.2
	�ű�����:   ��Х��
	�ű�����:
	������־:
	��ϵ��ʽ:

#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

;Once I read in an article:
;
;Take a piece of paper,right now,and write out the word ATTITUDE.
;Now assign each letter the number that letter corresponds to and
;add those numbers up.Guess what,they add up to 100%.A=1,T=20,
;T=20,I=9,T=20,U=21,D=4,E=5=100%.Attitude is everything folks.
;You can't hide it;you can't even deny it.;
;It's who you are.It's the outside of your inside.
;
;I thought,Oh! Really?
;Seconds later, I became suspicious of this claim...
;OK,let's find out the truth,since we have tools to utilze...
InetGet("http://www.kilgarriff.co.uk/BNClists/lemma.al", "lemma.al", 0)

$file = FileOpen("lemma.al", 0)
While 1
	$line = FileReadLine($file)
	If @error = -1 Then ExitLoop
	$lineElements = StringSplit($line, " ")
	If AddUpCharactersInWordAsNumber($lineElements[3]) == 100 Then ConsoleWrite($lineElements[3] & @CRLF)
	EndIf
WEnd
FileClose($file)

MsgBox(0, "", "Finished!")

Func AddUpCharactersInWordAsNumber($word)
	$wordLowerCase = StringLower($word)
	$Characters = StringSplit($wordLowerCase, "")
	$count = 0
	For $i = 1 To $Characters[0]
		$count = $count + Asc($Characters[$i]) - 96
	Next
	Return $count
EndFunc   ;==>AddUpCharactersInWordAsNumber

