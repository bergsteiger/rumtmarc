unit nscSizeGripPanel;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Nemesis"
// ������: "w:/common/components/gui/Garant/Nemesis/nscSizeGripPanel.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Nemesis::StatusBar::TnscSizeGripPanel
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis)}
uses
  tb97Ctls,
  Messages,
  nscNewInterfaces,
  StatusBarUtils,
  Controls {a}
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}
type
 _nscStatusBarItemNotification_Parent_ = TSizeGripPanel;
 {$Include ..\Nemesis\nscStatusBarItemNotification.imp.pas}
 TnscSizeGripPanel = class(_nscStatusBarItemNotification_)
 end;//TnscSizeGripPanel
{$IfEnd} //Nemesis

implementation

{$If defined(Nemesis)}
uses
  l3Base
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}

{$Include ..\Nemesis\nscStatusBarItemNotification.imp.pas}


{$IfEnd} //Nemesis
end.