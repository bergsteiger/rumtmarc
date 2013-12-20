unit PrimTreeAttributeSelect_astFirstLevel_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/LiteSearch/Forms/PrimTreeAttributeSelect_astFirstLevel_UserType.pas"
// Начат: 27.01.2009 11:56
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Базовые определения предметной области::SearchLite::View::LiteSearch::PrimTreeAttributeSelect::astFirstLevel
//
// Ситуации первого уровня
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
  PrimTreeAttributeSelect_astOneLevel_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы astFirstLevel }
  astFirstLevelName = 'astFirstLevel';
   { Строковый идентификатор пользовательского типа "Ситуации первого уровня" }
  astFirstLevel = TvcmUserType(astOneLevel + 1);
   { Ситуации первого уровня }

type
  Tkw_FormUserType_astFirstLevel = class(TtfwInteger)
   {* Слово словаря для типа формы astFirstLevel }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_astFirstLevel

implementation

// start class Tkw_FormUserType_astFirstLevel

{$If not defined(NoScripts)}
function Tkw_FormUserType_astFirstLevel.GetInteger: Integer;
 {-}
begin
 Result := astFirstLevel;
end;//Tkw_FormUserType_astFirstLevel.GetInteger
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_FormUserType_astFirstLevel
 Tkw_FormUserType_astFirstLevel.Register('тип_формы::astFirstLevel');

end.