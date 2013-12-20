unit ControlsProcessingPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/ControlsProcessingPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::ControlsProcessing::ControlsProcessingPack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwPopControlClick,
  kwPopTB97ButtonGetIsDown,
  kwPopControlUndock
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  kwPopControlFindVGControlByName
  {$IfEnd} //not NoScripts AND not NoVGScene
  ,
  kwPopControlCanFocus,
  kwPopControlGetControl,
  kwPopControlControlCount,
  kwPopControlGetHandle,
  kwPopControlFocused,
  kwPopControlSetFocus,
  kwPopControlFindControlByName,
  kwPopControlScreenToClient,
  kwPopControlSetWidth,
  kwPopControlGetWidth,
  kwPopControlGetLeft,
  kwPopControlGetHeight,
  kwPopControlGetHint,
  kwPopControlSetHeight,
  kwPopControlCaption,
  kwPopControlClientToScreen,
  kwPopControlGetTop,
  kwPopControlShow,
  kwPopControlHide,
  kwPopControlName,
  kwPopControlGetTopParentForm,
  kwPopControlGetAnotherParentForm,
  kwPopControlGetParentForm,
  kwPopControlVisible,
  kwPopControlGetMainForm,
  kwPopControlGetParent,
  kwPopControlGetPopupMenu,
  kwPopComboBoxGetItemIndex,
  kwPopComboBoxDropDown,
  kwPopComboBoxIndexOf,
  kwPopComboBoxSelectItem,
  kwPopComboBoxSetIndex,
  kwPopControlVScrollerVisible,
  kwPopControlHScrollerVisible,
  kwPopRadioGroupSetItemIndex,
  kwPopRadioGroupGetItemIdex,
  kwPopControlSetTop,
  kwPopControlSetLeft,
  kwPopComponentFindComponent,
  kwPopComponentGetComponent,
  kwPopComponentName,
  kwPopComponentComponentCount,
  kwPopFlashGetFrame,
  kwFocusedControlPush,
  kwBynameControlPush,
  kwControlMouseLeftClick,
  kwControlMouseMiddleClick,
  kwControlMouseRightClick,
  kwByhandleControlPush,
  kwPopControlEnabled,
  kwPopControlMouseWheelUp,
  kwPopControlMouseWheelDown,
  kwPopControlInvalidate,
  kwPopControlRepaint,
  kwPopControlGetColor,
  kwPopControlSetColor,
  kwPopComboBoxSaveItems,
  RegisteringControlsClasses,
  kwPopControlScrollInfoPosition,
  kwPopControlScrollInfoPageSize,
  kwPopControlScrollInfoMax,
  kwPopControlScrollInfoMin,
  kwPopControlScrollInfo,
  kwControlMouseLeftDragAndDrop
  ;

{$IfEnd} //not NoScripts
end.