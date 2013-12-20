unit F1LikeFormWithBS_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Forms"
// ������: "w:/common/components/gui/Garant/Daily/Forms/F1LikeFormWithBS_Form.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::F1LikeFormWithBS
//
// ����� � ��������� ���������� � ������� �������.
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
  eeTextSourceExport,
  eeEditorExport,
  vcmUserControls,
  l3StringIDEx,
  PrimTextLoad_Form
  {$If defined(Nemesis)}
  ,
  nscTreeComboWithHistoryAndOperations
  {$IfEnd} //Nemesis
  
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
  F1LikeFormWithBS_ut_F1LikeFormWithBS_UserType,
  evCustomTextSource,
  evCustomEditor,
  evLoadDocumentManager,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}
const
   { F1LikeFormWithBSIDs }
  fm_F1LikeFormWithBSForm : TvcmFormDescriptor = (rFormID : (rName : 'F1LikeFormWithBSForm'; rID : 0); rFactory : nil);
   { ������������� ����� TF1LikeFormWithBSForm }

type
 F1LikeFormWithBSFormDef = interface(IUnknown)
  {* ������������� ����� F1LikeFormWithBS }
   ['{08697FEC-7252-4923-BCAD-60B3AD27EC1F}']
 end;//F1LikeFormWithBSFormDef

 TF1LikeFormWithBSForm = {final form} class(TvcmEntityFormRef, F1LikeFormWithBSFormDef)
  {* ����� � ��������� ���������� � ������� �������. }
  Entities : TvcmEntities;
 private
 // private fields
   f_BaseSearchControl : TnscTreeComboWithHistoryAndOperations;
    {* ���� ��� �������� BaseSearchControl}
   f_Text : TeeEditorExport;
    {* ���� ��� �������� Text}
   f_TextSource : TeeTextSourceExport;
    {* ���� ��� �������� TextSource}
 protected
  procedure MakeControls; override;
 protected
 // realized methods
   function pm_GetTextSource: TevCustomTextSource; override;
   function pm_GetText: TevCustomEditor; override;
 protected
 // overridden protected methods
   procedure InitControls; override;
     {* ��������� ������������� ���������. ��� ���������� � �������� }
 public
 // public properties
   property BaseSearchControl: TnscTreeComboWithHistoryAndOperations
     read f_BaseSearchControl;
   property Text: TeeEditorExport
     read f_Text;
   property TextSource: TeeTextSourceExport
     read f_TextSource;
 end;//TF1LikeFormWithBSForm
{$IfEnd} //nsTest AND not NoVCM

implementation

{$R *.DFM}

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  Controls,
  Forms
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
   { ������������ ������ ut_F1LikeFormWithBSLocalConstants }
  str_ut_F1LikeFormWithBSCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_F1LikeFormWithBSCaption'; rValue : '����� � ��������� ���������� � ������� �������.');
   { ��������� ����������������� ���� "����� � ��������� ���������� � ������� �������." }

type
  Tkw_F1LikeFormWithBS_Control_BaseSearchControl = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� BaseSearchControl
----
*������ �������������*:
[code]
�������::BaseSearchControl TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeFormWithBS_Control_BaseSearchControl

// start class Tkw_F1LikeFormWithBS_Control_BaseSearchControl

{$If not defined(NoScripts)}
function Tkw_F1LikeFormWithBS_Control_BaseSearchControl.GetString: AnsiString;
 {-}
begin
 Result := 'BaseSearchControl';
end;//Tkw_F1LikeFormWithBS_Control_BaseSearchControl.GetString
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeFormWithBS_Control_BaseSearchControl_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� BaseSearchControl
----
*������ �������������*:
[code]
�������::BaseSearchControl:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeFormWithBS_Control_BaseSearchControl_Push

// start class Tkw_F1LikeFormWithBS_Control_BaseSearchControl_Push

{$If not defined(NoScripts)}
procedure Tkw_F1LikeFormWithBS_Control_BaseSearchControl_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('BaseSearchControl');
 inherited;
end;//Tkw_F1LikeFormWithBS_Control_BaseSearchControl_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeFormWithBS_Control_Text = class(TtfwControlString)
   {* ����� ������� ��� �������������� �������� Text
----
*������ �������������*:
[code]
�������::Text TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeFormWithBS_Control_Text

// start class Tkw_F1LikeFormWithBS_Control_Text

{$If not defined(NoScripts)}
function Tkw_F1LikeFormWithBS_Control_Text.GetString: AnsiString;
 {-}
begin
 Result := 'Text';
end;//Tkw_F1LikeFormWithBS_Control_Text.GetString
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeFormWithBS_Control_Text_Push = class(TkwBynameControlPush)
   {* ����� ������� ��� �������� Text
----
*������ �������������*:
[code]
�������::Text:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeFormWithBS_Control_Text_Push

// start class Tkw_F1LikeFormWithBS_Control_Text_Push

{$If not defined(NoScripts)}
procedure Tkw_F1LikeFormWithBS_Control_Text_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('Text');
 inherited;
end;//Tkw_F1LikeFormWithBS_Control_Text_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeFormWithBS_Component_TextSource = class(TtfwControlString)
   {* ����� ������� ��� �������������� ���������� TextSource
----
*������ �������������*:
[code]
���������::TextSource TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeFormWithBS_Component_TextSource

// start class Tkw_F1LikeFormWithBS_Component_TextSource

{$If not defined(NoScripts)}
function Tkw_F1LikeFormWithBS_Component_TextSource.GetString: AnsiString;
 {-}
begin
 Result := 'TextSource';
end;//Tkw_F1LikeFormWithBS_Component_TextSource.GetString
{$IfEnd} //not NoScripts

type
  Tkw_Form_F1LikeFormWithBS = class(TtfwControlString)
   {* ����� ������� ��� �������������� ����� F1LikeFormWithBS
----
*������ �������������*:
[code]
'aControl' �����::F1LikeFormWithBS TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_F1LikeFormWithBS

// start class Tkw_Form_F1LikeFormWithBS

{$If not defined(NoScripts)}
function Tkw_Form_F1LikeFormWithBS.GetString: AnsiString;
 {-}
begin
 Result := 'F1LikeFormWithBSForm';
end;//Tkw_Form_F1LikeFormWithBS.GetString
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeFormWithBS_BaseSearchControl_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� BaseSearchControl ����� F1LikeFormWithBS }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeFormWithBS_BaseSearchControl_ControlInstance

// start class Tkw_F1LikeFormWithBS_BaseSearchControl_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_F1LikeFormWithBS_BaseSearchControl_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TF1LikeFormWithBSForm).BaseSearchControl);
end;//Tkw_F1LikeFormWithBS_BaseSearchControl_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeFormWithBS_Text_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� Text ����� F1LikeFormWithBS }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeFormWithBS_Text_ControlInstance

// start class Tkw_F1LikeFormWithBS_Text_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_F1LikeFormWithBS_Text_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TF1LikeFormWithBSForm).Text);
end;//Tkw_F1LikeFormWithBS_Text_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeFormWithBS_TextSource_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� TextSource ����� F1LikeFormWithBS }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeFormWithBS_TextSource_ControlInstance

// start class Tkw_F1LikeFormWithBS_TextSource_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_F1LikeFormWithBS_TextSource_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TF1LikeFormWithBSForm).TextSource);
end;//Tkw_F1LikeFormWithBS_TextSource_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeFormWithBS_LoadManager_ControlInstance = class(TtfwWord)
   {* ����� ������� ��� ������� � ���������� �������� LoadManager ����� F1LikeFormWithBS }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeFormWithBS_LoadManager_ControlInstance

// start class Tkw_F1LikeFormWithBS_LoadManager_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_F1LikeFormWithBS_LoadManager_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TF1LikeFormWithBSForm).LoadManager);
end;//Tkw_F1LikeFormWithBS_LoadManager_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

function TF1LikeFormWithBSForm.pm_GetTextSource: TevCustomTextSource;
//#UC START# *4C9B21D20187_4D6CB4B7035Fget_var*
//#UC END# *4C9B21D20187_4D6CB4B7035Fget_var*
begin
//#UC START# *4C9B21D20187_4D6CB4B7035Fget_impl*
 Result := TextSource;
//#UC END# *4C9B21D20187_4D6CB4B7035Fget_impl*
end;//TF1LikeFormWithBSForm.pm_GetTextSource

function TF1LikeFormWithBSForm.pm_GetText: TevCustomEditor;
//#UC START# *4C9B21E400A4_4D6CB4B7035Fget_var*
//#UC END# *4C9B21E400A4_4D6CB4B7035Fget_var*
begin
//#UC START# *4C9B21E400A4_4D6CB4B7035Fget_impl*
 Result := Text;
//#UC END# *4C9B21E400A4_4D6CB4B7035Fget_impl*
end;//TF1LikeFormWithBSForm.pm_GetText

procedure TF1LikeFormWithBSForm.InitControls;
//#UC START# *4A8E8F2E0195_4D6CB4B7035F_var*
//#UC END# *4A8E8F2E0195_4D6CB4B7035F_var*
begin
//#UC START# *4A8E8F2E0195_4D6CB4B7035F_impl*
 WindowState := wsMaximized;
 f_BaseSearchControl.Align := alTop;
 Text.Align := alClient;
 f_BaseSearchControl.Visible := False;
 Text.WebStyle := true;
 Text.TextSource := Self.TextSource;
//#UC END# *4A8E8F2E0195_4D6CB4B7035F_impl*
end;//TF1LikeFormWithBSForm.InitControls

procedure TF1LikeFormWithBSForm.MakeControls;
begin
 inherited;
 f_BaseSearchControl := TnscTreeComboWithHistoryAndOperations.Create(Self);
 f_BaseSearchControl.Name := 'BaseSearchControl';
 f_BaseSearchControl.Parent := Self;
 f_Text := TeeEditorExport.Create(Self);
 f_Text.Name := 'Text';
 f_Text.Parent := Self;
 f_TextSource := TeeTextSourceExport.Create(Self);
 f_TextSource.Name := 'TextSource';
 with AddUsertype(ut_F1LikeFormWithBSName,
  str_ut_F1LikeFormWithBSCaption,
  str_ut_F1LikeFormWithBSCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_F1LikeFormWithBSName
end;

{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_F1LikeFormWithBS_Control_BaseSearchControl
 Tkw_F1LikeFormWithBS_Control_BaseSearchControl.Register('�������::BaseSearchControl', TnscTreeComboWithHistoryAndOperations);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_F1LikeFormWithBS_Control_BaseSearchControl_Push
 Tkw_F1LikeFormWithBS_Control_BaseSearchControl_Push.Register('�������::BaseSearchControl:push');
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_F1LikeFormWithBS_Control_Text
 Tkw_F1LikeFormWithBS_Control_Text.Register('�������::Text', TeeEditorExport);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_F1LikeFormWithBS_Control_Text_Push
 Tkw_F1LikeFormWithBS_Control_Text_Push.Register('�������::Text:push');
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_F1LikeFormWithBS_Component_TextSource
 Tkw_F1LikeFormWithBS_Component_TextSource.Register('���������::TextSource', TeeTextSourceExport);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� ������� ����� F1LikeFormWithBS
 fm_F1LikeFormWithBSForm.SetFactory(TF1LikeFormWithBSForm.Make);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_Form_F1LikeFormWithBS
 Tkw_Form_F1LikeFormWithBS.Register('�����::F1LikeFormWithBS', TF1LikeFormWithBSForm);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_F1LikeFormWithBS_BaseSearchControl_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TF1LikeFormWithBSForm.BaseSearchControl', Tkw_F1LikeFormWithBS_BaseSearchControl_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_F1LikeFormWithBS_Text_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TF1LikeFormWithBSForm.Text', Tkw_F1LikeFormWithBS_Text_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_F1LikeFormWithBS_TextSource_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TF1LikeFormWithBSForm.TextSource', Tkw_F1LikeFormWithBS_TextSource_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ����������� Tkw_F1LikeFormWithBS_LoadManager_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TF1LikeFormWithBSForm.LoadManager', Tkw_F1LikeFormWithBS_LoadManager_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// ������������� str_ut_F1LikeFormWithBSCaption
 str_ut_F1LikeFormWithBSCaption.Init;
{$IfEnd} //nsTest AND not NoVCM

end.