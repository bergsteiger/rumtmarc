unit PrimMonitorings_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/PrimMonitorings_Module.pas"
// Начат: 21.08.2009 20:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Пользовательские сервисы::Autoreferat::View::Search::PrimMonitorings
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
  DocumentUnit,
  MonitoringUnit
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactory
  {$IfEnd} //not NoVCM
  ,
  AutoreferatInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  DocumentUserTypes_dftAutoreferatAfterSearch_UserType,
  DocumentUserTypes_dftAutoreferat_UserType,
  nsLogEvent,
  l3StringIDEx,
  PrimNewsLine_nltMain_UserType,
  Common_FormDefinitions_Controls,
  PrimNewsLineOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemPrim
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  NewsLine_Form,
  fsAutoreferat,
  fsAutoreferatAfterSearch,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsOpenNewsLineEvent = class(TnsLogEvent)
 public
 // public methods
   class procedure Log;
 end;//TnsOpenNewsLineEvent

 TPrimMonitoringsModule = {abstract formspack} class(TvcmModule)
 protected
  procedure Loaded; override;
  class procedure GetEntityForms(aList : TvcmClassList); override;
 protected
 // protected methods
   procedure opOpenNewsLineTest(const aParams: IvcmTestParamsPrim);
     {* Новостная лента }
   procedure opOpenNewsLine(const aParams: IvcmExecuteParamsPrim);
     {* Новостная лента }
   procedure opOpenLegislationReviewTest(const aParams: IvcmTestParamsPrim);
     {* Обзор изменений законодательства }
   procedure opOpenLegislationReview(const aParams: IvcmExecuteParamsPrim);
     {* Обзор изменений законодательства }
 public
 // public methods
   class procedure OpenAutoreferat(const aDoc: IDocument;
     const aContainer: IvcmContainer);
     {* Открывает автореферат }
   class procedure OpenAutoreferatAfterSearch(const aList: IMonitoringList;
     const aContainer: IvcmContainer);
   class function OpenNewsLine: IvcmEntityForm;
 end;//TPrimMonitoringsModule
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base {a},
  l3MessageID,
  SysUtils {a},
  sdsAutoreferat,
  deDocInfo,
  DataAdapter
  {$If not defined(NoVCM)}
  ,
  vcmMessagesSupport
  {$IfEnd} //not NoVCM
  ,
  LoggingUnit,
  Autoreferat_InternalOperations_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  kw_Monitorings_OpenNewsLine,
  kw_Monitorings_OpenLegislationReview,
  StdRes {a},
  vcmModuleDef {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_Form_NewsLine = class(TtfwControlString)
   {* Слово словаря для идентификатора формы NewsLine
----
*Пример использования*:
[code]
'aControl' форма::NewsLine TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_NewsLine

// start class Tkw_Form_NewsLine

{$If not defined(NoScripts)}
function Tkw_Form_NewsLine.GetString: AnsiString;
 {-}
begin
 Result := 'enNewsLine';
end;//Tkw_Form_NewsLine.GetString
{$IfEnd} //not NoScripts

type
  Tkw_NewsLine_DateList_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола DateList формы NewsLine }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_NewsLine_DateList_ControlInstance

// start class Tkw_NewsLine_DateList_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_NewsLine_DateList_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TenNewsLine).DateList);
end;//Tkw_NewsLine_DateList_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class procedure TPrimMonitoringsModule.OpenAutoreferat(const aDoc: IDocument;
  const aContainer: IvcmContainer);
var
 __WasEnter : Boolean;
//#UC START# *4AA4B45E0101_4A8ECF3001D2_var*
//#UC END# *4AA4B45E0101_4A8ECF3001D2_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA4B45E0101_4A8ECF3001D2_impl*
 if (aDoc <> nil) then
  Tfs_Autoreferat.Make(TsdsAutoreferat.Make(TdeDocInfo.Make(aDoc)),
                       CheckContainer(aContainer));
//#UC END# *4AA4B45E0101_4A8ECF3001D2_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TPrimMonitoringsModule.OpenAutoreferat

class procedure TPrimMonitoringsModule.OpenAutoreferatAfterSearch(const aList: IMonitoringList;
  const aContainer: IvcmContainer);
var
 __WasEnter : Boolean;
//#UC START# *4AA4C0C500AA_4A8ECF3001D2_var*
//#UC END# *4AA4C0C500AA_4A8ECF3001D2_var*
var
 l_Document : IDocument;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA4C0C500AA_4A8ECF3001D2_impl*
 aList.GetSummary(l_Document);
 if (l_Document <> nil) then
  Tfs_AutoreferatAfterSearch.Make(TsdsAutoreferat.Make(TdeDocInfo.Make(l_Document)),
                                  CheckContainer(aContainer));
//#UC END# *4AA4C0C500AA_4A8ECF3001D2_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TPrimMonitoringsModule.OpenAutoreferatAfterSearch

class function TPrimMonitoringsModule.OpenNewsLine: IvcmEntityForm;
var
 __WasEnter : Boolean;
//#UC START# *4AB76AD20100_4A8ECF3001D2_var*
 lContainer: IvcmContainer;
 isFormAlreadyExists: boolean;
//#UC END# *4AB76AD20100_4A8ECF3001D2_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB76AD20100_4A8ECF3001D2_impl*
 lContainer := CheckContainer(nil);
 isFormAlreadyExists := (lContainer <> nil) and lContainer.HasForm(fm_enNewsLine.rFormID);

 Result := TenNewsLine.MakeSingleChild(lContainer,
                             vcmCheckAggregate(vcmMakeParams(nil,lContainer)),
                             vcm_ztNavigator);
 op_DateInterval_OpenInt.Call(Result);
 Result.SetActiveAndShowInParent;

 //http://mdp.garant.ru/pages/viewpage.action?pageId=288010012
 if (not defDataAdapter.Monitoring.IsNewsLineDefined) and (not isFormAlreadyExists) then
  vcmSay(inf_MonitoringsNotDefined, [defDataAdapter.GetDealerInfo]);

//#UC END# *4AB76AD20100_4A8ECF3001D2_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TPrimMonitoringsModule.OpenNewsLine

procedure TPrimMonitoringsModule.opOpenNewsLineTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB775AA0314_4A8ECF3001D2test_var*
//#UC END# *4AB775AA0314_4A8ECF3001D2test_var*
begin
//#UC START# *4AB775AA0314_4A8ECF3001D2test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := not defDataAdapter.AdministratorLogin and
                                  defDataAdapter.Monitoring.IsExist;
 aParams.Op.Flag[vcm_ofVisible] := aParams.Op.Flag[vcm_ofEnabled];
//#UC END# *4AB775AA0314_4A8ECF3001D2test_impl*
end;//TPrimMonitoringsModule.opOpenNewsLineTest

procedure TPrimMonitoringsModule.opOpenNewsLine(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB775AA0314_4A8ECF3001D2exec_var*
//#UC END# *4AB775AA0314_4A8ECF3001D2exec_var*
begin
//#UC START# *4AB775AA0314_4A8ECF3001D2exec_impl*
 OpenNewsLine;
 TnsOpenNewsLineEvent.Log;
//#UC END# *4AB775AA0314_4A8ECF3001D2exec_impl*
end;//TPrimMonitoringsModule.opOpenNewsLine

procedure TPrimMonitoringsModule.opOpenLegislationReviewTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB77A0E0276_4A8ECF3001D2test_var*
//#UC END# *4AB77A0E0276_4A8ECF3001D2test_var*
begin
//#UC START# *4AB77A0E0276_4A8ECF3001D2test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := defDataAdapter.LegislationReviewAvailable;
 aParams.Op.Flag[vcm_ofVisible] := aParams.Op.Flag[vcm_ofEnabled];
//#UC END# *4AB77A0E0276_4A8ECF3001D2test_impl*
end;//TPrimMonitoringsModule.opOpenLegislationReviewTest

procedure TPrimMonitoringsModule.opOpenLegislationReview(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB77A0E0276_4A8ECF3001D2exec_var*
//#UC END# *4AB77A0E0276_4A8ECF3001D2exec_var*
begin
//#UC START# *4AB77A0E0276_4A8ECF3001D2exec_impl*
 // Построение обзора законодателоьства
 TdmStdRes.OpenLegislationReview(nil);
//#UC END# *4AB77A0E0276_4A8ECF3001D2exec_impl*
end;//TPrimMonitoringsModule.opOpenLegislationReview
// start class TnsOpenNewsLineEvent

class procedure TnsOpenNewsLineEvent.Log;
//#UC START# *4B14ED2F033E_4B14ED130233_var*
//#UC END# *4B14ED2F033E_4B14ED130233_var*
begin
//#UC START# *4B14ED2F033E_4B14ED130233_impl*
 GetLogger.AddEvent(LE_OPEN_NEWS_LINE, MakeParamsList);
//#UC END# *4B14ED2F033E_4B14ED130233_impl*
end;//TnsOpenNewsLineEvent.Log

procedure TPrimMonitoringsModule.Loaded;
begin
 inherited;
 PublishOp('opOpenNewsLine', opOpenNewsLine, opOpenNewsLineTest);
 PublishOp('opOpenLegislationReview', opOpenLegislationReview, opOpenLegislationReviewTest);
end;

class procedure TPrimMonitoringsModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TenNewsLine);
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы NewsLine
 fm_enNewsLine.SetFactory(TenNewsLine.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_NewsLine
 Tkw_Form_NewsLine.Register('форма::NewsLine', TenNewsLine);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_NewsLine_DateList_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TenNewsLine.DateList', Tkw_NewsLine_DateList_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.