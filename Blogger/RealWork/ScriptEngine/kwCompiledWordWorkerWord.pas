unit kwCompiledWordWorkerWord;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwCompiledWordWorkerWord.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwCompiledWordWorkerWord
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
  kwCompiledWordWorkerWordRunner,
  tfwScriptingInterfaces,
  kwCompiledWordWorker,
  l3Interfaces,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 RkwCompiledWordWorkerWord = class of TkwCompiledWordWorkerWord;

 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
 TkwCompiledWordWorkerWord = class(_tfwWordWorker_)
 private
 // private fields
   f_Compiled : TkwCompiledWord;
 protected
 // realized methods
   function CompiledWorkerClass: RkwCompiledWordWorker; override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   class function ReallyNeedRegister: Boolean; override;
   procedure FillCompiledWorker(aWorker: TkwCompiledWordWorker;
     const aContext: TtfwContext); override;
 public
 // overridden public methods
   function IsAnonimous: Boolean; override;
 protected
 // protected methods
   function RunnerClass: RkwCompiledWordWorkerWordRunner; virtual;
 public
 // public methods
   constructor Create(aCompiled: TkwCompiledWord); reintroduce;
 end;//TkwCompiledWordWorkerWord
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledPushWord,
  SysUtils,
  l3Parser,
  kwInteger,
  kwString,
  TypInfo,
  l3Base,
  kwIntegerFactory,
  kwStringFactory,
  l3String,
  l3Chars,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwCompiledWordWorkerWord;

{$Include ..\ScriptEngine\tfwWordWorker.imp.pas}

// start class TkwCompiledWordWorkerWord

constructor TkwCompiledWordWorkerWord.Create(aCompiled: TkwCompiledWord);
//#UC START# *4F219F0F0176_4F21976E01C2_var*
//#UC END# *4F219F0F0176_4F21976E01C2_var*
begin
//#UC START# *4F219F0F0176_4F21976E01C2_impl*
 inherited Create;
 aCompiled.SetRefTo(f_Compiled);
//#UC END# *4F219F0F0176_4F21976E01C2_impl*
end;//TkwCompiledWordWorkerWord.Create

function TkwCompiledWordWorkerWord.RunnerClass: RkwCompiledWordWorkerWordRunner;
//#UC START# *4F3FAC0C0170_4F21976E01C2_var*
//#UC END# *4F3FAC0C0170_4F21976E01C2_var*
begin
//#UC START# *4F3FAC0C0170_4F21976E01C2_impl*
 Result := TkwCompiledWordWorkerWordRunner;
//#UC END# *4F3FAC0C0170_4F21976E01C2_impl*
end;//TkwCompiledWordWorkerWord.RunnerClass

function TkwCompiledWordWorkerWord.CompiledWorkerClass: RkwCompiledWordWorker;
//#UC START# *4DCBD67C0362_4F21976E01C2_var*
//#UC END# *4DCBD67C0362_4F21976E01C2_var*
begin
//#UC START# *4DCBD67C0362_4F21976E01C2_impl*
 Result := RunnerClass;
//#UC END# *4DCBD67C0362_4F21976E01C2_impl*
end;//TkwCompiledWordWorkerWord.CompiledWorkerClass

procedure TkwCompiledWordWorkerWord.Cleanup;
//#UC START# *479731C50290_4F21976E01C2_var*
//#UC END# *479731C50290_4F21976E01C2_var*
begin
//#UC START# *479731C50290_4F21976E01C2_impl*
 FreeAndNil(f_Compiled);
 inherited;
//#UC END# *479731C50290_4F21976E01C2_impl*
end;//TkwCompiledWordWorkerWord.Cleanup

class function TkwCompiledWordWorkerWord.ReallyNeedRegister: Boolean;
//#UC START# *4DC2E05B03DD_4F21976E01C2_var*
//#UC END# *4DC2E05B03DD_4F21976E01C2_var*
begin
//#UC START# *4DC2E05B03DD_4F21976E01C2_impl*
 Result := false;
//#UC END# *4DC2E05B03DD_4F21976E01C2_impl*
end;//TkwCompiledWordWorkerWord.ReallyNeedRegister

procedure TkwCompiledWordWorkerWord.FillCompiledWorker(aWorker: TkwCompiledWordWorker;
  const aContext: TtfwContext);
//#UC START# *4F219FA10268_4F21976E01C2_var*
//#UC END# *4F219FA10268_4F21976E01C2_var*
begin
//#UC START# *4F219FA10268_4F21976E01C2_impl*
 (aWorker As TkwCompiledWordWorkerWordRunner).Compiled := f_Compiled;
 inherited;
//#UC END# *4F219FA10268_4F21976E01C2_impl*
end;//TkwCompiledWordWorkerWord.FillCompiledWorker

function TkwCompiledWordWorkerWord.IsAnonimous: Boolean;
//#UC START# *4F3AB3600008_4F21976E01C2_var*
//#UC END# *4F3AB3600008_4F21976E01C2_var*
begin
//#UC START# *4F3AB3600008_4F21976E01C2_impl*
 Result := false;
//#UC END# *4F3AB3600008_4F21976E01C2_impl*
end;//TkwCompiledWordWorkerWord.IsAnonimous

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwWordWorker.imp.pas}
{$IfEnd} //not NoScripts

end.