unit PrimGroupProperty_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimGroupProperty_Form.pas"
// �����: 01.10.2009 21:57
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 �������������::Admin::View::Admin::PrimGroupProperty
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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
    {* ���� ��� �������� edName}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetEdName: TnscEdit;
 protected
 // realized methods
   procedure Result_Cancel_Test(const aParams: IvcmTestParamsPrim);
     {* ������ }
   procedure Result_Cancel_Execute(const aParams: IvcmExecuteParamsPrim);
     {* ������ }
   procedure Result_Ok_Test(const aParams: IvcmTestParamsPrim);
     {* OK }
   procedure Result_Ok_GetState(var State: TvcmOperationStateIndex);
     {* OK }
   procedure Result_Ok_Execute(const aParams: IvcmExecuteParamsPrim);
     {* OK }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* ������� ������� ����� �������. }
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
   { ������������ ������ admCreateGroupLocalConstants }
  str_admCreateGroupCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'admCreateGroupCaption'; rValue : '����� ������');
   { ��������� ����������������� ���� "����� ������" }

var
   { ������������ ������ admRenameGroupLocalConstants }
  str_admRenameGroupCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'admRenameGroupCaption'; rValue : '������������� ������');
   { ��������� ����������������� ���� "������������� ������" }

type
  Tkw_PrimGroupProperty_Control_edName = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� edName
----
*������ �������������*:
[code]
�������::edName TryFocus ASSERT
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
   {* ����� ������� ��� �������� edName
----
*������ �������������*:
[code]
�������::edName:push pop:control:SetFocus ASSERT
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
 // - ������ �� ������
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
 // - ������ �� ������
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
// ����������� Tkw_PrimGroupProperty_Control_edName
 Tkw_PrimGroupProperty_Control_edName.Register('�������::edName', TnscEdit);
{$IfEnd} //Admin
{$If defined(Admin)}
// ����������� Tkw_PrimGroupProperty_Control_edName_Push
 Tkw_PrimGroupProperty_Control_edName_Push.Register('�������::edName:push');
{$IfEnd} //Admin
{$If defined(Admin)}
// ������������� str_admCreateGroupCaption
 str_admCreateGroupCaption.Init;
{$IfEnd} //Admin
{$If defined(Admin)}
// ������������� str_admRenameGroupCaption
 str_admRenameGroupCaption.Init;
{$IfEnd} //Admin

end.