unit kwPopHideFieldGetCaption;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Words"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwPopHideFieldGetCaption.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 ��������� ������::F1 Shell Words::TaskPanelWords::pop_HideField_GetCaption
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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
 TkwPopHideFieldGetCaption = {final} class(_vtHideFieldFromStackWord_)
 protected
 // realized methods
   procedure DoHideField(aHideField: TvtCustomHideField;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwPopHideFieldGetCaption
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

type _Instance_R_ = TkwPopHideFieldGetCaption;

{$Include ..\F1_Shell_Words\vtHideFieldFromStackWord.imp.pas}

// start class TkwPopHideFieldGetCaption

procedure TkwPopHideFieldGetCaption.DoHideField(aHideField: TvtCustomHideField;
  const aCtx: TtfwContext);
//#UC START# *510134E60282_51013D0102DA_var*
//#UC END# *510134E60282_51013D0102DA_var*
begin
//#UC START# *510134E60282_51013D0102DA_impl*
 aCtx.rEngine.PushString(aHideField.Caption);
//#UC END# *510134E60282_51013D0102DA_impl*
end;//TkwPopHideFieldGetCaption.DoHideField

{$If not defined(NoScripts)}
class function TkwPopHideFieldGetCaption.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:HideField:GetCaption';
end;//TkwPopHideFieldGetCaption.GetWordNameForRegister
{$IfEnd} //not NoScripts

{$IfEnd} //not NoVCM

initialization
{$If not defined(NoVCM)}
 {$Include ..\F1_Shell_Words\vtHideFieldFromStackWord.imp.pas}
{$IfEnd} //not NoVCM

end.