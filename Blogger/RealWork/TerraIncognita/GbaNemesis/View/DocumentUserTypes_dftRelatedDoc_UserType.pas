unit DocumentUserTypes_dftRelatedDoc_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftRelatedDoc_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftRelatedDoc
//
// Справка
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
  DocumentUserTypes_dftDocument_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftRelatedDoc }
  dftRelatedDocName = 'dftRelatedDoc';
   { Строковый идентификатор пользовательского типа "Справка" }
  dftRelatedDoc = TvcmUserType(dftDocument + 1);
   { Справка }

type
  Tkw_FormUserType_dftRelatedDoc = class(TtfwInteger)
   {* Слово словаря для типа формы dftRelatedDoc }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftRelatedDoc
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftRelatedDoc

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftRelatedDoc.GetInteger: Integer;
 {-}
begin
 Result := dftRelatedDoc;
end;//Tkw_FormUserType_dftRelatedDoc.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftRelatedDoc
 Tkw_FormUserType_dftRelatedDoc.Register('тип_формы::dftRelatedDoc');
{$IfEnd} //not Admin AND not Monitorings

end.