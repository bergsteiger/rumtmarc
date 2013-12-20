unit PrimTasksPanel_tpMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimTasksPanel_tpMain_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Common::View::Common::PrimTasksPanel::tpMain
//
// Панель задач
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
   { Константы для типа формы tpMain }
  tpMainName = 'tpMain';
   { Строковый идентификатор пользовательского типа "Панель задач" }
  tpMain = TvcmUserType(0);
   { Панель задач }

type
  Tkw_FormUserType_tpMain = class(TtfwInteger)
   {* Слово словаря для типа формы tpMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_tpMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_tpMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_tpMain.GetInteger: Integer;
 {-}
begin
 Result := tpMain;
end;//Tkw_FormUserType_tpMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_tpMain
 Tkw_FormUserType_tpMain.Register('тип_формы::tpMain');
{$IfEnd} //not Admin AND not Monitorings

end.