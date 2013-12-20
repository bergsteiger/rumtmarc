unit StyleEditorFont_ut_StyleEditorFont_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/StyleEditorFont_ut_StyleEditorFont_UserType.pas"
// Начат: 09.09.2009 16:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Settings::View::Settings::Settings::StyleEditorFont::ut_StyleEditorFont
//
// StyleEditorFont
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
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
    { Константы для типа формы ut_StyleEditorFont }
   ut_StyleEditorFontName = 'ut_StyleEditorFont';
    { Строковый идентификатор пользовательского типа "StyleEditorFont" }
   ut_StyleEditorFont = TvcmUserType(0);
    { StyleEditorFont }

type
   Tkw_FormUserType_ut_StyleEditorFont = class(TtfwInteger)
    {* Слово словаря для типа формы ut_StyleEditorFont }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_StyleEditorFont
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_StyleEditorFont

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_StyleEditorFont.GetInteger: Integer;
 {-}
begin
 Result := ut_StyleEditorFont;
end;//Tkw_FormUserType_ut_StyleEditorFont.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_StyleEditorFont
 Tkw_FormUserType_ut_StyleEditorFont.Register('тип_формы::ut_StyleEditorFont');
{$IfEnd} //not Admin AND not Monitorings

end.