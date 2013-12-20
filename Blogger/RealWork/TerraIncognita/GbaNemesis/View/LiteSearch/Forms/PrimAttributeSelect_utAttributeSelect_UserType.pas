unit PrimAttributeSelect_utAttributeSelect_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimAttributeSelect_utAttributeSelect_UserType.pas"
// Начат: 27.01.2009 15:22
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::PrimAttributeSelect::utAttributeSelect
//
// Выбор значения атрибута
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
   { Константы для типа формы utAttributeSelect }
  utAttributeSelectName = 'utAttributeSelect';
   { Строковый идентификатор пользовательского типа "Выбор значения атрибута" }
  utAttributeSelect = TvcmUserType(0);
   { Выбор значения атрибута }

type
  Tkw_FormUserType_utAttributeSelect = class(TtfwInteger)
   {* Слово словаря для типа формы utAttributeSelect }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utAttributeSelect

implementation

// start class Tkw_FormUserType_utAttributeSelect

{$If not defined(NoScripts)}
function Tkw_FormUserType_utAttributeSelect.GetInteger: Integer;
 {-}
begin
 Result := utAttributeSelect;
end;//Tkw_FormUserType_utAttributeSelect.GetInteger
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_FormUserType_utAttributeSelect
 Tkw_FormUserType_utAttributeSelect.Register('тип_формы::utAttributeSelect');

end.