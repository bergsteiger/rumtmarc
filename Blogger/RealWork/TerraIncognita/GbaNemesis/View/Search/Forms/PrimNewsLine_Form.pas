unit PrimNewsLine_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimNewsLine_Form.pas"
// Начат: 27.01.2009 11:00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Пользовательские сервисы::Autoreferat::View::Search::PrimNewsLine
//
// Новостная лента
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3TreeInterfaces,
  AutoreferatInterfaces
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  Autoreferat_InternalOperations_Controls,
  Base_Operations_Strange_Controls,
  Base_Operations_Editions_Controls,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PrimNewsLine_nltMain_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmControllers {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimNewsLineForm = {form} class(TvcmEntityForm)
  {* Новостная лента }
 private
 // private fields
   f_DateList : TnscTreeView;
    {* Поле для свойства DateList}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetDateList: TnscTreeView;
 protected
 // realized methods
   procedure System_CommonDataChanged_Execute;
   procedure System_CommonDataChanged(const aParams: IvcmExecuteParams);
   procedure DateInterval_OpenInt_Execute;
   procedure DateInterval_OpenInt(const aParams: IvcmExecuteParams);
   procedure Form_RequestClose_Execute;
   procedure Form_RequestClose(const aParams: IvcmExecuteParams);
 protected
 // protected fields
   sdsAutoreferat : IsdsAutoreferat;
 protected
 // protected methods
   procedure ResetThemeList; virtual; abstract;
   procedure OpenAutoreferat(const aNode: Il3SimpleNode;
    AllowOpen: Boolean = True); virtual; abstract;
 public
 // public properties
   property DateList: TnscTreeView
     read pm_GetDateList;
 end;//TPrimNewsLineForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  SysUtils {a},
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки nltMainLocalConstants }
  str_nltMainCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'nltMainCaption'; rValue : 'ПРАЙМ. Моя новостная лента');
   { Заголовок пользовательского типа "ПРАЙМ. Моя новостная лента" }
  str_nltMainSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'nltMainSettingsCaption'; rValue : 'ПРАЙМ. Моя новостная лента (вкладка)');
   { Заголовок пользовательского типа "ПРАЙМ. Моя новостная лента" для настройки панелей инструментов }

type
  Tkw_PrimNewsLine_Control_DateList = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола DateList
----
*Пример использования*:
[code]
контрол::DateList TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimNewsLine_Control_DateList

// start class Tkw_PrimNewsLine_Control_DateList

{$If not defined(NoScripts)}
function Tkw_PrimNewsLine_Control_DateList.GetString: AnsiString;
 {-}
begin
 Result := 'DateList';
end;//Tkw_PrimNewsLine_Control_DateList.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimNewsLine_Control_DateList_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола DateList
----
*Пример использования*:
[code]
контрол::DateList:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimNewsLine_Control_DateList_Push

// start class Tkw_PrimNewsLine_Control_DateList_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimNewsLine_Control_DateList_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('DateList');
 inherited;
end;//Tkw_PrimNewsLine_Control_DateList_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimNewsLineForm.pm_GetDateList: TnscTreeView;
begin
 if (f_DateList = nil) then
  f_DateList := FindComponent('DateList') As TnscTreeView;
 Result := f_DateList;
end;

procedure TPrimNewsLineForm.System_CommonDataChanged_Execute;
//#UC START# *4A8ED02501A0_497EBEC4031Dexec_var*
//#UC END# *4A8ED02501A0_497EBEC4031Dexec_var*
begin
//#UC START# *4A8ED02501A0_497EBEC4031Dexec_impl*
 ResetThemeList;
//#UC END# *4A8ED02501A0_497EBEC4031Dexec_impl*
end;//TPrimNewsLineForm.System_CommonDataChanged_Execute

procedure TPrimNewsLineForm.System_CommonDataChanged(const aParams: IvcmExecuteParams);
begin
 System_CommonDataChanged_Execute;
end;

procedure TPrimNewsLineForm.DateInterval_OpenInt_Execute;
//#UC START# *4AF822B302C4_497EBEC4031Dexec_var*
//#UC END# *4AF822B302C4_497EBEC4031Dexec_var*
begin
//#UC START# *4AF822B302C4_497EBEC4031Dexec_impl*
 OpenAutoreferat(DateList.GetCurrentNode);
//#UC END# *4AF822B302C4_497EBEC4031Dexec_impl*
end;//TPrimNewsLineForm.DateInterval_OpenInt_Execute

procedure TPrimNewsLineForm.DateInterval_OpenInt(const aParams: IvcmExecuteParams);
begin
 DateInterval_OpenInt_Execute;
end;

procedure TPrimNewsLineForm.Form_RequestClose_Execute;
//#UC START# *4AF82EFD0025_497EBEC4031Dexec_var*
//#UC END# *4AF82EFD0025_497EBEC4031Dexec_var*
begin
//#UC START# *4AF82EFD0025_497EBEC4031Dexec_impl*
 // Пытаемся эмулировать работу в составе сборки (cq24583)
 if (sdsAutoReferat <> nil) then
  SafeClose;
//#UC END# *4AF82EFD0025_497EBEC4031Dexec_impl*
end;//TPrimNewsLineForm.Form_RequestClose_Execute

procedure TPrimNewsLineForm.Form_RequestClose(const aParams: IvcmExecuteParams);
begin
 Form_RequestClose_Execute;
end;

procedure TPrimNewsLineForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  sdsAutoreferat := nil;
 end//aDsNew = nil
 else
 begin
  aDsNew.CastUCC(IsdsAutoreferat, sdsAutoreferat);
 end;//aDsNew = nil
end;

procedure TPrimNewsLineForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_System, nil);
  PublishFormEntity(en_DateInterval, nil);
  PublishFormEntity(en_Form, nil);
  PublishOpWithResult(en_System, op_CommonDataChanged, System_CommonDataChanged, nil, nil);
  PublishOpWithResult(en_DateInterval, op_OpenInt, DateInterval_OpenInt, nil, nil);
  PublishOpWithResult(en_Form, op_RequestClose, Form_RequestClose, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimNewsLineForm.MakeControls;
begin
 inherited;
 with AddUsertype(nltMainName,
  str_nltMainCaption,
  str_nltMainSettingsCaption,
  true,
  145,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccDisable) do
 begin
 end;//with AddUsertype(nltMainName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimNewsLine_Control_DateList
 Tkw_PrimNewsLine_Control_DateList.Register('контрол::DateList', TnscTreeView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimNewsLine_Control_DateList_Push
 Tkw_PrimNewsLine_Control_DateList_Push.Register('контрол::DateList:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_nltMainCaption
 str_nltMainCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_nltMainSettingsCaption
 str_nltMainSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.