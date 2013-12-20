unit F1LikeTextLoad_ut_F1LikeTextLoad_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Forms"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Daily/Forms/F1LikeTextLoad_ut_F1LikeTextLoad_UserType.pas"
// Начат: 23.09.2010 14:51
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi Operations For Tests::TestForms::Forms::Everest::F1LikeTextLoad::ut_F1LikeTextLoad
//
// F1LikeTextLoad
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
   { Константы для типа формы ut_F1LikeTextLoad }
  ut_F1LikeTextLoadName = 'ut_F1LikeTextLoad';
   { Строковый идентификатор пользовательского типа "F1LikeTextLoad" }
  ut_F1LikeTextLoad = TvcmUserType(0);
   { F1LikeTextLoad }

type
  Tkw_FormUserType_ut_F1LikeTextLoad = class(TtfwInteger)
   {* Слово словаря для типа формы ut_F1LikeTextLoad }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_F1LikeTextLoad
{$IfEnd} //nsTest AND not NoVCM

implementation

{$If defined(nsTest) AND not defined(NoVCM)}
// start class Tkw_FormUserType_ut_F1LikeTextLoad

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_F1LikeTextLoad.GetInteger: Integer;
 {-}
begin
 Result := ut_F1LikeTextLoad;
end;//Tkw_FormUserType_ut_F1LikeTextLoad.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //nsTest AND not NoVCM

initialization
{$If defined(nsTest) AND not defined(NoVCM)}
// Регистрация Tkw_FormUserType_ut_F1LikeTextLoad
 Tkw_FormUserType_ut_F1LikeTextLoad.Register('тип_формы::ut_F1LikeTextLoad');
{$IfEnd} //nsTest AND not NoVCM

end.