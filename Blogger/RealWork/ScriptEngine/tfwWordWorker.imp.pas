{$IfNDef tfwWordWorker_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tfwWordWorker.imp.pas"
// Начат: 12.05.2011 16:37
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::tfwWordWorker
//
// Поддержка исполняемых скомпилированных слов.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tfwWordWorker_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}
 _tfwWordWorker_ = {abstract mixin} class(_tfwAnonimousWord_)
  {* Поддержка исполняемых скомпилированных слов. }
 protected
 // realized methods
   function EndBracket(const aContext: TtfwContext): AnsiString; override;
 protected
 // overridden protected methods
   procedure AfterCompile(var aPrevContext: TtfwContext;
     var theNewContext: TtfwContext;
     aCompiled: TkwCompiledWord); override;
   function AfterWordMaxCount: Cardinal; override;
 protected
 // protected methods
   function CompiledWorkerClass: RkwCompiledWordWorker; virtual; abstract;
   procedure FillCompiledWorker(aWorker: TkwCompiledWordWorker;
     const aContext: TtfwContext); virtual;
   procedure CompileWordWorker(const aContext: TtfwContext;
     aCompiled: TkwCompiledWord); virtual;
 end;//_tfwWordWorker_
{$IfEnd} //not NoScripts

{$Else tfwWordWorker_imp}

{$IfNDef tfwWordWorker_imp_impl}
{$Define tfwWordWorker_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}

// start class _tfwWordWorker_

procedure _tfwWordWorker_.FillCompiledWorker(aWorker: TkwCompiledWordWorker;
  const aContext: TtfwContext);
//#UC START# *4F219FA10268_4DCBD489023A_var*
//#UC END# *4F219FA10268_4DCBD489023A_var*
begin
//#UC START# *4F219FA10268_4DCBD489023A_impl*
 // - ничего не делаем, это чтобы предок мог aWorker заполнить по своему усмотрению
//#UC END# *4F219FA10268_4DCBD489023A_impl*
end;//_tfwWordWorker_.FillCompiledWorker

procedure _tfwWordWorker_.CompileWordWorker(const aContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4F41566A02E5_4DCBD489023A_var*
var
 l_CPW : TkwCompiledWordWorker;
//#UC END# *4F41566A02E5_4DCBD489023A_var*
begin
//#UC START# *4F41566A02E5_4DCBD489023A_impl*
 if (AfterWordMaxCount = 1) then
 begin
  CompilerAssert((aCompiled.Code <> nil) AND
                 (aCompiled.Code.Count = 1),
                 'Допустим только один параметр после слова',
                 aContext);
  l_CPW := CompiledWorkerClass.Create(aCompiled.Code[0]);
 end//AfterWordMaxCount = 1
 else
  l_CPW := CompiledWorkerClass.Create(aCompiled);
 try
  Assert(l_CPW.Key = nil);
  l_CPW.Key := Self.Key;
  // - чтобы легче было опознавать слова по их Runner'ам
  FillCompiledWorker(l_CPW, aContext);
  DoCompiledWord(l_CPW, aContext);
 finally
  FreeAndNil(l_CPW);
 end;//try..finally
//#UC END# *4F41566A02E5_4DCBD489023A_impl*
end;//_tfwWordWorker_.CompileWordWorker

function _tfwWordWorker_.EndBracket(const aContext: TtfwContext): AnsiString;
//#UC START# *4DB6C99F026E_4DCBD489023A_var*
//#UC END# *4DB6C99F026E_4DCBD489023A_var*
begin
//#UC START# *4DB6C99F026E_4DCBD489023A_impl*
 Result := DisabledEndBracket(aContext);
//#UC END# *4DB6C99F026E_4DCBD489023A_impl*
end;//_tfwWordWorker_.EndBracket

procedure _tfwWordWorker_.AfterCompile(var aPrevContext: TtfwContext;
  var theNewContext: TtfwContext;
  aCompiled: TkwCompiledWord);
//#UC START# *4DB6CE2302C9_4DCBD489023A_var*
//#UC END# *4DB6CE2302C9_4DCBD489023A_var*
begin
//#UC START# *4DB6CE2302C9_4DCBD489023A_impl*
 CompileWordWorker(aPrevContext, aCompiled);
 inherited;
//#UC END# *4DB6CE2302C9_4DCBD489023A_impl*
end;//_tfwWordWorker_.AfterCompile

function _tfwWordWorker_.AfterWordMaxCount: Cardinal;
//#UC START# *4DB9B446039A_4DCBD489023A_var*
//#UC END# *4DB9B446039A_4DCBD489023A_var*
begin
//#UC START# *4DB9B446039A_4DCBD489023A_impl*
 Result := 1;
//#UC END# *4DB9B446039A_4DCBD489023A_impl*
end;//_tfwWordWorker_.AfterWordMaxCount

{$IfEnd} //not NoScripts

{$Else  tfwWordWorker_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAnonimousWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tfwWordWorker_imp_impl}
{$EndIf tfwWordWorker_imp}
