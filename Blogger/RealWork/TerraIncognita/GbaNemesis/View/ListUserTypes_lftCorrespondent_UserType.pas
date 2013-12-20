unit ListUserTypes_lftCorrespondent_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListUserTypes_lftCorrespondent_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListUserTypes::lftCorrespondent
//
// Ссылки на документ
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
  ,
  ListUserTypes_lftRespondent_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы lftCorrespondent }
  lftCorrespondentName = 'lftCorrespondent';
   { Строковый идентификатор пользовательского типа "Ссылки на документ" }
  lftCorrespondent = TvcmUserType(lftRespondent + 1);
   { Ссылки на документ }

type
  Tkw_FormUserType_lftCorrespondent = class(TtfwInteger)
   {* Слово словаря для типа формы lftCorrespondent }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_lftCorrespondent
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_lftCorrespondent

{$If not defined(NoScripts)}
function Tkw_FormUserType_lftCorrespondent.GetInteger: Integer;
 {-}
begin
 Result := lftCorrespondent;
end;//Tkw_FormUserType_lftCorrespondent.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_lftCorrespondent
 Tkw_FormUserType_lftCorrespondent.Register('тип_формы::lftCorrespondent');
{$IfEnd} //not Admin AND not Monitorings

end.