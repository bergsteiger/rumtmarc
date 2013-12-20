unit kwMsg;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: �������� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwMsg.pas"
// �����: 06.02.2012
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Basics::Msg
//
// ���������� TkwPrint, �� ������� ���� �� ����������� ����.
// ��� �������.
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
 TkwMsg = {final} class(_tkwOut_)
  {* ���������� TkwPrint, �� ������� ���� �� ����������� ����.
��� �������. }
 protected
 // realized methods
   procedure DoOut(const Msg: Il3CString;
    const aCtx: TtfwContext); override;
   procedure DoOut(const Msg: AnsiString;
    const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwMsg
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  Classes,
  SysUtils,
  Windows
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  l3String,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwMsg;

{$Include ..\ScriptEngine\tkwOut.imp.pas}

// start class TkwMsg

procedure TkwMsg.DoOut(const Msg: Il3CString;
  const aCtx: TtfwContext);
//#UC START# *4F34DAEB011D_4F2F82D10124_var*
//#UC END# *4F34DAEB011D_4F2F82D10124_var*
begin
//#UC START# *4F34DAEB011D_4F2F82D10124_impl*
 DoOut(l3Str(Msg), aCtx);
//#UC END# *4F34DAEB011D_4F2F82D10124_impl*
end;//TkwMsg.DoOut

procedure TkwMsg.DoOut(const Msg: AnsiString;
  const aCtx: TtfwContext);
//#UC START# *4F34DB520063_4F2F82D10124_var*
//#UC END# *4F34DB520063_4F2F82D10124_var*
begin
//#UC START# *4F34DB520063_4F2F82D10124_impl*
 MessageBoxA(0, PAnsiChar(Msg), 'script message', MB_OK);
//#UC END# *4F34DB520063_4F2F82D10124_impl*
end;//TkwMsg.DoOut

class function TkwMsg.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'Msg';
end;//TkwMsg.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tkwOut.imp.pas}
{$IfEnd} //not NoScripts

end.