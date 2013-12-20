unit kwPopHideFieldSetExpanded;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwPopHideFieldSetExpanded.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Shell Words::TaskPanelWords::pop_HideField_SetExpanded
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  vtHideField,
  Controls
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 {$Include ..\F1_Shell_Words\vtHideFieldFromStackWord.imp.pas}
 TkwPopHideFieldSetExpanded = {final} class(_vtHideFieldFromStackWord_)
 protected
 // realized methods
   procedure DoHideField(aHideField: TvtCustomHideField;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwPopHideFieldSetExpanded
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}

type _Instance_R_ = TkwPopHideFieldSetExpanded;

{$Include ..\F1_Shell_Words\vtHideFieldFromStackWord.imp.pas}

// start class TkwPopHideFieldSetExpanded

procedure TkwPopHideFieldSetExpanded.DoHideField(aHideField: TvtCustomHideField;
  const aCtx: TtfwContext);
//#UC START# *510134E60282_5101373601A8_var*
//#UC END# *510134E60282_5101373601A8_var*
begin
//#UC START# *510134E60282_5101373601A8_impl*
 if aCtx.rEngine.PopBool
  then aHideField.State := hfsShow
  else aHideField.State := hfsHide;
//#UC END# *510134E60282_5101373601A8_impl*
end;//TkwPopHideFieldSetExpanded.DoHideField

{$If not defined(NoScripts)}
class function TkwPopHideFieldSetExpanded.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:HideField:SetExpanded';
end;//TkwPopHideFieldSetExpanded.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //not NoVCM

initialization
{$If not defined(NoVCM)}
 {$Include ..\F1_Shell_Words\vtHideFieldFromStackWord.imp.pas}
{$IfEnd} //not NoVCM

end.