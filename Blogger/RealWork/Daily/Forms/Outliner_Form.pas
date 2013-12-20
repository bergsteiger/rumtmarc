unit Outliner_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Forms"
// �����: ������ �.�.
// ������: "w:/common/components/gui/Garant/Daily/Forms/Outliner_Form.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Outliner::OutlinerForm
//
// ����� ��� ������������ ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  vcmInterfaces,
  vcmEntityForm,
  vcmUserControls,
  l3StringIDEx,
  vtOutlinerControl
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
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
  OutlinerForm_ut_OutlinerForm_UserType,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a}
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}
const
   { OutlinerFormIDs }
  fm_OutlinerFormForm : TvcmFormDescriptor = (rFormID : (rName : 'OutlinerFormForm'; rID : 0); rFactory : nil);
   { ������������� ����� TOutlinerFormForm }

type
 OutlinerFormFormDef = interface(IUnknown)
  {* ������������� ����� OutlinerForm }
   ['{0BC56D56-6AF0-47F9-9D0B-4AE7FEEE4483}']
 end;//OutlinerFormFormDef

 TOutlinerFormForm = {final form} class(TvcmEntityForm, OutlinerFormFormDef)
  {* ����� ��� ������������ ������ }
  Entities : TvcmEntities;
 private
 // private fields
   f_TreeControl : TvtOutlinerControl;
    {* ���� ��� �������� TreeControl}
 protected
  procedure MakeControls; override;
 protected
 // overridden protected methods
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
 public
 // public properties
   property TreeControl: TvtOutlinerControl
     read f_TreeControl;
 end;//TOutlinerFormForm
{$IfEnd} //nsTest AND not NoVCM

implementation

{$R *.DFM}

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}

var
   { ������������ ������ ut_OutlinerFormLocalConstants }
  str_ut_OutlinerFormCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_OutlinerFormCaption'; rValue : '����� ��� ������������ ������');
   { ��������� ����������������� ���� "����� ��� ������������ ������" }

type
  Tkw_OutlinerForm_Control_TreeControl = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� TreeControl
----
*������ �������������*:
[code]
�������::TreeControl TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_OutlinerForm_Control_TreeControl

// start class Tkw_OutlinerForm_Control_TreeControl

{$If not defined(NoScripts)}
function Tkw_OutlinerForm_Control_TreeControl.GetString: AnsiString;
 {-}
begin
 Result := 'TreeControl';
end;//Tkw_OutlinerForm_Control_TreeControl.GetString
{$IfEnd} //not NoScripts

type
  Tkw_OutlinerForm_Control_TreeControl_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� TreeControl
----
*������ �������������*:
[code]
�������::TreeControl:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_OutlinerForm_Control_TreeControl_Push

// start class Tkw_OutlinerForm_Control_TreeControl_Push

{$If not defined(NoScripts)}
procedure Tkw_OutlinerForm_Control_TreeControl_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('TreeControl');
 inherited;
end;//Tkw_OutlinerForm_Control_TreeControl_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_OutlinerForm = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� OutlinerForm
----
*������ �������������*:
[code]
'aControl' �����::OutlinerForm TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_OutlinerForm

// start class Tkw_Form_OutlinerForm

{$If not defined(NoScripts)}
function Tkw_Form_OutlinerForm.GetString: AnsiString;
 {-}
begin
 Result := 'OutlinerFormForm';
end;//Tkw_Form_OutlinerForm.GetString
{$IfEnd} //not NoScripts

type
  Tkw_OutlinerForm_TreeControl_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� TreeControl ����� OutlinerForm }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_OutlinerForm_TreeControl_ControlInstance

// start class Tkw_OutlinerForm_TreeControl_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_OutlinerForm_TreeControl_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TOutlinerFormForm).TreeControl);
end;//Tkw_OutlinerForm_TreeControl_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TOutlinerFormForm.InitControls;
//#UC START# *4A8E8F2E0195_4D4697F30281_var*
//#UC END# *4A8E8F2E0195_4D4697F30281_var*
begin
//#UC START# *4A8E8F2E0195_4D4697F30281_impl*
 inherited;
 f_TreeControl.Align := alClient;
//#UC END# *4A8E8F2E0195_4D4697F30281_impl*
end;//TOutlinerFormForm.InitControls

procedure TOutlinerFormForm.MakeControls;
begin
 inherited;
 f_TreeControl := TvtOutlinerControl.Create(Self);
 f_TreeControl.Name := 'TreeControl';
 f_TreeControl.Parent := Self;
 with AddUsertype(ut_OutlinerFormName,
  str_ut_OutlinerFormCaption,
  str_ut_OutlinerFormCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_OutlinerFormName
end;

{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_OutlinerForm_Control_TreeControl
 Tkw_OutlinerForm_Control_TreeControl.Register('�������::TreeControl', TvtOutlinerControl);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_OutlinerForm_Control_TreeControl_Push
 Tkw_OutlinerForm_Control_TreeControl_Push.Register('�������::TreeControl:push');
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� ������� ����� OutlinerForm
 fm_OutlinerFormForm.SetFactory(TOutlinerFormForm.Make);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_Form_OutlinerForm
 Tkw_Form_OutlinerForm.Register('�����::OutlinerForm', TOutlinerFormForm);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_OutlinerForm_TreeControl_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TOutlinerFormForm.TreeControl', Tkw_OutlinerForm_TreeControl_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ������������� str_ut_OutlinerFormCaption
 str_ut_OutlinerFormCaption.Init;
{$IfEnd} //nsTest AND not NoVCM

end.