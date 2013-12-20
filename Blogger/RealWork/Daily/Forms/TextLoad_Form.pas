unit TextLoad_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Forms"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Daily/Forms/TextLoad_Form.pas"
// Начат: 22.12.2009 16:32
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::TextLoad
//
// Форма для загрузки документа
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
  evTextSource,
  evEditor,
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
  TextLoad_ut_TextLoad_UserType,
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
   { TextLoadIDs }
  fm_TextLoadForm : TvcmFormDescriptor = (rFormID : (rName : 'TextLoadForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TTextLoadForm }

type
 TextLoadFormDef = interface(IUnknown)
  {* Идентификатор формы TextLoad }
   ['{0D52D59A-6EBD-46A6-AA44-2467ABBFDC5C}']
 end;//TextLoadFormDef

 TTextLoadForm = {final form} class(TvcmEntityFormRef, TextLoadFormDef)
  {* Форма для загрузки документа }
  Entities : TvcmEntities;
 private
 // private fields
   f_Text : TevEditor;
    {* Поле для свойства Text}
   f_TextSource : TevTextSource;
    {* Поле для свойства TextSource}
 protected
  procedure MakeControls; override;
 protected
 // realized methods
   function pm_GetTextSource: TevCustomTextSource; override;
   function pm_GetText: TevCustomEditor; override;
 public
 // public properties
   property Text: TevEditor
     read f_Text;
   property TextSource: TevTextSource
     read f_TextSource;
 end;//TTextLoadForm
{$IfEnd} //nsTest AND not NoVCM

implementation

{$R *.DFM}

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  Controls,
  Forms,
  vcmStringIDExHelper
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
   { Локализуемые строки ut_TextLoadLocalConstants }
  str_ut_TextLoadCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_TextLoadCaption'; rValue : 'Форма для загрузки документа');
   { Заголовок пользовательского типа "Форма для загрузки документа" }

type
  Tkw_TextLoad_Control_Text = class(TtfwControlString)
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
  end;//Tkw_TextLoad_Control_Text

// start class Tkw_TextLoad_Control_Text

{$If not defined(NoScripts)}
function Tkw_TextLoad_Control_Text.GetString: AnsiString;
 {-}
begin
 Result := 'Text';
end;//Tkw_TextLoad_Control_Text.GetString
{$IfEnd} //not NoScripts

type
  Tkw_TextLoad_Control_Text_Push = class(TkwBynameControlPush)
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
  end;//Tkw_TextLoad_Control_Text_Push

// start class Tkw_TextLoad_Control_Text_Push

{$If not defined(NoScripts)}
procedure Tkw_TextLoad_Control_Text_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('Text');
 inherited;
end;//Tkw_TextLoad_Control_Text_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_TextLoad_Component_TextSource = class(TtfwControlString)
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
  end;//Tkw_TextLoad_Component_TextSource

// start class Tkw_TextLoad_Component_TextSource

{$If not defined(NoScripts)}
function Tkw_TextLoad_Component_TextSource.GetString: AnsiString;
 {-}
begin
 Result := 'TextSource';
end;//Tkw_TextLoad_Component_TextSource.GetString
{$IfEnd} //not NoScripts

type
  Tkw_Form_TextLoad = class(TtfwControlString)
   {* Слово словаря для идентификатора формы TextLoad
----
*Пример использования*:
[code]
'aControl' форма::TextLoad TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_TextLoad

// start class Tkw_Form_TextLoad

{$If not defined(NoScripts)}
function Tkw_Form_TextLoad.GetString: AnsiString;
 {-}
begin
 Result := 'TextLoadForm';
end;//Tkw_Form_TextLoad.GetString
{$IfEnd} //not NoScripts

type
  Tkw_TextLoad_Text_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Text формы TextLoad }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_TextLoad_Text_ControlInstance

// start class Tkw_TextLoad_Text_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TextLoad_Text_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextLoadForm).Text);
end;//Tkw_TextLoad_Text_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_TextLoad_TextSource_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола TextSource формы TextLoad }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_TextLoad_TextSource_ControlInstance

// start class Tkw_TextLoad_TextSource_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TextLoad_TextSource_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextLoadForm).TextSource);
end;//Tkw_TextLoad_TextSource_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_TextLoad_LoadManager_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола LoadManager формы TextLoad }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_TextLoad_LoadManager_ControlInstance

// start class Tkw_TextLoad_LoadManager_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_TextLoad_LoadManager_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TTextLoadForm).LoadManager);
end;//Tkw_TextLoad_LoadManager_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

function TTextLoadForm.pm_GetTextSource: TevCustomTextSource;
//#UC START# *4C9B21D20187_4B30C7E800EEget_var*
//#UC END# *4C9B21D20187_4B30C7E800EEget_var*
begin
//#UC START# *4C9B21D20187_4B30C7E800EEget_impl*
 Result := Self.TextSource;
//#UC END# *4C9B21D20187_4B30C7E800EEget_impl*
end;//TTextLoadForm.pm_GetTextSource

function TTextLoadForm.pm_GetText: TevCustomEditor;
//#UC START# *4C9B21E400A4_4B30C7E800EEget_var*
//#UC END# *4C9B21E400A4_4B30C7E800EEget_var*
begin
//#UC START# *4C9B21E400A4_4B30C7E800EEget_impl*
 Result := Self.Text;
//#UC END# *4C9B21E400A4_4B30C7E800EEget_impl*
end;//TTextLoadForm.pm_GetText

procedure TTextLoadForm.MakeControls;
begin
 inherited;
 f_Text := TevEditor.Create(Self);
 f_Text.Name := 'Text';
 f_Text.Parent := Self;
 f_TextSource := TevTextSource.Create(Self);
 f_TextSource.Name := 'TextSource';
 with AddUsertype(ut_TextLoadName,
  str_ut_TextLoadCaption,
  str_ut_TextLoadCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_TextLoadName
end;

{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_TextLoad_Control_Text
 Tkw_TextLoad_Control_Text.Register('контрол::Text', TevEditor);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_TextLoad_Control_Text_Push
 Tkw_TextLoad_Control_Text_Push.Register('контрол::Text:push');
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_TextLoad_Component_TextSource
 Tkw_TextLoad_Component_TextSource.Register('компонент::TextSource', TevTextSource);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация фабрики формы TextLoad
 fm_TextLoadForm.SetFactory(TTextLoadForm.Make);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_Form_TextLoad
 Tkw_Form_TextLoad.Register('форма::TextLoad', TTextLoadForm);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_TextLoad_Text_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextLoadForm.Text', Tkw_TextLoad_Text_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_TextLoad_TextSource_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextLoadForm.TextSource', Tkw_TextLoad_TextSource_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_TextLoad_LoadManager_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TTextLoadForm.LoadManager', Tkw_TextLoad_LoadManager_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Инициализация str_ut_TextLoadCaption
 str_ut_TextLoadCaption.Init;
{$IfEnd} //nsTest AND not NoVCM

end.