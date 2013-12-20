unit Main_ut_Main_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Модуль: "w:/MDProcess/NewGen/Main_ut_Main_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> MDProcess$NewGen$Interface::NewGen::NewGen::Main::ut_Main
//
// НЕ Роза
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\MDProcess\NewGen\ngDefine.inc}

interface

{$If defined(NewGen)}
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
   { Константы для типа формы ut_Main }
  ut_MainName = 'ut_Main';
   { Строковый идентификатор пользовательского типа "НЕ Роза" }
  ut_Main = TvcmUserType(0);
   { НЕ Роза }

type
  Tkw_FormUserType_ut_Main = class(TtfwInteger)
   {* Слово словаря для типа формы ut_Main }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_ut_Main
{$IfEnd} //NewGen

implementation

{$If defined(NewGen)}
// start class Tkw_FormUserType_ut_Main

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_Main.GetInteger: Integer;
 {-}
begin
 Result := ut_Main;
end;//Tkw_FormUserType_ut_Main.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //NewGen

initialization
{$If defined(NewGen)}
// Регистрация Tkw_FormUserType_ut_Main
 Tkw_FormUserType_ut_Main.Register('тип_формы::ut_Main');
{$IfEnd} //NewGen

end.