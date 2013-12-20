unit kwPrint;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPrint.pas"
// �����: 22.04.2011 16:52
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Basics::Print
//
// .                                   "dot"
// ( n -- )
// ���������� n � ������� ���������� ����.
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
  l3Interfaces,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tkwOut.imp.pas}
 TkwPrint = {final} class(_tkwOut_)
  {* .                                   "dot"
( n -- )
            ���������� n � ������� ���������� ����. }
 protected
 // realized methods
   procedure DoOut(const Msg: Il3CString;
    const aCtx: TtfwContext); override;
   procedure DoOut(const Msg: AnsiString;
    const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPrint
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  l3Base,
  Windows,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPrint;

{$Include ..\ScriptEngine\tkwOut.imp.pas}

// start class TkwPrint

procedure TkwPrint.DoOut(const Msg: Il3CString;
  const aCtx: TtfwContext);
//#UC START# *4F34DAEB011D_4DB179F5019A_var*
//#UC END# *4F34DAEB011D_4DB179F5019A_var*
begin
//#UC START# *4F34DAEB011D_4DB179F5019A_impl*
 aCtx.rCaller.Print(Msg);
//#UC END# *4F34DAEB011D_4DB179F5019A_impl*
end;//TkwPrint.DoOut

procedure TkwPrint.DoOut(const Msg: AnsiString;
  const aCtx: TtfwContext);
//#UC START# *4F34DB520063_4DB179F5019A_var*
//#UC END# *4F34DB520063_4DB179F5019A_var*
begin
//#UC START# *4F34DB520063_4DB179F5019A_impl*
 DoOut(l3CStr(Msg), aCtx);
//#UC END# *4F34DB520063_4DB179F5019A_impl*
end;//TkwPrint.DoOut

class function TkwPrint.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '.';
end;//TkwPrint.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tkwOut.imp.pas}
{$IfEnd} //not NoScripts

end.