unit PrimSelectedAttributes_utSelectedAttributes_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimSelectedAttributes_utSelectedAttributes_UserType.pas"
// Начат: 27.01.2009 11:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::PrimSelectedAttributes::utSelectedAttributes
//
// Поиск: Выбранные значения реквизита
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

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
   { Константы для типа формы utSelectedAttributes }
  utSelectedAttributesName = 'utSelectedAttributes';
   { Строковый идентификатор пользовательского типа "Поиск: Выбранные значения реквизита" }
  utSelectedAttributes = TvcmUserType(0);
   { Поиск: Выбранные значения реквизита }

type
  Tkw_FormUserType_utSelectedAttributes = class(TtfwInteger)
   {* Слово словаря для типа формы utSelectedAttributes }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utSelectedAttributes

implementation

// start class Tkw_FormUserType_utSelectedAttributes

{$If not defined(NoScripts)}
function Tkw_FormUserType_utSelectedAttributes.GetInteger: Integer;
 {-}
begin
 Result := utSelectedAttributes;
end;//Tkw_FormUserType_utSelectedAttributes.GetInteger
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_FormUserType_utSelectedAttributes
 Tkw_FormUserType_utSelectedAttributes.Register('тип_формы::utSelectedAttributes');

end.