unit kwParaBoolA;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwParaBoolA.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CurrentEditorWords::Para_BoolA
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
  nevTools,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwParaFromStackWord.imp.pas}
 TkwParaBoolA = {final} class(_kwParaFromStackWord_)
 protected
 // realized methods
   procedure DoPara(const aPara: InevPara;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwParaBoolA
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  k2Tags,
  l3Base,
  l3String,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwParaBoolA;

{$Include ..\ScriptEngine\kwParaFromStackWord.imp.pas}

// start class TkwParaBoolA

procedure TkwParaBoolA.DoPara(const aPara: InevPara;
  const aCtx: TtfwContext);
//#UC START# *4EB27FB803C2_4F88292C036D_var*
//#UC END# *4EB27FB803C2_4F88292C036D_var*
begin
//#UC START# *4EB27FB803C2_4F88292C036D_impl*
 aCtx.rEngine.PushBool(aPara.BoolA[aCtx.rEngine.PopInt]);
//#UC END# *4EB27FB803C2_4F88292C036D_impl*
end;//TkwParaBoolA.DoPara

class function TkwParaBoolA.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'Para:BoolA';
end;//TkwParaBoolA.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwParaFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.