unit PrimPageSetup_pstNone_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimPageSetup_pstNone_UserType.pas"
// Начат: 15.09.2009 16:19
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimPageSetup::pstNone
//
// Настройка страницы
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
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы pstNone }
  pstNoneName = 'pstNone';
   { Строковый идентификатор пользовательского типа "Настройка страницы" }
  pstNone = TvcmUserType(0);
   { Настройка страницы }

type
  Tkw_FormUserType_pstNone = class(TtfwInteger)
   {* Слово словаря для типа формы pstNone }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_pstNone
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_pstNone

{$If not defined(NoScripts)}
function Tkw_FormUserType_pstNone.GetInteger: Integer;
 {-}
begin
 Result := pstNone;
end;//Tkw_FormUserType_pstNone.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_pstNone
 Tkw_FormUserType_pstNone.Register('тип_формы::pstNone');
{$IfEnd} //not Admin

end.