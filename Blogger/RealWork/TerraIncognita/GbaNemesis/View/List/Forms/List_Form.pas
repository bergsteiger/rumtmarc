unit List_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/List/Forms/List_Form.pas"
// �����: 31.08.2009 20:51
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalContainer::Class>> F1 ������ � ���������� � ������� ����������::WorkWithList::View::List::List$FP::List
//
// ������
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
  PrimListOptions_Form
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
  nscDocumentListTreeView
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscReminder
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscRemindersLine
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscEditor
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
  TefList = {final form} class(TvcmContainerFormRef, ListFormDef)
   {* ������ }
  Entities : TvcmEntities;
  end;//TefList

  TListForm = TefList;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  PresentationInterfaces,
  resWarnImages,
  Base_Operations_Strange_Controls,
  Base_Operations_Editions_Controls,
  Search_Strange_Controls,
  WorkWithList_ListOperations_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_List = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� List
----
*������ �������������*:
[code]
'aControl' �����::List TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_List

// start class Tkw_Form_List

{$If not defined(NoScripts)}
function Tkw_Form_List.GetString: AnsiString;
 {-}
begin
 Result := 'efList';
end;//Tkw_Form_List.GetString
{$IfEnd} //not NoScripts

type
   Tkw_List_remListFiltered_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� remListFiltered ����� List }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_List_remListFiltered_ControlInstance

// start class Tkw_List_remListFiltered_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_List_remListFiltered_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefList).remListFiltered);
end;//Tkw_List_remListFiltered_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_List_remListModified_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� remListModified ����� List }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_List_remListModified_ControlInstance

// start class Tkw_List_remListModified_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_List_remListModified_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefList).remListModified);
end;//Tkw_List_remListModified_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_List_remTimeMachineWarning_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� remTimeMachineWarning ����� List }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_List_remTimeMachineWarning_ControlInstance

// start class Tkw_List_remTimeMachineWarning_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_List_remTimeMachineWarning_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefList).remTimeMachineWarning);
end;//Tkw_List_remTimeMachineWarning_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_List_RemindersLine_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� RemindersLine ����� List }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_List_RemindersLine_ControlInstance

// start class Tkw_List_RemindersLine_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_List_RemindersLine_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefList).RemindersLine);
end;//Tkw_List_RemindersLine_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_List_EmptyListEditor_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� EmptyListEditor ����� List }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_List_EmptyListEditor_ControlInstance

// start class Tkw_List_EmptyListEditor_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_List_EmptyListEditor_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefList).EmptyListEditor);
end;//Tkw_List_EmptyListEditor_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_List_ListPanel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ListPanel ����� List }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_List_ListPanel_ControlInstance

// start class Tkw_List_ListPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_List_ListPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefList).ListPanel);
end;//Tkw_List_ListPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_List_tvList_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� tvList ����� List }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_List_tvList_ControlInstance

// start class Tkw_List_tvList_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_List_tvList_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefList).tvList);
end;//Tkw_List_tvList_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_List_cfList_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� cfList ����� List }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_List_cfList_ControlInstance

// start class Tkw_List_cfList_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_List_cfList_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefList).cfList);
end;//Tkw_List_cfList_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� List
 fm_efList.SetFactory(TefList.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_List
 Tkw_Form_List.Register('�����::List', TefList);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_List_remListFiltered_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefList.remListFiltered', Tkw_List_remListFiltered_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_List_remListModified_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefList.remListModified', Tkw_List_remListModified_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_List_remTimeMachineWarning_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefList.remTimeMachineWarning', Tkw_List_remTimeMachineWarning_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_List_RemindersLine_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefList.RemindersLine', Tkw_List_RemindersLine_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_List_EmptyListEditor_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefList.EmptyListEditor', Tkw_List_EmptyListEditor_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_List_ListPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefList.ListPanel', Tkw_List_ListPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_List_tvList_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefList.tvList', Tkw_List_tvList_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_List_cfList_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefList.cfList', Tkw_List_cfList_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.