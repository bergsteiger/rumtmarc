unit kwCompiledVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledVar.pas"
// Начат: 29.04.2011 22:34
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledVar
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
  kwCompiledWord
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledVar = class(TkwCompiledWord)
 private
 // private fields
   f_Modifiers : TtfwWordModifiers;
   f_Value : TtfwStackValue;
    {* Поле для свойства Value}
 protected
 // property methods
   procedure pm_SetValue(const aValue: TtfwStackValue);
 protected
 // overridden property methods
   function pm_GetModifiers: TtfwWordModifiers; override;
   procedure pm_SetModifiers(aValue: TtfwWordModifiers); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure DoDoIt(const aCtx: TtfwContext); override;
   function AllowLocalDictionary: Boolean; override;
   procedure ClearFields; override;
 public
 // public properties
   property Value: TtfwStackValue
     read f_Value
     write pm_SetValue;
 end;//TkwCompiledVar
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledVar

procedure TkwCompiledVar.pm_SetValue(const aValue: TtfwStackValue);
//#UC START# *4DBB05020267_4DBB04B6014Cset_var*
const
 cBadModifier = 'Неверный модификатор';
var
 l_Context : PtfwContext;
//#UC END# *4DBB05020267_4DBB04B6014Cset_var*
begin
//#UC START# *4DBB05020267_4DBB04B6014Cset_impl*
 if (f_Modifiers - [tfw_wmPrivate, tfw_wmProtected, tfw_wmPublic] <> []) then
 begin
  l_Context := nil;
  Case aValue.rType of
   tfw_svtNil:
    RunnerAssert((tfw_wmObj in f_Modifiers) OR
           (tfw_wmFile in f_Modifiers) OR
           (tfw_wmIntf in f_Modifiers) OR
           (tfw_wmClass in f_Modifiers) OR
           (tfw_wmStr in f_Modifiers), cBadModifier, l_Context^);
   tfw_svtInt:
    RunnerAssert(tfw_wmInt in f_Modifiers, cBadModifier, l_Context^);
   tfw_svtStr:
    RunnerAssert(tfw_wmStr in f_Modifiers, cBadModifier, l_Context^);
   tfw_svtObj:
    RunnerAssert(tfw_wmObj in f_Modifiers, cBadModifier, l_Context^);
   tfw_svtIntf:
    RunnerAssert(tfw_wmIntf in f_Modifiers, cBadModifier, l_Context^);
   tfw_svtList:
    RunnerAssert(tfw_wmList in f_Modifiers, cBadModifier, l_Context^);
   tfw_svtFile:
    RunnerAssert(tfw_wmFile in f_Modifiers, cBadModifier, l_Context^);
   tfw_svtChar:
    RunnerAssert(tfw_wmChar in f_Modifiers, cBadModifier, l_Context^);
   tfw_svtWStr:
    RunnerAssert(tfw_wmWStr in f_Modifiers, cBadModifier, l_Context^);
   tfw_svtBool:
    RunnerAssert(tfw_wmBool in f_Modifiers, cBadModifier, l_Context^);
   tfw_svtClass:
    RunnerAssert(tfw_wmClass in f_Modifiers, cBadModifier, l_Context^);
   else
    RunnerAssert(false, cBadModifier, l_Context^);
  end;//Case aValue.rType
 end;//f_Modifiers <> []
 f_Value := aValue;
//#UC END# *4DBB05020267_4DBB04B6014Cset_impl*
end;//TkwCompiledVar.pm_SetValue

procedure TkwCompiledVar.Cleanup;
//#UC START# *479731C50290_4DBB04B6014C_var*
//#UC END# *479731C50290_4DBB04B6014C_var*
begin
//#UC START# *479731C50290_4DBB04B6014C_impl*
 Finalize(f_Value);
 l3FillChar(f_Value, SizeOf(f_Value));
 f_Modifiers := [];
 inherited;
//#UC END# *479731C50290_4DBB04B6014C_impl*
end;//TkwCompiledVar.Cleanup

procedure TkwCompiledVar.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DBB04B6014C_var*
//#UC END# *4DAEEDE10285_4DBB04B6014C_var*
begin
//#UC START# *4DAEEDE10285_4DBB04B6014C_impl*
 aCtx.rEngine.Push(f_Value);
//#UC END# *4DAEEDE10285_4DBB04B6014C_impl*
end;//TkwCompiledVar.DoDoIt

function TkwCompiledVar.AllowLocalDictionary: Boolean;
//#UC START# *4DC98A4801B6_4DBB04B6014C_var*
//#UC END# *4DC98A4801B6_4DBB04B6014C_var*
begin
//#UC START# *4DC98A4801B6_4DBB04B6014C_impl*
 Result := false;
//#UC END# *4DC98A4801B6_4DBB04B6014C_impl*
end;//TkwCompiledVar.AllowLocalDictionary

function TkwCompiledVar.pm_GetModifiers: TtfwWordModifiers;
//#UC START# *4DCACD1800C8_4DBB04B6014Cget_var*
//#UC END# *4DCACD1800C8_4DBB04B6014Cget_var*
begin
//#UC START# *4DCACD1800C8_4DBB04B6014Cget_impl*
 Result := f_Modifiers;
//#UC END# *4DCACD1800C8_4DBB04B6014Cget_impl*
end;//TkwCompiledVar.pm_GetModifiers

procedure TkwCompiledVar.pm_SetModifiers(aValue: TtfwWordModifiers);
//#UC START# *4DCACD1800C8_4DBB04B6014Cset_var*
//#UC END# *4DCACD1800C8_4DBB04B6014Cset_var*
begin
//#UC START# *4DCACD1800C8_4DBB04B6014Cset_impl*
 f_Modifiers := aValue;
//#UC END# *4DCACD1800C8_4DBB04B6014Cset_impl*
end;//TkwCompiledVar.pm_SetModifiers

procedure TkwCompiledVar.ClearFields;
 {-}
begin
 Finalize(f_Value);
 inherited;
end;//TkwCompiledVar.ClearFields

{$IfEnd} //not NoScripts

end.