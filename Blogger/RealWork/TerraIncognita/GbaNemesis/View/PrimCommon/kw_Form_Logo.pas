unit kw_Form_Logo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimCommon/kw_Form_Logo.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::F1 Application Template::View::PrimCommon::Tkw_Form_Logo
//
// Слово словаря для идентификатора формы Logo
// ----
// *Пример использования*:
// {code}
// 'aControl' форма::Logo TryFocus ASSERT
// {code}
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  ;

type
 Tkw_Form_Logo = class(TtfwControlString)
  {* Слово словаря для идентификатора формы Logo
----
*Пример использования*:
[code]
'aControl' форма::Logo TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Logo

implementation

uses
  Logo_Form
  ;

// start class Tkw_Form_Logo

{$If not defined(NoScripts)}
function Tkw_Form_Logo.GetString: AnsiString;
 {-}
begin
 Result := 'LogoForm';
end;//Tkw_Form_Logo.GetString
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_Form_Logo
 Tkw_Form_Logo.Register('форма::Logo', TLogoForm);

end.