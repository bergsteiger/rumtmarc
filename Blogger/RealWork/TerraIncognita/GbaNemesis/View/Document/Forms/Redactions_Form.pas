unit Redactions_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ������ �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/Redactions_Form.pas"
// �����: 2003/06/20 06:51:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::Redactions
//
// ��������
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
  Common_FormDefinitions_Controls,
  PrimRedactionsOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscTreeView
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
  TRedactionsForm = {final form} class(TvcmEntityFormRef, RedactionsFormDef)
   {* �������� }
  Entities : TvcmEntities;
  end;//TRedactionsForm
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
   Tkw_Form_Redactions = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� Redactions
----
*������ �������������*:
[code]
'aControl' �����::Redactions TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Redactions

// start class Tkw_Form_Redactions

{$If not defined(NoScripts)}
function Tkw_Form_Redactions.GetString: AnsiString;
 {-}
begin
 Result := 'RedactionsForm';
end;//Tkw_Form_Redactions.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Redactions_RedactionTree_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� RedactionTree ����� Redactions }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Redactions_RedactionTree_ControlInstance

// start class Tkw_Redactions_RedactionTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Redactions_RedactionTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TRedactionsForm).RedactionTree);
end;//Tkw_Redactions_RedactionTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� Redactions
 fm_RedactionsForm.SetFactory(TRedactionsForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_Redactions
 Tkw_Form_Redactions.Register('�����::Redactions', TRedactionsForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Redactions_RedactionTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TRedactionsForm.RedactionTree', Tkw_Redactions_RedactionTree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.