unit PrimGroupProperty_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimGroupProperty_Form.pas"
// Начат: 01.10.2009 21:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Администратор::Admin::View::Admin::PrimGroupProperty
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
  OfficeLike_Result_Controls
  {$If defined(Nemesis)}
  ,
  nscComboBox
  {$IfEnd} //Nemesis
  ,
  l3StringIDEx,
  PrimGroupProperty_admCreateGroup_UserType
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
  PrimGroupProperty_admRenameGroup_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmBase {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}
type
 TPrimGroupPropertyForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_edName : TnscEdit;
    {* Поле для свойства edName}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetEdName: TnscEdit;
 protected
 // realized methods
   procedure Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
     {* Отмена }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
   procedure Result_Ok_Test(const aParams: IvcmTestParamsPrim);
     {* OK }
   procedure Result_Ok_GetState(var State: TvcmOperationStateIndex);
     {* OK }
   procedure Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 protected
 // protected fields
   f_Data : IbsEditGroupName;
 public
 // public methods
   class function Make(const aData: IbsEditGroupName;
    const aParams : IvcmMakeParams = nil;
    aZoneType     : TvcmZoneType = vcm_ztAny;
    aUserType     : TvcmEffectiveUserType = 0;
    aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 public
 // public properties
   property edName: TnscEdit
     read pm_GetEdName;
 end;//TPrimGroupPropertyForm
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
uses
  Controls,
  l3String
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  StdRes {a},
  l3Base {a}
  ;
{$IfEnd} //Admin

{$If defined(Admin)}

var
   { Локализуемые строки admCreateGroupLocalConstants }
  str_admCreateGroupCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'admCreateGroupCaption'; rValue : 'Новая группа');
   { Заголовок пользовательского типа "Новая группа" }

var
   { Локализуемые строки admRenameGroupLocalConstants }
  str_admRenameGroupCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'admRenameGroupCaption'; rValue : 'Переименовать группу');
   { Заголовок пользовательского типа "Переименовать группу" }

type
  Tkw_PrimGroupProperty_Control_edName = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола edName
----
*Пример использования*:
[code]
контрол::edName TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimGroupProperty_Control_edName

// start class Tkw_PrimGroupProperty_Control_edName

{$If not defined(NoScripts)}
function Tkw_PrimGroupProperty_Control_edName.GetString: AnsiString;
 {-}
begin
 Result := 'edName';
end;//Tkw_PrimGroupProperty_Control_edName.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimGroupProperty_Control_edName_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола edName
----
*Пример использования*:
[code]
контрол::edName:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimGroupProperty_Control_edName_Push

// start class Tkw_PrimGroupProperty_Control_edName_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimGroupProperty_Control_edName_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('edName');
 inherited;
end;//Tkw_PrimGroupProperty_Control_edName_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimGroupPropertyForm.pm_GetEdName: TnscEdit;
begin
 if (f_edName = nil) then
  f_edName := FindComponent('edName') As TnscEdit;
 Result := f_edName;
end;

class function TPrimGroupPropertyForm.Make(const aData: IbsEditGroupName;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimGroupPropertyForm);
 begin
  with aForm do
  begin
//#UC START# *4AC4EDA102E4_4AC4ED6801F3_impl*
   f_Data := aData;
   Assert(Assigned(f_Data));
   edName.CText := f_Data.Name;
//#UC END# *4AC4EDA102E4_4AC4ED6801F3_impl*
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

procedure TPrimGroupPropertyForm.Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A8AD46D0226_4AC4ED6801F3test_var*
//#UC END# *4A8AD46D0226_4AC4ED6801F3test_var*
begin
//#UC START# *4A8AD46D0226_4AC4ED6801F3test_impl*
 // - ничего не делаем
//#UC END# *4A8AD46D0226_4AC4ED6801F3test_impl*
end;//TPrimGroupPropertyForm.Result_Cancel_Test

procedure TPrimGroupPropertyForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A8AD46D0226_4AC4ED6801F3exec_var*
//#UC END# *4A8AD46D0226_4AC4ED6801F3exec_var*
begin
//#UC START# *4A8AD46D0226_4AC4ED6801F3exec_impl*
 ModalResult := mrCancel;
//#UC END# *4A8AD46D0226_4AC4ED6801F3exec_impl*
end;//TPrimGroupPropertyForm.Result_Cancel_Execute

procedure TPrimGroupPropertyForm.Result_Ok_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4A97EBE702F8_4AC4ED6801F3test_var*
//#UC END# *4A97EBE702F8_4AC4ED6801F3test_var*
begin
//#UC START# *4A97EBE702F8_4AC4ED6801F3test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := not l3IsNil(edName.CText);
//#UC END# *4A97EBE702F8_4AC4ED6801F3test_impl*
end;//TPrimGroupPropertyForm.Result_Ok_Test

procedure TPrimGroupPropertyForm.Result_Ok_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4A97EBE702F8_4AC4ED6801F3getstate_var*
//#UC END# *4A97EBE702F8_4AC4ED6801F3getstate_var*
begin
//#UC START# *4A97EBE702F8_4AC4ED6801F3getstate_impl*
 // - ничего не делаем
//#UC END# *4A97EBE702F8_4AC4ED6801F3getstate_impl*
end;//TPrimGroupPropertyForm.Result_Ok_GetState

procedure TPrimGroupPropertyForm.Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A97EBE702F8_4AC4ED6801F3exec_var*
//#UC END# *4A97EBE702F8_4AC4ED6801F3exec_var*
begin
//#UC START# *4A97EBE702F8_4AC4ED6801F3exec_impl*
 f_Data.Name := edName.CText;
 ModalResult := mrOk;
//#UC END# *4A97EBE702F8_4AC4ED6801F3exec_impl*
end;//TPrimGroupPropertyForm.Result_Ok_Execute

procedure TPrimGroupPropertyForm.Cleanup;
//#UC START# *479731C50290_4AC4ED6801F3_var*
//#UC END# *479731C50290_4AC4ED6801F3_var*
begin
//#UC START# *479731C50290_4AC4ED6801F3_impl*
 f_Data := nil;
 inherited;
//#UC END# *479731C50290_4AC4ED6801F3_impl*
end;//TPrimGroupPropertyForm.Cleanup

procedure TPrimGroupPropertyForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Result, nil);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, Result_Cancel_Test, nil);
  PublishOp(en_Result, op_Ok, Result_Ok_Execute, Result_Ok_Test, Result_Ok_GetState);
 end;//with Entities.Entities
end;

procedure TPrimGroupPropertyForm.MakeControls;
begin
 inherited;
 with AddUsertype(admCreateGroupName,
  str_admCreateGroupCaption,
  str_admCreateGroupCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(admCreateGroupName
 with AddUsertype(admRenameGroupName,
  str_admRenameGroupCaption,
  str_admRenameGroupCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(admRenameGroupName
end;

{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация Tkw_PrimGroupProperty_Control_edName
 Tkw_PrimGroupProperty_Control_edName.Register('контрол::edName', TnscEdit);
{$IfEnd} //Admin
{$If defined(Admin)}
// Регистрация Tkw_PrimGroupProperty_Control_edName_Push
 Tkw_PrimGroupProperty_Control_edName_Push.Register('контрол::edName:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// Инициализация str_admCreateGroupCaption
 str_admCreateGroupCaption.Init;
{$IfEnd} //Admin
{$If defined(Admin)}
// Инициализация str_admRenameGroupCaption
 str_admRenameGroupCaption.Init;
{$IfEnd} //Admin

end.