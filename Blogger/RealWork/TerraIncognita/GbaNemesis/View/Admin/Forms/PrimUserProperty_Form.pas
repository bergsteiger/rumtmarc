unit PrimUserProperty_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimUserProperty_Form.pas"
// Начат: 27.01.2009 15:50
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Администратор::Admin::View::Admin::PrimUserProperty
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
uses
  AdminInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  vtComboBoxQS,
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
  PrimUserProperty_admUseProperties_UserType
  {$If not defined(NoVCM)}
  ,
  vcmControllers
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
 TPrimUserPropertyForm = {form} class(TvcmEntityForm, IbsUserPropertyListner)
 private
 // private fields
   f_edGroup : TvtComboBoxQS;
    {* Поле для свойства edGroup}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetEdGroup: TvtComboBoxQS;
 protected
 // realized methods
   procedure CheckUnsavedProperties;
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
    const aNew: IvcmViewAreaController); override;
     {* Изменился источник данных. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
 protected
 // protected fields
   dsUserProperty : IdsUserProperty;
 protected
 // protected methods
   procedure DoCheckUnsavedProperties; virtual; abstract;
 public
 // public properties
   property edGroup: TvtComboBoxQS
     read pm_GetEdGroup;
 end;//TPrimUserPropertyForm

 TvcmEntityFormRef = TPrimUserPropertyForm;
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
uses
  DataAdapter,
  nsGroupTreeStruct
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  SysUtils {a},
  StdRes {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

var
   { Локализуемые строки admUsePropertiesLocalConstants }
  str_admUsePropertiesCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'admUsePropertiesCaption'; rValue : 'Свойства пользователя');
   { Заголовок пользовательского типа "Свойства пользователя" }

type
  Tkw_PrimUserProperty_Control_edGroup = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола edGroup
----
*Пример использования*:
[code]
контрол::edGroup TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimUserProperty_Control_edGroup

// start class Tkw_PrimUserProperty_Control_edGroup

{$If not defined(NoScripts)}
function Tkw_PrimUserProperty_Control_edGroup.GetString: AnsiString;
 {-}
begin
 Result := 'edGroup';
end;//Tkw_PrimUserProperty_Control_edGroup.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimUserProperty_Control_edGroup_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола edGroup
----
*Пример использования*:
[code]
контрол::edGroup:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimUserProperty_Control_edGroup_Push

// start class Tkw_PrimUserProperty_Control_edGroup_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimUserProperty_Control_edGroup_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('edGroup');
 inherited;
end;//Tkw_PrimUserProperty_Control_edGroup_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimUserPropertyForm.pm_GetEdGroup: TvtComboBoxQS;
begin
 if (f_edGroup = nil) then
  f_edGroup := FindComponent('edGroup') As TvtComboBoxQS;
 Result := f_edGroup;
end;

procedure TPrimUserPropertyForm.CheckUnsavedProperties;
//#UC START# *49F6DC2600C0_497F02D20216_var*
//#UC END# *49F6DC2600C0_497F02D20216_var*
begin
//#UC START# *49F6DC2600C0_497F02D20216_impl*
 DoCheckUnsavedProperties;
//#UC END# *49F6DC2600C0_497F02D20216_impl*
end;//TPrimUserPropertyForm.CheckUnsavedProperties

{$If not defined(NoVCM)}
procedure TPrimUserPropertyForm.NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
  const aNew: IvcmViewAreaController);
//#UC START# *497469C90140_497F02D20216_var*
//#UC END# *497469C90140_497F02D20216_var*
begin
//#UC START# *497469C90140_497F02D20216_impl*
 inherited;
 if (anOld <> nil) then
  anOld.Unsubscribe(IbsUserPropertyListner(Self));
 if (aNew <> nil) then
  aNew.Subscribe(IbsUserPropertyListner(Self));
//#UC END# *497469C90140_497F02D20216_impl*
end;//TPrimUserPropertyForm.NotifyDataSourceChanged
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimUserPropertyForm.InitControls;
//#UC START# *4A8E8F2E0195_497F02D20216_var*
//#UC END# *4A8E8F2E0195_497F02D20216_var*
begin
//#UC START# *4A8E8F2E0195_497F02D20216_impl*
 inherited;
 edGroup.SetSimpleTree(TnsGroupTreeStruct.Make(defDataAdapter.GetGroupsTree, False));
//#UC END# *4A8E8F2E0195_497F02D20216_impl*
end;//TPrimUserPropertyForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimUserPropertyForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  dsUserProperty := nil;
 end//aDsNew = nil
 else
 begin
  Supports(aDsNew, IdsUserProperty, dsUserProperty);
 end;//aDsNew = nil
end;

procedure TPrimUserPropertyForm.MakeControls;
begin
 inherited;
 with AddUsertype(admUsePropertiesName,
  str_admUsePropertiesCaption,
  str_admUsePropertiesCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccDisable) do
 begin
 end;//with AddUsertype(admUsePropertiesName
end;

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация Tkw_PrimUserProperty_Control_edGroup
 Tkw_PrimUserProperty_Control_edGroup.Register('контрол::edGroup', TvtComboBoxQS);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_PrimUserProperty_Control_edGroup_Push
 Tkw_PrimUserProperty_Control_edGroup_Push.Register('контрол::edGroup:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// Инициализация str_admUsePropertiesCaption
 str_admUsePropertiesCaption.Init;
{$IfEnd} //Admin

end.