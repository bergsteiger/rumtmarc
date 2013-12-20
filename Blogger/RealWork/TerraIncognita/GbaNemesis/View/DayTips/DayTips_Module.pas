unit DayTips_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DayTips/DayTips_Module.pas"
// Начат: 04.09.2009 12:52
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Интерфейсные элементы::DayTips::View::DayTips::DayTips
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
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactory
  {$IfEnd} //not NoVCM
  ,
  DocumentAndListInterfaces,
  CommonDictionInterfaces,
  DayTipsInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimStartupTips_Form,
  DocumentUserTypes_dftTips_UserType,
  DocumentInterfaces,
  l3StringIDEx,
  AttributesUserTypes_fDocAttribute_UserType,
  PrimCommonDiction_utTips_UserType,
  Common_FormDefinitions_Controls,
  BaseDocumentWithAttributesInterfaces
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
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
  fsTips,
  StartupTips_Form,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TDayTipsModule = {formspack} class(TvcmModule)
 protected
  procedure Loaded; override;
  class procedure GetEntityForms(aList : TvcmClassList); override;
 protected
 // protected methods
   class procedure OpenTipsPrim(const aSDS: IsdsCommonDiction;
     const aContainer: IvcmContainer);
   procedure opShowDayTipsTest(const aParams: IvcmTestParamsPrim);
   procedure opShowDayTips(const aParams: IvcmExecuteParamsPrim);
 public
 // public methods
   class procedure OpenTip(const aDocInfo: IdeDocInfo;
     const aContainer: IvcmContainer);
     {* Открывает совет дня }
   class function ShowDayTipsAtStartup: Boolean;
 end;//TDayTipsModule
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  sdsTips,
  l3Base {a},
  l3MessageID,
  SysUtils {a},
  nsStartupTips,
  Forms,
  DataAdapter
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  kw_Tips_ShowDayTips,
  StdRes {a},
  vcmModuleDef {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_Form_StartupTips = class(TtfwControlString)
   {* Слово словаря для идентификатора формы StartupTips
----
*Пример использования*:
[code]
'aControl' форма::StartupTips TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_StartupTips

// start class Tkw_Form_StartupTips

{$If not defined(NoScripts)}
function Tkw_Form_StartupTips.GetString: AnsiString;
 {-}
begin
 Result := 'efStartupTips';
end;//Tkw_Form_StartupTips.GetString
{$IfEnd} //not NoScripts

type
  Tkw_StartupTips_ShowCheckBox_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола ShowCheckBox формы StartupTips }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_StartupTips_ShowCheckBox_ControlInstance

// start class Tkw_StartupTips_ShowCheckBox_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_StartupTips_ShowCheckBox_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TefStartupTips).ShowCheckBox);
end;//Tkw_StartupTips_ShowCheckBox_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

class procedure TDayTipsModule.OpenTip(const aDocInfo: IdeDocInfo;
  const aContainer: IvcmContainer);
var
 __WasEnter : Boolean;
//#UC START# *4AA11A2E0144_4AA0D5380056_var*
//#UC END# *4AA11A2E0144_4AA0D5380056_var*
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AA11A2E0144_4AA0D5380056_impl*
 OpenTipsPrim(TsdsTips.Make(aDocInfo), aContainer);
//#UC END# *4AA11A2E0144_4AA0D5380056_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDayTipsModule.OpenTip

class procedure TDayTipsModule.OpenTipsPrim(const aSDS: IsdsCommonDiction;
  const aContainer: IvcmContainer);
//#UC START# *4AA52EC603DC_4AA0D5380056_var*
//#UC END# *4AA52EC603DC_4AA0D5380056_var*
begin
//#UC START# *4AA52EC603DC_4AA0D5380056_impl*
 Tfs_Tips.Make(aSDS, aContainer);
//#UC END# *4AA52EC603DC_4AA0D5380056_impl*
end;//TDayTipsModule.OpenTipsPrim

class function TDayTipsModule.ShowDayTipsAtStartup: Boolean;
var
 __WasEnter : Boolean;
//#UC START# *4AB9DAAC00AC_4AA0D5380056_var*
//#UC END# *4AB9DAAC00AC_4AA0D5380056_var*
var
 l_Data : InsStartupTips;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4AB9DAAC00AC_4AA0D5380056_impl*
 Result := true;
 l_Data := TnsStartupTips.Make;
 if Assigned(l_Data) then
  TefStartupTips.MakeSingleChild(l_Data,
                                 CheckContainer(nil),
                                 vcm_ztFloating)
 else
  Result := false;
//#UC END# *4AB9DAAC00AC_4AA0D5380056_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TDayTipsModule.ShowDayTipsAtStartup

procedure TDayTipsModule.opShowDayTipsTest(const aParams: IvcmTestParamsPrim);
//#UC START# *4AB9DBA1038E_4AA0D5380056test_var*
//#UC END# *4AB9DBA1038E_4AA0D5380056test_var*
begin
//#UC START# *4AB9DBA1038E_4AA0D5380056test_impl*
 aParams.Op.Flag[vcm_ofEnabled] := defDataAdapter.NativeAdapter.MakeTipsManager.IsExist;
//#UC END# *4AB9DBA1038E_4AA0D5380056test_impl*
end;//TDayTipsModule.opShowDayTipsTest

procedure TDayTipsModule.opShowDayTips(const aParams: IvcmExecuteParamsPrim);
//#UC START# *4AB9DBA1038E_4AA0D5380056exec_var*

 function lp_HasTipsForm: Boolean;
 begin
  Result := CheckContainer(nil).HasForm(fm_en_CommonDiction.rFormID,
                                        vcm_ztNavigator,
                                        True,
                                        nil,
                                        Ord(utTips));
 end;//lp_HasTipsForm

//#UC END# *4AB9DBA1038E_4AA0D5380056exec_var*
begin
//#UC START# *4AB9DBA1038E_4AA0D5380056exec_impl*
 Assert(((aParams As IvcmExecuteParams).Data = nil),
        'Пользуйтесь фабрикой OpenTipsPrim');
(* if Supports(aParams.Data, IsdsCommonDiction, l_SDS) AND (l_SDS <> nil) then
  OpenTipsPrim(l_SDS, aParams.Container)
 else*)
 if {(l_SDS = nil) AND} not lp_HasTipsForm {or Assigned(l_SDS)} then
  OpenTip(nil, CheckContainer(nil));
//#UC END# *4AB9DBA1038E_4AA0D5380056exec_impl*
end;//TDayTipsModule.opShowDayTips

procedure TDayTipsModule.Loaded;
begin
 inherited;
 PublishOp('opShowDayTips', opShowDayTips, opShowDayTipsTest);
end;

class procedure TDayTipsModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(TefStartupTips);
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_StartupTips
 Tkw_Form_StartupTips.Register('форма::StartupTips', TefStartupTips);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_StartupTips_ShowCheckBox_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TefStartupTips.ShowCheckBox', Tkw_StartupTips_ShowCheckBox_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings

end.