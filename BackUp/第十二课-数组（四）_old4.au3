#include<Array.au3>
#cs
	_Main()
	Exit

	Func _Main()
	Local $jvxing1[3][3] = [[1, 2, 3],[4, 5, 6],[7, 8, 9]]
	Local $jvxing2[3][3]
	_ArrayDisplay($jvxing1, "�Ի�ǰ")
	Local $i, $j
	For $i = 0 To 2
	For $j = 0 To 2
	$jvxing2[$i][$j] = $jvxing1[$j][$i]
	Next
	Next
	_ArrayDisplay($jvxing2, "�Ի���")
	EndFunc   ;==>_Main
#ce

_Main()
Exit

Func _Main()
	Local Const $n = 5
	Local $shuju[][$n] = [["���", "����", "�Ա�", "�༶", "�ܷ�"] _
	[1, "�Ŵ�ү", "��", "һ��", 530]
	[2, "�����", "Ů", "����", 426]
	[3, "������", "��", "���", 625]
	[4, "����ү", "��", "�İ�", 452]
	[5, "�Դ�ү", "��", "һ��", 562]
	_ArrayDisplay($shuju, "����ѧ����Ϣ")
	Local $shuju2[1][$n]
	Local $i, $j
	Local $p = 1
	For $i = 1 To UBound($shuju) - 1
		If $shuju[$i][4] > 500 Then
			ReDim $shuju2[$p + 1][$n];����$shuju2���鳤��
			$shuju2[$p][0] = $p;����shuju2��������
			For $j = 1 To UBound($shuju2, 2) - 1
				$shuju2[$p][$j] = $shuju[$i][$j]
			Next
			$p += 1
			EndIf
;### Tidy Error -> "next" is closing previous "if" on line 36
		Next
		_ArrayDisplay($shuju2, "���г���500��ѧ����Ϣ")
;### Tidy Error -> "endfunc" is closing previous "for" on line 35
	EndFunc   ;==>_Main

;### Tidy Error -> func is never closed in your script.
