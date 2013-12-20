unit PrimStyleEditorExample_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorExample_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Основные прецеденты::Settings::View::Settings::PrimStyleEditorExample
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
  {$If defined(Nemesis)}
  ,
  nscTextSource
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  Settings_Strange_Controls,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PrimStyleEditorExample_utStyleEditorExample_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimStyleEditorExampleForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_f_TextSource : TnscTextSource;
    {* Поле для свойства f_TextSource}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetFTextSource: TnscTextSource;
 protected
 // realized methods
   procedure StyleEditor_ReloadStyleTable_Execute;
   procedure StyleEditor_ReloadStyleTable(const aParams: IvcmExecuteParams);
 public
 // public properties
   property f_TextSource: TnscTextSource
     read pm_GetFTextSource;
 end;//TPrimStyleEditorExampleForm

 TvcmEntityFormRef = TPrimStyleEditorExampleForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  afwInterfaces,
  SysUtils,
  l3MessageID,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки utStyleEditorExampleLocalConstants }
  str_utStyleEditorExampleCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'utStyleEditorExampleCaption'; rValue : 'Текстовое окно редактора стилей');
   { Заголовок пользовательского типа "Текстовое окно редактора стилей" }

type
  Tkw_PrimStyleEditorExample_Component_f_TextSource = class(TtfwControlString)
   {* Слово словаря для идентификатора компонента f_TextSource
----
*Пример использования*:
[code]
компонент::f_TextSource TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimStyleEditorExample_Component_f_TextSource

// start class Tkw_PrimStyleEditorExample_Component_f_TextSource

{$If not defined(NoScripts)}
function Tkw_PrimStyleEditorExample_Component_f_TextSource.GetString: AnsiString;
 {-}
begin
 Result := 'f_TextSource';
end;//Tkw_PrimStyleEditorExample_Component_f_TextSource.GetString
{$IfEnd} //not NoScripts

function TPrimStyleEditorExampleForm.pm_GetFTextSource: TnscTextSource;
begin
 if (f_f_TextSource = nil) then
  f_f_TextSource := FindComponent('f_TextSource') As TnscTextSource;
 Result := f_f_TextSource;
end;

procedure TPrimStyleEditorExampleForm.StyleEditor_ReloadStyleTable_Execute;
//#UC START# *4AF8660E0079_4AF8665A0079exec_var*
var
 l_StyleTableSpy: IafwStyleTableSpy;
//#UC END# *4AF8660E0079_4AF8665A0079exec_var*
begin
//#UC START# *4AF8660E0079_4AF8665A0079exec_impl*
 if Supports(f_TextSource, IafwStyleTableSpy, l_StyleTableSpy) then
  try
   l_StyleTableSpy.StyleTableChanged;
  finally
   l_StyleTableSpy := nil;
  end
 else
  Assert(False, 'Can''t query "IafwStyleTableSpy" interface');
//#UC END# *4AF8660E0079_4AF8665A0079exec_impl*
end;//TPrimStyleEditorExampleForm.StyleEditor_ReloadStyleTable_Execute

procedure TPrimStyleEditorExampleForm.StyleEditor_ReloadStyleTable(const aParams: IvcmExecuteParams);
begin
 StyleEditor_ReloadStyleTable_Execute;
end;

procedure TPrimStyleEditorExampleForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_StyleEditor, nil);
  PublishOpWithResult(en_StyleEditor, op_ReloadStyleTable, StyleEditor_ReloadStyleTable, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimStyleEditorExampleForm.MakeControls;
begin
 inherited;
 with AddUsertype(utStyleEditorExampleName,
  str_utStyleEditorExampleCaption,
  str_utStyleEditorExampleCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(utStyleEditorExampleName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimStyleEditorExample_Component_f_TextSource
 Tkw_PrimStyleEditorExample_Component_f_TextSource.Register('компонент::f_TextSource', TnscTextSource);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_utStyleEditorExampleCaption
 str_utStyleEditorExampleCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.