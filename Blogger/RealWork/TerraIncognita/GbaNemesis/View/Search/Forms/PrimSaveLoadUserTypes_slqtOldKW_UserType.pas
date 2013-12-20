unit PrimSaveLoadUserTypes_slqtOldKW_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtOldKW_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtOldKW
//
// Поиск: По ситуации
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimSaveLoadUserTypes_slqtKW_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы slqtOldKW }
  slqtOldKWName = 'slqtOldKW';
   { Строковый идентификатор пользовательского типа "Поиск: По ситуации" }
  slqtOldKW = TvcmUserType(slqtKW + 1);
   { Поиск: По ситуации }

type
  Tkw_FormUserType_slqtOldKW = class(TtfwInteger)
   {* Слово словаря для типа формы slqtOldKW }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtOldKW
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtOldKW

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtOldKW.GetInteger: Integer;
 {-}
begin
 Result := slqtOldKW;
end;//Tkw_FormUserType_slqtOldKW.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_slqtOldKW
 Tkw_FormUserType_slqtOldKW.Register('тип_формы::slqtOldKW');
{$IfEnd} //not Admin

end.