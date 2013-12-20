unit ChatHistory_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/ChatHistory_Form.pas"
// Начат: 2009/07/28 06:34:54
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Встроенные продукты::Chat::View::Chat::BaseChat::ChatHistory
//
// История переписки
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
    { Идентификатор формы TChatHistoryForm }

type
 ChatHistoryFormDef = interface(IUnknown)
  {* Идентификатор формы ChatHistory }
   ['{5B6E40C6-04D1-47E4-B97A-0C7AB1B3D1F9}']
 end;//ChatHistoryFormDef

  TChatHistoryForm = {final form} class(TvcmContainerFormRef, ChatHistoryFormDef)
   {* История переписки }
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
    {* Слово словаря для идентификатора формы ChatHistory
----
*Пример использования*:
[code]
'aControl' форма::ChatHistory TryFocus ASSERT
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
    {* Слово словаря для доступа к экземпляру контрола HistoryEditor формы ChatHistory }
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
// Регистрация фабрики формы ChatHistory
 fm_ChatHistoryForm.SetFactory(TChatHistoryForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ChatHistory
 Tkw_Form_ChatHistory.Register('форма::ChatHistory', TChatHistoryForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ChatHistory_HistoryEditor_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatHistoryForm.HistoryEditor', Tkw_ChatHistory_HistoryEditor_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.