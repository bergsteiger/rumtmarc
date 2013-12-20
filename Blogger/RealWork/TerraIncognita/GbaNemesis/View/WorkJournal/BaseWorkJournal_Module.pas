unit BaseWorkJournal_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/WorkJournal/BaseWorkJournal_Module.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Основные прецеденты::WorkJournal::View::WorkJournal::BaseWorkJournal
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
  WorkJournalInterfaces,
  PrimWorkJournalOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  WorkJournal_Form,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TBaseWorkJournalModule = {formspack} class(TvcmModule)
 protected
  procedure Loaded; override;
  class procedure GetEntityForms(aList : TvcmClassList); override;
 protected
 // protected methods
   procedure opOpenJournalTest(const aParams: IvcmTestParamsPrim);
   procedure opOpenJournal(const aParams: IvcmExecuteParamsPrim);
 public
 // public methods
   class function MakeWorkJournal: IbsWorkJournal;
 end;//TBaseWorkJournalModule
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  bsWorkJournal,
  PrimWorkJournal_utWorkJournal_UserType
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  kw_WorkJournal_OpenJournal,
  vcmFormSetFactory {a},
  StdRes {a},
  vcmModuleDef {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_Form_WorkJournal = class(TtfwControlString)
   {* Слово словаря для идентификатора формы WorkJournal
----
*Пример использования*:
[code]
'aControl' форма::WorkJournal TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_WorkJournal

// start class Tkw_Form_WorkJournal

{$If not defined(NoScripts)}
function Tkw_Form_WorkJournal.GetString: AnsiString;
 {-}
begin
 Result := 'WorkJournalForm';
end;//Tkw_Form_WorkJournal.GetString
{$IfEnd} //not NoScripts

type
  Tkw_WorkJournal_JournalTree_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола JournalTree формы WorkJournal }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_WorkJournal_JournalTree_ControlInstance

// start class Tkw_WorkJournal_JournalTree_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_WorkJournal_JournalTree_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TWorkJournalForm).JournalTree);
end;//Tkw_WorkJournal_JournalTree_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class function TBaseWorkJournalModule.MakeWorkJournal: IbsWorkJournal;
var
 __WasEnter : Boolean;
//#UC START# *4A827E40004E_4A811C1A0293_var*
//#UC END# *4A827E40004E_4A811C1A0293_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4A827E40004E_4A811C1A0293_impl*
 Result := TbsWorkJournal.Make;
//#UC END# *4A827E40004E_4A811C1A0293_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TBaseWorkJournalModule.MakeWorkJournal

procedure TBaseWorkJournalModule.opOpenJournalTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4A97C7C0019C_4A811C1A0293test_var*
//#UC END# *4A97C7C0019C_4A811C1A0293test_var*
begin
//#UC START# *4A97C7C0019C_4A811C1A0293test_impl*
// Do nothing
//#UC END# *4A97C7C0019C_4A811C1A0293test_impl*
end;//TBaseWorkJournalModule.opOpenJournalTest

procedure TBaseWorkJournalModule.opOpenJournal(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4A97C7C0019C_4A811C1A0293exec_var*
var
 l_Window: IvcmEntityForm;
//#UC END# *4A97C7C0019C_4A811C1A0293exec_var*
begin
//#UC START# *4A97C7C0019C_4A811C1A0293exec_impl*
 l_Window := TWorkJournalForm.MakeSingleChild(DefaultContainer,
                               vcmMakeParams(nil, DefaultContainer),
                               vcm_ztNavigator,
                               Ord(utWorkJournal));
 l_Window.SetActiveInParent;
//#UC END# *4A97C7C0019C_4A811C1A0293exec_impl*
end;//TBaseWorkJournalModule.opOpenJournal

procedure TBaseWorkJournalModule.Loaded;
begin
 inherited;
 PublishOp('opOpenJournal', opOpenJournal, opOpenJournalTest);
end;

class procedure TBaseWorkJournalModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TWorkJournalForm);
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_WorkJournal
 Tkw_Form_WorkJournal.Register('форма::WorkJournal', TWorkJournalForm);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_WorkJournal_JournalTree_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TWorkJournalForm.JournalTree', Tkw_WorkJournal_JournalTree_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.