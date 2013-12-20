unit QFLikeTextLoad_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Forms"
// Модуль: "w:/common/components/gui/Garant/Daily/Forms/QFLikeTextLoad_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::QFLikeTextLoad
//
// Форма для работы с КЗ
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
  evQueryCardInt,
  evTextSource,
  evQueryCardEditor,
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
  QFLikeTextLoad_ut_QFLikeTextLoad_UserType,
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
   { QFLikeTextLoadIDs }
  fm_QFLikeTextLoadForm : TvcmFormDescriptor = (rFormID : (rName : 'QFLikeTextLoadForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TQFLikeTextLoadForm }

type
 QFLikeTextLoadFormDef = interface(IUnknown)
  {* Идентификатор формы QFLikeTextLoad }
   ['{41C944FD-8129-43F8-89E8-75E7D231D870}']
 end;//QFLikeTextLoadFormDef

 TQFLikeTextLoadForm = {final form} class(TvcmEntityFormRef, QFLikeTextLoadFormDef)
  {* Форма для работы с КЗ }
  Entities : TvcmEntities;
 private
 // private fields
   f_QueryCard : IevQueryCard;
   f_TextSource : TevTextSource;
    {* Поле для свойства TextSource}
   f_Text : TevQueryCardEditor;
    {* Поле для свойства Text}
 protected
  procedure MakeControls; override;
 protected
 // realized methods
   function pm_GetTextSource: TevCustomTextSource; override;
   function pm_GetText: TevCustomEditor; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
 public
 // overridden public methods
   procedure AfterLoad; override;
 public
 // public properties
   property TextSource: TevTextSource
     read f_TextSource;
   property Text: TevQueryCardEditor
     read f_Text;
 end;//TQFLikeTextLoadForm
{$IfEnd} //nsTest AND not NoVCM

implementation

{$R *.DFM}

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  evQueryDocumentContainer,
  evControlContainerEX,
  nevTools,
  l3InterfacesMisc
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
   { Локализуемые строки ut_QFLikeTextLoadLocalConstants }
  str_ut_QFLikeTextLoadCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_QFLikeTextLoadCaption'; rValue : 'Форма для работы с КЗ');
   { Заголовок пользовательского типа "Форма для работы с КЗ" }

type
  Tkw_QFLikeTextLoad_Component_TextSource = class(TtfwControlString)
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
  end;//Tkw_QFLikeTextLoad_Component_TextSource

// start class Tkw_QFLikeTextLoad_Component_TextSource

{$If not defined(NoScripts)}
function Tkw_QFLikeTextLoad_Component_TextSource.GetString: AnsiString;
 {-}
begin
 Result := 'TextSource';
end;//Tkw_QFLikeTextLoad_Component_TextSource.GetString
{$IfEnd} //not NoScripts

type
  Tkw_QFLikeTextLoad_Control_Text = class(TtfwControlString)
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
  end;//Tkw_QFLikeTextLoad_Control_Text

// start class Tkw_QFLikeTextLoad_Control_Text

{$If not defined(NoScripts)}
function Tkw_QFLikeTextLoad_Control_Text.GetString: AnsiString;
 {-}
begin
 Result := 'Text';
end;//Tkw_QFLikeTextLoad_Control_Text.GetString
{$IfEnd} //not NoScripts

type
  Tkw_QFLikeTextLoad_Control_Text_Push = class(TkwBynameControlPush)
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
  end;//Tkw_QFLikeTextLoad_Control_Text_Push

// start class Tkw_QFLikeTextLoad_Control_Text_Push

{$If not defined(NoScripts)}
procedure Tkw_QFLikeTextLoad_Control_Text_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('Text');
 inherited;
end;//Tkw_QFLikeTextLoad_Control_Text_Push.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_Form_QFLikeTextLoad = class(TtfwControlString)
   {* Слово словаря для идентификатора формы QFLikeTextLoad
----
*Пример использования*:
[code]
'aControl' форма::QFLikeTextLoad TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_QFLikeTextLoad

// start class Tkw_Form_QFLikeTextLoad

{$If not defined(NoScripts)}
function Tkw_Form_QFLikeTextLoad.GetString: AnsiString;
 {-}
begin
 Result := 'QFLikeTextLoadForm';
end;//Tkw_Form_QFLikeTextLoad.GetString
{$IfEnd} //not NoScripts

type
  Tkw_QFLikeTextLoad_TextSource_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола TextSource формы QFLikeTextLoad }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_QFLikeTextLoad_TextSource_ControlInstance

// start class Tkw_QFLikeTextLoad_TextSource_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_QFLikeTextLoad_TextSource_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TQFLikeTextLoadForm).TextSource);
end;//Tkw_QFLikeTextLoad_TextSource_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_QFLikeTextLoad_Text_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Text формы QFLikeTextLoad }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_QFLikeTextLoad_Text_ControlInstance

// start class Tkw_QFLikeTextLoad_Text_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_QFLikeTextLoad_Text_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TQFLikeTextLoadForm).Text);
end;//Tkw_QFLikeTextLoad_Text_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

type
  Tkw_QFLikeTextLoad_LoadManager_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола LoadManager формы QFLikeTextLoad }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_QFLikeTextLoad_LoadManager_ControlInstance

// start class Tkw_QFLikeTextLoad_LoadManager_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_QFLikeTextLoad_LoadManager_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TQFLikeTextLoadForm).LoadManager);
end;//Tkw_QFLikeTextLoad_LoadManager_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

function TQFLikeTextLoadForm.pm_GetTextSource: TevCustomTextSource;
//#UC START# *4C9B21D20187_4CA090120212get_var*
//#UC END# *4C9B21D20187_4CA090120212get_var*
begin
//#UC START# *4C9B21D20187_4CA090120212get_impl*
 Result := TextSource;
//#UC END# *4C9B21D20187_4CA090120212get_impl*
end;//TQFLikeTextLoadForm.pm_GetTextSource

function TQFLikeTextLoadForm.pm_GetText: TevCustomEditor;
//#UC START# *4C9B21E400A4_4CA090120212get_var*
//#UC END# *4C9B21E400A4_4CA090120212get_var*
begin
//#UC START# *4C9B21E400A4_4CA090120212get_impl*
 Result := Text;
//#UC END# *4C9B21E400A4_4CA090120212get_impl*
end;//TQFLikeTextLoadForm.pm_GetText

procedure TQFLikeTextLoadForm.Cleanup;
//#UC START# *479731C50290_4CA090120212_var*
//#UC END# *479731C50290_4CA090120212_var*
begin
//#UC START# *479731C50290_4CA090120212_impl*
 inherited;
 f_QueryCard := nil;
//#UC END# *479731C50290_4CA090120212_impl*
end;//TQFLikeTextLoadForm.Cleanup

procedure TQFLikeTextLoadForm.InitControls;
//#UC START# *4A8E8F2E0195_4CA090120212_var*
//#UC END# *4A8E8F2E0195_4CA090120212_var*
begin
//#UC START# *4A8E8F2E0195_4CA090120212_impl*
 inherited;
 f_TextSource.DocumentContainer := TevQueryDocumentContainer.Make;
//#UC END# *4A8E8F2E0195_4CA090120212_impl*
end;//TQFLikeTextLoadForm.InitControls

procedure TQFLikeTextLoadForm.AfterLoad;
//#UC START# *4F15435202B5_4CA090120212_var*
var
 l_Cont: InevQueryDocumentContainer;
//#UC END# *4F15435202B5_4CA090120212_var*
begin
//#UC START# *4F15435202B5_4CA090120212_impl*
 f_QueryCard := TevControlContainerEX.Make;
 if l3IOk(f_TextSource.DocumentContainer.QueryInterface(InevQueryDocumentContainer, l_Cont)) then
  f_QueryCard.LinkView(l_Cont);
//#UC END# *4F15435202B5_4CA090120212_impl*
end;//TQFLikeTextLoadForm.AfterLoad

procedure TQFLikeTextLoadForm.MakeControls;
begin
 inherited;
 f_TextSource := TevTextSource.Create(Self);
 f_TextSource.Name := 'TextSource';
 f_Text := TevQueryCardEditor.Create(Self);
 f_Text.Name := 'Text';
 f_Text.Parent := Self;
 with AddUsertype(ut_QFLikeTextLoadName,
  str_ut_QFLikeTextLoadCaption,
  str_ut_QFLikeTextLoadCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_QFLikeTextLoadName
end;

{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_QFLikeTextLoad_Component_TextSource
 Tkw_QFLikeTextLoad_Component_TextSource.Register('компонент::TextSource', TevTextSource);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_QFLikeTextLoad_Control_Text
 Tkw_QFLikeTextLoad_Control_Text.Register('контрол::Text', TevQueryCardEditor);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_QFLikeTextLoad_Control_Text_Push
 Tkw_QFLikeTextLoad_Control_Text_Push.Register('контрол::Text:push');
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация фабрики формы QFLikeTextLoad
 fm_QFLikeTextLoadForm.SetFactory(TQFLikeTextLoadForm.Make);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_Form_QFLikeTextLoad
 Tkw_Form_QFLikeTextLoad.Register('форма::QFLikeTextLoad', TQFLikeTextLoadForm);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_QFLikeTextLoad_TextSource_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TQFLikeTextLoadForm.TextSource', Tkw_QFLikeTextLoad_TextSource_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_QFLikeTextLoad_Text_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TQFLikeTextLoadForm.Text', Tkw_QFLikeTextLoad_Text_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_QFLikeTextLoad_LoadManager_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TQFLikeTextLoadForm.LoadManager', Tkw_QFLikeTextLoad_LoadManager_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Инициализация str_ut_QFLikeTextLoadCaption
 str_ut_QFLikeTextLoadCaption.Init;
{$IfEnd} //nsTest AND not NoVCM

end.