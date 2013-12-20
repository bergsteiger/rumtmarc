unit kwDualCompiledWordContainer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwDualCompiledWordContainer.pas"
// Начат: 29.04.2011 17:52
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwDualCompiledWordContainer
//
// Контейнер для хранения парных скомпилированных слов (begin end)
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
  kwCompiledWordContainer
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 TkwDualCompiledWordContainer = {abstract} class(TkwCompiledWordContainer)
  {* Контейнер для хранения парных скомпилированных слов (begin end) }
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 protected
 // protected fields
   f_Else : TkwCompiledWord;
 public
 // public methods
   constructor Create(aIf: TkwCompiledWord;
     aElse: TkwCompiledWord); reintroduce;
 end;//TkwDualCompiledWordContainer
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  l3Base,
  SysUtils
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

// start class TkwDualCompiledWordContainer

constructor TkwDualCompiledWordContainer.Create(aIf: TkwCompiledWord;
  aElse: TkwCompiledWord);
//#UC START# *4DB6F4CB03BE_4DBAC27801EF_var*
//#UC END# *4DB6F4CB03BE_4DBAC27801EF_var*
begin
//#UC START# *4DB6F4CB03BE_4DBAC27801EF_impl*
 inherited Create(aIf);
 l3Set(f_Else, aElse);
//#UC END# *4DB6F4CB03BE_4DBAC27801EF_impl*
end;//TkwDualCompiledWordContainer.Create

procedure TkwDualCompiledWordContainer.Cleanup;
//#UC START# *479731C50290_4DBAC27801EF_var*
//#UC END# *479731C50290_4DBAC27801EF_var*
begin
//#UC START# *479731C50290_4DBAC27801EF_impl*
 FreeAndNil(f_Else);
 inherited;
//#UC END# *479731C50290_4DBAC27801EF_impl*
end;//TkwDualCompiledWordContainer.Cleanup

{$IfEnd} //not NoScripts

end.