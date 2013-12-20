unit PrimTreeAttributeSelect_astOneLevel_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimTreeAttributeSelect_astOneLevel_UserType.pas"
// Начат: 27.01.2009 11:56
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::PrimTreeAttributeSelect::astOneLevel
//
// Ситуации второго уровня
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
  ,
  PrimTreeAttributeSelect_astNone_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы astOneLevel }
  astOneLevelName = 'astOneLevel';
   { Строковый идентификатор пользовательского типа "Ситуации второго уровня" }
  astOneLevel = TvcmUserType(astNone + 1);
   { Ситуации второго уровня }

type
  Tkw_FormUserType_astOneLevel = class(TtfwInteger)
   {* Слово словаря для типа формы astOneLevel }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_astOneLevel

implementation

// start class Tkw_FormUserType_astOneLevel

{$If not defined(NoScripts)}
function Tkw_FormUserType_astOneLevel.GetInteger: Integer;
 {-}
begin
 Result := astOneLevel;
end;//Tkw_FormUserType_astOneLevel.GetInteger
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_FormUserType_astOneLevel
 Tkw_FormUserType_astOneLevel.Register('тип_формы::astOneLevel');

end.