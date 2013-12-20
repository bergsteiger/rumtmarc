unit Contents_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/Contents_Form.pas"
// Начат: 2003/06/20 06:51:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::Contents
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
  Common_FormDefinitions_Controls,
  PrimContentsOptions_Form
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
  vtLister
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscContextFilter
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanelView
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
  TContentsForm = {final form} class(TvcmEntityFormRef, ContentsFormDef)
  Entities : TvcmEntities;
  BackgroundPanel: TvtPanel;
  ContentsTree: TnscTreeView;
  ContextFilter: TnscContextFilter;
  end;//TContentsForm
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
   Tkw_Form_Contents = class(TtfwControlString)
    {* Слово словаря для идентификатора формы Contents
----
*Пример использования*:
[code]
'aControl' форма::Contents TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_Contents

// start class Tkw_Form_Contents

{$If not defined(NoScripts)}
function Tkw_Form_Contents.GetString: AnsiString;
 {-}
begin
 Result := 'ContentsForm';
end;//Tkw_Form_Contents.GetString
{$IfEnd} //not NoScripts

type
   Tkw_Contents_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола BackgroundPanel формы Contents }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Contents_BackgroundPanel_ControlInstance

// start class Tkw_Contents_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Contents_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContentsForm).BackgroundPanel);
end;//Tkw_Contents_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Contents_lstBookmarks_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола lstBookmarks формы Contents }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Contents_lstBookmarks_ControlInstance

// start class Tkw_Contents_lstBookmarks_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Contents_lstBookmarks_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContentsForm).lstBookmarks);
end;//Tkw_Contents_lstBookmarks_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Contents_lstComments_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола lstComments формы Contents }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Contents_lstComments_ControlInstance

// start class Tkw_Contents_lstComments_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Contents_lstComments_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContentsForm).lstComments);
end;//Tkw_Contents_lstComments_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Contents_lstExternalObjects_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола lstExternalObjects формы Contents }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Contents_lstExternalObjects_ControlInstance

// start class Tkw_Contents_lstExternalObjects_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Contents_lstExternalObjects_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContentsForm).lstExternalObjects);
end;//Tkw_Contents_lstExternalObjects_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Contents_ContentsTree_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ContentsTree формы Contents }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Contents_ContentsTree_ControlInstance

// start class Tkw_Contents_ContentsTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Contents_ContentsTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContentsForm).ContentsTree);
end;//Tkw_Contents_ContentsTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Contents_ContextFilter_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ContextFilter формы Contents }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Contents_ContextFilter_ControlInstance

// start class Tkw_Contents_ContextFilter_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Contents_ContextFilter_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContentsForm).ContextFilter);
end;//Tkw_Contents_ContextFilter_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_Contents_Tasks_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола Tasks формы Contents }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Contents_Tasks_ControlInstance

// start class Tkw_Contents_Tasks_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_Contents_Tasks_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TContentsForm).Tasks);
end;//Tkw_Contents_Tasks_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы Contents
 fm_ContentsForm.SetFactory(TContentsForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_Contents
 Tkw_Form_Contents.Register('форма::Contents', TContentsForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Contents_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContentsForm.BackgroundPanel', Tkw_Contents_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Contents_lstBookmarks_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContentsForm.lstBookmarks', Tkw_Contents_lstBookmarks_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Contents_lstComments_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContentsForm.lstComments', Tkw_Contents_lstComments_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Contents_lstExternalObjects_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContentsForm.lstExternalObjects', Tkw_Contents_lstExternalObjects_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Contents_ContentsTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContentsForm.ContentsTree', Tkw_Contents_ContentsTree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Contents_ContextFilter_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContentsForm.ContextFilter', Tkw_Contents_ContextFilter_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Contents_Tasks_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TContentsForm.Tasks', Tkw_Contents_Tasks_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.