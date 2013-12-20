unit PrimFoldersTree_utFoldersTree_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Folders/Forms/PrimFoldersTree_utFoldersTree_UserType.pas"
// Начат: 26.01.2009 18:19
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Folders::View::Folders::PrimFoldersTree::utFoldersTree
//
// Мои документы (вкладка)
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
   { Константы для типа формы utFoldersTree }
  utFoldersTreeName = 'utFoldersTree';
   { Строковый идентификатор пользовательского типа "Мои документы (вкладка)" }
  utFoldersTree = TvcmUserType(0);
   { Мои документы (вкладка) }

type
  Tkw_FormUserType_utFoldersTree = class(TtfwInteger)
   {* Слово словаря для типа формы utFoldersTree }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utFoldersTree
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utFoldersTree

{$If not defined(NoScripts)}
function Tkw_FormUserType_utFoldersTree.GetInteger: Integer;
 {-}
begin
 Result := utFoldersTree;
end;//Tkw_FormUserType_utFoldersTree.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utFoldersTree
 Tkw_FormUserType_utFoldersTree.Register('тип_формы::utFoldersTree');
{$IfEnd} //not Admin AND not Monitorings

end.