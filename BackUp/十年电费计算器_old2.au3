﻿#include <WindowsConstants.au3>
#include <GUIConstantsEx.au3>

$hGUI = GUICreate("十年电费对比器", 500, 400, -1, -1)
$hButton = GUICtrlCreateButton("开始对比", 189, 329, 110, 35)
$hGroup = GUICtrlCreateGroup("品牌一数据", 20, 20, 225, 85)
$hGroup2 = GUICtrlCreateGroup("品牌二数据", 252, 20, 225, 85)
$hLabel = GUICtrlCreateLabel("功率:", 35, 55, 47, 15)
$hLabel2 = GUICtrlCreateLabel("功率:", 265, 55, 41, 14)
$hInput_pinpai2 = GUICtrlCreateInput("", 315, 52, 50, 20)
$hLabel3 = GUICtrlCreateLabel("单位：千瓦", 151, 55, 65, 25)
$hLabel4 = GUICtrlCreateLabel("单位：千瓦", 381, 55, 65, 25)
$hInput_pinpai1 = GUICtrlCreateInput("", 89, 52, 50, 20)
$result_Label = GUICtrlCreateLabel("对比结果：", 22, 172, 447, 136)
GUICtrlSetStyle(-1, -1)
GUICtrlSetData(-1, "")
$hLabel6 = GUICtrlCreateLabel("每天使用时长：", 24, 118, 85, 17)
$hInput_shichang = GUICtrlCreateInput("", 119, 118, 37, 16)
$hLabel7 = GUICtrlCreateLabel("小时", 166, 118, 71, 20)
$hLabel8 = GUICtrlCreateLabel("对比结果", 223, 149, 57, 14)
GUISetState()

While 1
	$hMsg = GUIGetMsg()
	Switch $hMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $hButton
			If $hInput_pinpai1 == "" And $hInput_pinpai2 == "" And $hInput_shichang == "" Then
				MsgBox(0, "错误提示", "请输入数值，输入不能为空！")
EndIf
		EndSwitch
	WEnd

