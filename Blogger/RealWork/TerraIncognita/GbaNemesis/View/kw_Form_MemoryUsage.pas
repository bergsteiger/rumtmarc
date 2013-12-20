unit kw_Form_MemoryUsage;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/kw_Form_MemoryUsage.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Оболочка Без Прецедентов::F1 Without Usecases::View::Main::Tkw_Form_MemoryUsage
//
// Слово словаря для идентификатора формы MemoryUsage
// ----
// *Пример использования*:
// {code}
// 'aControl' форма::MemoryUsage TryFocus ASSERT
// {code}
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
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 Tkw_Form_MemoryUsage = class(TtfwControlString)
  {* Слово словаря для идентификатора формы MemoryUsage
----
*Пример использования*:
[code]
'aControl' форма::MemoryUsage TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_MemoryUsage
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  MemoryUsage_Form
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class Tkw_Form_MemoryUsage

{$If not defined(NoScripts)}
function Tkw_Form_MemoryUsage.GetString: AnsiString;
 {-}
begin
 Result := 'MemoryUsageForm';
end;//Tkw_Form_MemoryUsage.GetString
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_MemoryUsage
 Tkw_Form_MemoryUsage.Register('форма::MemoryUsage', TMemoryUsageForm);
{$IfEnd} //not Admin AND not Monitorings

end.