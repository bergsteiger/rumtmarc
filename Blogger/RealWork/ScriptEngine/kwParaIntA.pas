unit kwParaIntA;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwParaIntA.pas"
// �����: 03.11.2011 17:03
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::TkwParaIntA
//
// �������� ������������� ������� ���������
// 
// ������:
// {code}
// VAR l_Para
// l_ParaNum editor:GetParaByID ASSERT
// >>> l_Para
// l_Para  evd::ti_LeftIndent Para:IntA .
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
 TkwParaIntA = class(_kwParaFromStackWord_)
  {* �������� ������������� ������� ���������

������:
[code]
VAR l_Para
 l_ParaNum editor:GetParaByID ASSERT
>>> l_Para
l_Para  evd::ti_LeftIndent Para:IntA .
[code] }
 protected
 // realized methods
   procedure DoPara(const aPara: InevPara;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwParaIntA
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

type _Instance_R_ = TkwParaIntA;

{$Include ..\ScriptEngine\kwParaFromStackWord.imp.pas}

// start class TkwParaIntA

procedure TkwParaIntA.DoPara(const aPara: InevPara;
  const aCtx: TtfwContext);
//#UC START# *4EB27FB803C2_4EB2912302B1_var*
//#UC END# *4EB27FB803C2_4EB2912302B1_var*
begin
//#UC START# *4EB27FB803C2_4EB2912302B1_impl*
 aCtx.rEngine.PushInt(aPara.IntA[aCtx.rEngine.PopInt]);
//#UC END# *4EB27FB803C2_4EB2912302B1_impl*
end;//TkwParaIntA.DoPara

class function TkwParaIntA.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EB2912302B1_var*
//#UC END# *4DB0614603C8_4EB2912302B1_var*
begin
//#UC START# *4DB0614603C8_4EB2912302B1_impl*
 Result := 'Para:IntA';
//#UC END# *4DB0614603C8_4EB2912302B1_impl*
end;//TkwParaIntA.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwParaFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.