unit tfwCStringArraySing2;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/tfwCStringArraySing2.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::CString::TtfwCStringArraySing2
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
  tfwCStringArray
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TtfwCStringArraySing2 = class(TtfwCStringArray)
 public
 // singleton factory method
   class function Instance: TtfwCStringArraySing2;
    {- ���������� ��������� ����������. }
 end;//TtfwCStringArraySing2
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base {a}
  ;
{$IfEnd} //not NoScripts


// start class TtfwCStringArraySing2

var g_TtfwCStringArraySing2 : TtfwCStringArraySing2 = nil;

procedure TtfwCStringArraySing2Free;
begin
 l3Free(g_TtfwCStringArraySing2);
end;

class function TtfwCStringArraySing2.Instance: TtfwCStringArraySing2;
begin
 if (g_TtfwCStringArraySing2 = nil) then
 begin
  l3System.AddExitProc(TtfwCStringArraySing2Free);
  g_TtfwCStringArraySing2 := Create;
 end;
 Result := g_TtfwCStringArraySing2;
end;


end.