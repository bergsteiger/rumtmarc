unit PrimStyleEditorContainer_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorContainer_Form.pas"
// Начат: 02.10.2009 22:02
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMContainer::Class>> F1 Основные прецеденты::Settings::View::Settings::PrimStyleEditorContainer
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
  vcmContainerForm
  {$IfEnd} //not NoVCM
  ,
  ConfigInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  Settings_Strange_Controls,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  PrimStyleEditorContainer_utStyleEditorContainer_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimStyleEditorContainerForm = {form} class(TvcmContainerForm)
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // realized methods
   procedure StyleEditor_ReloadStyleTable_Execute;
   procedure StyleEditor_ReloadStyleTable(const aParams: IvcmExecuteParams);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 protected
 // protected fields
   f_SettingsInfo : InsStyleTableSettingsInfo;
 protected
 // protected methods
   procedure DoUpdateCaption;
 public
 // public methods
   class function Make(const aData: InsStyleTableSettingsInfo;
     const aParams : IvcmMakeParams = nil;
     aZoneType     : TvcmZoneType = vcm_ztAny;
     aUserType     : TvcmEffectiveUserType = 0;
     aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 end;//TPrimStyleEditorContainerForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3MessageID,
  StdRes {a},
  l3Base {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки utStyleEditorContainerLocalConstants }
  str_utStyleEditorContainerCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utStyleEditorContainerCaption'; rValue : 'Редактор стилей');
   { Заголовок пользовательского типа "Редактор стилей" }

// start class TPrimStyleEditorContainerForm

class function TPrimStyleEditorContainerForm.Make(const aData: InsStyleTableSettingsInfo;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimStyleEditorContainerForm);
 begin
  with aForm do
  begin
//#UC START# *4AE06B82037F_4AC6402401E4_impl*
   f_SettingsInfo := aData;
   if not f_SettingsInfo.IsActive then
    f_SettingsInfo.Load;
   DoUpdateCaption;
//#UC END# *4AE06B82037F_4AC6402401E4_impl*
  end;//with aForm
 end;

var
 l_AC : TvcmInitProc;
 l_ACHack : Pointer absolute l_AC;
begin
 l_AC := l3LocalStub(@AfterCreate);
 try
  Result := inherited Make(aParams, aZoneType, aUserType, nil, aDataSource, vcm_utAny, l_AC);
 finally
  l3FreeLocalStub(l_ACHack);
 end;//try..finally
end;

procedure TPrimStyleEditorContainerForm.DoUpdateCaption;
//#UC START# *4AC6406901CE_4AC6402401E4_var*
var
 l_Caption: String;
 l_CaptionLength: Integer;
//#UC END# *4AC6406901CE_4AC6402401E4_var*
begin
//#UC START# *4AC6406901CE_4AC6402401E4_impl*
 l_Caption := Caption;
 l_CaptionLength := Length(l_Caption);
 if f_SettingsInfo.Modified or f_SettingsInfo.IsDifferFromDefault then
 begin
  if ((l_CaptionLength = 0) or (l_Caption[l_CaptionLength] <> '*')) then
   l_Caption := l_Caption+' *';
 end
 else
 begin
  if ((l_CaptionLength > 1) and (l_Caption[l_CaptionLength] = '*')) then
   Delete(l_Caption, l_CaptionLength-1, 2);
 end;
 Caption := l_Caption;
//#UC END# *4AC6406901CE_4AC6402401E4_impl*
end;//TPrimStyleEditorContainerForm.DoUpdateCaption

procedure TPrimStyleEditorContainerForm.StyleEditor_ReloadStyleTable_Execute;
//#UC START# *4AF8660E0079_4AC6402401E4exec_var*
//#UC END# *4AF8660E0079_4AC6402401E4exec_var*
begin
//#UC START# *4AF8660E0079_4AC6402401E4exec_impl*
 DoUpdateCaption;
//#UC END# *4AF8660E0079_4AC6402401E4exec_impl*
end;//TPrimStyleEditorContainerForm.StyleEditor_ReloadStyleTable_Execute

procedure TPrimStyleEditorContainerForm.StyleEditor_ReloadStyleTable(const aParams: IvcmExecuteParams);
begin
 StyleEditor_ReloadStyleTable_Execute;
end;

procedure TPrimStyleEditorContainerForm.Cleanup;
//#UC START# *479731C50290_4AC6402401E4_var*
//#UC END# *479731C50290_4AC6402401E4_var*
begin
//#UC START# *479731C50290_4AC6402401E4_impl*
 f_SettingsInfo := nil;
 inherited;
//#UC END# *479731C50290_4AC6402401E4_impl*
end;//TPrimStyleEditorContainerForm.Cleanup

procedure TPrimStyleEditorContainerForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_StyleEditor, nil);
  PublishOpWithResult(en_StyleEditor, op_ReloadStyleTable, StyleEditor_ReloadStyleTable, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimStyleEditorContainerForm.MakeControls;
begin
 inherited;
 with AddUsertype(utStyleEditorContainerName,
  str_utStyleEditorContainerCaption,
  str_utStyleEditorContainerCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utStyleEditorContainerName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utStyleEditorContainerCaption
 str_utStyleEditorContainerCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.