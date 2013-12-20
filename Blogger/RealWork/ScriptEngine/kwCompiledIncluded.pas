unit kwCompiledIncluded;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledIncluded.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledIncluded
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
  kwCompiledWord,
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwCompiledIncluded = class(TkwCompiledWord)
 protected
 // overridden property methods
   function pm_GetCompiler: ItfwCompiler; override;
 protected
 // overridden protected methods
   function AllowLocalDictionary: Boolean; override;
 end;//TkwCompiledIncluded
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  SysUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwCompiledIncluded

function TkwCompiledIncluded.AllowLocalDictionary: Boolean;
//#UC START# *4DC98A4801B6_4DC98AAC0395_var*
//#UC END# *4DC98A4801B6_4DC98AAC0395_var*
begin
//#UC START# *4DC98A4801B6_4DC98AAC0395_impl*
 Result := false;
//#UC END# *4DC98A4801B6_4DC98AAC0395_impl*
end;//TkwCompiledIncluded.AllowLocalDictionary

function TkwCompiledIncluded.pm_GetCompiler: ItfwCompiler;
//#UC START# *4F3D470503C5_4DC98AAC0395get_var*
//#UC END# *4F3D470503C5_4DC98AAC0395get_var*
begin
//#UC START# *4F3D470503C5_4DC98AAC0395get_impl*
 Supports(Get_ParentFinder, ItfwCompiler, Result);
 //Result := inherited pm_GetCompiler;
//#UC END# *4F3D470503C5_4DC98AAC0395get_impl*
end;//TkwCompiledIncluded.pm_GetCompiler

{$IfEnd} //not NoScripts

end.