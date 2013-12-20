unit DocumentUserTypes_dftDictSubEntry_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDictSubEntry_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDictSubEntry
//
// Перевод словарной статьи
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
  DocumentUserTypes_dftDictEntry_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftDictSubEntry }
  dftDictSubEntryName = 'dftDictSubEntry';
   { Строковый идентификатор пользовательского типа "Перевод словарной статьи" }
  dftDictSubEntry = TvcmUserType(dftDictEntry + 1);
   { Перевод словарной статьи }

type
  Tkw_FormUserType_dftDictSubEntry = class(TtfwInteger)
   {* Слово словаря для типа формы dftDictSubEntry }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDictSubEntry
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDictSubEntry

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDictSubEntry.GetInteger: Integer;
 {-}
begin
 Result := dftDictSubEntry;
end;//Tkw_FormUserType_dftDictSubEntry.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftDictSubEntry
 Tkw_FormUserType_dftDictSubEntry.Register('тип_формы::dftDictSubEntry');
{$IfEnd} //not Admin AND not Monitorings

end.