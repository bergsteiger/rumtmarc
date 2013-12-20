unit PrimNavigator_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimNavigator_Form.pas"
// Начат: 02.11.2009 16:45
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Common::View::Common::PrimNavigator
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
  Classes
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  Common_Strange_Controls,
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
  PrimNavigator_utNavigator_UserType,
  l3TreeInterfaces,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimNavigatorForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_NavigatorTree : TnscTreeView;
    {* Поле для свойства NavigatorTree}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetNavigatorTree: TnscTreeView;
 protected
 // realized methods
   procedure Navigator_SetCurrent_Execute(const aNode: Il3SimpleNode);
   procedure Navigator_SetCurrent(const aParams: IvcmExecuteParams);
 protected
 // protected fields
   f_Lock : Integer;
 public
 // public properties
   property NavigatorTree: TnscTreeView
     read pm_GetNavigatorTree;
 end;//TPrimNavigatorForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки utNavigatorLocalConstants }
  str_utNavigatorCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utNavigatorCaption'; rValue : 'Меню');
   { Заголовок пользовательского типа "Меню" }
  str_utNavigatorSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utNavigatorSettingsCaption'; rValue : 'Меню (вкладка)');
   { Заголовок пользовательского типа "Меню" для настройки панелей инструментов }

type
  Tkw_PrimNavigator_Control_NavigatorTree = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола NavigatorTree
----
*Пример использования*:
[code]
контрол::NavigatorTree TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimNavigator_Control_NavigatorTree

// start class Tkw_PrimNavigator_Control_NavigatorTree

{$If not defined(NoScripts)}
function Tkw_PrimNavigator_Control_NavigatorTree.GetString: AnsiString;
 {-}
begin
 Result := 'NavigatorTree';
end;//Tkw_PrimNavigator_Control_NavigatorTree.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimNavigator_Control_NavigatorTree_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола NavigatorTree
----
*Пример использования*:
[code]
контрол::NavigatorTree:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimNavigator_Control_NavigatorTree_Push

// start class Tkw_PrimNavigator_Control_NavigatorTree_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimNavigator_Control_NavigatorTree_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('NavigatorTree');
 inherited;
end;//Tkw_PrimNavigator_Control_NavigatorTree_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimNavigatorForm.pm_GetNavigatorTree: TnscTreeView;
begin
 if (f_NavigatorTree = nil) then
  f_NavigatorTree := FindComponent('NavigatorTree') As TnscTreeView;
 Result := f_NavigatorTree;
end;

procedure TPrimNavigatorForm.Navigator_SetCurrent_Execute(const aNode: Il3SimpleNode);
//#UC START# *4AEEE2D40157_4AEEE269033Fexec_var*
//#UC END# *4AEEE2D40157_4AEEE269033Fexec_var*
begin
//#UC START# *4AEEE2D40157_4AEEE269033Fexec_impl*
 if f_Lock > 0 then
  Exit;

 Inc(f_Lock);
 try
  NavigatorTree.GotoOnNode(aNode);
 finally
  Dec(f_Lock);
 end;//try..finally
//#UC END# *4AEEE2D40157_4AEEE269033Fexec_impl*
end;//TPrimNavigatorForm.Navigator_SetCurrent_Execute

procedure TPrimNavigatorForm.Navigator_SetCurrent(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As INavigator_SetCurrent_Params) do
  Navigator_SetCurrent_Execute(Node);
end;

procedure TPrimNavigatorForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Navigator, nil);
  PublishOpWithResult(en_Navigator, op_SetCurrent, Navigator_SetCurrent, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimNavigatorForm.MakeControls;
begin
 inherited;
 with AddUsertype(utNavigatorName,
  str_utNavigatorCaption,
  str_utNavigatorSettingsCaption,
  true,
  44,
  10,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utNavigatorName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimNavigator_Control_NavigatorTree
 Tkw_PrimNavigator_Control_NavigatorTree.Register('контрол::NavigatorTree', TnscTreeView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimNavigator_Control_NavigatorTree_Push
 Tkw_PrimNavigator_Control_NavigatorTree_Push.Register('контрол::NavigatorTree:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utNavigatorCaption
 str_utNavigatorCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utNavigatorSettingsCaption
 str_utNavigatorSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.