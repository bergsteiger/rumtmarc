unit ListInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/List/Forms/ListInfo_Form.pas"
// Начат: 31.08.2009 20:51
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::WorkWithList::View::List::List$FP::ListInfo
//
// Справка к списку
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
  PrimListInfoOptions_Form
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
  nscEditor
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTextSource
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
  TefListInfo = {final form} class(TvcmEntityFormRef, ListInfoFormDef)
   {* Справка к списку }
  Entities : TvcmEntities;
  end;//TefListInfo

  TListInfoForm = TefListInfo;
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
   Tkw_Form_ListInfo = class(TtfwControlString)
    {* Слово словаря для идентификатора формы ListInfo
----
*Пример использования*:
[code]
'aControl' форма::ListInfo TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ListInfo

// start class Tkw_Form_ListInfo

{$If not defined(NoScripts)}
function Tkw_Form_ListInfo.GetString: AnsiString;
 {-}
begin
 Result := 'efListInfo';
end;//Tkw_Form_ListInfo.GetString
{$IfEnd} //not NoScripts

type
   Tkw_ListInfo_ListInfoViewer_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола ListInfoViewer формы ListInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ListInfo_ListInfoViewer_ControlInstance

// start class Tkw_ListInfo_ListInfoViewer_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ListInfo_ListInfoViewer_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefListInfo).ListInfoViewer);
end;//Tkw_ListInfo_ListInfoViewer_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
   Tkw_ListInfo_TextSource_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола TextSource формы ListInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_ListInfo_TextSource_ControlInstance

// start class Tkw_ListInfo_TextSource_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_ListInfo_TextSource_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefListInfo).TextSource);
end;//Tkw_ListInfo_TextSource_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы ListInfo
 fm_efListInfo.SetFactory(TefListInfo.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ListInfo
 Tkw_Form_ListInfo.Register('форма::ListInfo', TefListInfo);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ListInfo_ListInfoViewer_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefListInfo.ListInfoViewer', Tkw_ListInfo_ListInfoViewer_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_ListInfo_TextSource_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefListInfo.TextSource', Tkw_ListInfo_TextSource_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.