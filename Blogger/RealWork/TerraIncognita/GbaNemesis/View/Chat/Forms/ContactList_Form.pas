unit ContactList_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: �������� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/ContactList_Form.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 ���������� ��������::Chat::View::Chat::BaseChat::ContactList
//
// ��������� ������
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
  PrimContactListOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vtPanel
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
  ,
  eeTreeView,
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
    { ContactListIDs }
   fm_ContactListForm : TvcmFormDescriptor = (rFormID : (rName : 'ContactListForm'; rID : 0); rFactory : nil);
    { ������������� ����� TContactListForm }

type
 ContactListFormDef = interface(IUnknown)
  {* ������������� ����� ContactList }
   ['{D9641B68-E586-4058-B9BC-9E246E9D0455}']
 end;//ContactListFormDef

  TContactListForm = {final form} class(TvcmEntityFormRef, ContactListFormDef)
   {* ��������� ������ }
  Entities : TvcmEntities;
  end;//TContactListForm
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
   Tkw_Form_ContactList = class(TtfwControlString)
    {* ����� ������� ��� �������������� ����� ContactList
----
*������ �������������*:
[code]
'aControl' �����::ContactList TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ContactList

// start class Tkw_Form_ContactList

{$If not defined(NoScripts)}
function Tkw_Form_ContactList.GetString: AnsiString;
 {-}
begin
 Result := 'ContactListForm';
end;//Tkw_Form_ContactList.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ContactList_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� BackgroundPanel ����� ContactList }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ContactList_BackgroundPanel_ControlInstance

// start class Tkw_ContactList_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ContactList_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContactListForm).BackgroundPanel);
end;//Tkw_ContactList_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ContactList_ContextFilter_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� ContextFilter ����� ContactList }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ContactList_ContextFilter_ControlInstance

// start class Tkw_ContactList_ContextFilter_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ContactList_ContextFilter_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContactListForm).ContextFilter);
end;//Tkw_ContactList_ContextFilter_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ContactList_trContactList_ControlInstance = class(TtfwWord)
    {* ����� ������� ��� ������� � ���������� �������� trContactList ����� ContactList }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ContactList_trContactList_ControlInstance

// start class Tkw_ContactList_trContactList_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ContactList_trContactList_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContactListForm).trContactList);
end;//Tkw_ContactList_trContactList_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� ������� ����� ContactList
 fm_ContactListForm.SetFactory(TContactListForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_Form_ContactList
 Tkw_Form_ContactList.Register('�����::ContactList', TContactListForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ContactList_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContactListForm.BackgroundPanel', Tkw_ContactList_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ContactList_ContextFilter_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContactListForm.ContextFilter', Tkw_ContactList_ContextFilter_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ����������� Tkw_ContactList_trContactList_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContactListForm.trContactList', Tkw_ContactList_trContactList_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.