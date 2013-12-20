unit kwCompiledStereotypedWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledStereotypedWord.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Stereotyping::TkwCompiledStereotypedWord
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
 TkwCompiledStereotypedWord = class(TkwCompiledWord)
 private
 // private fields
   f_Modifiers : TtfwWordModifiers;
 protected
 // overridden property methods
   function pm_GetModifiers: TtfwWordModifiers; override;
   procedure pm_SetModifiers(aValue: TtfwWordModifiers); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function AllowNestedCalls: Boolean; override;
 end;//TkwCompiledStereotypedWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwCompiledStereotypedWord

procedure TkwCompiledStereotypedWord.Cleanup;
//#UC START# *479731C50290_4F43F0490037_var*
//#UC END# *479731C50290_4F43F0490037_var*
begin
//#UC START# *479731C50290_4F43F0490037_impl*
 f_Modifiers := [];
 inherited;
//#UC END# *479731C50290_4F43F0490037_impl*
end;//TkwCompiledStereotypedWord.Cleanup

function TkwCompiledStereotypedWord.pm_GetModifiers: TtfwWordModifiers;
//#UC START# *4DCACD1800C8_4F43F0490037get_var*
//#UC END# *4DCACD1800C8_4F43F0490037get_var*
begin
//#UC START# *4DCACD1800C8_4F43F0490037get_impl*
 Result := f_Modifiers;
//#UC END# *4DCACD1800C8_4F43F0490037get_impl*
end;//TkwCompiledStereotypedWord.pm_GetModifiers

procedure TkwCompiledStereotypedWord.pm_SetModifiers(aValue: TtfwWordModifiers);
//#UC START# *4DCACD1800C8_4F43F0490037set_var*
//#UC END# *4DCACD1800C8_4F43F0490037set_var*
begin
//#UC START# *4DCACD1800C8_4F43F0490037set_impl*
 f_Modifiers := aValue;
//#UC END# *4DCACD1800C8_4F43F0490037set_impl*
end;//TkwCompiledStereotypedWord.pm_SetModifiers

function TkwCompiledStereotypedWord.AllowNestedCalls: Boolean;
//#UC START# *4F3C06550278_4F43F0490037_var*
//#UC END# *4F3C06550278_4F43F0490037_var*
begin
//#UC START# *4F3C06550278_4F43F0490037_impl*
 Result := true;
//#UC END# *4F3C06550278_4F43F0490037_impl*
end;//TkwCompiledStereotypedWord.AllowNestedCalls

{$IfEnd} //not NoScripts

end.