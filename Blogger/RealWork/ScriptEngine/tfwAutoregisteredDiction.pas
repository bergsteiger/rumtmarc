unit tfwAutoregisteredDiction;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwAutoregisteredDiction.pas"
// �����: 21.04.2011 20:49
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ScriptingKeywordsCore::TtfwAutoregisteredDiction
//
// ������� ���������������������� ����. ������ ��� ��������� ��� ��� �������������. ������������
// ����� ���� �������� � ���������������� ����, ��� ������������� �����, ��� ����� ����������
// �������
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
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwAutoregisteredDiction = class(TtfwDictionary)
  {* ������� ���������������������� ����. ������ ��� ��������� ��� ��� �������������. ������������ ����� ���� �������� � ���������������� ����, ��� ������������� �����, ��� ����� ���������� ������� }
 public
 // singleton factory method
   class function Instance: TtfwAutoregisteredDiction;
    {- ���������� ��������� ����������. }
 end;//TtfwAutoregisteredDiction
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base {a}
  ;
{$IfEnd} //not NoScripts


// start class TtfwAutoregisteredDiction

var g_TtfwAutoregisteredDiction : TtfwAutoregisteredDiction = nil;

procedure TtfwAutoregisteredDictionFree;
begin
 l3Free(g_TtfwAutoregisteredDiction);
end;

class function TtfwAutoregisteredDiction.Instance: TtfwAutoregisteredDiction;
begin
 if (g_TtfwAutoregisteredDiction = nil) then
 begin
  l3System.AddExitProc(TtfwAutoregisteredDictionFree);
  g_TtfwAutoregisteredDiction := Create;
 end;
 Result := g_TtfwAutoregisteredDiction;
end;


end.