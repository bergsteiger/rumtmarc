unit LeftEdition_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/LeftEdition_Form.pas"
// �����: 28.07.2009 13:09
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������������� �������::CompareEditions::View::Editions::BaseEditions::LeftEdition
//
// ���������� ��������
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
  PrimLeftEdition_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  CompareEditions_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel,
  vtFocusLabel,
  ExtCtrls,
  vtComboBoxQS
  {$If defined(Nemesis)}
  ,
  nscEditor
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTextSource
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
  TLeftEditionForm = {final form} class(TvcmEntityFormRef, LeftEditionFormDef)
   {* ���������� �������� }
  Entities : TvcmEntities;
  Header: TvtPanel;
  pnLeft: TvtPanel;
  EditionLink: TvtFocusLabel;
  pnCaption: TvtPanel;
  end;//TLeftEditionForm
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
   Tkw_Form_LeftEdition = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� LeftEdition
----
*������ �������������*:
[code]
'aControl' �����::LeftEdition TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_LeftEdition

// start class Tkw_Form_LeftEdition

{$If not defined(NoScripts)}
function Tkw_Form_LeftEdition.GetString: AnsiString;
 {-}
begin
 Result := 'LeftEditionForm';
end;//Tkw_Form_LeftEdition.GetString
{$IfEnd} //not NoScripts

type
   Tkw_LeftEdition_Header_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� Header ����� LeftEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_LeftEdition_Header_ControlInstance

// start class Tkw_LeftEdition_Header_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_LeftEdition_Header_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLeftEditionForm).Header);
end;//Tkw_LeftEdition_Header_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_LeftEdition_pnLeft_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnLeft ����� LeftEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_LeftEdition_pnLeft_ControlInstance

// start class Tkw_LeftEdition_pnLeft_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_LeftEdition_pnLeft_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLeftEditionForm).pnLeft);
end;//Tkw_LeftEdition_pnLeft_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_LeftEdition_EditionLink_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� EditionLink ����� LeftEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_LeftEdition_EditionLink_ControlInstance

// start class Tkw_LeftEdition_EditionLink_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_LeftEdition_EditionLink_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLeftEditionForm).EditionLink);
end;//Tkw_LeftEdition_EditionLink_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_LeftEdition_pbIcon_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pbIcon ����� LeftEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_LeftEdition_pbIcon_ControlInstance

// start class Tkw_LeftEdition_pbIcon_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_LeftEdition_pbIcon_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLeftEditionForm).pbIcon);
end;//Tkw_LeftEdition_pbIcon_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_LeftEdition_pnCaption_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnCaption ����� LeftEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_LeftEdition_pnCaption_ControlInstance

// start class Tkw_LeftEdition_pnCaption_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_LeftEdition_pnCaption_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLeftEditionForm).pnCaption);
end;//Tkw_LeftEdition_pnCaption_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_LeftEdition_Text_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� Text ����� LeftEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_LeftEdition_Text_ControlInstance

// start class Tkw_LeftEdition_Text_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_LeftEdition_Text_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TLeftEditionForm).Text);
end;//Tkw_LeftEdition_Text_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� LeftEdition
 fm_LeftEditionForm.SetFactory(TLeftEditionForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_LeftEdition
 Tkw_Form_LeftEdition.Register('�����::LeftEdition', TLeftEditionForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_LeftEdition_Header_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLeftEditionForm.Header', Tkw_LeftEdition_Header_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_LeftEdition_pnLeft_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLeftEditionForm.pnLeft', Tkw_LeftEdition_pnLeft_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_LeftEdition_EditionLink_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLeftEditionForm.EditionLink', Tkw_LeftEdition_EditionLink_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_LeftEdition_pbIcon_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLeftEditionForm.pbIcon', Tkw_LeftEdition_pbIcon_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_LeftEdition_pnCaption_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLeftEditionForm.pnCaption', Tkw_LeftEdition_pnCaption_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_LeftEdition_Text_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TLeftEditionForm.Text', Tkw_LeftEdition_Text_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.