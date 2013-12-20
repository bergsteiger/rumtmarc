unit FoldersInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ������ �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/FoldersInfo_Form.pas"
// �����: 2004/07/05 08:05:59
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 �������� ����������::Folders::View::Folders::PrimFolders$UC::FoldersInfo
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
  ,
  PrimFoldersInfoOptions_Form
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
    { FoldersInfoIDs }
   fm_cfFoldersInfo : TvcmFormDescriptor = (rFormID : (rName : 'cfFoldersInfo'; rID : 0); rFactory : nil);
    { ������������� ����� TcfFoldersInfo }

type
 FoldersInfoFormDef = interface(IUnknown)
  {* ������������� ����� FoldersInfo }
   ['{A7FC5777-8418-45E1-9EE1-511BCC3B18B5}']
 end;//FoldersInfoFormDef

  TcfFoldersInfo = {final form} class(TvcmContainerFormRef, FoldersInfoFormDef)
  Entities : TvcmEntities;
  ChildZone: TvtPanel;
  end;//TcfFoldersInfo

  TFoldersInfoForm = TcfFoldersInfo;
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
   Tkw_Form_FoldersInfo = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� FoldersInfo
----
*������ �������������*:
[code]
'aControl' �����::FoldersInfo TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_FoldersInfo

// start class Tkw_Form_FoldersInfo

{$If not defined(NoScripts)}
function Tkw_Form_FoldersInfo.GetString: AnsiString;
 {-}
begin
 Result := 'cfFoldersInfo';
end;//Tkw_Form_FoldersInfo.GetString
{$IfEnd} //not NoScripts

type
   Tkw_FoldersInfo_ChildZone_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ChildZone ����� FoldersInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersInfo_ChildZone_ControlInstance

// start class Tkw_FoldersInfo_ChildZone_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersInfo_ChildZone_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TcfFoldersInfo).ChildZone);
end;//Tkw_FoldersInfo_ChildZone_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� FoldersInfo
 fm_cfFoldersInfo.SetFactory(TcfFoldersInfo.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_FoldersInfo
 Tkw_Form_FoldersInfo.Register('�����::FoldersInfo', TcfFoldersInfo);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FoldersInfo_ChildZone_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TcfFoldersInfo.ChildZone', Tkw_FoldersInfo_ChildZone_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.