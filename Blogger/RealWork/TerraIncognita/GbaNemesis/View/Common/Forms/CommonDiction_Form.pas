unit CommonDiction_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/CommonDiction_Form.pas"
// Начат: 24.08.2009 20:35
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Core::Common::View::Common::PrimF1Common::CommonDiction
//
// Совет дня
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
  PrimCommonDictionOptions_Form
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
  nscTreeView
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscContextFilter
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
  Ten_CommonDiction = {final form} class(TvcmEntityFormRef, CommonDictionFormDef)
   {* Совет дня }
  Entities : TvcmEntities;
  end;//Ten_CommonDiction

  TCommonDictionForm = Ten_CommonDiction;
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
   Tkw_Form_CommonDiction = class(TtfwControlString)
    {* Слово словаря для идентификатора формы CommonDiction
----
*Пример использования*:
[code]
'aControl' форма::CommonDiction TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_CommonDiction

// start class Tkw_Form_CommonDiction

{$If not defined(NoScripts)}
function Tkw_Form_CommonDiction.GetString: AnsiString;
 {-}
begin
 Result := 'en_CommonDiction';
end;//Tkw_Form_CommonDiction.GetString
{$IfEnd} //not NoScripts

type
   Tkw_CommonDiction_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола BackgroundPanel формы CommonDiction }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_CommonDiction_BackgroundPanel_ControlInstance

// start class Tkw_CommonDiction_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_CommonDiction_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_CommonDiction).BackgroundPanel);
end;//Tkw_CommonDiction_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_CommonDiction_WordsTree_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола WordsTree формы CommonDiction }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_CommonDiction_WordsTree_ControlInstance

// start class Tkw_CommonDiction_WordsTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_CommonDiction_WordsTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_CommonDiction).WordsTree);
end;//Tkw_CommonDiction_WordsTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_CommonDiction_ContextFilter_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ContextFilter формы CommonDiction }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_CommonDiction_ContextFilter_ControlInstance

// start class Tkw_CommonDiction_ContextFilter_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_CommonDiction_ContextFilter_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_CommonDiction).ContextFilter);
end;//Tkw_CommonDiction_ContextFilter_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы CommonDiction
 fm_en_CommonDiction.SetFactory(Ten_CommonDiction.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_CommonDiction
 Tkw_Form_CommonDiction.Register('форма::CommonDiction', Ten_CommonDiction);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_CommonDiction_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_CommonDiction.BackgroundPanel', Tkw_CommonDiction_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_CommonDiction_WordsTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_CommonDiction.WordsTree', Tkw_CommonDiction_WordsTree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_CommonDiction_ContextFilter_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_CommonDiction.ContextFilter', Tkw_CommonDiction_ContextFilter_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.