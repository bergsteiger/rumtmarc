unit kwWordAlias;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwWordAlias.pas"
// �����: 15.02.2012 18:31
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::WordAlias
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
 TkwWordAlias = {final} class(_tfwConstLike_)
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
 end;//TkwWordAlias
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

type _Instance_R_ = TkwWordAlias;

{$Include ..\ScriptEngine\tfwConstLike.imp.pas}

// start class TkwWordAlias

class function TkwWordAlias.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'WordAlias';
end;//TkwWordAlias.GetWordNameForRegister

procedure TkwWordAlias.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F3BC19A0061_var*
var
 l_W : TtfwWord;
 l_Key : TtfwKeyWord;
//#UC END# *4F219629036A_4F3BC19A0061_var*
begin
//#UC START# *4F219629036A_4F3BC19A0061_impl*
 CompilerAssert((aCompiled.Code <> nil) AND (aCompiled.Code.Count = 1),
                '�������� ����� ��������� ��� ����� WordAlias',
                aContext
                );
 l_W := aCompiled.Code[0];
 l_Key := TtfwKeyWord(l_W.Key);
 try
  aWordToFinish.Word := l_W;
  // - ������������ ����� ����� � ������� 
 finally
  l_W.Key := l_Key;
  // - ��������������� ����� ���������� �������� �����
 end;//try..finally
//#UC END# *4F219629036A_4F3BC19A0061_impl*
end;//TkwWordAlias.FinishDefinitionOfNewWord

function TkwWordAlias.SupressNextImmediate: Boolean;
//#UC START# *4F3AB3B101FC_4F3BC19A0061_var*
//#UC END# *4F3AB3B101FC_4F3BC19A0061_var*
begin
//#UC START# *4F3AB3B101FC_4F3BC19A0061_impl*
 Result := true;
//#UC END# *4F3AB3B101FC_4F3BC19A0061_impl*
end;//TkwWordAlias.SupressNextImmediate

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwConstLike.imp.pas}
{$IfEnd} //not NoScripts

end.