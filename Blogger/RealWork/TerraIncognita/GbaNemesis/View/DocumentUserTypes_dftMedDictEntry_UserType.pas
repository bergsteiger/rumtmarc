unit DocumentUserTypes_dftMedDictEntry_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftMedDictEntry_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftMedDictEntry
//
// Описание медицинского термина
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
  DocumentUserTypes_dftTips_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftMedDictEntry }
  dftMedDictEntryName = 'dftMedDictEntry';
   { Строковый идентификатор пользовательского типа "Описание медицинского термина" }
  dftMedDictEntry = TvcmUserType(dftTips + 1);
   { Описание медицинского термина }

type
  Tkw_FormUserType_dftMedDictEntry = class(TtfwInteger)
   {* Слово словаря для типа формы dftMedDictEntry }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftMedDictEntry
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftMedDictEntry

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftMedDictEntry.GetInteger: Integer;
 {-}
begin
 Result := dftMedDictEntry;
end;//Tkw_FormUserType_dftMedDictEntry.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftMedDictEntry
 Tkw_FormUserType_dftMedDictEntry.Register('тип_формы::dftMedDictEntry');
{$IfEnd} //not Admin AND not Monitorings

end.