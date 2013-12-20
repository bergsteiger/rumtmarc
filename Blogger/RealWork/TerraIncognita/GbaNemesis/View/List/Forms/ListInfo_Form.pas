unit ListInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/List/Forms/ListInfo_Form.pas"
// �����: 31.08.2009 20:51
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ������ � ���������� � ������� ����������::WorkWithList::View::List::List$FP::ListInfo
//
// ������� � ������
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
  PrimListInfoOptions_Form
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
  TefListInfo = {final form} class(TvcmEntityFormRef, ListInfoFormDef)
   {* ������� � ������ }
  Entities : TvcmEntities;
  end;//TefListInfo

  TListInfoForm = TefListInfo;
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
   Tkw_Form_ListInfo = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� ListInfo
----
*������ �������������*:
[code]
'aControl' �����::ListInfo TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ListInfo

// start class Tkw_Form_ListInfo

{$If not defined(NoScripts)}
function Tkw_Form_ListInfo.GetString: AnsiString;
 {-}
begin
 Result := 'efListInfo';
end;//Tkw_Form_ListInfo.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ListInfo_ListInfoViewer_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ListInfoViewer ����� ListInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ListInfo_ListInfoViewer_ControlInstance

// start class Tkw_ListInfo_ListInfoViewer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ListInfo_ListInfoViewer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefListInfo).ListInfoViewer);
end;//Tkw_ListInfo_ListInfoViewer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ListInfo_TextSource_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� TextSource ����� ListInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ListInfo_TextSource_ControlInstance

// start class Tkw_ListInfo_TextSource_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ListInfo_TextSource_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefListInfo).TextSource);
end;//Tkw_ListInfo_TextSource_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� ListInfo
 fm_efListInfo.SetFactory(TefListInfo.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_ListInfo
 Tkw_Form_ListInfo.Register('�����::ListInfo', TefListInfo);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ListInfo_ListInfoViewer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefListInfo.ListInfoViewer', Tkw_ListInfo_ListInfoViewer_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ListInfo_TextSource_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefListInfo.TextSource', Tkw_ListInfo_TextSource_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.