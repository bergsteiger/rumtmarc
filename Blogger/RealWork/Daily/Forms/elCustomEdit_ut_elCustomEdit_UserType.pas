unit elCustomEdit_ut_elCustomEdit_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Forms"
// Модуль: "w:/common/components/gui/Garant/Daily/Forms/elCustomEdit_ut_elCustomEdit_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::elCustomEdit::ut_elCustomEdit
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
  vcmUserControls
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы ut_elCustomEdit }
  ut_elCustomEditName = 'ut_elCustomEdit';
   { Строковый идентификатор пользовательского типа "Форма для тестирования TelCustomEdit" }
  ut_elCustomEdit = TvcmUserType(0);
   { Форма для тестирования TelCustomEdit }

type
  Tkw_FormUserType_ut_elCustomEdit = class(TtfwInteger)
   {* Слово словаря для типа формы ut_elCustomEdit }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_elCustomEdit
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
// start class Tkw_FormUserType_ut_elCustomEdit

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_elCustomEdit.GetInteger: Integer;
 {-}
begin
 Result := ut_elCustomEdit;
end;//Tkw_FormUserType_ut_elCustomEdit.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_FormUserType_ut_elCustomEdit
 Tkw_FormUserType_ut_elCustomEdit.Register('тип_формы::ut_elCustomEdit');
{$IfEnd} //nsTest AND not NoVCM

end.