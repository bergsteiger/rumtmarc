unit PrimCommonDiction_utMedicDiction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimCommonDiction_utMedicDiction_UserType.pas"
// Начат: 27.01.2009 12:45
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimCommonDiction::utMedicDiction
//
// Словарь медицинских терминов
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
  PrimCommonDiction_utTips_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы utMedicDiction }
  utMedicDictionName = 'utMedicDiction';
   { Строковый идентификатор пользовательского типа "Словарь медицинских терминов" }
  utMedicDiction = TvcmUserType(utTips + 1);
   { Словарь медицинских терминов }

type
  Tkw_FormUserType_utMedicDiction = class(TtfwInteger)
   {* Слово словаря для типа формы utMedicDiction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utMedicDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utMedicDiction

{$If not defined(NoScripts)}
function Tkw_FormUserType_utMedicDiction.GetInteger: Integer;
 {-}
begin
 Result := utMedicDiction;
end;//Tkw_FormUserType_utMedicDiction.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utMedicDiction
 Tkw_FormUserType_utMedicDiction.Register('тип_формы::utMedicDiction');
{$IfEnd} //not Admin AND not Monitorings

end.