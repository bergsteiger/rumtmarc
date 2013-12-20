unit kwParaStrA;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwParaStrA.pas"
// �����: 03.11.2011 17:01
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::TkwParaStrA
//
// �������� ��������� ������� ���������
// 
// ������:
// {code}
// VAR l_Para
// l_ParaNum editor:GetParaByID ASSERT
// >>> l_Para
// l_Para  evd::ti_Text Para:StrA .
// {code}
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
 TkwParaStrA = class(_kwParaFromStackWord_)
  {* �������� ��������� ������� ���������

������:
[code]
VAR l_Para
 l_ParaNum editor:GetParaByID ASSERT
>>> l_Para
l_Para  evd::ti_Text Para:StrA .
[code] }
 protected
 // realized methods
   procedure DoPara(const aPara: InevPara;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwParaStrA
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

type _Instance_R_ = TkwParaStrA;

{$Include ..\ScriptEngine\kwParaFromStackWord.imp.pas}

// start class TkwParaStrA

procedure TkwParaStrA.DoPara(const aPara: InevPara;
  const aCtx: TtfwContext);
//#UC START# *4EB27FB803C2_4EB290740067_var*
//#UC END# *4EB27FB803C2_4EB290740067_var*
begin
//#UC START# *4EB27FB803C2_4EB290740067_impl*
 aCtx.rEngine.PushString(aPara.PCharLenA[aCtx.rEngine.PopInt]);
//#UC END# *4EB27FB803C2_4EB290740067_impl*
end;//TkwParaStrA.DoPara

class function TkwParaStrA.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EB290740067_var*
//#UC END# *4DB0614603C8_4EB290740067_var*
begin
//#UC START# *4DB0614603C8_4EB290740067_impl*
 Result := 'Para:StrA';
//#UC END# *4DB0614603C8_4EB290740067_impl*
end;//TkwParaStrA.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwParaFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.