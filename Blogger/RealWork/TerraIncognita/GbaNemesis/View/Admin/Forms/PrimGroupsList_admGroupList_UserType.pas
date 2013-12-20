unit PrimGroupsList_admGroupList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimGroupsList_admGroupList_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Администратор::Admin::View::Admin::PrimGroupsList::admGroupList
//
// Группы пользователей
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
   { Константы для типа формы admGroupList }
  admGroupListName = 'admGroupList';
   { Строковый идентификатор пользовательского типа "Группы пользователей" }
  admGroupList = TvcmUserType(0);
   { Группы пользователей }

type
  Tkw_FormUserType_admGroupList = class(TtfwInteger)
   {* Слово словаря для типа формы admGroupList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_admGroupList
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_admGroupList

{$If not defined(NoScripts)}
function Tkw_FormUserType_admGroupList.GetInteger: Integer;
 {-}
begin
 Result := admGroupList;
end;//Tkw_FormUserType_admGroupList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация Tkw_FormUserType_admGroupList
 Tkw_FormUserType_admGroupList.Register('тип_формы::admGroupList');
{$IfEnd} //Admin

end.