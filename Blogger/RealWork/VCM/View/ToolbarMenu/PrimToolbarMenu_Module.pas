unit PrimToolbarMenu_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/VCM/View/ToolbarMenu/PrimToolbarMenu_Module.pas"
// Начат: 13.09.2010 18:24
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> Shared Delphi Operations::VCMCustomization::View::ToolbarMenu::PrimToolbarMenu
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmToolbarsInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3ProtoDataContainer
  {$If not defined(NoVCM)}
  ,
  vcmBaseMenuManager
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  PrimCustomizeTools_Form
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  CustomizeTools_Form,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;

type
 _ItemType_ = IvcmToolbarsCustomizeListener;
 _l3InterfacePtrList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
{$Include w:\common\components\rtl\Garant\L3\l3InterfacePtrList.imp.pas}
 TIvcmToolbarsCustomizeListenerPtrList = class(_l3InterfacePtrList_)
  {* Список указателей на IvcmToolbarsCustomizeListener }
 end;//TIvcmToolbarsCustomizeListenerPtrList

 TPrimToolbarMenuModule = {abstract formspack} class(TvcmModule {$If not defined(NoVCM)}, IvcmToolbarsCustomizeNotify{$IfEnd} //not NoVCM
  {$If not defined(NoVCM)}, IvcmToolbarsCustomize{$IfEnd} //not NoVCM
 )
 private
 // private fields
   f_MenuManager : TvcmBaseMenuManager;
    {* Поле для свойства MenuManager}
 protected
  procedure Loaded; override;
  class procedure GetEntityForms(aList : TvcmClassList); override;
 private
 // private methods
   procedure opCustomizeTest(const aParams: IvcmTestParamsPrim);
     {* Настройка... }
   procedure opCustomize(const aParams: IvcmExecuteParamsPrim);
     {* Настройка... }
   {$If not defined(Admin) AND not defined(Monitorings)}
   procedure opAvailableOperationsTest(const aParams: IvcmTestParamsPrim);
     {* Доступные операции... }
   {$IfEnd} //not Admin AND not Monitorings
   {$If not defined(Admin) AND not defined(Monitorings)}
   procedure opAvailableOperations(const aParams: IvcmExecuteParamsPrim);
     {* Доступные операции... }
   {$IfEnd} //not Admin AND not Monitorings
   procedure opIconsSizeTest(const aParams: IvcmTestParamsPrim);
     {* Размер кнопок }
   procedure opIconsSize(const aParams: IvcmExecuteParamsPrim);
     {* Размер кнопок }
   procedure opFastenTest(const aParams: IvcmTestParamsPrim);
     {* Закрепить панели инструментов }
   procedure opFasten(const aParams: IvcmExecuteParamsPrim);
     {* Закрепить панели инструментов }
 protected
 // realized methods
   {$If not defined(NoVCM)}
   procedure AddListener(const aListener: IvcmToolbarsCustomizeListener);
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   procedure RemoveListener(const aListener: IvcmToolbarsCustomizeListener);
   {$IfEnd} //not NoVCM
   {$If not defined(NoVCM)}
   function pm_GetNotify: IvcmToolbarsCustomizeNotify;
   {$IfEnd} //not NoVCM
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   constructor Create(AOwner: TComponent); override;
 protected
 // protected fields
   f_CustomizeVisible : Boolean;
   f_LargeIconsVisible : Boolean;
   f_Listeners : TIvcmToolbarsCustomizeListenerPtrList;
 protected
 // protected methods
   procedure DoNotify;
   procedure PmToolbarPopup(Sender: TObject);
 public
 // public properties
   property MenuManager: TvcmBaseMenuManager
     read f_MenuManager
     write f_MenuManager;
 end;//TPrimToolbarMenuModule

implementation

uses
  l3MessageID,
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils,
  afwFacade
  {$If not defined(NoVCM)}
  ,
  vcmToolbarMenuRes
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMenuManager
  {$IfEnd} //not NoVCM
  ,
  Controls
  {$If not defined(NoVCM)}
  ,
  vcmCustomizeAvailableToolbarOps
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMenus
  {$IfEnd} //not NoVCM
  ,
  kw_ToolbarMenu_Customize,
  kw_ToolbarMenu_AvailableOperations,
  kw_ToolbarMenu_IconsSize,
  kw_ToolbarMenu_Fasten,
  vcmFormSetFactory {a},
  StdRes {a},
  vcmModuleDef {a}
  ;

type
  Tkw_Form_CustomizeTools = class(TtfwControlString)
   {* Слово словаря для идентификатора формы CustomizeTools
----
*Пример использования*:
[code]
'aControl' форма::CustomizeTools TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_CustomizeTools

// start class Tkw_Form_CustomizeTools

{$If not defined(NoScripts)}
function Tkw_Form_CustomizeTools.GetString: AnsiString;
 {-}
begin
 Result := 'CustomizeToolsForm';
end;//Tkw_Form_CustomizeTools.GetString
{$IfEnd} //not NoScripts

procedure TPrimToolbarMenuModule.opCustomizeTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8E3A170399_4C8E340C0148test_var*
//#UC END# *4C8E3A170399_4C8E340C0148test_var*
begin
//#UC START# *4C8E3A170399_4C8E340C0148test_impl*
 aParams.Op.Flag[vcm_ofVisible] := f_CustomizeVisible;
//#UC END# *4C8E3A170399_4C8E340C0148test_impl*
end;//TPrimToolbarMenuModule.opCustomizeTest

procedure TPrimToolbarMenuModule.opCustomize(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8E3A170399_4C8E340C0148exec_var*
//#UC END# *4C8E3A170399_4C8E340C0148exec_var*
begin
//#UC START# *4C8E3A170399_4C8E340C0148exec_impl*
 DoNotify;
 {$IfNDef DesignTimeLibrary}
 TvcmCustomizeToolsForm.Execute(MenuManager, MenuManager.ToolbarPopup.PopupComponent);
 {$EndIf DesignTimeLibrary}
//#UC END# *4C8E3A170399_4C8E340C0148exec_impl*
end;//TPrimToolbarMenuModule.opCustomize

{$If not defined(Admin) AND not defined(Monitorings)}
procedure TPrimToolbarMenuModule.opAvailableOperationsTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8E3A290341_4C8E340C0148test_var*
//#UC END# *4C8E3A290341_4C8E340C0148test_var*
begin
//#UC START# *4C8E3A290341_4C8E340C0148test_impl*
 aParams.Op.Flag[vcm_ofVisible] := f_CustomizeVisible
  {$If not Defined(Nemesis) OR Defined(NewGen)}
  and
  afw.Application.IsInternal
  {$IfEnd}
  ;
//#UC END# *4C8E3A290341_4C8E340C0148test_impl*
end;//TPrimToolbarMenuModule.opAvailableOperationsTest
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
procedure TPrimToolbarMenuModule.opAvailableOperations(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8E3A290341_4C8E340C0148exec_var*
{$IfNDef Admin}
{$IfNDef Monitorings}
var
 l_Toolbar : TComponent;
 l_Form    : IvcmEntityForm;
{$EndIf Monitorings}
{$EndIf Admin}
//#UC END# *4C8E3A290341_4C8E340C0148exec_var*
begin
//#UC START# *4C8E3A290341_4C8E340C0148exec_impl*
 {$IfNDef Admin}
 {$IfNDef Monitorings}
 l_Toolbar := MenuManager.ToolbarPopup.PopupComponent;
 while (l_Toolbar <> nil) and not (l_Toolbar is TvcmToolbarDef) do
  l_Toolbar := TControl(l_Toolbar).Parent;
 if (l_Toolbar <> nil) then
 begin
  Assert(l_Toolbar.Owner is TvcmEntityForm);
  if not Supports(l_Toolbar.Owner, IvcmEntityForm, l_Form) then
   Assert(False);
  TdmStdRes.CustomizePanel(TvcmCustAvailableToolbarOps.Make(l_Form));
 end;//l_Toolbar <> nil
 {$EndIf Monitorings}
 {$EndIf Admin}
//#UC END# *4C8E3A290341_4C8E340C0148exec_impl*
end;//TPrimToolbarMenuModule.opAvailableOperations
{$IfEnd} //not Admin AND not Monitorings

procedure TPrimToolbarMenuModule.opIconsSizeTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8E3A3E011D_4C8E340C0148test_var*
var
 l_Strings: IvcmItems;
//#UC END# *4C8E3A3E011D_4C8E340C0148test_var*
begin
//#UC START# *4C8E3A3E011D_4C8E340C0148test_impl*
 with aParams do
 begin
  Op.Flag[vcm_ofEnabled] := true;
  Op.Flag[vcm_ofVisible] := f_LargeIconsVisible;
  l_Strings := Op.SubItems;
  if (l_Strings <> nil) and
     (l_Strings.Count = 0) then
   vcmIconSizeMapHelper.FillStrings(l_Strings);
  Op.SelectedString := vcmIconSizeMap[(g_MenuManager as TvcmCustomMenuManager).GlyphSize].AsCStr;
 end;
//#UC END# *4C8E3A3E011D_4C8E340C0148test_impl*
end;//TPrimToolbarMenuModule.opIconsSizeTest

procedure TPrimToolbarMenuModule.opIconsSize(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8E3A3E011D_4C8E340C0148exec_var*
//#UC END# *4C8E3A3E011D_4C8E340C0148exec_var*
begin
//#UC START# *4C8E3A3E011D_4C8E340C0148exec_impl*
 (g_MenuManager as TvcmCustomMenuManager).GlyphSize :=
  vcmIconSizeMapHelper.DisplayNameToValue(aParams.SelectedString);
 (g_MenuManager as TvcmCustomMenuManager).StoreGlyphSize;
//#UC END# *4C8E3A3E011D_4C8E340C0148exec_impl*
end;//TPrimToolbarMenuModule.opIconsSize

procedure TPrimToolbarMenuModule.opFastenTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4C8E3A5002FF_4C8E340C0148test_var*
//#UC END# *4C8E3A5002FF_4C8E340C0148test_var*
begin
//#UC START# *4C8E3A5002FF_4C8E340C0148test_impl*
 aParams.Op.Flag[vcm_ofChecked] := (g_MenuManager as TvcmCustomMenuManager).
  GetFastenMode;
//#UC END# *4C8E3A5002FF_4C8E340C0148test_impl*
end;//TPrimToolbarMenuModule.opFastenTest

procedure TPrimToolbarMenuModule.opFasten(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4C8E3A5002FF_4C8E340C0148exec_var*
//#UC END# *4C8E3A5002FF_4C8E340C0148exec_var*
begin
//#UC START# *4C8E3A5002FF_4C8E340C0148exec_impl*
 g_MenuManager.FastenToolbars;
//#UC END# *4C8E3A5002FF_4C8E340C0148exec_impl*
end;//TPrimToolbarMenuModule.opFasten

procedure TPrimToolbarMenuModule.DoNotify;
//#UC START# *4C90B2F500F9_4C8E340C0148_var*
var
 l_Index: Integer;
//#UC END# *4C90B2F500F9_4C8E340C0148_var*
begin
//#UC START# *4C90B2F500F9_4C8E340C0148_impl*
 if f_Listeners <> nil then
  for l_Index := 0 to Pred(f_Listeners.Count) do
   f_Listeners.Items[l_Index].BeforeCustomize;
//#UC END# *4C90B2F500F9_4C8E340C0148_impl*
end;//TPrimToolbarMenuModule.DoNotify

procedure TPrimToolbarMenuModule.PmToolbarPopup(Sender: TObject);
//#UC START# *4C90C066016F_4C8E340C0148_var*
Var
 l_Component : TComponent;
 l_Control   : TControl;
 l_Form      : TvcmEntityForm;
 l_DocDef    : TvcmDockDef;
 l_Idx       : Integer;

 function lp_GetForm(const aControl: TControl): TvcmEntityForm;
 var
  l_Control: TControl;
 begin
  l_Control := aControl;
  Result := nil;
  if not (l_Control is TvcmDockDef) then
  begin
   while (l_Control <> nil) and not (l_Control is TvcmToolbarDef) do
    l_Control := l_Control.Parent;

   if (l_Control <> nil) and
      ((l_Control as TvcmToolbarDef).Owner <> nil) and
      ((l_Control as TvcmToolbarDef).Owner is TvcmEntityForm) then
    Result := (l_Control as TvcmToolbarDef).Owner as TvcmEntityForm;
  end;
 end;

 function lp_CalcLargeIconsVisible(const aForm: TvcmEntityForm; const aControl: TControl): Boolean;
 begin
  Result := False;
  if aControl is TvcmToolbarDef then
  begin
   with aForm.Style.Toolbars do
    case TvcmToolbarDef(aControl).Pos of
     vcm_tbpTop:
      Result := Top.ImageSize = isNone;
     vcm_tbpBottom:
      Result := Bottom.ImageSize = isNone;
     vcm_tbpLeft:
      Result := Left.ImageSize = isNone;
     vcm_tbpRight:
      Result := Right.ImageSize = isNone;
    end;//case aToolbar.DockPos of
  end;
 end;

var
 l_UserType: IvcmUserTypeDef;
//#UC END# *4C90C066016F_4C8E340C0148_var*
begin
//#UC START# *4C90C066016F_4C8E340C0148_impl*
 l_Component := MenuManager.ToolbarPopup.PopupComponent;
 f_CustomizeVisible := False;
 f_LargeIconsVisible := False;
 l_Form := nil;
 if (l_Component <> nil) and (l_Component is TControl) then
 begin
  l_Control := l_Component as TControl;
  if not (l_Control is TvcmDockDef) then
  begin
   l_Form := lp_GetForm(l_Control);
   if Assigned(l_Form) then
   begin
    l_UserType := l_Form.CurUseToolbarOfUserType;
    if (l_UserType = nil) then
     {$If not Defined(Nemesis) OR Defined(NewGen)}
     f_CustomizeVisible := true
     {$Else}
     f_CustomizeVisible := false
     {$IfEnd}
    else
     f_CustomizeVisible := TvcmUserTypeInfo.AllowCustomizeToolbars(l_UserType);
    f_LargeIconsVisible := lp_CalcLargeIconsVisible(l_Form, l_COntrol);
   end;//Assigned(l_Form)
  end//not (l_Control is TvcmDockDef)
  else
  begin
   l_DocDef := l_Control as TvcmDockDef;
   for l_Idx := 0 to l_DocDef.ControlCount - 1 do
   begin
    l_Form := lp_GetForm(l_DocDef.Controls[l_Idx]);
    if Assigned(l_Form) then
     f_LargeIconsVisible := f_LargeIconsVisible or lp_CalcLargeIconsVisible(l_Form, l_DocDef.Controls[l_Idx]);
   end;//for l_Idx
  end;//not (l_Control is TvcmDockDef)
 end;//(l_Component <> nil) and (l_Component is TControl)
//#UC END# *4C90C066016F_4C8E340C0148_impl*
end;//TPrimToolbarMenuModule.PmToolbarPopup
type _Instance_R_ = TIvcmToolbarsCustomizeListenerPtrList;

{$Include w:\common\components\rtl\Garant\L3\l3InterfacePtrList.imp.pas}

// start class TPrimToolbarMenuModule

{$If not defined(NoVCM)}
procedure TPrimToolbarMenuModule.AddListener(const aListener: IvcmToolbarsCustomizeListener);
//#UC START# *4992FC7A0212_4C8E340C0148_var*
//#UC END# *4992FC7A0212_4C8E340C0148_var*
begin
//#UC START# *4992FC7A0212_4C8E340C0148_impl*
 if f_Listeners = nil then
  f_Listeners := TIvcmToolbarsCustomizeListenerPtrList.Make;
 if f_Listeners.IndexOf(aListener) = -1 then
  f_Listeners.Add(aListener);
//#UC END# *4992FC7A0212_4C8E340C0148_impl*
end;//TPrimToolbarMenuModule.AddListener
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
procedure TPrimToolbarMenuModule.RemoveListener(const aListener: IvcmToolbarsCustomizeListener);
//#UC START# *4992FC8900E1_4C8E340C0148_var*
//#UC END# *4992FC8900E1_4C8E340C0148_var*
begin
//#UC START# *4992FC8900E1_4C8E340C0148_impl*
 if (f_Listeners <> nil) then
  f_Listeners.Remove(aListener);
//#UC END# *4992FC8900E1_4C8E340C0148_impl*
end;//TPrimToolbarMenuModule.RemoveListener
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
function TPrimToolbarMenuModule.pm_GetNotify: IvcmToolbarsCustomizeNotify;
//#UC START# *4992FCAD02D1_4C8E340C0148get_var*
//#UC END# *4992FCAD02D1_4C8E340C0148get_var*
begin
//#UC START# *4992FCAD02D1_4C8E340C0148get_impl*
 Result := Self;
//#UC END# *4992FCAD02D1_4C8E340C0148get_impl*
end;//TPrimToolbarMenuModule.pm_GetNotify
{$IfEnd} //not NoVCM

procedure TPrimToolbarMenuModule.Cleanup;
//#UC START# *479731C50290_4C8E340C0148_var*
//#UC END# *479731C50290_4C8E340C0148_var*
begin
//#UC START# *479731C50290_4C8E340C0148_impl*
 FreeAndNil(f_Listeners);
 inherited;
//#UC END# *479731C50290_4C8E340C0148_impl*
end;//TPrimToolbarMenuModule.Cleanup

constructor TPrimToolbarMenuModule.Create(AOwner: TComponent);
//#UC START# *47D1602000C6_4C8E340C0148_var*
//#UC END# *47D1602000C6_4C8E340C0148_var*
begin
//#UC START# *47D1602000C6_4C8E340C0148_impl*
 inherited;
 Assert(g_ToolbarsCustomize = nil);
 g_ToolbarsCustomize := Self;
 MenuManager := g_MenuManager;
 Assert(MenuManager <> nil);
 MenuManager.ToolbarPopup.OnPopup := pmToolbarPopup;
 // Это нужно чтобы был найден группирующий элемент
 MenuManager.ToolbarPopup.Items.Caption := vcmStr(ModuleDef.ModuleDef.Caption);
 // Контекстные операции модуля
 vcmMakeModuleMenu(MenuManager.ToolbarPopup.Items,
                   ModuleDef.ModuleDef,
                   [{vcm_ooShowInContextMenu}],
                   False);
//#UC END# *47D1602000C6_4C8E340C0148_impl*
end;//TPrimToolbarMenuModule.Create

procedure TPrimToolbarMenuModule.Loaded;
begin
 inherited;
 PublishOp('opCustomize', opCustomize, opCustomizeTest);
 ShowInToolbar('opCustomize', false);
 {$If not defined(Admin) AND not defined(Monitorings)}
 PublishOp('opAvailableOperations', opAvailableOperations, opAvailableOperationsTest);
 ShowInToolbar('opAvailableOperations', false);
 {$IfEnd} //not Admin AND not Monitorings
 PublishOp('opIconsSize', opIconsSize, opIconsSizeTest);
 ShowInToolbar('opIconsSize', false);
 PublishOp('opFasten', opFasten, opFastenTest);
 ShowInToolbar('opFasten', false);
end;

class procedure TPrimToolbarMenuModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TCustomizeToolsForm);
end;

initialization
// Регистрация Tkw_Form_CustomizeTools
 Tkw_Form_CustomizeTools.Register('форма::CustomizeTools', TCustomizeToolsForm);

end.