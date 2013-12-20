unit PrimRubricator_utRubricatorList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Rubricator/Forms/PrimRubricator_utRubricatorList_UserType.pas"
// Начат: 08.09.2009 20:56
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Rubricator::View::Rubricator::PrimRubricator::utRubricatorList
//
// Правовой навигатор (линейное представление)
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
   { Константы для типа формы utRubricatorList }
  utRubricatorListName = 'utRubricatorList';
   { Строковый идентификатор пользовательского типа "Правовой навигатор (линейное представление)" }
  utRubricatorList = TvcmUserType(0);
   { Правовой навигатор (линейное представление) }

type
  Tkw_FormUserType_utRubricatorList = class(TtfwInteger)
   {* Слово словаря для типа формы utRubricatorList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utRubricatorList
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utRubricatorList

{$If not defined(NoScripts)}
function Tkw_FormUserType_utRubricatorList.GetInteger: Integer;
 {-}
begin
 Result := utRubricatorList;
end;//Tkw_FormUserType_utRubricatorList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utRubricatorList
 Tkw_FormUserType_utRubricatorList.Register('тип_формы::utRubricatorList');
{$IfEnd} //not Admin AND not Monitorings

end.