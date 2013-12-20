unit ListInfoUserTypes_liListInfo_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListInfoUserTypes_liListInfo_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListInfoUserTypes::liListInfo
//
// Справка к списку
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
   { Константы для типа формы liListInfo }
  liListInfoName = 'liListInfo';
   { Строковый идентификатор пользовательского типа "Справка к списку" }
  liListInfo = TvcmUserType(0);
   { Справка к списку }

type
  Tkw_FormUserType_liListInfo = class(TtfwInteger)
   {* Слово словаря для типа формы liListInfo }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_liListInfo
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_liListInfo

{$If not defined(NoScripts)}
function Tkw_FormUserType_liListInfo.GetInteger: Integer;
 {-}
begin
 Result := liListInfo;
end;//Tkw_FormUserType_liListInfo.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_liListInfo
 Tkw_FormUserType_liListInfo.Register('тип_формы::liListInfo');
{$IfEnd} //not Admin AND not Monitorings

end.