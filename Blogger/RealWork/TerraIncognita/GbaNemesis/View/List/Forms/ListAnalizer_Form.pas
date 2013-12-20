unit ListAnalizer_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/List/Forms/ListAnalizer_Form.pas"
// Начат: 31.08.2009 20:51
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::WorkWithList::View::List::List$FP::ListAnalizer
//
// Анализ списка
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
  PrimListAnalizer_Form
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
    { ListAnalizerIDs }
   fm_ListAnalizerForm : TvcmFormDescriptor = (rFormID : (rName : 'ListAnalizerForm'; rID : 0); rFactory : nil);
    { Идентификатор формы TListAnalizerForm }

type
 ListAnalizerFormDef = interface(IUnknown)
  {* Идентификатор формы ListAnalizer }
   ['{534B1ADF-ACC6-4DD9-AF54-C92914E3CBA4}']
 end;//ListAnalizerFormDef

  TListAnalizerForm = {final form} class(TvcmEntityFormRef, ListAnalizerFormDef)
   {* Анализ списка }
  Entities : TvcmEntities;
  end;//TListAnalizerForm
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
   Tkw_Form_ListAnalizer = class(TtfwControlString)
    {* Слово словаря для идентификатора формы ListAnalizer
----
*Пример использования*:
[code]
'aControl' форма::ListAnalizer TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ListAnalizer

// start class Tkw_Form_ListAnalizer

{$If not defined(NoScripts)}
function Tkw_Form_ListAnalizer.GetString: AnsiString;
 {-}
begin
 Result := 'ListAnalizerForm';
end;//Tkw_Form_ListAnalizer.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ListAnalizer_BackgroundPanel_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола BackgroundPanel формы ListAnalizer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ListAnalizer_BackgroundPanel_ControlInstance

// start class Tkw_ListAnalizer_BackgroundPanel_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ListAnalizer_BackgroundPanel_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TListAnalizerForm).BackgroundPanel);
end;//Tkw_ListAnalizer_BackgroundPanel_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ListAnalizer_ListTree_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ListTree формы ListAnalizer }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ListAnalizer_ListTree_ControlInstance

// start class Tkw_ListAnalizer_ListTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ListAnalizer_ListTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TListAnalizerForm).ListTree);
end;//Tkw_ListAnalizer_ListTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ListAnalizer
 Tkw_Form_ListAnalizer.Register('форма::ListAnalizer', TListAnalizerForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ListAnalizer_BackgroundPanel_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TListAnalizerForm.BackgroundPanel', Tkw_ListAnalizer_BackgroundPanel_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ListAnalizer_ListTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TListAnalizerForm.ListTree', Tkw_ListAnalizer_ListTree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.