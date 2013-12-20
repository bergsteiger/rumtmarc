unit MainMenu_Module;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainMenu/MainMenu_Module.pas"
// Начат: 09.09.2009 16:34
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormsPack::Class>> F1 Интерфейсные элементы::MainMenu::View::MainMenu::MainMenu$FP
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
  PrimMainMenuNew_Form,
  nsLogEvent,
  Common_FormDefinitions_Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  MainMenuNew_Form,
  vcmExternalInterfaces {a},
  vcmModule {a},
  vcmBase {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TMainMenuModule = {formspack} class(TvcmModule)
 protected
  class procedure GetEntityForms(aList : TvcmClassList); override;
 public
 // public methods
   class procedure OpenMainMenuIfNeeded(const aContainer: IvcmContainer);
   class function MainMenuChangeableMainMenuTypeSetting: Integer;
     {* Метод для получения значения настройки "Тип изменяемой части основного меню" }
   class procedure WriteMainMenuChangeableMainMenuTypeSetting(aValue: Integer);
     {* Метод для записи значения настройки "Тип изменяемой части основного меню" }
 end;//TMainMenuModule
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  afwFacade,
  nsConst,
  nsTypes,
  DataAdapter,
  nsManagers,
  LoggingUnit,
  MainMenuChangeableMainMenuTypeSettingRes,
  stMainMenuChangeableMainMenuTypeItem,
  vcmFormSetFactory {a},
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  TnsOpenMainMenuEvent = {final} class(TnsLogEvent)
  public
  // public methods
   class procedure Log;
  end;//TnsOpenMainMenuEvent

// start class TnsOpenMainMenuEvent

class procedure TnsOpenMainMenuEvent.Log;
//#UC START# *4B151A5B0057_4B151A2302D2_var*
//#UC END# *4B151A5B0057_4B151A2302D2_var*
begin
//#UC START# *4B151A5B0057_4B151A2302D2_impl*
 GetLogger.AddEvent(LE_OPEN_MAIN_MENU, MakeParamsList);
//#UC END# *4B151A5B0057_4B151A2302D2_impl*
end;//TnsOpenMainMenuEvent.Log

class procedure TMainMenuModule.OpenMainMenuIfNeeded(const aContainer: IvcmContainer);
var
 __WasEnter : Boolean;
//#UC START# *4ABB94DE033F_4AA7A1F80027_var*
//#UC END# *4ABB94DE033F_4AA7A1F80027_var*
var
 l_FormId : TvcmFormID;
begin
 __WasEnter := vcmEnterFactory;
 try
//#UC START# *4ABB94DE033F_4AA7A1F80027_impl*
 // Преемственный вид основного меню решили изжить
 // http://mdp.garant.ru/pages/viewpage.action?pageId=434744658
(* case TnsMainMenuType(afw.Settings.LoadInteger(pi_MainMenuType, dv_MainMenuType)) of
  ns_mmInherited:
   l_FormId := fm_en_SimpleMainMenu.rFormID;
  ns_mmDefault:*)
   l_FormId := fm_en_MainMenuNew.rFormID;
(* end;//case afw.Settings.LoadInteger() of *)
 if CheckContainer(aContainer).NativeMainForm.HasForm(l_FormId, vcm_ztParent) then
  Exit;
{$If not (defined(Monitorings) or defined(Admin))}
 {$IfDef vcmUseProfilers}
 ProfilersManager.MainMenu.Start;
 {$EndIf vcmUseProfilers}
 DefDataAdapter.TimeMachine.SwitchOff(True); // выключаем машину времени при открытии основного меню (CQ: OIT5-25116)

 // Преемственный вид основного меню решили изжить
 // http://mdp.garant.ru/pages/viewpage.action?pageId=434744658
(* case TnsMainMenuType(afw.Settings.LoadInteger(pi_MainMenuType, dv_MainMenuType)) of
  ns_mmInherited:
   Tfs_SimpleMainMenu.Make(TsdsSimpleMainMenu.Make,
    CheckContainer(aContainer).NativeMainForm);
  ns_mmDefault: *)
   Ten_MainMenuNew.Make(vcmMakeParams(nil, CheckContainer(aContainer))){.VCLForm.SetFocus};
(* end;//case afw.Settings.LoadInteger() of *)
{$IfEnd not (defined(Monitorings) or defined(Admin))}
 TnsOpenMainMenuEvent.Log;
//#UC END# *4ABB94DE033F_4AA7A1F80027_impl*
 finally
  if __WasEnter then
   vcmLeaveFactory;
 end;//try..finally
end;//TMainMenuModule.OpenMainMenuIfNeeded

class function TMainMenuModule.MainMenuChangeableMainMenuTypeSetting: Integer;
 {-}
begin
 if (afw.Settings = nil) then
  Result := dv_MainMenu_ChangeableMainMenuType
 else
  Result := afw.Settings.LoadInteger(pi_MainMenu_ChangeableMainMenuType, dv_MainMenu_ChangeableMainMenuType);
end;//TMainMenuModule.MainMenuChangeableMainMenuTypeSetting

class procedure TMainMenuModule.WriteMainMenuChangeableMainMenuTypeSetting(aValue: Integer);
 {-}
begin
 if (afw.Settings <> nil) then
  afw.Settings.SaveInteger(pi_MainMenu_ChangeableMainMenuType, aValue);
end;//TMainMenuModule.WriteMainMenuChangeableMainMenuTypeSetting

class procedure TMainMenuModule.GetEntityForms(aList : TvcmClassList);
begin
 inherited;
 aList.Add(Ten_MainMenuNew);
end;

{$IfEnd} //not Admin AND not Monitorings

end.