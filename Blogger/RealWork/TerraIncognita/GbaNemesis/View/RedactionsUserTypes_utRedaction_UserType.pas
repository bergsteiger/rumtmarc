unit RedactionsUserTypes_utRedaction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/RedactionsUserTypes_utRedaction_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::RedactionsUserTypes::utRedaction
//
// Редакции
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
   { Константы для типа формы utRedaction }
  utRedactionName = 'utRedaction';
   { Строковый идентификатор пользовательского типа "Редакции" }
  utRedaction = TvcmUserType(0);
   { Редакции }

type
  Tkw_FormUserType_utRedaction = class(TtfwInteger)
   {* Слово словаря для типа формы utRedaction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utRedaction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utRedaction

{$If not defined(NoScripts)}
function Tkw_FormUserType_utRedaction.GetInteger: Integer;
 {-}
begin
 Result := utRedaction;
end;//Tkw_FormUserType_utRedaction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utRedaction
 Tkw_FormUserType_utRedaction.Register('тип_формы::utRedaction');
{$IfEnd} //not Admin AND not Monitorings

end.