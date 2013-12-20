unit WarningBaloon_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/WarningBaloon_Form.pas"
// �����: 05.02.2009 19:28
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::WarningBaloon
//
// ������ � ���������������
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
  PrimWarningBaloonOptions_Form
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
  TWarningBaloonForm = {final form} class(TvcmEntityFormRef, WarningBaloonFormDef)
   {* ������ � ��������������� }
  Entities : TvcmEntities;
  end;//TWarningBaloonForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_WarningBaloon = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� WarningBaloon
----
*������ �������������*:
[code]
'aControl' �����::WarningBaloon TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_WarningBaloon

// start class Tkw_Form_WarningBaloon

{$If not defined(NoScripts)}
function Tkw_Form_WarningBaloon.GetString: AnsiString;
 {-}
begin
 Result := 'WarningBaloonForm';
end;//Tkw_Form_WarningBaloon.GetString
{$IfEnd} //not NoScripts

type
   Tkw_WarningBaloon_Viewer_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� Viewer ����� WarningBaloon }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_WarningBaloon_Viewer_ControlInstance

// start class Tkw_WarningBaloon_Viewer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_WarningBaloon_Viewer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TWarningBaloonForm).Viewer);
end;//Tkw_WarningBaloon_Viewer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� WarningBaloon
 fm_WarningBaloonForm.SetFactory(TWarningBaloonForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_WarningBaloon
 Tkw_Form_WarningBaloon.Register('�����::WarningBaloon', TWarningBaloonForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_WarningBaloon_Viewer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TWarningBaloonForm.Viewer', Tkw_WarningBaloon_Viewer_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.