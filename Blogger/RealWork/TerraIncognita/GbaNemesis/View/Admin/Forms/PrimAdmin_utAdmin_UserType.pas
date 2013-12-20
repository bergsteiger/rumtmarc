unit PrimAdmin_utAdmin_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Admin/Forms/PrimAdmin_utAdmin_UserType.pas"
// Начат: 11.11.2009 21:24
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Администратор::Admin::View::Admin::PrimAdmin::utAdmin
//
// Администрирование пользователей
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
   { Константы для типа формы utAdmin }
  utAdminName = 'utAdmin';
   { Строковый идентификатор пользовательского типа "Администрирование пользователей" }
  utAdmin = TvcmUserType(0);
   { Администрирование пользователей }

type
  Tkw_FormUserType_utAdmin = class(TtfwInteger)
   {* Слово словаря для типа формы utAdmin }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utAdmin
{$IfEnd} //Admin

implementation

{$If defined(Admin)}
// start class Tkw_FormUserType_utAdmin

{$If not defined(NoScripts)}
function Tkw_FormUserType_utAdmin.GetInteger: Integer;
 {-}
begin
 Result := utAdmin;
end;//Tkw_FormUserType_utAdmin.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Admin

initialization
{$If defined(Admin)}
// Регистрация Tkw_FormUserType_utAdmin
 Tkw_FormUserType_utAdmin.Register('тип_формы::utAdmin');
{$IfEnd} //Admin

end.