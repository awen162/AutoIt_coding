;Local $a = "I like ""AU3"" "
;Local $a = 'I like "AU3"'
#cs
Local $a = Chr(65)
MsgBox(0, "65ִ��Chr����", $a)
Local $b = Asc("A")
MsgBox(0, "Aִ��Asc����", $b)
#ce

Local $s = "���ǵ�һ��"&Chr(13)&chr(10)&"���ǵڶ���"
MsgBox(0,"","���з�ʾ����"&$s)

