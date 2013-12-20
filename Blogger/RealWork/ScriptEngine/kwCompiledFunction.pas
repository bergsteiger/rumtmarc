unit kwCompiledFunction;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledFunction.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::WordsDefinition::TkwCompiledFunction
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
  kwCompiledVar,
  kwCompiledProcedure,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledFunction = class(TkwCompiledProcedure)
 private
 // private fields
   f_ResultVar : TkwCompiledVar;
    {* Поле для свойства ResultVar}
 protected
 // property methods
   procedure pm_SetResultVar(aValue: TkwCompiledVar);
 protected
 // overridden property methods
   function pm_GetModifiers: TtfwWordModifiers; override;
   procedure pm_SetModifiers(aValue: TtfwWordModifiers); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // public properties
   property ResultVar: TkwCompiledVar
     read f_ResultVar
     write pm_SetResultVar;
 end;//TkwCompiledFunction
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledFunction

procedure TkwCompiledFunction.pm_SetResultVar(aValue: TkwCompiledVar);
//#UC START# *4F3BEFCE01CA_4F3BEDFE0051set_var*
//#UC END# *4F3BEFCE01CA_4F3BEDFE0051set_var*
begin
//#UC START# *4F3BEFCE01CA_4F3BEDFE0051set_impl*
 f_ResultVar := aValue;
 f_ResultVar.Modifiers := f_Modifiers;
 if (f_Modifiers = [tfw_wmStr]) then
  f_ResultVar.Value := TtfwStackValue_C(TtfwCStringFactory.C(''))
 else
 if (f_Modifiers = [tfw_wmInt]) then
  f_ResultVar.Value := TtfwStackValue_C(0)
 else
 if (f_Modifiers = [tfw_wmIntf]) then
  f_ResultVar.Value := TtfwStackValue_NULL
 else
 if (f_Modifiers = [tfw_wmObj]) then
  f_ResultVar.Value := TtfwStackValue_NULL;
//#UC END# *4F3BEFCE01CA_4F3BEDFE0051set_impl*
end;//TkwCompiledFunction.pm_SetResultVar

procedure TkwCompiledFunction.Cleanup;
//#UC START# *479731C50290_4F3BEDFE0051_var*
//#UC END# *479731C50290_4F3BEDFE0051_var*
begin
//#UC START# *479731C50290_4F3BEDFE0051_impl*
 f_ResultVar := nil;
 inherited;
//#UC END# *479731C50290_4F3BEDFE0051_impl*
end;//TkwCompiledFunction.Cleanup

procedure TkwCompiledFunction.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F3BEDFE0051_var*
var
 l_V : TtfwStackValue;
//#UC END# *4DAEEDE10285_4F3BEDFE0051_var*
begin
//#UC START# *4DAEEDE10285_4F3BEDFE0051_impl*
 try
  try
   inherited;
  finally
   l_V := ResultVar.Value;
  end;//try..finally
 except
  on EtfwExit do
  begin
   RunnerAssert(l_V.rType <> tfw_svtVoid,
                'Результат функции не инициализирован',
                aCtx);
   aCtx.rEngine.Push(l_V);
  end;//on EtfwExit
 end;//try..except
 RunnerAssert(l_V.rType <> tfw_svtVoid,
              'Результат функции не инициализирован',
              aCtx);
 aCtx.rEngine.Push(l_V);
//#UC END# *4DAEEDE10285_4F3BEDFE0051_impl*
end;//TkwCompiledFunction.DoDoIt

function TkwCompiledFunction.pm_GetModifiers: TtfwWordModifiers;
//#UC START# *4DCACD1800C8_4F3BEDFE0051get_var*
//#UC END# *4DCACD1800C8_4F3BEDFE0051get_var*
begin
//#UC START# *4DCACD1800C8_4F3BEDFE0051get_impl*
 Result := f_Modifiers;
//#UC END# *4DCACD1800C8_4F3BEDFE0051get_impl*
end;//TkwCompiledFunction.pm_GetModifiers

procedure TkwCompiledFunction.pm_SetModifiers(aValue: TtfwWordModifiers);
//#UC START# *4DCACD1800C8_4F3BEDFE0051set_var*
//#UC END# *4DCACD1800C8_4F3BEDFE0051set_var*
begin
//#UC START# *4DCACD1800C8_4F3BEDFE0051set_impl*
 f_Modifiers := aValue;
 if (f_ResultVar <> nil) then
  f_ResultVar.Modifiers := f_Modifiers;
//#UC END# *4DCACD1800C8_4F3BEDFE0051set_impl*
end;//TkwCompiledFunction.pm_SetModifiers

{$IfEnd} //not NoScripts

end.