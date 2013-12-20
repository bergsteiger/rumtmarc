unit Diction_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Diction/Forms/Diction_Form.pas"
// �����: 01.09.2009 13:14
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������� ��������::Diction::View::Diction::Diction$FP::Diction
//
// �������� �������
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
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PrimDictionOptions_Form,
  vtPanel
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
  
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
  TenDiction = {final form} class(TvcmEntityFormRef, DictionFormDef)
   {* �������� ������� }
  Entities : TvcmEntities;
  end;//TenDiction

  TDictionForm = TenDiction;
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
   Tkw_Form_Diction = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� Diction
----
*������ �������������*:
[code]
'aControl' �����::Diction TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Diction

// start class Tkw_Form_Diction

{$If not defined(NoScripts)}
function Tkw_Form_Diction.GetString: AnsiString;
 {-}
begin
 Result := 'enDiction';
end;//Tkw_Form_Diction.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Diction_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� BackgroundPanel ����� Diction }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Diction_BackgroundPanel_ControlInstance

// start class Tkw_Diction_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Diction_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenDiction).BackgroundPanel);
end;//Tkw_Diction_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Diction_ContextFilter_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ContextFilter ����� Diction }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Diction_ContextFilter_ControlInstance

// start class Tkw_Diction_ContextFilter_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Diction_ContextFilter_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenDiction).ContextFilter);
end;//Tkw_Diction_ContextFilter_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Diction_WordsTree_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� WordsTree ����� Diction }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Diction_WordsTree_ControlInstance

// start class Tkw_Diction_WordsTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Diction_WordsTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenDiction).WordsTree);
end;//Tkw_Diction_WordsTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� Diction
 fm_enDiction.SetFactory(TenDiction.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_Diction
 Tkw_Form_Diction.Register('�����::Diction', TenDiction);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Diction_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenDiction.BackgroundPanel', Tkw_Diction_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Diction_ContextFilter_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenDiction.ContextFilter', Tkw_Diction_ContextFilter_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Diction_WordsTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenDiction.WordsTree', Tkw_Diction_WordsTree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.