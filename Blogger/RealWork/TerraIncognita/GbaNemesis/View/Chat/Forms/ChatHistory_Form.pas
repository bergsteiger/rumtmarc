unit ChatHistory_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: �������� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/ChatHistory_Form.pas"
// �����: 2009/07/28 06:34:54
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������� ��������::Chat::View::Chat::BaseChat::ChatHistory
//
// ������� ���������
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
  BaseHistoryWindow_Form
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
  nscChatMemo
  {$IfEnd} //Nemesis
  ,
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
    { ChatHistoryIDs }
   fm_ChatHistoryForm : TvcmFormDescriptor = (rFormID : (rName : 'ChatHistoryForm'; rID : 0); rFactory : nil);
    { ������������� ����� TChatHistoryForm }

type
 ChatHistoryFormDef = interface(IUnknown)
  {* ������������� ����� ChatHistory }
   ['{5B6E40C6-04D1-47E4-B97A-0C7AB1B3D1F9}']
 end;//ChatHistoryFormDef

  TChatHistoryForm = {final form} class(TvcmContainerFormRef, ChatHistoryFormDef)
   {* ������� ��������� }
  Entities : TvcmEntities;
  end;//TChatHistoryForm
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
   Tkw_Form_ChatHistory = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� ChatHistory
----
*������ �������������*:
[code]
'aControl' �����::ChatHistory TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ChatHistory

// start class Tkw_Form_ChatHistory

{$If not defined(NoScripts)}
function Tkw_Form_ChatHistory.GetString: AnsiString;
 {-}
begin
 Result := 'ChatHistoryForm';
end;//Tkw_Form_ChatHistory.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ChatHistory_HistoryEditor_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� HistoryEditor ����� ChatHistory }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ChatHistory_HistoryEditor_ControlInstance

// start class Tkw_ChatHistory_HistoryEditor_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ChatHistory_HistoryEditor_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TChatHistoryForm).HistoryEditor);
end;//Tkw_ChatHistory_HistoryEditor_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� ChatHistory
 fm_ChatHistoryForm.SetFactory(TChatHistoryForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_ChatHistory
 Tkw_Form_ChatHistory.Register('�����::ChatHistory', TChatHistoryForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ChatHistory_HistoryEditor_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatHistoryForm.HistoryEditor', Tkw_ChatHistory_HistoryEditor_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.