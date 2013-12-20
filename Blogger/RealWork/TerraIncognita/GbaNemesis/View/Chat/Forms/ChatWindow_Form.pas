unit ChatWindow_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: �������� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/ChatWindow_Form.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������� ��������::Chat::View::Chat::BaseChat::ChatWindow
//
// ���������
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
  BaseChatWindowOptions_Form
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
  vtProportionalPanel,
  vtSizeablePanel,
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
    { ChatWindowIDs }
   fm_ChatWindowForm : TvcmFormDescriptor = (rFormID : (rName : 'ChatWindowForm'; rID : 0); rFactory : nil);
    { ������������� ����� TChatWindowForm }

type
 ChatWindowFormDef = interface(IUnknown)
  {* ������������� ����� ChatWindow }
   ['{BD39AB6D-74A5-4A07-80BA-F529342D3B8A}']
 end;//ChatWindowFormDef

  TChatWindowForm = {final form} class(TvcmContainerFormRef, ChatWindowFormDef)
   {* ��������� }
  Entities : TvcmEntities;
  end;//TChatWindowForm
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
   Tkw_Form_ChatWindow = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� ChatWindow
----
*������ �������������*:
[code]
'aControl' �����::ChatWindow TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ChatWindow

// start class Tkw_Form_ChatWindow

{$If not defined(NoScripts)}
function Tkw_Form_ChatWindow.GetString: AnsiString;
 {-}
begin
 Result := 'ChatWindowForm';
end;//Tkw_Form_ChatWindow.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ChatWindow_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� BackgroundPanel ����� ChatWindow }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ChatWindow_BackgroundPanel_ControlInstance

// start class Tkw_ChatWindow_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ChatWindow_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TChatWindowForm).BackgroundPanel);
end;//Tkw_ChatWindow_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ChatWindow_BottomPanel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� BottomPanel ����� ChatWindow }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ChatWindow_BottomPanel_ControlInstance

// start class Tkw_ChatWindow_BottomPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ChatWindow_BottomPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TChatWindowForm).BottomPanel);
end;//Tkw_ChatWindow_BottomPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ChatWindow_BottomEditor_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� BottomEditor ����� ChatWindow }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ChatWindow_BottomEditor_ControlInstance

// start class Tkw_ChatWindow_BottomEditor_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ChatWindow_BottomEditor_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TChatWindowForm).BottomEditor);
end;//Tkw_ChatWindow_BottomEditor_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ChatWindow_TopPanel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� TopPanel ����� ChatWindow }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ChatWindow_TopPanel_ControlInstance

// start class Tkw_ChatWindow_TopPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ChatWindow_TopPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TChatWindowForm).TopPanel);
end;//Tkw_ChatWindow_TopPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ChatWindow_HistoryEditor_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� HistoryEditor ����� ChatWindow }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ChatWindow_HistoryEditor_ControlInstance

// start class Tkw_ChatWindow_HistoryEditor_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ChatWindow_HistoryEditor_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TChatWindowForm).HistoryEditor);
end;//Tkw_ChatWindow_HistoryEditor_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� ChatWindow
 fm_ChatWindowForm.SetFactory(TChatWindowForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_ChatWindow
 Tkw_Form_ChatWindow.Register('�����::ChatWindow', TChatWindowForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ChatWindow_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.BackgroundPanel', Tkw_ChatWindow_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ChatWindow_BottomPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.BottomPanel', Tkw_ChatWindow_BottomPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ChatWindow_BottomEditor_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.BottomEditor', Tkw_ChatWindow_BottomEditor_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ChatWindow_TopPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.TopPanel', Tkw_ChatWindow_TopPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ChatWindow_HistoryEditor_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.HistoryEditor', Tkw_ChatWindow_HistoryEditor_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.