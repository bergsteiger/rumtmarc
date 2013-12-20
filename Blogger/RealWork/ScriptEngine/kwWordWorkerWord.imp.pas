{$IfNDef kwWordWorkerWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwWordWorkerWord.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::kwWordWorkerWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwWordWorkerWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}
 _kwWordWorkerWord_ = {abstract mixin} class(_tfwStandardProcedure_)
 protected
 // overridden protected methods
   procedure FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
     aCompiled: TkwCompiledWord;
     const aContext: TtfwContext); override;
     {* Завершает определение вновь созданного слова }
   procedure FillCompiledWord(aCompiled: TkwCompiledWord;
     const aCtx: TtfwContext); override;
 protected
 // protected methods
   function CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord; virtual;
   function AddedParameters: Tl3CStringArray; virtual;
   function ParamModifiers(aParamIndex: Integer): TtfwWordModifiers; virtual;
 end;//_kwWordWorkerWord_
{$IfEnd} //not NoScripts

{$Else kwWordWorkerWord_imp}

{$IfNDef kwWordWorkerWord_imp_impl}
{$Define kwWordWorkerWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}

const
   { Inner }
  cWordToWork = 'WordToWork';

// start class _kwWordWorkerWord_

function _kwWordWorkerWord_.CompiledWordWorkerWordClass: RkwCompiledWordWorkerWord;
//#UC START# *4F3FA9670261_4F3FA7E30073_var*
//#UC END# *4F3FA9670261_4F3FA7E30073_var*
begin
//#UC START# *4F3FA9670261_4F3FA7E30073_impl*
 Result := TkwCompiledWordWorkerWord;
//#UC END# *4F3FA9670261_4F3FA7E30073_impl*
end;//_kwWordWorkerWord_.CompiledWordWorkerWordClass

function _kwWordWorkerWord_.AddedParameters: Tl3CStringArray;
//#UC START# *4F3FF55403AB_4F3FA7E30073_var*
//#UC END# *4F3FF55403AB_4F3FA7E30073_var*
begin
//#UC START# *4F3FF55403AB_4F3FA7E30073_impl*
 Result := l3CStringArrayFromS([cWordToWork]);
//#UC END# *4F3FF55403AB_4F3FA7E30073_impl*
end;//_kwWordWorkerWord_.AddedParameters

function _kwWordWorkerWord_.ParamModifiers(aParamIndex: Integer): TtfwWordModifiers;
//#UC START# *4F4186D50048_4F3FA7E30073_var*
//#UC END# *4F4186D50048_4F3FA7E30073_var*
begin
//#UC START# *4F4186D50048_4F3FA7E30073_impl*
 Result := [tfw_wmObj];
//#UC END# *4F4186D50048_4F3FA7E30073_impl*
end;//_kwWordWorkerWord_.ParamModifiers

procedure _kwWordWorkerWord_.FinishDefinitionOfNewWord(aWordToFinish: TtfwKeyWord;
  aCompiled: TkwCompiledWord;
  const aContext: TtfwContext);
//#UC START# *4F219629036A_4F3FA7E30073_var*
var
 l_Worker : TkwCompiledWordWorkerWord;
 l_S : Tl3CStringArray;
 l_Index : Integer;
//#UC END# *4F219629036A_4F3FA7E30073_var*
begin
//#UC START# *4F219629036A_4F3FA7E30073_impl*
 l_S := AddedParameters;
 for l_Index := Low(l_S) to High(l_S) do
  ItfwCompiler(aCompiled).CompileInParameterPopCode(aContext, l_S[l_Index]);
 l_Worker := CompiledWordWorkerWordClass.Create(aCompiled);
 // - сюда ещё надо aCompiled подать
 try
  aWordToFinish.Word := l_Worker;
 finally
  FreeAndNil(l_Worker);
 end;//try..finally
 //inherited;
 // - не надо это звать
//#UC END# *4F219629036A_4F3FA7E30073_impl*
end;//_kwWordWorkerWord_.FinishDefinitionOfNewWord

procedure _kwWordWorkerWord_.FillCompiledWord(aCompiled: TkwCompiledWord;
  const aCtx: TtfwContext);
//#UC START# *4F21A4F60049_4F3FA7E30073_var*
var
 l_S : Tl3CStringArray;
 l_Index : Integer;
//#UC END# *4F21A4F60049_4F3FA7E30073_var*
begin
//#UC START# *4F21A4F60049_4F3FA7E30073_impl*
 inherited;
 l_S := AddedParameters;
 for l_Index := Low(l_S) to High(l_S) do
  ItfwWordCompiler(aCompiled).DefineInParameter(aCtx.rEngine, l_S[l_Index], ParamModifiers(l_Index));
//#UC END# *4F21A4F60049_4F3FA7E30073_impl*
end;//_kwWordWorkerWord_.FillCompiledWord

{$IfEnd} //not NoScripts

{$Else  kwWordWorkerWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwStandardProcedure.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwWordWorkerWord_imp_impl}
{$EndIf kwWordWorkerWord_imp}
