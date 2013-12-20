unit elCustomEdit_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Forms"
// Модуль: "w:/common/components/gui/Garant/Daily/Forms/elCustomEdit_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::elCustomEdit
//
// Форма для тестирования TelCustomEdit
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
  elCustomEdit,
  vcmEntityForm,
  vcmUserControls,
  l3StringIDEx
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
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  elCustomEdit_ut_elCustomEdit_UserType,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a}
  ;
{$IfEnd} //nsTest AND not NoVCM

{$If defined(nsTest) AND not defined(NoVCM)}
const
   { elCustomEditIDs }
  fm_elCustomEditForm : TvcmFormDescriptor = (rFormID : (rName : 'elCustomEditForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TelCustomEditForm }

type
 elCustomEditFormDef = interface(IUnknown)
  {* Идентификатор формы elCustomEdit }
   ['{83F3F220-AFBC-45DC-8C59-16D7972E06BB}']
 end;//elCustomEditFormDef

 TelCustomEditForm = {final form} class(TvcmEntityForm, elCustomEditFormDef)
  {* Форма для тестирования TelCustomEdit }
  Entities : TvcmEntities;
 private
 // private fields
   f_Edit : TelCustomEdit;
    {* Поле для свойства Edit}
 protected
  procedure MakeControls; override;
 protected
 // overridden protected methods
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
 public
 // public properties
   property Edit: TelCustomEdit
     read f_Edit;
 end;//TelCustomEditForm
{$IfEnd} //nsTest AND not NoVCM

implementation

{$R *.DFM}

{$If defined(nsTest) AND not defined(NoVCM)}
uses
  Forms
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
   { Локализуемые строки ut_elCustomEditLocalConstants }
  str_ut_elCustomEditCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_elCustomEditCaption'; rValue : 'Форма для тестирования TelCustomEdit');
   { Заголовок пользовательского типа "Форма для тестирования TelCustomEdit" }

type
  Tkw_elCustomEdit_Component_Edit = class(TtfwControlString)
   {* Слово словаря для идентификатора компонента Edit
----
*Пример использования*:
[code]
компонент::Edit TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_elCustomEdit_Component_Edit

// start class Tkw_elCustomEdit_Component_Edit

{$If not defined(NoScripts)}
function Tkw_elCustomEdit_Component_Edit.GetString: AnsiString;
 {-}
begin
 Result := 'Edit';
end;//Tkw_elCustomEdit_Component_Edit.GetString
{$IfEnd} //not NoScripts

type
  Tkw_Form_elCustomEdit = class(TtfwControlString)
   {* Слово словаря для идентификатора формы elCustomEdit
----
*Пример использования*:
[code]
'aControl' форма::elCustomEdit TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_Form_elCustomEdit

// start class Tkw_Form_elCustomEdit

{$If not defined(NoScripts)}
function Tkw_Form_elCustomEdit.GetString: AnsiString;
 {-}
begin
 Result := 'elCustomEditForm';
end;//Tkw_Form_elCustomEdit.GetString
{$IfEnd} //not NoScripts

type
  Tkw_elCustomEdit_Edit_ControlInstance = class(TtfwWord)
   {* Слово словаря для доступа к экземпляру контрола Edit формы elCustomEdit }
  protected
  // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_elCustomEdit_Edit_ControlInstance

// start class Tkw_elCustomEdit_Edit_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_elCustomEdit_Edit_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As TelCustomEditForm).Edit);
end;//Tkw_elCustomEdit_Edit_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure TelCustomEditForm.InitControls;
//#UC START# *4A8E8F2E0195_4BCE9D210265_var*
//#UC END# *4A8E8F2E0195_4BCE9D210265_var*
begin
//#UC START# *4A8E8F2E0195_4BCE9D210265_impl*
 inherited;
 WindowState := wsMaximized;
 Edit.Left := 0;
 Edit.Top := 0;
//#UC END# *4A8E8F2E0195_4BCE9D210265_impl*
end;//TelCustomEditForm.InitControls

procedure TelCustomEditForm.MakeControls;
begin
 inherited;
 f_Edit := TelCustomEdit.Create(Self);
 f_Edit.Name := 'Edit';
 with AddUsertype(ut_elCustomEditName,
  str_ut_elCustomEditCaption,
  str_ut_elCustomEditCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_elCustomEditName
end;

{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_elCustomEdit_Component_Edit
 Tkw_elCustomEdit_Component_Edit.Register('компонент::Edit', TelCustomEdit);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация фабрики формы elCustomEdit
 fm_elCustomEditForm.SetFactory(TelCustomEditForm.Make);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_Form_elCustomEdit
 Tkw_Form_elCustomEdit.Register('форма::elCustomEdit', TelCustomEditForm);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_elCustomEdit_Edit_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.TelCustomEditForm.Edit', Tkw_elCustomEdit_Edit_ControlInstance);
{$IfEnd} //nsTest AND not NoVCM
{$If defined(nsTest) AND not defined(NoVCM)}
// Инициализация str_ut_elCustomEditCaption
 str_ut_elCustomEditCaption.Init;
{$IfEnd} //nsTest AND not NoVCM

end.