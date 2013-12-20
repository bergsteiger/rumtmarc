unit RegisterTaskPanelClasses;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/RegisterTaskPanelClasses.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Поддержка тестов::F1 Shell Words::TaskPanelWords::RegisterTaskPanelClasses
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

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