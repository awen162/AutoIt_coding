#cs
Dim $a = 3,$b =1,$c=2
_NumSort($a,$b,$c)
MsgBox(0,"����ֵ����","��С����"&$a&","&$b&","&$c)

Func _NumSort(ByRef $n1,ByRef $n2,ByRef $n3)
	;��$n1>$n2,�򽻻�$n1��$n2��ֵ
	If $n1>$n2 Then _Exchange($n1,$n2)
	;��$n1>$n3,�򽻻�$n1��$n3��ֵ
	If $n1>$n3 Then _Exchange($n1,$n3)
    ;��$n2>$n3,�򽻻�$n2��$n3��ֵ
	If $n2>$n3 Then _Exchange($n2,$n3)		
	EndFunc
	
	Func _Exchange(ByRef $x,ByRef $y)
		;������������ֵ
		Dim $temp = $x
		$x = $y
		$y = $temp
	EndFunc
#ce
#cs
Dim $a = 20
MsgBox(0,"","��"& $a &"���˵����䣺"& _Age($a))

;����_Age()����������䣬$n����ڼ�����

Func _Age($n)
	If $n = 1 Then
		;��$n=1ʱ������һ���ˣ�����������10
		Return 10
		;���򷵻��ϸ��˵�����+2
	Else
		Return _Age($n-1)+2
	EndIf
EndFunc
#ce
#cs
Global $sum = 0
_Plus()
MsgBox(0,"",$sum)

Func _Plus()
Local $sum
Local $x=1,$y=2
$sum=$x+$y
EndFunc
#ce
Global $g_Var1,$g_Var2
;��������ʼ
_Main()
;������������
Exit

Func _Main()
	Local $a,$b
	;���ø��Ӻ���
	_function1()
	_function2()
	_function3()
EndFunc

func _function1()
	Local $s1,$s2
	;�Ӻ���1
EndFunc

func _function2($x,$y)
	;�Ӻ���2
EndFunc

func _function3()
	���Ӻ���3
EndFunc
