unit PrimDiction_utDiction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Diction/Forms/PrimDiction_utDiction_UserType.pas"
// Начат: 23.01.2009 17:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Встроенные продукты::Diction::View::Diction::PrimDiction::utDiction
//
// Толковый словарь
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
   { Константы для типа формы utDiction }
  utDictionName = 'utDiction';
   { Строковый идентификатор пользовательского типа "Толковый словарь" }
  utDiction = TvcmUserType(0);
   { Толковый словарь }

type
  Tkw_FormUserType_utDiction = class(TtfwInteger)
   {* Слово словаря для типа формы utDiction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utDiction

{$If not defined(NoScripts)}
function Tkw_FormUserType_utDiction.GetInteger: Integer;
 {-}
begin
 Result := utDiction;
end;//Tkw_FormUserType_utDiction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utDiction
 Tkw_FormUserType_utDiction.Register('тип_формы::utDiction');
{$IfEnd} //not Admin AND not Monitorings

end.