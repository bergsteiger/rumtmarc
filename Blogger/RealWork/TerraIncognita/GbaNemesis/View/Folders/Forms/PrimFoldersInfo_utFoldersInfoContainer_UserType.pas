unit PrimFoldersInfo_utFoldersInfoContainer_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/PrimFoldersInfo_utFoldersInfoContainer_UserType.pas"
// Начат: 29.10.2009 19:12
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Folders::View::Folders::PrimFoldersInfo::utFoldersInfoContainer
//
// Свойства папок (модальный диалог)
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
   { Константы для типа формы utFoldersInfoContainer }
  utFoldersInfoContainerName = 'utFoldersInfoContainer';
   { Строковый идентификатор пользовательского типа "Свойства папок (модальный диалог)" }
  utFoldersInfoContainer = TvcmUserType(0);
   { Свойства папок (модальный диалог) }

type
  Tkw_FormUserType_utFoldersInfoContainer = class(TtfwInteger)
   {* Слово словаря для типа формы utFoldersInfoContainer }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utFoldersInfoContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utFoldersInfoContainer

{$If not defined(NoScripts)}
function Tkw_FormUserType_utFoldersInfoContainer.GetInteger: Integer;
 {-}
begin
 Result := utFoldersInfoContainer;
end;//Tkw_FormUserType_utFoldersInfoContainer.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utFoldersInfoContainer
 Tkw_FormUserType_utFoldersInfoContainer.Register('тип_формы::utFoldersInfoContainer');
{$IfEnd} //not Admin AND not Monitorings

end.