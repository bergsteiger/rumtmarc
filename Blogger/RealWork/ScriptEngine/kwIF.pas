unit kwIF;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwIF.pas"
// Начат: 26.04.2011 20:08
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwIF
//
// Зарезервированное слов IF. Переход с проверкой условия.
// *Пример:*
// {code}
// : SIGN
// DUP >0 IF 'ПОЛОЖИТЕЛЬНОЕ ЧИСЛО' . DROP
// ELSE =0
// IF 'НОЛЬ' .
// ELSE 'ОТРИЦАТЕЛЬНОЕ ЧИСЛО' .
// ENDIF
// ENDIF
// ;
// 
// : SIGN1
// ?DUP =0 IF
// 'НОЛЬ' .
// ELSE
// >0 IF
// 'ПОЛОЖИТЕЛЬНОЕ ЧИСЛО' . ELSE
// 'ОТРИЦАТЕЛЬНОЕ ЧИСЛО' . ENDIF
// ENDIF
// ;
// 
// -1 SIGN
// 0 SIGN
// 1 SIGN
// 
// -1 SIGN1
// 0 SIGN1
// 1 SIGN1
// {code}
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
  tfwScriptingInterfaces,
  kwCompiledWord,
  kwDualCompiledWordContainer,
  l3Interfaces,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\tfwDualWord.imp.pas}
 TkwIF = class(_tfwDualWord_)
  {* Зарезервированное слов IF. Переход с проверкой условия.
 *Пример:*
[code]
: SIGN
    DUP >0 IF 'ПОЛОЖИТЕЛЬНОЕ ЧИСЛО' . DROP
           ELSE =0
             IF 'НОЛЬ' .
             ELSE 'ОТРИЦАТЕЛЬНОЕ ЧИСЛО' .
             ENDIF
           ENDIF 
;

: SIGN1 
   ?DUP =0 IF
     'НОЛЬ' .
   ELSE
     >0 IF
     'ПОЛОЖИТЕЛЬНОЕ ЧИСЛО' . ELSE
     'ОТРИЦАТЕЛЬНОЕ ЧИСЛО' . ENDIF
   ENDIF
;

-1 SIGN
0 SIGN
1 SIGN

-1 SIGN1
0 SIGN1
1 SIGN1
[code] }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
   function MedianBracket: AnsiString; override;
   function MakeDualCompiled(const aContext: TtfwContext;
     aCompiled: TkwCompiledWord;
     aCompiled2: TkwCompiledWord;
     aMedianNum: Integer): TkwDualCompiledWordContainer; override;
   function MedianBracket2: AnsiString; override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwIF
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledIF,
  SysUtils,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwIF;

{$Include ..\ScriptEngine\tfwDualWord.imp.pas}

// start class TkwIF

function TkwIF.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DB6EDEF00BF_var*
//#UC END# *4DB6C99F026E_4DB6EDEF00BF_var*
begin
//#UC START# *4DB6C99F026E_4DB6EDEF00BF_impl*
 Result := 'ENDIF';
//#UC END# *4DB6C99F026E_4DB6EDEF00BF_impl*
end;//TkwIF.EndBracket

function TkwIF.MedianBracket: AnsiString;
//#UC START# *4DBAC41301F2_4DB6EDEF00BF_var*
//#UC END# *4DBAC41301F2_4DB6EDEF00BF_var*
begin
//#UC START# *4DBAC41301F2_4DB6EDEF00BF_impl*
 Result := 'ELSE';
//#UC END# *4DBAC41301F2_4DB6EDEF00BF_impl*
end;//TkwIF.MedianBracket

function TkwIF.MakeDualCompiled(const aContext: TtfwContext;
  aCompiled: TkwCompiledWord;
  aCompiled2: TkwCompiledWord;
  aMedianNum: Integer): TkwDualCompiledWordContainer;
//#UC START# *4DBAC44D02CC_4DB6EDEF00BF_var*
//#UC END# *4DBAC44D02CC_4DB6EDEF00BF_var*
begin
//#UC START# *4DBAC44D02CC_4DB6EDEF00BF_impl*
 Result := TkwCompiledIF.Create(aCompiled, aCompiled2);
//#UC END# *4DBAC44D02CC_4DB6EDEF00BF_impl*
end;//TkwIF.MakeDualCompiled

function TkwIF.MedianBracket2: AnsiString;
//#UC START# *4DBADF3E02CC_4DB6EDEF00BF_var*
//#UC END# *4DBADF3E02CC_4DB6EDEF00BF_var*
begin
//#UC START# *4DBADF3E02CC_4DB6EDEF00BF_impl*
 Result := '';
//#UC END# *4DBADF3E02CC_4DB6EDEF00BF_impl*
end;//TkwIF.MedianBracket2

class function TkwIF.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DB6EDEF00BF_var*
//#UC END# *4DB0614603C8_4DB6EDEF00BF_var*
begin
//#UC START# *4DB0614603C8_4DB6EDEF00BF_impl*
 Result := 'IF';
//#UC END# *4DB0614603C8_4DB6EDEF00BF_impl*
end;//TkwIF.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwDualWord.imp.pas}
{$IfEnd} //not NoScripts

end.