#cs �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�

	Au3�汾:	3.3.14.2
	�ű�����:   ��Х��
	�ű�����:   Ϊ��ɽ�ʰ�2010���ӿ�ݼ�
	������־:
	��ϵ��ʽ:

#ce �ߣߣߣߣߣߣߣߣߣߣߣߣߣߣ߽ű���ʼ�ߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣߣ�


If Not ProcessExists("Newword.exe") Then Run("C:\Program Files (x86)\Kingsoft\PowerWordDict\Newword.exe")

HotKeySet("!a", "AddButtonClick")
HotKeySet("!e", "EditButtonClick")
HotKeySet("!d", "DeleteButtonClick")
HotKeySet("!s", "SaveButtonClick")

While 1
	If Not ProcessExists("Newword.exe") Then ExitLoop
	Sleep(100);ÿ100��������һ��
WEnd

Func AddButtonClick();����������ӡ���ť�Ŀ�ݼ�����
	ControlClick("���ʱ�", "", "Button12")
EndFunc   ;==>AddButtonClick


Func EditButtonClick();���������༭����ť�Ŀ�ݼ�����
	ControlClick("���ʱ�", "", "Button13")
EndFunc   ;==>EditButtonClick

Func DeleteButtonClick();��������ɾ������ť�Ŀ�ݼ�����
	ControlClick("���ʱ�", "", "Button14")
EndFunc   ;==>DeleteButtonClick

Func SaveButtonClick();����������Ϊ�����ʱ�����ť�Ŀ�ݼ�����
	ControlClick("���ʱ�", "", "Button15")
EndFunc   ;==>SaveButtonClick

