unit ContactList_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/ContactList_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Встроенные продукты::Chat::View::Chat::BaseChat::ContactList
//
// Совещание онлайн
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

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
    { Идентификатор формы TContactListForm }

type
 ContactListFormDef = interface(IUnknown)
  {* Идентификатор формы ContactList }
   ['{D9641B68-E586-4058-B9BC-9E246E9D0455}']
 end;//ContactListFormDef

  TContactListForm = {final form} class(TvcmEntityFormRef, ContactListFormDef)
   {* Совещание онлайн }
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
    {* Слово словаря для идентификатора формы ContactList
----
*Пример использования*:
[code]
'aControl' форма::ContactList TryFocus ASSERT
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
    {* Слово словаря для доступа к экземпляру контрола BackgroundPanel формы ContactList }
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
    {* Слово словаря для доступа к экземпляру контрола ContextFilter формы ContactList }
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
    {* Слово словаря для доступа к экземпляру контрола trContactList формы ContactList }
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
// Регистрация фабрики формы ContactList
 fm_ContactListForm.SetFactory(TContactListForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ContactList
 Tkw_Form_ContactList.Register('форма::ContactList', TContactListForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ContactList_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContactListForm.BackgroundPanel', Tkw_ContactList_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ContactList_ContextFilter_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContactListForm.ContextFilter', Tkw_ContactList_ContextFilter_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ContactList_trContactList_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContactListForm.trContactList', Tkw_ContactList_trContactList_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.