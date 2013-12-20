unit kwCompiledIterate;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledIterate.pas"
// Начат: 12.05.2011 21:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::TkwCompiledIterate
//
// Скомпилированная версия Iterate
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
  kwCompiledVarWorker,
  tfwScriptingInterfaces,
  kwCompiledVar
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledIterate = class(TkwCompiledVarWorker)
  {* Скомпилированная версия Iterate }
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledIterate
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledIterate

procedure TkwCompiledIterate.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4DCC19E9008D_var*
var
 l_List : ItfwValueList;
 l_Lambda : TtfwWord;
 l_Index : Integer;
//#UC END# *4DCBCD2200D2_4DCC19E9008D_var*
begin
//#UC START# *4DCBCD2200D2_4DCC19E9008D_impl*
 l_List := aVar.Value.AsList;
 l_Lambda := (aCtx.rEngine.PopObj As TtfwWord);
 for l_Index := 0 to Pred(l_List.Count) do
 begin
  aCtx.rEngine.Push(l_List[l_Index]);
  try
   l_Lambda.DoIt(aCtx);
  except
   on EtfwBreakIterator do
    Exit;
  end;//try..except
 end;//for l_Index
//#UC END# *4DCBCD2200D2_4DCC19E9008D_impl*
end;//TkwCompiledIterate.DoVar

{$IfEnd} //not NoScripts

end.