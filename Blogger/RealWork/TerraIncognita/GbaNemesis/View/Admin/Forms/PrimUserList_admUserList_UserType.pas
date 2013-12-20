unit PrimUserList_admUserList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Тучнин Д.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimUserList_admUserList_UserType.pas"
// Начат: 15.08.2005 19.00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Администратор::Admin::View::Admin::PrimUserList::admUserList
//
// Список пользователей
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Admin)}
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
   { Константы для типа формы admUserList }
  admUserListName = 'admUserList';
   { Строковый идентификатор пользовательского типа "Список пользователей" }
  admUserList = TvcmUserType(0);
   { Список пользователей }

type
  Tkw_FormUserType_admUserList = class(TtfwInteger)
   {* Слово словаря для типа формы admUserList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_admUserList
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_admUserList

{$If not defined(NoScripts)}
function Tkw_FormUserType_admUserList.GetInteger: Integer;
 {-}
begin
 Result := admUserList;
end;//Tkw_FormUserType_admUserList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация Tkw_FormUserType_admUserList
 Tkw_FormUserType_admUserList.Register('тип_формы::admUserList');
{$IfEnd} //Admin

end.