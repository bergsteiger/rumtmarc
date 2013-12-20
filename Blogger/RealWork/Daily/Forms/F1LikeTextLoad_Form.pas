unit F1LikeTextLoad_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Forms"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Daily/Forms/F1LikeTextLoad_Form.pas"
// Начат: 23.09.2010 14:51
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::F1LikeTextLoad
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  vcmInterfaces,
  eeTextSourceExport,
  eeEditorExport,
  vcmUserControls,
  l3StringIDEx,
  PrimTextLoad_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  F1LikeTextLoad_ut_F1LikeTextLoad_UserType,
  evCustomTextSource,
  evCustomEditor,
  evLoadDocumentManager,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}
const
   { F1LikeTextLoadIDs }
  fm_F1LikeTextLoadForm : TvcmFormDescriptor = (rFormID : (rName : 'F1LikeTextLoadForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TF1LikeTextLoadForm }

type
 F1LikeTextLoadFormDef = interface(IUnknown)
  {* Идентификатор формы F1LikeTextLoad }
   ['{FAAC10AB-4EAF-4B43-B184-7BFAADA53CAD}']
 end;//F1LikeTextLoadFormDef

 TF1LikeTextLoadForm = {final form} class(TvcmEntityFormRef, F1LikeTextLoadFormDef)
  Entities : TvcmEntities;
 private
 // private fields
   f_Text : TeeEditorExport;
    {* Поле для свойства Text}
   f_TextSource : TeeTextSourceExport;
    {* Поле для свойства TextSource}
 protected
  procedure MakeControls; override;
 protected
 // realized methods
   function pm_GetTextSource: TevCustomTextSource; override;
   function pm_GetText: TevCustomEditor; override;
 public
 // public properties
   property Text: TeeEditorExport
     read f_Text;
   property TextSource: TeeTextSourceExport
     read f_TextSource;
 end;//TF1LikeTextLoadForm
{$IfEnd} //nsTest AND not NoVCM

implementation

{$R *.DFM}

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}

var
   { Локализуемые строки ut_F1LikeTextLoadLocalConstants }
  str_ut_F1LikeTextLoadCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_F1LikeTextLoadCaption'; rValue : 'F1LikeTextLoad');
   { Заголовок пользовательского типа "F1LikeTextLoad" }

type
  Tkw_F1LikeTextLoad_Control_Text = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола Text
----
*Пример использования*:
[code]
контрол::Text TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeTextLoad_Control_Text

// start class Tkw_F1LikeTextLoad_Control_Text

{$If not defined(NoScripts)}
function Tkw_F1LikeTextLoad_Control_Text.GetString: AnsiString;
 {-}
begin
 Result := 'Text';
end;//Tkw_F1LikeTextLoad_Control_Text.GetString
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeTextLoad_Control_Text_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола Text
----
*Пример использования*:
[code]
контрол::Text:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeTextLoad_Control_Text_Push

// start class Tkw_F1LikeTextLoad_Control_Text_Push

{$If not defined(NoScripts)}
procedure Tkw_F1LikeTextLoad_Control_Text_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('Text');
 inherited;
end;//Tkw_F1LikeTextLoad_Control_Text_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeTextLoad_Component_TextSource = class(TtfwControlString)
   {* Слово словаря для идентификатора компонента TextSource
----
*Пример использования*:
[code]
компонент::TextSource TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeTextLoad_Component_TextSource

// start class Tkw_F1LikeTextLoad_Component_TextSource

{$If not defined(NoScripts)}
function Tkw_F1LikeTextLoad_Component_TextSource.GetString: AnsiString;
 {-}
begin
 Result := 'TextSource';
end;//Tkw_F1LikeTextLoad_Component_TextSource.GetString
{$IfEnd} //not NoScripts

type
  Tkw_Form_F1LikeTextLoad = class(TtfwControlString)
   {* Слово словаря для идентификатора формы F1LikeTextLoad
----
*Пример использования*:
[code]
'aControl' форма::F1LikeTextLoad TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_F1LikeTextLoad

// start class Tkw_Form_F1LikeTextLoad

{$If not defined(NoScripts)}
function Tkw_Form_F1LikeTextLoad.GetString: AnsiString;
 {-}
begin
 Result := 'F1LikeTextLoadForm';
end;//Tkw_Form_F1LikeTextLoad.GetString
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeTextLoad_Text_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Text формы F1LikeTextLoad }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeTextLoad_Text_ControlInstance

// start class Tkw_F1LikeTextLoad_Text_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_F1LikeTextLoad_Text_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TF1LikeTextLoadForm).Text);
end;//Tkw_F1LikeTextLoad_Text_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeTextLoad_TextSource_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола TextSource формы F1LikeTextLoad }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeTextLoad_TextSource_ControlInstance

// start class Tkw_F1LikeTextLoad_TextSource_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_F1LikeTextLoad_TextSource_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TF1LikeTextLoadForm).TextSource);
end;//Tkw_F1LikeTextLoad_TextSource_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_F1LikeTextLoad_LoadManager_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола LoadManager формы F1LikeTextLoad }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_F1LikeTextLoad_LoadManager_ControlInstance

// start class Tkw_F1LikeTextLoad_LoadManager_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_F1LikeTextLoad_LoadManager_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TF1LikeTextLoadForm).LoadManager);
end;//Tkw_F1LikeTextLoad_LoadManager_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

function TF1LikeTextLoadForm.pm_GetTextSource: TevCustomTextSource;
//#UC START# *4C9B21D20187_4C9B31190392get_var*
//#UC END# *4C9B21D20187_4C9B31190392get_var*
begin
//#UC START# *4C9B21D20187_4C9B31190392get_impl*
 Result := TextSource;
//#UC END# *4C9B21D20187_4C9B31190392get_impl*
end;//TF1LikeTextLoadForm.pm_GetTextSource

function TF1LikeTextLoadForm.pm_GetText: TevCustomEditor;
//#UC START# *4C9B21E400A4_4C9B31190392get_var*
//#UC END# *4C9B21E400A4_4C9B31190392get_var*
begin
//#UC START# *4C9B21E400A4_4C9B31190392get_impl*
 Result := Text;
//#UC END# *4C9B21E400A4_4C9B31190392get_impl*
end;//TF1LikeTextLoadForm.pm_GetText

procedure TF1LikeTextLoadForm.MakeControls;
begin
 inherited;
 f_Text := TeeEditorExport.Create(Self);
 f_Text.Name := 'Text';
 f_Text.Parent := Self;
 f_TextSource := TeeTextSourceExport.Create(Self);
 f_TextSource.Name := 'TextSource';
 with AddUsertype(ut_F1LikeTextLoadName,
  str_ut_F1LikeTextLoadCaption,
  str_ut_F1LikeTextLoadCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_F1LikeTextLoadName
end;

{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_F1LikeTextLoad_Control_Text
 Tkw_F1LikeTextLoad_Control_Text.Register('контрол::Text', TeeEditorExport);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_F1LikeTextLoad_Control_Text_Push
 Tkw_F1LikeTextLoad_Control_Text_Push.Register('контрол::Text:push');
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_F1LikeTextLoad_Component_TextSource
 Tkw_F1LikeTextLoad_Component_TextSource.Register('компонент::TextSource', TeeTextSourceExport);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация фабрики формы F1LikeTextLoad
 fm_F1LikeTextLoadForm.SetFactory(TF1LikeTextLoadForm.Make);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_Form_F1LikeTextLoad
 Tkw_Form_F1LikeTextLoad.Register('форма::F1LikeTextLoad', TF1LikeTextLoadForm);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_F1LikeTextLoad_Text_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TF1LikeTextLoadForm.Text', Tkw_F1LikeTextLoad_Text_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_F1LikeTextLoad_TextSource_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TF1LikeTextLoadForm.TextSource', Tkw_F1LikeTextLoad_TextSource_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_F1LikeTextLoad_LoadManager_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TF1LikeTextLoadForm.LoadManager', Tkw_F1LikeTextLoad_LoadManager_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Инициализация str_ut_F1LikeTextLoadCaption
 str_ut_F1LikeTextLoadCaption.Init;
{$IfEnd} //nsTest AND not NoVCM

end.