unit kwFORWARD;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwFORWARD.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::Compilation::FORWARD
//
// Предварительное определение слова
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

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
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
 TkwFORWARD = {final} class(_tfwNewWord_)
  {* Предварительное определение слова }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   function AfterWordMaxCount: Cardinal; override;
   function AcceptsKeyWordAfter: Boolean; override;
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* Завершает определение вновь созданного слова }
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwFORWARD
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

type _Instance_R_ = TkwFORWARD;

{$Include ..\ScriptEngine\tfwNewWord.imp.pas}

// start class TkwFORWARD

function TkwFORWARD.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4F4BB5B50178_var*
//#UC END# *4DB6C99F026E_4F4BB5B50178_var*
begin
//#UC START# *4DB6C99F026E_4F4BB5B50178_impl*
 Result := '';
//#UC END# *4DB6C99F026E_4F4BB5B50178_impl*
end;//TkwFORWARD.EndBracket

class function TkwFORWARD.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'FORWARD';
end;//TkwFORWARD.GetWordNameForRegister

function TkwFORWARD.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4F4BB5B50178_var*
//#UC END# *4DB9B446039A_4F4BB5B50178_var*
begin
//#UC START# *4DB9B446039A_4F4BB5B50178_impl*
 Result := 0;
//#UC END# *4DB9B446039A_4F4BB5B50178_impl*
end;//TkwFORWARD.AfterWordMaxCount

function TkwFORWARD.AcceptsKeyWordAfter: Boolean;
//#UC START# *4DB9B502013D_4F4BB5B50178_var*
//#UC END# *4DB9B502013D_4F4BB5B50178_var*
begin
//#UC START# *4DB9B502013D_4F4BB5B50178_impl*
 Result := false;
//#UC END# *4DB9B502013D_4F4BB5B50178_impl*
end;//TkwFORWARD.AcceptsKeyWordAfter

procedure TkwFORWARD.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F4BB5B50178_var*
var
 l_W : TkwForwardDeclaration;
//#UC END# *4F219629036A_4F4BB5B50178_var*
begin
//#UC START# *4F219629036A_4F4BB5B50178_impl*
 CompilerAssert((aCompiled.Code = nil) OR
                (aCompiled.Code.Count = 0),
                'Слово не может иметь параметров',
                aContext
               );
 l_W := TkwForwardDeclaration.Create;
 try
  aWordToFinish.Word := l_W;
 finally
  FreeAndNil(l_W);
 end;//try..finally
//#UC END# *4F219629036A_4F4BB5B50178_impl*
end;//TkwFORWARD.FinishDefinitionOfNewWord

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwNewWord.imp.pas}
{$IfEnd} //not NoScripts

end.