unit tfwParser;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwParser.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Parser::TtfwParser
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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
     {* ������� ������� ����� �������. }
   procedure InitFields; override;
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* ������� ������, ������������ ����� �� ������� ������� ������ �������� � ��� ���������� �������������. }
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