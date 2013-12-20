unit DocumentUserTypes_dftDictEntry_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDictEntry_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDictEntry
//
// Текст словарной статьи
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
  DocumentUserTypes_dftRelatedSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftDictEntry }
  dftDictEntryName = 'dftDictEntry';
   { Строковый идентификатор пользовательского типа "Текст словарной статьи" }
  dftDictEntry = TvcmUserType(dftRelatedSynchroView + 1);
   { Текст словарной статьи }

type
  Tkw_FormUserType_dftDictEntry = class(TtfwInteger)
   {* Слово словаря для типа формы dftDictEntry }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDictEntry
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDictEntry

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDictEntry.GetInteger: Integer;
 {-}
begin
 Result := dftDictEntry;
end;//Tkw_FormUserType_dftDictEntry.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftDictEntry
 Tkw_FormUserType_dftDictEntry.Register('тип_формы::dftDictEntry');
{$IfEnd} //not Admin AND not Monitorings

end.