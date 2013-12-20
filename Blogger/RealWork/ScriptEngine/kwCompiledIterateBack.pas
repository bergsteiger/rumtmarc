unit kwCompiledIterateBack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledIterateBack.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::TkwCompiledIterateBack
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
 TkwCompiledIterateBack = class(TkwCompiledVarWorker)
 protected
 // realized methods
   procedure DoVar(const aCtx: TtfwContext;
     aVar: TkwCompiledVar); override;
 end;//TkwCompiledIterateBack
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledIterateBack

procedure TkwCompiledIterateBack.DoVar(const aCtx: TtfwContext;
  aVar: TkwCompiledVar);
//#UC START# *4DCBCD2200D2_4ED7B30E027F_var*
var
 l_List : ItfwValueList;
 l_Lambda : TtfwWord;
 l_Index : Integer;
//#UC END# *4DCBCD2200D2_4ED7B30E027F_var*
begin
//#UC START# *4DCBCD2200D2_4ED7B30E027F_impl*
 l_List := aVar.Value.AsList;
 l_Lambda := (aCtx.rEngine.PopObj As TtfwWord);
 for l_Index := Pred(l_List.Count) downto 0 do
 begin
  aCtx.rEngine.Push(l_List[l_Index]);
  try
   l_Lambda.DoIt(aCtx);
  except
   on EtfwBreakIterator do
    Exit;
  end;//try..except
 end;//for l_Index
//#UC END# *4DCBCD2200D2_4ED7B30E027F_impl*
end;//TkwCompiledIterateBack.DoVar

{$IfEnd} //not NoScripts

end.