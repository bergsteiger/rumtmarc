unit DocNumberQuery_ut_DocNumberQuery_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/DocNumberQuery_ut_DocNumberQuery_UserType.pas"
// Начат: 16.09.2009 22:49
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::DocNumberQuery::ut_DocNumberQuery
//
// Открыть документ по номеру
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
    { Константы для типа формы ut_DocNumberQuery }
   ut_DocNumberQueryName = 'ut_DocNumberQuery';
    { Строковый идентификатор пользовательского типа "Открыть документ по номеру" }
   ut_DocNumberQuery = TvcmUserType(0);
    { Открыть документ по номеру }

type
   Tkw_FormUserType_ut_DocNumberQuery = class(TtfwInteger)
    {* Слово словаря для типа формы ut_DocNumberQuery }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_DocNumberQuery
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_DocNumberQuery

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_DocNumberQuery.GetInteger: Integer;
 {-}
begin
 Result := ut_DocNumberQuery;
end;//Tkw_FormUserType_ut_DocNumberQuery.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_DocNumberQuery
 Tkw_FormUserType_ut_DocNumberQuery.Register('тип_формы::ut_DocNumberQuery');
{$IfEnd} //not Admin AND not Monitorings

end.