unit RoundedButton;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "SandBox"
// Модуль: "RoundedButton.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: GuiControl::Class Shared Delphi Sand Box::SandBox::Rounded::TRoundedButton
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Include ..\SandBox\sbDefine.inc}

interface

uses
  StdCtrls,
  Messages,
  l3Region,
  Controls {a}
  ;

type
 _RefCounted_Parent_ = TButton;
 {$Include w:\common\components\rtl\Garant\L3\RefCounted.imp.pas}
 _RoundedControl_Parent_ = _RefCounted_;
 {$Include ..\SandBox\RoundedControl.imp.pas}
 TRoundedButton = class(_RoundedControl_)
 end;//TRoundedButton

implementation

uses
  Windows,
  SysUtils,
  Themes
  ;

{$Include w:\common\components\rtl\Garant\L3\RefCounted.imp.pas}

{$Include ..\SandBox\RoundedControl.imp.pas}

end.