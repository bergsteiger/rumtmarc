unit kwQueryCardSetCanSaveState;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwQueryCardSetCanSaveState.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::QueryCard_SetCanSaveState
//
// Устанавливает флаг того может ли карточка запроса писать своё состояние
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(Admin)}
  ,
  PrimQueryCard_Form
  {$IfEnd} //not Admin
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  Forms,
  Controls
  ;

type
 {$Include ..\F1_Shell_Words\QueryCardFormWord.imp.pas}
 TkwQueryCardSetCanSaveState = {final} class(_QueryCardFormWord_)
  {* Устанавливает флаг того может ли карточка запроса писать своё состояние }
 protected
 // realized methods
   procedure DoQueryCardForm(aForm: TPrimQueryCardForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwQueryCardSetCanSaveState

implementation

uses
  SysUtils,
  afwFacade
  {$If not defined(NoVCM)}
  ,
  vcmForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  Windows
  ;

type _Instance_R_ = TkwQueryCardSetCanSaveState;

{$Include ..\F1_Shell_Words\QueryCardFormWord.imp.pas}

// start class TkwQueryCardSetCanSaveState

procedure TkwQueryCardSetCanSaveState.DoQueryCardForm(aForm: TPrimQueryCardForm;
  const aCtx: TtfwContext);
//#UC START# *4F69AE600137_4F69AF3E01C0_var*
//#UC END# *4F69AE600137_4F69AF3E01C0_var*
begin
//#UC START# *4F69AE600137_4F69AF3E01C0_impl*
 aForm.CanWriteMgrSettings := aCtx.rEngine.PopBool;
//#UC END# *4F69AE600137_4F69AF3E01C0_impl*
end;//TkwQueryCardSetCanSaveState.DoQueryCardForm

{$If not defined(NoScripts)}
class function TkwQueryCardSetCanSaveState.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'QueryCard:SetCanSaveState';
end;//TkwQueryCardSetCanSaveState.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include ..\F1_Shell_Words\QueryCardFormWord.imp.pas}

end.