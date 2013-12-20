unit kwCompiledCallerWorkerWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledCallerWorkerWord.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledCallerWorkerWord
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
  kwCompiledCallerAndWordWorkerWord,
  tfwScriptingInterfaces,
  kwCompiledWord,
  kwCompiledWordWorkerWordRunner
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledCallerWorkerWord = class(TkwCompiledCallerAndWordWorkerWord)
 protected
 // overridden protected methods
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
   function AfterWordMaxCount: Cardinal; override;
   function RunnerClass: RkwCompiledWordWorkerWordRunner; override;
   procedure CompileWordWorker(const aContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
 end;//TkwCompiledCallerWorkerWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledCallerWordRunner,
  kwCompiledWordWorker,
  SysUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledCallerWorkerWord

procedure TkwCompiledCallerWorkerWord.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4F4148350282_var*
//#UC END# *4DB6CE2302C9_4F4148350282_var*
begin
//#UC START# *4DB6CE2302C9_4F4148350282_impl*
 inherited;
//#UC END# *4DB6CE2302C9_4F4148350282_impl*
end;//TkwCompiledCallerWorkerWord.AfterCompile

function TkwCompiledCallerWorkerWord.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4F4148350282_var*
//#UC END# *4DB9B446039A_4F4148350282_var*
begin
//#UC START# *4DB9B446039A_4F4148350282_impl*
 Result := 0;
//#UC END# *4DB9B446039A_4F4148350282_impl*
end;//TkwCompiledCallerWorkerWord.AfterWordMaxCount

function TkwCompiledCallerWorkerWord.RunnerClass: RkwCompiledWordWorkerWordRunner;
//#UC START# *4F3FAC0C0170_4F4148350282_var*
//#UC END# *4F3FAC0C0170_4F4148350282_var*
begin
//#UC START# *4F3FAC0C0170_4F4148350282_impl*
 Result := TkwCompiledCallerWordRunner;
//#UC END# *4F3FAC0C0170_4F4148350282_impl*
end;//TkwCompiledCallerWorkerWord.RunnerClass

procedure TkwCompiledCallerWorkerWord.CompileWordWorker(const aContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4F41566A02E5_4F4148350282_var*
var
 l_CPW : TkwCompiledWordWorker;
//#UC END# *4F41566A02E5_4F4148350282_var*
begin
//#UC START# *4F41566A02E5_4F4148350282_impl*
 CompilerAssert((aCompiled.Code = nil) OR
                (aCompiled.Code.Count = 0),
                'После слова недопустимы параметры',
                aContext);
 l_CPW := CompiledWorkerClass.Create(nil{aCompiled.Code[0]});
 try
  FillCompiledWorker(l_CPW, aContext);
  DoCompiledWord(l_CPW, aContext);
 finally
  FreeAndNil(l_CPW);
 end;//try..finally
//#UC END# *4F41566A02E5_4F4148350282_impl*
end;//TkwCompiledCallerWorkerWord.CompileWordWorker

{$IfEnd} //not NoScripts

end.