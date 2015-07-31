#include <GUIConstantsEx.au3>
#include <FontConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <ColorConstantS.au3>

MyGUI()

Func MyGUI()
    ; Font type to be used for setting the font of the controls.
    Local Const $sFont = "Comic Sans Ms"

    ; Create a GUI with various controls.
    Local $hGUI = GUICreate("XX Group-XX rules", 810, 500, -1, -1, default, $WS_EX_TOPMOST)
	; use ?$WS_EX_TOPMOST to let this gui window always on top
	; 810 is width of the window, 500 is the height of this gui window
    ; -1 is default value


  $txt1 = "1. 條文條文條文條文條文條文條文條文條文條文條文。" ; define $txt1
  $txt2 = "2. 條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文。"
  $txt3 = "3. 條文條文條文條文條文條文條文條文條文條。"
  $txt4 = "4. 條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文。"
  $txt5 = "5. 條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文"
  $txt6 = "條文條文條文條文條文。"
  $txt7 = "6. 條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文，"
  $txt8 = "條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文"
  $txt9 = "條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文"
  $txt10 = "7. 條文條文條文條文條文條文條文條文條文條文。"
  $txt11 = "8. 條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文條文"
  $txt12 = "條文條文條文條文條文條文條文條文條文條文條。"
  $txt13 = "9. 條文條文條文條文條文條文條文條文條文條文條條文條文條文條文條文條文條文條文條文條文條"
  $txt14 = "條文條文條文條文條文條文條文條文條文條文條。"
  $txt15 = "10. 條文條文條文條文條文條文條文條文條文條文條條文條文。"


    ; Create label controls.
    GUICtrlCreateLabel($txt1 , 10, 10, 780, 30) ;link to $txt1, start from 10, the second 10 is the height, 780 is the width -> compatiable with window's width (line 15)
    GUICtrlSetFont(-1, 14, $FW_NORMAL, 1, $sFont) ; Set the font of the previous control.

    Local $idLabel2 = GUICtrlCreateLabel($txt2, 10, 40, 780, 30)
    GUICtrlSetFont($idLabel2, 14, $FW_NORMAL, 1, $sFont) ; Set the font of the controlID stored in $iLabel2.

    Local $idLabel3 = GUICtrlCreateLabel($txt3, 10, 70, 780, 30)
    GUICtrlSetFont($idLabel3, 14, $FW_NORMAL, 1, $sFont) ; Set the font of the controlID stored in $iLabel3.

    Local $idLabel4 = GUICtrlCreateLabel($txt4, 10, 100, 780, 30)
    GUICtrlSetFont($idLabel4, 14, $FW_NORMAL, 1, $sFont)

    Local $idLabel5 = GUICtrlCreateLabel($txt5, 10, 130, 780, 30)
    GUICtrlSetFont($idLabel5, 14, $FW_NORMAL, 1, $sFont)
    Local $idLabel6 = GUICtrlCreateLabel($txt6, 28, 155, 780, 30)
    GUICtrlSetFont($idLabel6, 14, $FW_NORMAL, 1, $sFont)

    Local $idLabel7 = GUICtrlCreateLabel($txt7, 10, 185, 790, 30)
    GUICtrlSetFont($idLabel7, 14, $FW_NORMAL, 1, $sFont)
    Local $idLabel8 = GUICtrlCreateLabel($txt8, 28, 210, 790, 30)
    GUICtrlSetFont($idLabel8, 14, $FW_NORMAL, 1, $sFont)
    Local $idLabel9 = GUICtrlCreateLabel($txt9, 28, 235, 790, 30)
    GUICtrlSetFont($idLabel9, 14, $FW_NORMAL, 1, $sFont)

    Local $idLabel10 = GUICtrlCreateLabel($txt10, 10, 265, 790, 30)
    GUICtrlSetFont($idLabel10, 14, $FW_NORMAL, 1, $sFont)

    Local $idLabel11 = GUICtrlCreateLabel($txt11, 10, 295, 790, 30)
    GUICtrlSetFont($idLabel11, 14, $FW_NORMAL, 1, $sFont)
	Local $idLabel12 = GUICtrlCreateLabel($txt12, 28, 320, 790, 30)
    GUICtrlSetFont($idLabel12, 14, $FW_NORMAL, 1, $sFont)

    Local $idLabel13 = GUICtrlCreateLabel($txt13, 10, 350, 790, 30)
    GUICtrlSetFont($idLabel13, 14, $FW_NORMAL, 1, $sFont)
    Local $idLabel14 = GUICtrlCreateLabel($txt14, 28, 375, 790, 30)
    GUICtrlSetFont($idLabel14, 14, $FW_NORMAL, 1, $sFont)

    Local $idLabel15 = GUICtrlCreateLabel($txt15, 10, 405, 790, 30)
    GUICtrlSetFont($idLabel15, 14, $FW_NORMAL, 1, $sFont)


    Local $idClose = GUICtrlCreateButton("已瞭解", 330, 450, 85, 30)

    ; Change GUI background color ; 與#include <ColorConstantS.au3>連動
    GUISetBkColor($COLOR_MONEYGREEN)
   ; These are nice background color
   ; $COLOR_MONEYGREEN
   ; $COLOR_CREAM
   ; $COLOR_SKYBLUE

    ; Display the GUI.
    GUISetState(@SW_SHOW, $hGUI)

    ; Loop until the user exits.
    While 1
        Switch GUIGetMsg()
            Case $GUI_EVENT_CLOSE, $idClose
                ExitLoop

        EndSwitch
    WEnd

    ; Delete the previous GUI and all controls.
    GUIDelete($hGUI)
 EndFunc   ;==>Example



;GUICtrlSetFont ( controlID, size [, weight [, attribute [, fontname [, quality]]]] )

;$FW_DONTCARE = 0 (Use the default font weight)
;$FW_THIN = 100
;$FW_EXTRALIGHT = 200
;$FW_LIGHT = 300
;$FW_NORMAL = 400
;$FW_MEDIUM = 500
;$FW_SEMIBOLD = 600
;$FW_BOLD = 700
;$FW_EXTRABOLD = 800
;$FW_HEAVY = 900

;$GUI_FONTITALIC (2) = Italic
;$GUI_FONTUNDER (4) = Underlined
;$GUI_FONTSTRIKE (8) = Strike

