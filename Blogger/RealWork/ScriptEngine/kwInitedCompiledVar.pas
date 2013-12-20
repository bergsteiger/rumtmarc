unit kwInitedCompiledVar;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwInitedCompiledVar.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::VarProducing::TkwInitedCompiledVar
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
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwInitedCompiledVar = class(TkwCompiledVar)
 protected
 // overridden property methods
   function pm_GetCompiler: ItfwCompiler; override;
 protected
 // overridden protected methods
   function AllowLocalCode: Boolean; override;
 end;//TkwInitedCompiledVar
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}

// start class TkwInitedCompiledVar

function TkwInitedCompiledVar.pm_GetCompiler: ItfwCompiler;
//#UC START# *4F3D470503C5_4F3E28BE0028get_var*
//#UC END# *4F3D470503C5_4F3E28BE0028get_var*
begin
//#UC START# *4F3D470503C5_4F3E28BE0028get_impl*
 Result := inherited pm_GetCompiler;
//#UC END# *4F3D470503C5_4F3E28BE0028get_impl*
end;//TkwInitedCompiledVar.pm_GetCompiler

function TkwInitedCompiledVar.AllowLocalCode: Boolean;
//#UC START# *4F3E29A700F1_4F3E28BE0028_var*
//#UC END# *4F3E29A700F1_4F3E28BE0028_var*
begin
//#UC START# *4F3E29A700F1_4F3E28BE0028_impl*
 Result := true;
//#UC END# *4F3E29A700F1_4F3E28BE0028_impl*
end;//TkwInitedCompiledVar.AllowLocalCode

{$IfEnd} //not NoScripts

end.