unit PrimProgressIndicator_utProgressIndicator_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimProgressIndicator_utProgressIndicator_UserType.pas"
// Начат: 25.08.2009 18:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimProgressIndicator::utProgressIndicator
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
   { Константы для типа формы utProgressIndicator }
  utProgressIndicatorName = 'utProgressIndicator';
   { Строковый идентификатор пользовательского типа "" }
  utProgressIndicator = TvcmUserType(0);

type
  Tkw_FormUserType_utProgressIndicator = class(TtfwInteger)
   {* Слово словаря для типа формы utProgressIndicator }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utProgressIndicator
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utProgressIndicator

{$If not defined(NoScripts)}
function Tkw_FormUserType_utProgressIndicator.GetInteger: Integer;
 {-}
begin
 Result := utProgressIndicator;
end;//Tkw_FormUserType_utProgressIndicator.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utProgressIndicator
 Tkw_FormUserType_utProgressIndicator.Register('тип_формы::utProgressIndicator');
{$IfEnd} //not Admin AND not Monitorings

end.