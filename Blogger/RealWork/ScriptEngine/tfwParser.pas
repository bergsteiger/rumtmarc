unit tfwParser;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwParser.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Parser::TtfwParser
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  l3Parser
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwParser = class(Tl3CustomParser)
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitFields; override;
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
 end;//TtfwParser
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TtfwParser

procedure TtfwParser.Cleanup;
//#UC START# *479731C50290_4F4735060149_var*
//#UC END# *479731C50290_4F4735060149_var*
begin
//#UC START# *479731C50290_4F4735060149_impl*
 KeyWord := nil;
 KeyWords := nil;
 Filer := nil;
 inherited;
//#UC END# *479731C50290_4F4735060149_impl*
end;//TtfwParser.Cleanup

procedure TtfwParser.InitFields;
//#UC START# *47A042E100E2_4F4735060149_var*
//#UC END# *47A042E100E2_4F4735060149_var*
begin
//#UC START# *47A042E100E2_4F4735060149_impl*
 inherited;
 CheckFloat := false;
 CheckComment := false;
 CheckStringBracket := false;
//#UC END# *47A042E100E2_4F4735060149_impl*
end;//TtfwParser.InitFields

{$If not defined(DesignTimeLibrary)}
class function TtfwParser.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4F4735060149_var*
//#UC END# *47A6FEE600FC_4F4735060149_var*
begin
//#UC START# *47A6FEE600FC_4F4735060149_impl*
 Result := true;
//#UC END# *47A6FEE600FC_4F4735060149_impl*
end;//TtfwParser.IsCacheable
{$IfEnd} //not DesignTimeLibrary

{$IfEnd} //not NoScripts

end.