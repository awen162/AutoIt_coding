#include <Array.au3>
;һά����
;Global/Local <������>[Ԫ�ظ���]
#cs
Local $Array[5] = [0,1,2,3,4]
$i=0
For $i = 0 to 4 
MsgBox(0,"",$array[$i])
Next
#ce
;Global/Local <������>[��һάԪ�ظ���][�ڶ�άԪ�ظ���]
#cs
Local $Array[3][2] = [['a','b'],['c','d'],['e','f']]
Local $i,$j
For $i = 0 To 2
	For $j = 0 to 1 
	MsgBox(0,"",$Array[$i][$j])
	Next
Next
#ce
;��̬����
#cs
ReDim<������>[����1][����2]...[����N]
;����һ��һά���飬��СΪ3
Local $Array[3]
;�������С������5
ReDim $Array[5]
#ce
#cs
_main()
Exit

Func _main()
	Local $Array[6]=["",1,2,3,4,5]
	_Test($Array)
EndFunc

Func _Test($TestArray)
	MsgBox(0,"",$TestArray[3])
EndFunc
#ce
#cs
Local $qqq[5][4]=[[1,2,3,4],[5,'',6,9],[7,8,5,4]]
;ȡ����
Local $return1 = UBound ($qqq,2)
MsgBox(0,"","����Ϊ"& $return1)
;ȡ����
Local $return2 = UBound ($qqq,1)
MsgBox(0,"","����Ϊ"& $return2)
;ȡ�±���
Local $return3 = UBound ($qqq,0)
MsgBox(0,"","ά��Ϊ"& $return3)
#ce
Local $qqq[5][4]=[[1,2,3,4],[5,'',6,9],[7,8,5,4]]
_ArrayDisplay($qqq)

