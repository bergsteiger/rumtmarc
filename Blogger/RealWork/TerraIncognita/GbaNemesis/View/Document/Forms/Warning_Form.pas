unit Warning_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/Warning_Form.pas"
// �����: 2003/11/28 13:36:55
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::Warning
//
// ��������������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Common_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  PrimDockedWarning_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscEditor
  {$IfEnd} //Nemesis
  ,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  TWarningForm = {final form} class(TvcmEntityFormRef, WarningFormDef)
   {* �������������� }
  Entities : TvcmEntities;
  end;//TWarningForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  WarningConst
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_Warning = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� Warning
----
*������ �������������*:
[code]
'aControl' �����::Warning TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Warning

// start class Tkw_Form_Warning

{$If not defined(NoScripts)}
function Tkw_Form_Warning.GetString: AnsiString;
 {-}
begin
 Result := 'WarningForm';
end;//Tkw_Form_Warning.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Warning_Viewer_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� Viewer ����� Warning }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Warning_Viewer_ControlInstance

// start class Tkw_Warning_Viewer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Warning_Viewer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TWarningForm).Viewer);
end;//Tkw_Warning_Viewer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� Warning
 fm_WarningForm.SetFactory(TWarningForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_Warning
 Tkw_Form_Warning.Register('�����::Warning', TWarningForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Warning_Viewer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TWarningForm.Viewer', Tkw_Warning_Viewer_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.