unit kwWordAliasByRef;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWordAliasByRef.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::WordAliasByRef
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
  tfwScriptingInterfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwConstLike.imp.pas}
 TkwWordAliasByRef = {final} class(_tfwConstLike_)
 protected
 // overridden protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* ��������� ����������� ����� ���������� ����� }
   function SupressNextImmediate: Boolean; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwWordAliasByRef
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils,
  l3String,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwWordAliasByRef;

{$Include ..\ScriptEngine\tfwConstLike.imp.pas}

// start class TkwWordAliasByRef

class function TkwWordAliasByRef.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WordAliasByRef';
end;//TkwWordAliasByRef.GetWordNameForRegister

procedure TkwWordAliasByRef.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F4008E501E9_var*
var
 l_W : TtfwWord;
 l_Key : TtfwKeyWord;
 l_VC  : Integer;
 l_VC1 : Integer;
//#UC END# *4F219629036A_4F4008E501E9_var*
begin
//#UC START# *4F219629036A_4F4008E501E9_impl*
 CompilerAssert((aCompiled.Code <> nil) AND (aCompiled.Code.Count = 1),
                '�������� ����� ��������� ��� ����� WordAlias',
                aContext
                );
 l_W := aCompiled.Code[0];
 l_VC := aContext.rEngine.ValuesCount;
 l_W.DoIt(aContext);
 l_VC1 := aContext.rEngine.ValuesCount;
 CompilerAssert(l_VC1 > l_VC,
                Format('����� %s ��� WordAliasByRef %s �� �������� ������� �����',
                       [
                        l_W.Key.AsString,
                        aCompiled.Key.AsString
                       ]),
                aContext);
 CompilerAssert(l_VC1 <= l_VC + 1,
                Format('����� %s ��� WordAliasByRef %s �������� ������� ����� ����� ��� �� ���� ��������',
                       [
                        l_W.Key.AsString,
                        aCompiled.Key.AsString
                       ]),
                aContext);
 l_W := aContext.rEngine.PopObj As TtfwWord;
 l_Key := TtfwKeyWord(l_W.Key);
 try
  aWordToFinish.Word := l_W;
 finally
  l_W.Key := l_Key;
 end;//try..finally
//#UC END# *4F219629036A_4F4008E501E9_impl*
end;//TkwWordAliasByRef.FinishDefinitionOfNewWord

function TkwWordAliasByRef.SupressNextImmediate: Boolean;
//#UC START# *4F3AB3B101FC_4F4008E501E9_var*
//#UC END# *4F3AB3B101FC_4F4008E501E9_var*
begin
//#UC START# *4F3AB3B101FC_4F4008E501E9_impl*
 Result := true;
//#UC END# *4F3AB3B101FC_4F4008E501E9_impl*
end;//TkwWordAliasByRef.SupressNextImmediate

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwConstLike.imp.pas}
{$IfEnd} //not NoScripts

end.