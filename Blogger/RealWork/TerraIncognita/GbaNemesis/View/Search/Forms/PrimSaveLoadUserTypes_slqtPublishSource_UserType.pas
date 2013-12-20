unit PrimSaveLoadUserTypes_slqtPublishSource_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimSaveLoadUserTypes_slqtPublishSource_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::PrimSaveLoadUserTypes::slqtPublishSource
//
// Поиск: По источнику опубликования
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimSaveLoadUserTypes_slqtOldKW_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы slqtPublishSource }
  slqtPublishSourceName = 'slqtPublishSource';
   { Строковый идентификатор пользовательского типа "Поиск: По источнику опубликования" }
  slqtPublishSource = TvcmUserType(slqtOldKW + 1);
   { Поиск: По источнику опубликования }

type
  Tkw_FormUserType_slqtPublishSource = class(TtfwInteger)
   {* Слово словаря для типа формы slqtPublishSource }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_slqtPublishSource
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_slqtPublishSource

{$If not defined(NoScripts)}
function Tkw_FormUserType_slqtPublishSource.GetInteger: Integer;
 {-}
begin
 Result := slqtPublishSource;
end;//Tkw_FormUserType_slqtPublishSource.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_slqtPublishSource
 Tkw_FormUserType_slqtPublishSource.Register('тип_формы::slqtPublishSource');
{$IfEnd} //not Admin

end.