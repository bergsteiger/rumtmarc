unit PrimChangesBetweenEditons_DocumentChanges_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ChangesBetweenEditons/Forms/PrimChangesBetweenEditons_DocumentChanges_UserType.pas"
// Начат: 25.05.2011 14:13
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Пользовательские сервисы::ChangesBetweenEditions::View::ChangesBetweenEditons::PrimChangesBetweenEditons::DocumentChanges
//
// Изменения в документе
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
   { Константы для типа формы DocumentChanges }
  DocumentChangesName = 'DocumentChanges';
   { Строковый идентификатор пользовательского типа "Изменения в документе" }
  DocumentChanges = TvcmUserType(0);
   { Изменения в документе }

type
  Tkw_FormUserType_DocumentChanges = class(TtfwInteger)
   {* Слово словаря для типа формы DocumentChanges }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_DocumentChanges
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_DocumentChanges

{$If not defined(NoScripts)}
function Tkw_FormUserType_DocumentChanges.GetInteger: Integer;
 {-}
begin
 Result := DocumentChanges;
end;//Tkw_FormUserType_DocumentChanges.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_DocumentChanges
 Tkw_FormUserType_DocumentChanges.Register('тип_формы::DocumentChanges');
{$IfEnd} //not Admin AND not Monitorings

end.