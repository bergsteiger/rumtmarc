unit RightEdition_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/RightEdition_Form.pas"
// �����: 28.07.2009 13:10
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������������� �������::CompareEditions::View::Editions::BaseEditions::RightEdition
//
// ������� ��������
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
  PrimRightEdition_Form
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
  TRightEditionForm = {final form} class(TvcmEntityFormRef, RightEditionFormDef)
   {* ������� �������� }
  Entities : TvcmEntities;
  Header: TvtPanel;
  pnLeft: TvtPanel;
  EditionLink: TvtFocusLabel;
  pnCaption: TvtPanel;
  end;//TRightEditionForm
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
   Tkw_Form_RightEdition = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� RightEdition
----
*������ �������������*:
[code]
'aControl' �����::RightEdition TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_RightEdition

// start class Tkw_Form_RightEdition

{$If not defined(NoScripts)}
function Tkw_Form_RightEdition.GetString: AnsiString;
 {-}
begin
 Result := 'RightEditionForm';
end;//Tkw_Form_RightEdition.GetString
{$IfEnd} //not NoScripts

type
   Tkw_RightEdition_Header_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� Header ����� RightEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_RightEdition_Header_ControlInstance

// start class Tkw_RightEdition_Header_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_RightEdition_Header_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TRightEditionForm).Header);
end;//Tkw_RightEdition_Header_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_RightEdition_pnLeft_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnLeft ����� RightEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_RightEdition_pnLeft_ControlInstance

// start class Tkw_RightEdition_pnLeft_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_RightEdition_pnLeft_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TRightEditionForm).pnLeft);
end;//Tkw_RightEdition_pnLeft_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_RightEdition_EditionLink_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� EditionLink ����� RightEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_RightEdition_EditionLink_ControlInstance

// start class Tkw_RightEdition_EditionLink_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_RightEdition_EditionLink_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TRightEditionForm).EditionLink);
end;//Tkw_RightEdition_EditionLink_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_RightEdition_pbIcon_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pbIcon ����� RightEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_RightEdition_pbIcon_ControlInstance

// start class Tkw_RightEdition_pbIcon_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_RightEdition_pbIcon_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TRightEditionForm).pbIcon);
end;//Tkw_RightEdition_pbIcon_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_RightEdition_pnCaption_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnCaption ����� RightEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_RightEdition_pnCaption_ControlInstance

// start class Tkw_RightEdition_pnCaption_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_RightEdition_pnCaption_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TRightEditionForm).pnCaption);
end;//Tkw_RightEdition_pnCaption_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_RightEdition_Text_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� Text ����� RightEdition }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_RightEdition_Text_ControlInstance

// start class Tkw_RightEdition_Text_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_RightEdition_Text_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TRightEditionForm).Text);
end;//Tkw_RightEdition_Text_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� RightEdition
 fm_RightEditionForm.SetFactory(TRightEditionForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_RightEdition
 Tkw_Form_RightEdition.Register('�����::RightEdition', TRightEditionForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_RightEdition_Header_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TRightEditionForm.Header', Tkw_RightEdition_Header_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_RightEdition_pnLeft_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TRightEditionForm.pnLeft', Tkw_RightEdition_pnLeft_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_RightEdition_EditionLink_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TRightEditionForm.EditionLink', Tkw_RightEdition_EditionLink_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_RightEdition_pbIcon_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TRightEditionForm.pbIcon', Tkw_RightEdition_pbIcon_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_RightEdition_pnCaption_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TRightEditionForm.pnCaption', Tkw_RightEdition_pnCaption_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_RightEdition_Text_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TRightEditionForm.Text', Tkw_RightEdition_Text_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.