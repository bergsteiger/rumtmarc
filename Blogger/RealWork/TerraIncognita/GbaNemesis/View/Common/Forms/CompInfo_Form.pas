unit CompInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/CompInfo_Form.pas"
// �����: 24.08.2009 20:35
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::CompInfo
//
// ���������� � ���������
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
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  Common_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PrimCompInfo_Form,
  CompInfo_ut_CompInfo_UserType
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  ,
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
  TenCompInfo = {final form} class(TvcmEntityFormRef, CompInfoFormDef)
   {* ���������� � ��������� }
  Entities : TvcmEntities;
  protected
   procedure MakeControls; override;
  end;//TenCompInfo

  TCompInfoForm = TenCompInfo;
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
  ,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
    { ������������ ������ ut_CompInfoLocalConstants }
   str_ut_CompInfoCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_CompInfoCaption'; rValue : '���������� � ���������');
    { ��������� ����������������� ���� "���������� � ���������" }

type
   Tkw_Form_CompInfo = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� CompInfo
----
*������ �������������*:
[code]
'aControl' �����::CompInfo TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_CompInfo

// start class Tkw_Form_CompInfo

{$If not defined(NoScripts)}
function Tkw_Form_CompInfo.GetString: AnsiString;
 {-}
begin
 Result := 'enCompInfo';
end;//Tkw_Form_CompInfo.GetString
{$IfEnd} //not NoScripts

type
   Tkw_CompInfo_tvComplectInfo_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� tvComplectInfo ����� CompInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_CompInfo_tvComplectInfo_ControlInstance

// start class Tkw_CompInfo_tvComplectInfo_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_CompInfo_tvComplectInfo_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenCompInfo).tvComplectInfo);
end;//Tkw_CompInfo_tvComplectInfo_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TenCompInfo.MakeControls;
begin
 inherited;
 with AddUsertype(ut_CompInfoName,
  str_ut_CompInfoCaption,
  str_ut_CompInfoCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_CompInfoName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� CompInfo
 fm_enCompInfo.SetFactory(TenCompInfo.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_CompInfo
 Tkw_Form_CompInfo.Register('�����::CompInfo', TenCompInfo);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_CompInfo_tvComplectInfo_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenCompInfo.tvComplectInfo', Tkw_CompInfo_tvComplectInfo_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_ut_CompInfoCaption
 str_ut_CompInfoCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.