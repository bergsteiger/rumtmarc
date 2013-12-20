unit SynchroView_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ������ �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/SynchroView_Form.pas"
// �����: 2003/06/25 19:34:22
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������ � ���������� � ������� ����������::Document::View::Document::Document::SynchroView
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
  PrimSynchroViewOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel,
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
  TfcSynchroView = {final form} class(TvcmContainerFormRef, SynchroViewFormDef)
  Entities : TvcmEntities;
  DocView: TvtPanel;
  end;//TfcSynchroView

  TSynchroViewForm = TfcSynchroView;
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
   Tkw_Form_SynchroView = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� SynchroView
----
*������ �������������*:
[code]
'aControl' �����::SynchroView TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_SynchroView

// start class Tkw_Form_SynchroView

{$If not defined(NoScripts)}
function Tkw_Form_SynchroView.GetString: AnsiString;
 {-}
begin
 Result := 'fcSynchroView';
end;//Tkw_Form_SynchroView.GetString
{$IfEnd} //not NoScripts

type
   Tkw_SynchroView_DocView_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� DocView ����� SynchroView }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_SynchroView_DocView_ControlInstance

// start class Tkw_SynchroView_DocView_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_SynchroView_DocView_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TfcSynchroView).DocView);
end;//Tkw_SynchroView_DocView_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� SynchroView
 fm_fcSynchroView.SetFactory(TfcSynchroView.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_SynchroView
 Tkw_Form_SynchroView.Register('�����::SynchroView', TfcSynchroView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_SynchroView_DocView_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TfcSynchroView.DocView', Tkw_SynchroView_DocView_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.