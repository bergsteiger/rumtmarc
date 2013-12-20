unit kwParaStyleName;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwParaStyleName.pas"
// �����: 03.11.2011 16:32
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::TkwParaStyleName
//
// �������� ��� ����� ���������, ������� ����� �� �����.
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
 TkwParaStyleName = class(_kwParaFromStackWord_)
  {* �������� ��� ����� ���������, ������� ����� �� �����. }
 protected
 // realized methods
   procedure DoPara(const aPara: InevPara;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwParaStyleName
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

type _Instance_R_ = TkwParaStyleName;

{$Include ..\ScriptEngine\kwParaFromStackWord.imp.pas}

// start class TkwParaStyleName

procedure TkwParaStyleName.DoPara(const aPara: InevPara;
  const aCtx: TtfwContext);
//#UC START# *4EB27FB803C2_4EB289D40284_var*
//#UC END# *4EB27FB803C2_4EB289D40284_var*
begin
//#UC START# *4EB27FB803C2_4EB289D40284_impl*
 aCtx.rEngine.PushString(aPara.PCharLenA[k2_tiStyle]);
//#UC END# *4EB27FB803C2_4EB289D40284_impl*
end;//TkwParaStyleName.DoPara

class function TkwParaStyleName.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EB289D40284_var*
//#UC END# *4DB0614603C8_4EB289D40284_var*
begin
//#UC START# *4DB0614603C8_4EB289D40284_impl*
 Result := 'Para:StyleName';
//#UC END# *4DB0614603C8_4EB289D40284_impl*
end;//TkwParaStyleName.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwParaFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.