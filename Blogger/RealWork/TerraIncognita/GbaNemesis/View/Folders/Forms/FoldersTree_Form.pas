unit FoldersTree_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/FoldersTree_Form.pas"
// �����: 27.08.2009 20:37
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 �������� ����������::Folders::View::Folders::PrimFolders$UC::FoldersTree
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
  PrimFoldersTreeOptions_Form
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
  TenFoldersTree = {final form} class(TvcmEntityFormRef, FoldersTreeFormDef)
  Entities : TvcmEntities;
  end;//TenFoldersTree

  TFoldersTreeForm = TenFoldersTree;
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
   Tkw_Form_FoldersTree = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� FoldersTree
----
*������ �������������*:
[code]
'aControl' �����::FoldersTree TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_FoldersTree

// start class Tkw_Form_FoldersTree

{$If not defined(NoScripts)}
function Tkw_Form_FoldersTree.GetString: AnsiString;
 {-}
begin
 Result := 'enFoldersTree';
end;//Tkw_Form_FoldersTree.GetString
{$IfEnd} //not NoScripts

type
   Tkw_FoldersTree_FoldersTree_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� FoldersTree ����� FoldersTree }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FoldersTree_FoldersTree_ControlInstance

// start class Tkw_FoldersTree_FoldersTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_FoldersTree_FoldersTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenFoldersTree).FoldersTree);
end;//Tkw_FoldersTree_FoldersTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� FoldersTree
 fm_enFoldersTree.SetFactory(TenFoldersTree.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_FoldersTree
 Tkw_Form_FoldersTree.Register('�����::FoldersTree', TenFoldersTree);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_FoldersTree_FoldersTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenFoldersTree.FoldersTree', Tkw_FoldersTree_FoldersTree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.