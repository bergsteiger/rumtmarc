unit RegisterTaskPanelClasses;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Words"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/RegisterTaskPanelClasses.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 ��������� ������::F1 Shell Words::TaskPanelWords::RegisterTaskPanelClasses
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

{$If not defined(NoVCM)}
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  vtHideField
  {$If not defined(NoScripts)}
  ,
  tfwClassRef
  {$IfEnd} //not NoScripts
  
  ;

{$IfEnd} //not NoVCM

initialization
{$If not defined(NoVCM)}
//#UC START# *5140455001F0*
 TtfwClassRef.Register(TvtHideField);
 TtfwClassRef.Register(TvtCustomHideField);
//#UC END# *5140455001F0*
{$IfEnd} //not NoVCM

end.