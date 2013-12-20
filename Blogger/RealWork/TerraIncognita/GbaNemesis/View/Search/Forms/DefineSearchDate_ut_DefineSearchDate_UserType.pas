unit DefineSearchDate_ut_DefineSearchDate_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/DefineSearchDate_ut_DefineSearchDate_UserType.pas"
// Начат: 22.09.2009 16:49
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Search::View::Search::Search::DefineSearchDate::ut_DefineSearchDate
//
// Дата
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
    { Константы для типа формы ut_DefineSearchDate }
   ut_DefineSearchDateName = 'ut_DefineSearchDate';
    { Строковый идентификатор пользовательского типа "Дата" }
   ut_DefineSearchDate = TvcmUserType(0);
    { Дата }

type
   Tkw_FormUserType_ut_DefineSearchDate = class(TtfwInteger)
    {* Слово словаря для типа формы ut_DefineSearchDate }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_DefineSearchDate
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_DefineSearchDate

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_DefineSearchDate.GetInteger: Integer;
 {-}
begin
 Result := ut_DefineSearchDate;
end;//Tkw_FormUserType_ut_DefineSearchDate.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_DefineSearchDate
 Tkw_FormUserType_ut_DefineSearchDate.Register('тип_формы::ut_DefineSearchDate');
{$IfEnd} //not Admin AND not Monitorings

end.