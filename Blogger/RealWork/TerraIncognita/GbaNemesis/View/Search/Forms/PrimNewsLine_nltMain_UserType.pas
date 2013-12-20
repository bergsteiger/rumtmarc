unit PrimNewsLine_nltMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrimNewsLine_nltMain_UserType.pas"
// Начат: 27.01.2009 11:00
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Пользовательские сервисы::Autoreferat::View::Search::PrimNewsLine::nltMain
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
   { Константы для типа формы nltMain }
  nltMainName = 'nltMain';
   { Строковый идентификатор пользовательского типа "ПРАЙМ. Моя новостная лента" }
  nltMain = TvcmUserType(0);
   { ПРАЙМ. Моя новостная лента }

type
  Tkw_FormUserType_nltMain = class(TtfwInteger)
   {* Слово словаря для типа формы nltMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_nltMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_nltMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_nltMain.GetInteger: Integer;
 {-}
begin
 Result := nltMain;
end;//Tkw_FormUserType_nltMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_nltMain
 Tkw_FormUserType_nltMain.Register('тип_формы::nltMain');
{$IfEnd} //not Admin AND not Monitorings

end.