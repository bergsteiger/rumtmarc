unit PrimListAnalizer_listAnalize_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/List/Forms/PrimListAnalizer_listAnalize_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Работа с документом и списком документов::WorkWithList::View::List::PrimListAnalizer::listAnalize
//
// Анализ списка
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
   { Константы для типа формы listAnalize }
  listAnalizeName = 'listAnalize';
   { Строковый идентификатор пользовательского типа "Анализ списка" }
  listAnalize = TvcmUserType(0);
   { Анализ списка }

type
  Tkw_FormUserType_listAnalize = class(TtfwInteger)
   {* Слово словаря для типа формы listAnalize }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_listAnalize
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_listAnalize

{$If not defined(NoScripts)}
function Tkw_FormUserType_listAnalize.GetInteger: Integer;
 {-}
begin
 Result := listAnalize;
end;//Tkw_FormUserType_listAnalize.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_listAnalize
 Tkw_FormUserType_listAnalize.Register('тип_формы::listAnalize');
{$IfEnd} //not Admin AND not Monitorings

end.