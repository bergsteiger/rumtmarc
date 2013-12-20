unit PrimCreateFilter_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Filters/Forms/PrimCreateFilter_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Основные прецеденты::Filters::View::Filters::PrimCreateFilter
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
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  OfficeLike_Result_Controls,
  OfficeLike_ResultEx_Controls
  {$If defined(Nemesis)}
  ,
  nscComboBox
  {$IfEnd} //Nemesis
  ,
  vtLabel,
  l3StringIDEx,
  PrimCreateFilter_cfCreate_UserType,
  FiltersInterfaces
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
  PrimCreateFilter_cfRename_UserType
  {$If not defined(NoVCM)}
  ,
  vcmControllers
  {$IfEnd} //not NoVCM
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimCreateFilterForm = {form} class(TvcmEntityForm)
 private
 // private fields
   ViewArea : IdsCreateFilter;
   f_NameLabel : TvtLabel;
    {* Поле для свойства NameLabel}
   f_FilterName : TnscEdit;
    {* Поле для свойства FilterName}
 protected
  procedure SignalDataSourceChanged(const anOld : IvcmViewAreaController;
                                const aDsNew : IvcmViewAreaController); override;
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetNameLabel: TvtLabel;
   function pm_GetFilterName: TnscEdit;
 protected
 // realized methods
   procedure Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Result_OkExt_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
    const aNew: IvcmViewAreaController); override;
     {* Изменился источник данных. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure DoInit(aFromHistory: Boolean); override;
     {* Инициализация формы. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
 public
 // public methods
   class function Make(const aData: IdsCreateFilter;
     const aParams : IvcmMakeParams = nil;
     aZoneType     : TvcmZoneType = vcm_ztAny;
     aUserType     : TvcmEffectiveUserType = 0): IvcmEntityForm; reintroduce;
 public
 // public properties
   property NameLabel: TvtLabel
     read pm_GetNameLabel;
     {* Название фильтра }
   property FilterName: TnscEdit
     read pm_GetFilterName;
 end;//TPrimCreateFilterForm

 TvcmEntityFormRef = TPrimCreateFilterForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Controls,
  Forms,
  l3Base,
  l3MessageID
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  SysUtils {a},
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки cfCreateLocalConstants }
  str_cfCreateCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'cfCreateCaption'; rValue : 'Создать фильтр');
   { Заголовок пользовательского типа "Создать фильтр" }

var
   { Локализуемые строки cfRenameLocalConstants }
  str_cfRenameCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'cfRenameCaption'; rValue : 'Переименовать фильтр');
   { Заголовок пользовательского типа "Переименовать фильтр" }

type
  Tkw_PrimCreateFilter_Control_NameLabel = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола NameLabel
----
*Пример использования*:
[code]
контрол::NameLabel TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCreateFilter_Control_NameLabel

// start class Tkw_PrimCreateFilter_Control_NameLabel

{$If not defined(NoScripts)}
function Tkw_PrimCreateFilter_Control_NameLabel.GetString: AnsiString;
 {-}
begin
 Result := 'NameLabel';
end;//Tkw_PrimCreateFilter_Control_NameLabel.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimCreateFilter_Control_NameLabel_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола NameLabel
----
*Пример использования*:
[code]
контрол::NameLabel:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCreateFilter_Control_NameLabel_Push

// start class Tkw_PrimCreateFilter_Control_NameLabel_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimCreateFilter_Control_NameLabel_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('NameLabel');
 inherited;
end;//Tkw_PrimCreateFilter_Control_NameLabel_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimCreateFilter_Control_FilterName = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола FilterName
----
*Пример использования*:
[code]
контрол::FilterName TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCreateFilter_Control_FilterName

// start class Tkw_PrimCreateFilter_Control_FilterName

{$If not defined(NoScripts)}
function Tkw_PrimCreateFilter_Control_FilterName.GetString: AnsiString;
 {-}
begin
 Result := 'FilterName';
end;//Tkw_PrimCreateFilter_Control_FilterName.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimCreateFilter_Control_FilterName_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола FilterName
----
*Пример использования*:
[code]
контрол::FilterName:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCreateFilter_Control_FilterName_Push

// start class Tkw_PrimCreateFilter_Control_FilterName_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimCreateFilter_Control_FilterName_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('FilterName');
 inherited;
end;//Tkw_PrimCreateFilter_Control_FilterName_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimCreateFilterForm.pm_GetNameLabel: TvtLabel;
begin
 if (f_NameLabel = nil) then
  f_NameLabel := FindComponent('NameLabel') As TvtLabel;
 Result := f_NameLabel;
end;

function TPrimCreateFilterForm.pm_GetFilterName: TnscEdit;
begin
 if (f_FilterName = nil) then
  f_FilterName := FindComponent('FilterName') As TnscEdit;
 Result := f_FilterName;
end;

class function TPrimCreateFilterForm.Make(const aData: IdsCreateFilter;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0): IvcmEntityForm;
begin
 Result := inherited Make(aParams, aZoneType, aUserType, nil, aData);
end;

procedure TPrimCreateFilterForm.Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C762A1501FC_4CB6D95D003Aexec_var*
//#UC END# *4C762A1501FC_4CB6D95D003Aexec_var*
begin
//#UC START# *4C762A1501FC_4CB6D95D003Aexec_impl*
 Result_OkExt_Execute(aParams);
//#UC END# *4C762A1501FC_4CB6D95D003Aexec_impl*
end;//TPrimCreateFilterForm.Result_Ok_Execute

procedure TPrimCreateFilterForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C762C910358_4CB6D95D003Aexec_var*
//#UC END# *4C762C910358_4CB6D95D003Aexec_var*
begin
//#UC START# *4C762C910358_4CB6D95D003Aexec_impl*
 ModalResult := mrCancel;
//#UC END# *4C762C910358_4CB6D95D003Aexec_impl*
end;//TPrimCreateFilterForm.Result_Cancel_Execute

procedure TPrimCreateFilterForm.Result_OkExt_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C762D9B0224_4CB6D95D003Aexec_var*
//#UC END# *4C762D9B0224_4CB6D95D003Aexec_var*
begin
//#UC START# *4C762D9B0224_4CB6D95D003Aexec_impl*
 if (UserType = cfCreate) then
  ViewArea.CreateFilter(FilterName.Text)
 else
  ViewArea.RenameFilter(FilterName.Text);
 ModalResult := mrOk;
//#UC END# *4C762D9B0224_4CB6D95D003Aexec_impl*
end;//TPrimCreateFilterForm.Result_OkExt_Execute

{$If not defined(NoVCM)}
procedure TPrimCreateFilterForm.NotifyDataSourceChanged(const anOld: IvcmViewAreaController;
  const aNew: IvcmViewAreaController);
//#UC START# *497469C90140_4CB6D95D003A_var*
//#UC END# *497469C90140_4CB6D95D003A_var*
begin
//#UC START# *497469C90140_4CB6D95D003A_impl*
 inherited;
 if Assigned(ViewArea) then
  FilterName.Text := ViewArea.Name;
//#UC END# *497469C90140_4CB6D95D003A_impl*
end;//TPrimCreateFilterForm.NotifyDataSourceChanged
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimCreateFilterForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_4CB6D95D003A_var*
//#UC END# *49803F5503AA_4CB6D95D003A_var*
begin
//#UC START# *49803F5503AA_4CB6D95D003A_impl*
 inherited;
 CCaption := l3CStr(CurUserType.Caption);
//#UC END# *49803F5503AA_4CB6D95D003A_impl*
end;//TPrimCreateFilterForm.DoInit
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimCreateFilterForm.InitControls;
//#UC START# *4A8E8F2E0195_4CB6D95D003A_var*
//#UC END# *4A8E8F2E0195_4CB6D95D003A_var*
begin
//#UC START# *4A8E8F2E0195_4CB6D95D003A_impl*
 inherited;
 BorderStyle := bsDialog;
 NameLabel.Top := 4;
 NameLabel.Left := 4;
 FilterName.Top := NameLabel.Top + NameLabel.Height + 4;
 FilterName.Left := 4;
 FilterName.Width := 300;
 Width := FilterName.Left + FilterName.Width + 4;
 Height := FilterName.Top + FilterName.Height + 4;
 ClientWidth := Width;
 ClientHeight := Height;
 Position := poScreenCenter;
//#UC END# *4A8E8F2E0195_4CB6D95D003A_impl*
end;//TPrimCreateFilterForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimCreateFilterForm.SignalDataSourceChanged(const anOld : IvcmViewAreaController;
 const aDsNew : IvcmViewAreaController);
begin
 inherited;
 if (aDsNew = nil) then
 begin
  ViewArea := nil;
 end//aDsNew = nil
 else
 begin
  Supports(aDsNew, IdsCreateFilter, ViewArea);
 end;//aDsNew = nil
end;

procedure TPrimCreateFilterForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Result, nil);
  ToolbarAtBottom(en_Result);
  PublishOp(en_Result, op_Ok, Result_Ok_Execute, nil, nil);
  ShowInContextMenu(en_Result, op_Ok, false);
  ShowInToolbar(en_Result, op_Ok, true);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, nil, nil);
  ShowInContextMenu(en_Result, op_Cancel, false);
  ShowInToolbar(en_Result, op_Cancel, true);
  PublishOp(en_Result, op_OkExt, Result_OkExt_Execute, nil, nil);
  ShowInContextMenu(en_Result, op_OkExt, false);
  ShowInToolbar(en_Result, op_OkExt, false);
 end;//with Entities.Entities
end;

procedure TPrimCreateFilterForm.MakeControls;
begin
 inherited;
 with AddUsertype(cfCreateName,
  str_cfCreateCaption,
  str_cfCreateCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(cfCreateName
 with AddUsertype(cfRenameName,
  str_cfRenameCaption,
  str_cfRenameCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(cfRenameName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_cfCreateCaption
 str_cfCreateCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_cfRenameCaption
 str_cfRenameCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCreateFilter_Control_NameLabel
 Tkw_PrimCreateFilter_Control_NameLabel.Register('контрол::NameLabel', TvtLabel);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCreateFilter_Control_NameLabel_Push
 Tkw_PrimCreateFilter_Control_NameLabel_Push.Register('контрол::NameLabel:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCreateFilter_Control_FilterName
 Tkw_PrimCreateFilter_Control_FilterName.Register('контрол::FilterName', TnscEdit);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCreateFilter_Control_FilterName_Push
 Tkw_PrimCreateFilter_Control_FilterName_Push.Register('контрол::FilterName:push');
{$IfEnd} //not Admin AND not Monitorings

end.