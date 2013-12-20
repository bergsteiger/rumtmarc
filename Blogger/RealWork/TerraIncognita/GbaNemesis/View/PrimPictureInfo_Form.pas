unit PrimPictureInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimPictureInfo_Form.pas"
// Начат: 16.09.2009 22:23
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Работа с документом и списком документов::Document::View::Picture::PrimPictureInfo
//
// Информация о картинке
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
  DocumentDomainInterfaces,
  OfficeLike_Result_Controls,
  eeMemoWithEditOperations
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimPictureInfoForm = {form} class(TvcmEntityForm)
  {* Информация о картинке }
 private
 // private fields
   f_Info : TeeMemoWithEditOperations;
    {* Поле для свойства Info}
 protected
  procedure InitEntities; override;
 protected
 // property methods
   function pm_GetInfo: TeeMemoWithEditOperations;
 protected
 // realized methods
   procedure Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
     {* Отмена }
   procedure Result_Cancel_GetState(var State: TvcmOperationStateIndex);
     {* Отмена }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* Отмена }
 public
 // public methods
   class function Make(const aData: InsLinkedObjectDescription;
    const aParams : IvcmMakeParams = nil;
    aZoneType     : TvcmZoneType = vcm_ztAny;
    aUserType     : TvcmEffectiveUserType = 0;
    aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm; reintroduce;
 public
 // public properties
   property Info: TeeMemoWithEditOperations
     read pm_GetInfo;
 end;//TPrimPictureInfoForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3String,
  Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  StdRes {a},
  l3Base {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_PrimPictureInfo_Control_Info = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола Info
----
*Пример использования*:
[code]
контрол::Info TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPictureInfo_Control_Info

// start class Tkw_PrimPictureInfo_Control_Info

{$If not defined(NoScripts)}
function Tkw_PrimPictureInfo_Control_Info.GetString: AnsiString;
 {-}
begin
 Result := 'Info';
end;//Tkw_PrimPictureInfo_Control_Info.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimPictureInfo_Control_Info_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола Info
----
*Пример использования*:
[code]
контрол::Info:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPictureInfo_Control_Info_Push

// start class Tkw_PrimPictureInfo_Control_Info_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimPictureInfo_Control_Info_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('Info');
 inherited;
end;//Tkw_PrimPictureInfo_Control_Info_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimPictureInfoForm.pm_GetInfo: TeeMemoWithEditOperations;
begin
 if (f_Info = nil) then
  f_Info := FindComponent('Info') As TeeMemoWithEditOperations;
 Result := f_Info;
end;

class function TPrimPictureInfoForm.Make(const aData: InsLinkedObjectDescription;
  const aParams : IvcmMakeParams = nil;
  aZoneType     : TvcmZoneType = vcm_ztAny;
  aUserType     : TvcmEffectiveUserType = 0;
  aDataSource   : IvcmFormDataSource = nil): IvcmEntityForm;

 procedure AfterCreate(aForm : TPrimPictureInfoForm);
 begin
  with aForm do
  begin
//#UC START# *4AC4F7760311_4AB12F7601D3_impl*
   Info.Text := l3Str(vcmFmt(str_PictureInfoTemplate, [aData.Name, aData.ShortName, aData.ID]));
//#UC END# *4AC4F7760311_4AB12F7601D3_impl*
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

procedure TPrimPictureInfoForm.Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
//#UC START# *4AC5D61E0284_4AB12F7601D3test_var*
//#UC END# *4AC5D61E0284_4AB12F7601D3test_var*
begin
//#UC START# *4AC5D61E0284_4AB12F7601D3test_impl*
 // - ничего не делаем
//#UC END# *4AC5D61E0284_4AB12F7601D3test_impl*
end;//TPrimPictureInfoForm.Result_Cancel_Test

procedure TPrimPictureInfoForm.Result_Cancel_GetState(var State: TvcmOperationStateIndex);
//#UC START# *4AC5D61E0284_4AB12F7601D3getstate_var*
//#UC END# *4AC5D61E0284_4AB12F7601D3getstate_var*
begin
//#UC START# *4AC5D61E0284_4AB12F7601D3getstate_impl*
 State := st_user_Result_Cancel_Close;
//#UC END# *4AC5D61E0284_4AB12F7601D3getstate_impl*
end;//TPrimPictureInfoForm.Result_Cancel_GetState

procedure TPrimPictureInfoForm.Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AC5D61E0284_4AB12F7601D3exec_var*
//#UC END# *4AC5D61E0284_4AB12F7601D3exec_var*
begin
//#UC START# *4AC5D61E0284_4AB12F7601D3exec_impl*
 ModalResult := mrCancel;
//#UC END# *4AC5D61E0284_4AB12F7601D3exec_impl*
end;//TPrimPictureInfoForm.Result_Cancel_Execute

procedure TPrimPictureInfoForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Result, nil);
  PublishOp(en_Result, op_Cancel, Result_Cancel_Execute, Result_Cancel_Test, Result_Cancel_GetState);
 end;//with Entities.Entities
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimPictureInfo_Control_Info
 Tkw_PrimPictureInfo_Control_Info.Register('контрол::Info', TeeMemoWithEditOperations);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimPictureInfo_Control_Info_Push
 Tkw_PrimPictureInfo_Control_Info_Push.Register('контрол::Info:push');
{$IfEnd} //not Admin AND not Monitorings

end.