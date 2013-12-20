unit ChangesBetweenEditons_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/ChangesBetweenEditons/Forms/ChangesBetweenEditons_Form.pas"
// �����: 25.05.2011 14:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������������� �������::ChangesBetweenEditions::View::ChangesBetweenEditons::ChangesBetweenEditions::ChangesBetweenEditons
//
// ��������� � ���������
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  PrimChangesBetweenEditons_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscEditor
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTextSource
  {$IfEnd} //Nemesis
  ,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
    { ChangesBetweenEditonsIDs }
   fm_ChangesBetweenEditonsForm : TvcmFormDescriptor = (rFormID : (rName : 'ChangesBetweenEditonsForm'; rID : 0); rFactory : nil);
    { ������������� ����� TChangesBetweenEditonsForm }

type
 ChangesBetweenEditonsFormDef = interface(IUnknown)
  {* ������������� ����� ChangesBetweenEditons }
   ['{E8402096-B641-4FAE-B341-69369D1BB399}']
 end;//ChangesBetweenEditonsFormDef

  TChangesBetweenEditonsForm = {final form} class(TvcmEntityFormRef, ChangesBetweenEditonsFormDef)
   {* ��������� � ��������� }
  Entities : TvcmEntities;
  end;//TChangesBetweenEditonsForm
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
   Tkw_Form_ChangesBetweenEditons = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� ChangesBetweenEditons
----
*������ �������������*:
[code]
'aControl' �����::ChangesBetweenEditons TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ChangesBetweenEditons

// start class Tkw_Form_ChangesBetweenEditons

{$If not defined(NoScripts)}
function Tkw_Form_ChangesBetweenEditons.GetString: AnsiString;
 {-}
begin
 Result := 'ChangesBetweenEditonsForm';
end;//Tkw_Form_ChangesBetweenEditons.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ChangesBetweenEditons_Text_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� Text ����� ChangesBetweenEditons }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ChangesBetweenEditons_Text_ControlInstance

// start class Tkw_ChangesBetweenEditons_Text_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ChangesBetweenEditons_Text_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TChangesBetweenEditonsForm).Text);
end;//Tkw_ChangesBetweenEditons_Text_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� ChangesBetweenEditons
 fm_ChangesBetweenEditonsForm.SetFactory(TChangesBetweenEditonsForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_ChangesBetweenEditons
 Tkw_Form_ChangesBetweenEditons.Register('�����::ChangesBetweenEditons', TChangesBetweenEditonsForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ChangesBetweenEditons_Text_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChangesBetweenEditonsForm.Text', Tkw_ChangesBetweenEditons_Text_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.