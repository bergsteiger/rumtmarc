unit ChatWindow_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Chat/Forms/ChatWindow_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Встроенные продукты::Chat::View::Chat::BaseChat::ChatWindow
//
// Переписка
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
    { Идентификатор формы TChatWindowForm }

type
 ChatWindowFormDef = interface(IUnknown)
  {* Идентификатор формы ChatWindow }
   ['{BD39AB6D-74A5-4A07-80BA-F529342D3B8A}']
 end;//ChatWindowFormDef

  TChatWindowForm = {final form} class(TvcmContainerFormRef, ChatWindowFormDef)
   {* Переписка }
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
    {* Слово словаря для идентификатора формы ChatWindow
----
*Пример использования*:
[code]
'aControl' форма::ChatWindow TryFocus ASSERT
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
    {* Слово словаря для доступа к экземпляру контрола BackgroundPanel формы ChatWindow }
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
    {* Слово словаря для доступа к экземпляру контрола BottomPanel формы ChatWindow }
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
    {* Слово словаря для доступа к экземпляру контрола BottomEditor формы ChatWindow }
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
    {* Слово словаря для доступа к экземпляру контрола TopPanel формы ChatWindow }
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
    {* Слово словаря для доступа к экземпляру контрола HistoryEditor формы ChatWindow }
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
// Регистрация фабрики формы ChatWindow
 fm_ChatWindowForm.SetFactory(TChatWindowForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ChatWindow
 Tkw_Form_ChatWindow.Register('форма::ChatWindow', TChatWindowForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ChatWindow_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.BackgroundPanel', Tkw_ChatWindow_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ChatWindow_BottomPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.BottomPanel', Tkw_ChatWindow_BottomPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ChatWindow_BottomEditor_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.BottomEditor', Tkw_ChatWindow_BottomEditor_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ChatWindow_TopPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.TopPanel', Tkw_ChatWindow_TopPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ChatWindow_HistoryEditor_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TChatWindowForm.HistoryEditor', Tkw_ChatWindow_HistoryEditor_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.