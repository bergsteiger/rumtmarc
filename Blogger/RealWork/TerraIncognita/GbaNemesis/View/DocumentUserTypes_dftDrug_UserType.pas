unit DocumentUserTypes_dftDrug_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftDrug_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftDrug
//
// Описание препарата
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
  DocumentUserTypes_dftAutoreferat_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftDrug }
  dftDrugName = 'dftDrug';
   { Строковый идентификатор пользовательского типа "Описание препарата" }
  dftDrug = TvcmUserType(dftAutoreferat + 1);
   { Описание препарата }

type
  Tkw_FormUserType_dftDrug = class(TtfwInteger)
   {* Слово словаря для типа формы dftDrug }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftDrug
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftDrug

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftDrug.GetInteger: Integer;
 {-}
begin
 Result := dftDrug;
end;//Tkw_FormUserType_dftDrug.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftDrug
 Tkw_FormUserType_dftDrug.Register('тип_формы::dftDrug');
{$IfEnd} //not Admin AND not Monitorings

end.