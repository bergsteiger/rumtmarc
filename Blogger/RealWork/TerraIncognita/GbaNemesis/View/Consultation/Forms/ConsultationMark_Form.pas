unit ConsultationMark_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Consultation/Forms/ConsultationMark_Form.pas"
// �����: 22.09.2009 16:49
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������������� �������::Consultation::View::Consultation::Consultation$FP::ConsultationMark
//
// ������ ������
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
  PrimConsultationMarkOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtGroupBox,
  StdCtrls,
  vtPanel,
  vtLabel,
  eeMemoWithEditOperations,
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
  Ten_ConsultationMark = {final form} class(TvcmEntityFormRef, ConsultationMarkFormDef)
   {* ������ ������ }
  Entities : TvcmEntities;
  end;//Ten_ConsultationMark

  TConsultationMarkForm = Ten_ConsultationMark;
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
   Tkw_Form_ConsultationMark = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� ConsultationMark
----
*������ �������������*:
[code]
'aControl' �����::ConsultationMark TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ConsultationMark

// start class Tkw_Form_ConsultationMark

{$If not defined(NoScripts)}
function Tkw_Form_ConsultationMark.GetString: AnsiString;
 {-}
begin
 Result := 'en_ConsultationMark';
end;//Tkw_Form_ConsultationMark.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_gbMark_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� gbMark ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_gbMark_ControlInstance

// start class Tkw_ConsultationMark_gbMark_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_gbMark_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).gbMark);
end;//Tkw_ConsultationMark_gbMark_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_rbNotSure_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� rbNotSure ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_rbNotSure_ControlInstance

// start class Tkw_ConsultationMark_rbNotSure_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_rbNotSure_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).rbNotSure);
end;//Tkw_ConsultationMark_rbNotSure_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_rbTwo_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� rbTwo ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_rbTwo_ControlInstance

// start class Tkw_ConsultationMark_rbTwo_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_rbTwo_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).rbTwo);
end;//Tkw_ConsultationMark_rbTwo_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_rbThree_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� rbThree ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_rbThree_ControlInstance

// start class Tkw_ConsultationMark_rbThree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_rbThree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).rbThree);
end;//Tkw_ConsultationMark_rbThree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_rbFour_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� rbFour ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_rbFour_ControlInstance

// start class Tkw_ConsultationMark_rbFour_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_rbFour_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).rbFour);
end;//Tkw_ConsultationMark_rbFour_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_rbFive_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� rbFive ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_rbFive_ControlInstance

// start class Tkw_ConsultationMark_rbFive_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_rbFive_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).rbFive);
end;//Tkw_ConsultationMark_rbFive_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_pnlHelp_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnlHelp ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_pnlHelp_ControlInstance

// start class Tkw_ConsultationMark_pnlHelp_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_pnlHelp_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).pnlHelp);
end;//Tkw_ConsultationMark_pnlHelp_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_lblHelp_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lblHelp ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_lblHelp_ControlInstance

// start class Tkw_ConsultationMark_lblHelp_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_lblHelp_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).lblHelp);
end;//Tkw_ConsultationMark_lblHelp_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_gbComment_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� gbComment ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_gbComment_ControlInstance

// start class Tkw_ConsultationMark_gbComment_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_gbComment_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).gbComment);
end;//Tkw_ConsultationMark_gbComment_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ConsultationMark_mComment_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� mComment ����� ConsultationMark }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ConsultationMark_mComment_ControlInstance

// start class Tkw_ConsultationMark_mComment_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ConsultationMark_mComment_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_ConsultationMark).mComment);
end;//Tkw_ConsultationMark_mComment_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� ConsultationMark
 fm_en_ConsultationMark.SetFactory(Ten_ConsultationMark.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_ConsultationMark
 Tkw_Form_ConsultationMark.Register('�����::ConsultationMark', Ten_ConsultationMark);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_gbMark_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.gbMark', Tkw_ConsultationMark_gbMark_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_rbNotSure_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.rbNotSure', Tkw_ConsultationMark_rbNotSure_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_rbTwo_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.rbTwo', Tkw_ConsultationMark_rbTwo_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_rbThree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.rbThree', Tkw_ConsultationMark_rbThree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_rbFour_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.rbFour', Tkw_ConsultationMark_rbFour_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_rbFive_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.rbFive', Tkw_ConsultationMark_rbFive_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_pnlHelp_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.pnlHelp', Tkw_ConsultationMark_pnlHelp_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_lblHelp_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.lblHelp', Tkw_ConsultationMark_lblHelp_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_gbComment_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.gbComment', Tkw_ConsultationMark_gbComment_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ConsultationMark_mComment_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_ConsultationMark.mComment', Tkw_ConsultationMark_mComment_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.