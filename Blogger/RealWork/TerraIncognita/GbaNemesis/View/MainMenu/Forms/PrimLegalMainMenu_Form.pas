unit PrimLegalMainMenu_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainMenu/Forms/PrimLegalMainMenu_Form.pas"
// Начат: 05.10.2009 16:34
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Интерфейсные элементы::MainMenu::View::MainMenu::PrimLegalMainMenu
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
  PrimMainMenu_Form,
  MainMenuWithBaseSearchSupport_Form
  {$If defined(Nemesis)}
  ,
  nscHideField
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTreeViewHotTruck
  {$IfEnd} //Nemesis
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimLegalMainMenuForm = {abstract form} class(TMainMenuWithBaseSearchSupportForm)
 private
 // private fields
   f_hfReferences : TnscHideField;
    {* Поле для свойства hfReferences}
   f_tvReferences : TnscTreeViewHotTruck;
    {* Поле для свойства tvReferences}
   f_hfLawNews : TnscHideField;
    {* Поле для свойства hfLawNews}
   f_tvLawNews : TnscTreeViewHotTruck;
    {* Поле для свойства tvLawNews}
 private
 // private methods
   procedure UpdateMainMenuForm;
 protected
 // property methods

   function pm_GetHfReferences: TnscHideField;
   function pm_GetTvReferences: TnscTreeViewHotTruck;
   function pm_GetHfLawNews: TnscHideField;
   function pm_GetTvLawNews: TnscTreeViewHotTruck;
 protected
 // overridden protected methods
   procedure FinishDataUpdate; override;
   procedure SettingsReplaceFinish; override;
   procedure UserSettingsChanged; override;
     {* Изменились настройки пользователя }
   {$If not defined(NoVCM)}
   procedure DoInit(aFromHistory: Boolean); override;
     {* Инициализация формы. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
   procedure LoadTrees; override;
 public
 // public properties

   property hfReferences: TnscHideField
     read pm_GetHfReferences;
   property tvReferences: TnscTreeViewHotTruck
     read pm_GetTvReferences;
   property hfLawNews: TnscHideField
     read pm_GetHfLawNews;
   property tvLawNews: TnscTreeViewHotTruck
     read pm_GetTvLawNews;
 end;//TPrimLegalMainMenuForm

 TvcmEntityFormRef = TPrimLegalMainMenuForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  ,
  nsMainMenuNew,
  smLawNewsTree,
  smNewSchoolReferencesTree
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type
  Tkw_PrimLegalMainMenu_Control_hfReferences = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола hfReferences
----
*Пример использования*:
[code]
контрол::hfReferences TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimLegalMainMenu_Control_hfReferences

// start class Tkw_PrimLegalMainMenu_Control_hfReferences

{$If not defined(NoScripts)}
function Tkw_PrimLegalMainMenu_Control_hfReferences.GetString: AnsiString;
 {-}
begin
 Result := 'hfReferences';
end;//Tkw_PrimLegalMainMenu_Control_hfReferences.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimLegalMainMenu_Control_hfReferences_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола hfReferences
----
*Пример использования*:
[code]
контрол::hfReferences:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimLegalMainMenu_Control_hfReferences_Push

// start class Tkw_PrimLegalMainMenu_Control_hfReferences_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimLegalMainMenu_Control_hfReferences_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('hfReferences');
 inherited;
end;//Tkw_PrimLegalMainMenu_Control_hfReferences_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimLegalMainMenu_Control_tvReferences = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола tvReferences
----
*Пример использования*:
[code]
контрол::tvReferences TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimLegalMainMenu_Control_tvReferences

// start class Tkw_PrimLegalMainMenu_Control_tvReferences

{$If not defined(NoScripts)}
function Tkw_PrimLegalMainMenu_Control_tvReferences.GetString: AnsiString;
 {-}
begin
 Result := 'tvReferences';
end;//Tkw_PrimLegalMainMenu_Control_tvReferences.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimLegalMainMenu_Control_tvReferences_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола tvReferences
----
*Пример использования*:
[code]
контрол::tvReferences:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimLegalMainMenu_Control_tvReferences_Push

// start class Tkw_PrimLegalMainMenu_Control_tvReferences_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimLegalMainMenu_Control_tvReferences_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('tvReferences');
 inherited;
end;//Tkw_PrimLegalMainMenu_Control_tvReferences_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimLegalMainMenu_Control_hfLawNews = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола hfLawNews
----
*Пример использования*:
[code]
контрол::hfLawNews TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimLegalMainMenu_Control_hfLawNews

// start class Tkw_PrimLegalMainMenu_Control_hfLawNews

{$If not defined(NoScripts)}
function Tkw_PrimLegalMainMenu_Control_hfLawNews.GetString: AnsiString;
 {-}
begin
 Result := 'hfLawNews';
end;//Tkw_PrimLegalMainMenu_Control_hfLawNews.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimLegalMainMenu_Control_hfLawNews_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола hfLawNews
----
*Пример использования*:
[code]
контрол::hfLawNews:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimLegalMainMenu_Control_hfLawNews_Push

// start class Tkw_PrimLegalMainMenu_Control_hfLawNews_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimLegalMainMenu_Control_hfLawNews_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('hfLawNews');
 inherited;
end;//Tkw_PrimLegalMainMenu_Control_hfLawNews_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_PrimLegalMainMenu_Control_tvLawNews = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола tvLawNews
----
*Пример использования*:
[code]
контрол::tvLawNews TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimLegalMainMenu_Control_tvLawNews

// start class Tkw_PrimLegalMainMenu_Control_tvLawNews

{$If not defined(NoScripts)}
function Tkw_PrimLegalMainMenu_Control_tvLawNews.GetString: AnsiString;
 {-}
begin
 Result := 'tvLawNews';
end;//Tkw_PrimLegalMainMenu_Control_tvLawNews.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimLegalMainMenu_Control_tvLawNews_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола tvLawNews
----
*Пример использования*:
[code]
контрол::tvLawNews:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimLegalMainMenu_Control_tvLawNews_Push

// start class Tkw_PrimLegalMainMenu_Control_tvLawNews_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimLegalMainMenu_Control_tvLawNews_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('tvLawNews');
 inherited;
end;//Tkw_PrimLegalMainMenu_Control_tvLawNews_Push.DoDoIt
{$IfEnd} //not NoScripts

procedure TPrimLegalMainMenuForm.UpdateMainMenuForm;
//#UC START# *4ACC7F16032D_4AC9E7B40342_var*
//#UC END# *4ACC7F16032D_4AC9E7B40342_var*
begin
//#UC START# *4ACC7F16032D_4AC9E7B40342_impl*
 if not VCMClosing then
  if Visible then
   TdmStdRes.OpenMainMenuIfNeeded(NativeMainForm);
//#UC END# *4ACC7F16032D_4AC9E7B40342_impl*
end;//TPrimLegalMainMenuForm.UpdateMainMenuForm

function TPrimLegalMainMenuForm.pm_GetHfReferences: TnscHideField;
begin
 if (f_hfReferences = nil) then
  f_hfReferences := FindComponent('hfReferences') As TnscHideField;
 Result := f_hfReferences;
end;

function TPrimLegalMainMenuForm.pm_GetTvReferences: TnscTreeViewHotTruck;
begin
 if (f_tvReferences = nil) then
  f_tvReferences := FindComponent('tvReferences') As TnscTreeViewHotTruck;
 Result := f_tvReferences;
end;

function TPrimLegalMainMenuForm.pm_GetHfLawNews: TnscHideField;
begin
 if (f_hfLawNews = nil) then
  f_hfLawNews := FindComponent('hfLawNews') As TnscHideField;
 Result := f_hfLawNews;
end;

function TPrimLegalMainMenuForm.pm_GetTvLawNews: TnscTreeViewHotTruck;
begin
 if (f_tvLawNews = nil) then
  f_tvLawNews := FindComponent('tvLawNews') As TnscTreeViewHotTruck;
 Result := f_tvLawNews;
end;

procedure TPrimLegalMainMenuForm.FinishDataUpdate;
//#UC START# *47EA4E9002C6_4AC9E7B40342_var*
//#UC END# *47EA4E9002C6_4AC9E7B40342_var*
begin
//#UC START# *47EA4E9002C6_4AC9E7B40342_impl*
 inherited;
 Self.CCaption := nsMakeMainMenuCaption;
//#UC END# *47EA4E9002C6_4AC9E7B40342_impl*
end;//TPrimLegalMainMenuForm.FinishDataUpdate

procedure TPrimLegalMainMenuForm.SettingsReplaceFinish;
//#UC START# *47EA8B9601FE_4AC9E7B40342_var*
//#UC END# *47EA8B9601FE_4AC9E7B40342_var*
begin
//#UC START# *47EA8B9601FE_4AC9E7B40342_impl*
 inherited;
 UpdateMainMenuForm;
//#UC END# *47EA8B9601FE_4AC9E7B40342_impl*
end;//TPrimLegalMainMenuForm.SettingsReplaceFinish

procedure TPrimLegalMainMenuForm.UserSettingsChanged;
//#UC START# *4958BE910345_4AC9E7B40342_var*
//#UC END# *4958BE910345_4AC9E7B40342_var*
begin
//#UC START# *4958BE910345_4AC9E7B40342_impl*
 inherited;
 UpdateMainMenuForm;
//#UC END# *4958BE910345_4AC9E7B40342_impl*
end;//TPrimLegalMainMenuForm.UserSettingsChanged

{$If not defined(NoVCM)}
procedure TPrimLegalMainMenuForm.DoInit(aFromHistory: Boolean);
//#UC START# *49803F5503AA_4AC9E7B40342_var*
//#UC END# *49803F5503AA_4AC9E7B40342_var*
begin
//#UC START# *49803F5503AA_4AC9E7B40342_impl*
 inherited;
(* if not aFromHistory then
  if (f_BaseSearcher <> nil) then
   f_BaseSearcher.ActiveClass := nil;
 // http://mdp.garant.ru/pages/viewpage.action?pageId=269069309&focusedCommentId=296624258#comment-296624258*)
 Self.CCaption := nsMakeMainMenuCaption;
//#UC END# *49803F5503AA_4AC9E7B40342_impl*
end;//TPrimLegalMainMenuForm.DoInit
{$IfEnd} //not NoVCM

procedure TPrimLegalMainMenuForm.LoadTrees;
//#UC START# *4AC9E9EC0064_4AC9E7B40342_var*
//#UC END# *4AC9E9EC0064_4AC9E7B40342_var*
begin
//#UC START# *4AC9E9EC0064_4AC9E7B40342_impl*
 inherited;
 tvReferences.TreeStruct := TsmNewSchoolReferencesTree.Make;
 tvLawNews.TreeStruct := TsmLawNewsTree.Make;
//#UC END# *4AC9E9EC0064_4AC9E7B40342_impl*
end;//TPrimLegalMainMenuForm.LoadTrees

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimLegalMainMenu_Control_hfReferences
 Tkw_PrimLegalMainMenu_Control_hfReferences.Register('контрол::hfReferences', TnscHideField);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimLegalMainMenu_Control_hfReferences_Push
 Tkw_PrimLegalMainMenu_Control_hfReferences_Push.Register('контрол::hfReferences:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimLegalMainMenu_Control_tvReferences
 Tkw_PrimLegalMainMenu_Control_tvReferences.Register('контрол::tvReferences', TnscTreeViewHotTruck);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimLegalMainMenu_Control_tvReferences_Push
 Tkw_PrimLegalMainMenu_Control_tvReferences_Push.Register('контрол::tvReferences:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimLegalMainMenu_Control_hfLawNews
 Tkw_PrimLegalMainMenu_Control_hfLawNews.Register('контрол::hfLawNews', TnscHideField);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimLegalMainMenu_Control_hfLawNews_Push
 Tkw_PrimLegalMainMenu_Control_hfLawNews_Push.Register('контрол::hfLawNews:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimLegalMainMenu_Control_tvLawNews
 Tkw_PrimLegalMainMenu_Control_tvLawNews.Register('контрол::tvLawNews', TnscTreeViewHotTruck);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimLegalMainMenu_Control_tvLawNews_Push
 Tkw_PrimLegalMainMenu_Control_tvLawNews_Push.Register('контрол::tvLawNews:push');
{$IfEnd} //not Admin AND not Monitorings

end.