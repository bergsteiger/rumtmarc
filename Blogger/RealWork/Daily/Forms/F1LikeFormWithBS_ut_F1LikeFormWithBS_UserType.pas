unit F1LikeFormWithBS_ut_F1LikeFormWithBS_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Forms"
// Модуль: "w:/common/components/gui/Garant/Daily/Forms/F1LikeFormWithBS_ut_F1LikeFormWithBS_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::F1LikeFormWithBS::ut_F1LikeFormWithBS
//
// Форма с текстовым редактором с базовым поиском.
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
   { Константы для типа формы ut_F1LikeFormWithBS }
  ut_F1LikeFormWithBSName = 'ut_F1LikeFormWithBS';
   { Строковый идентификатор пользовательского типа "Форма с текстовым редактором с базовым поиском." }
  ut_F1LikeFormWithBS = TvcmUserType(0);
   { Форма с текстовым редактором с базовым поиском. }

type
  Tkw_FormUserType_ut_F1LikeFormWithBS = class(TtfwInteger)
   {* Слово словаря для типа формы ut_F1LikeFormWithBS }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_F1LikeFormWithBS
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
// start class Tkw_FormUserType_ut_F1LikeFormWithBS

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_F1LikeFormWithBS.GetInteger: Integer;
 {-}
begin
 Result := ut_F1LikeFormWithBS;
end;//Tkw_FormUserType_ut_F1LikeFormWithBS.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_FormUserType_ut_F1LikeFormWithBS
 Tkw_FormUserType_ut_F1LikeFormWithBS.Register('тип_формы::ut_F1LikeFormWithBS');
{$IfEnd} //nsTest AND not NoVCM

end.