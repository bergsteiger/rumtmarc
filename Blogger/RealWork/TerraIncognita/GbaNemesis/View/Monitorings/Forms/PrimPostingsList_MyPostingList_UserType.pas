unit PrimPostingsList_MyPostingList_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Monitorings/Forms/PrimPostingsList_MyPostingList_UserType.pas"
// Начат: 15.09.2009 18:14
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Утилита Прайм::NewsLineTuning::View::Monitorings::PrimPostingsList::MyPostingList
//
// ПРАЙМ. Моя новостная лента
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
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
   { Константы для типа формы MyPostingList }
  MyPostingListName = 'MyPostingList';
   { Строковый идентификатор пользовательского типа "ПРАЙМ. Моя новостная лента" }
  MyPostingList = TvcmUserType(0);
   { ПРАЙМ. Моя новостная лента }

type
  Tkw_FormUserType_MyPostingList = class(TtfwInteger)
   {* Слово словаря для типа формы MyPostingList }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_MyPostingList
{$IfEnd} //Monitorings AND not Admin

implementation

{$If defined(Monitorings) AND not defined(Admin)}
// start class Tkw_FormUserType_MyPostingList

{$If not defined(NoScripts)}
function Tkw_FormUserType_MyPostingList.GetInteger: Integer;
 {-}
begin
 Result := MyPostingList;
end;//Tkw_FormUserType_MyPostingList.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //Monitorings AND not Admin

initialization
{$If defined(Monitorings) AND not defined(Admin)}
// Регистрация Tkw_FormUserType_MyPostingList
 Tkw_FormUserType_MyPostingList.Register('тип_формы::MyPostingList');
{$IfEnd} //Monitorings AND not Admin

end.