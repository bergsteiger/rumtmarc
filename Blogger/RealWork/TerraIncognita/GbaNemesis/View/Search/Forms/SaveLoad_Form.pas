unit SaveLoad_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// �����: ������ �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/SaveLoad_Form.pas"
// �����: 2003/10/13 14:47:21
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::CommonSearch::SaveLoad
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  Search_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  PrimSaveLoadOptionsWithUserTypes_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel,
  vtLabel,
  ExtCtrls,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}
type
  TcfSaveLoad = {final form} class(TvcmContainerFormRef, SaveLoadFormDef)
  Entities : TvcmEntities;
  end;//TcfSaveLoad

  TSaveLoadForm = TcfSaveLoad;
{$IfEnd} //not Admin

implementation

{$R *.DFM}

{$If not defined(Admin)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin

{$If not defined(Admin)}

type
   Tkw_Form_SaveLoad = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� SaveLoad
----
*������ �������������*:
[code]
'aControl' �����::SaveLoad TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_SaveLoad

// start class Tkw_Form_SaveLoad

{$If not defined(NoScripts)}
function Tkw_Form_SaveLoad.GetString: AnsiString;
 {-}
begin
 Result := 'cfSaveLoad';
end;//Tkw_Form_SaveLoad.GetString
{$IfEnd} //not NoScripts

type
   Tkw_SaveLoad_pnHeader_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pnHeader ����� SaveLoad }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_SaveLoad_pnHeader_ControlInstance

// start class Tkw_SaveLoad_pnHeader_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_SaveLoad_pnHeader_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfSaveLoad).pnHeader);
end;//Tkw_SaveLoad_pnHeader_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_SaveLoad_lbHeader_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� lbHeader ����� SaveLoad }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_SaveLoad_lbHeader_ControlInstance

// start class Tkw_SaveLoad_lbHeader_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_SaveLoad_lbHeader_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfSaveLoad).lbHeader);
end;//Tkw_SaveLoad_lbHeader_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_SaveLoad_pbHeader_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� pbHeader ����� SaveLoad }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_SaveLoad_pbHeader_ControlInstance

// start class Tkw_SaveLoad_pbHeader_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_SaveLoad_pbHeader_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfSaveLoad).pbHeader);
end;//Tkw_SaveLoad_pbHeader_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_SaveLoad_ParentZone_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ParentZone ����� SaveLoad }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_SaveLoad_ParentZone_ControlInstance

// start class Tkw_SaveLoad_ParentZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_SaveLoad_ParentZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfSaveLoad).ParentZone);
end;//Tkw_SaveLoad_ParentZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// ����������� ������� ����� SaveLoad
 fm_cfSaveLoad.SetFactory(TcfSaveLoad.Make);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// ����������� Tkw_Form_SaveLoad
 Tkw_Form_SaveLoad.Register('�����::SaveLoad', TcfSaveLoad);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// ����������� Tkw_SaveLoad_pnHeader_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfSaveLoad.pnHeader', Tkw_SaveLoad_pnHeader_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// ����������� Tkw_SaveLoad_lbHeader_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfSaveLoad.lbHeader', Tkw_SaveLoad_lbHeader_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// ����������� Tkw_SaveLoad_pbHeader_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfSaveLoad.pbHeader', Tkw_SaveLoad_pbHeader_ControlInstance);
{$IfEnd} //not Admin
{$If not defined(Admin)}
// ����������� Tkw_SaveLoad_ParentZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfSaveLoad.ParentZone', Tkw_SaveLoad_ParentZone_ControlInstance);
{$IfEnd} //not Admin

end.