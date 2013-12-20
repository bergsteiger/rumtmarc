unit kwSystemIncluded;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwSystemIncluded.pas"
// Начат: 15.07.2011 21:36
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::Scripting::TkwSystemIncluded
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
  l3Interfaces,
  l3Filer,
  tfwScriptingInterfaces,
  kwCompiledWord,
  l3ParserInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwIncludedPrim.imp.pas}
 TkwSystemIncluded = class(_kwIncludedPrim_)
 private
 // private fields
   f_Stream : IStream;
 protected
 // overridden protected methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
   procedure ClearFields; override;
 public
 // public methods
   constructor Create(const aStream: IStream); reintroduce;
 end;//TkwSystemIncluded
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwCompiledIncluded,
  tfwParser,
  l3Parser,
  kwInteger,
  kwString,
  SysUtils,
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

type _Instance_R_ = TkwSystemIncluded;

{$Include ..\ScriptEngine\kwIncludedPrim.imp.pas}

// start class TkwSystemIncluded

constructor TkwSystemIncluded.Create(const aStream: IStream);
//#UC START# *4E207B920217_4E207A9201A5_var*
//#UC END# *4E207B920217_4E207A9201A5_var*
begin
//#UC START# *4E207B920217_4E207A9201A5_impl*
 Assert(aStream <> nil);
 inherited Create;
 f_Stream := aStream;
//#UC END# *4E207B920217_4E207A9201A5_impl*
end;//TkwSystemIncluded.Create

procedure TkwSystemIncluded.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4E207A9201A5_var*
var
 l_F : Tl3CustomFiler;
//#UC END# *4DAEEDE10285_4E207A9201A5_var*
begin
//#UC START# *4DAEEDE10285_4E207A9201A5_impl*
 l_F := Tl3CustomFiler.Create;
 try
  l_F.CodePage := CP_ANSI;
  l_F.COMStream := f_Stream;
  try
   DoFiler(l_F, '', aCtx);
  finally
   l_F.COMStream := nil;
  end;//try..finally
 finally
  FreeAndNil(l_F);
 end;//try..finally
//#UC END# *4DAEEDE10285_4E207A9201A5_impl*
end;//TkwSystemIncluded.DoDoIt

procedure TkwSystemIncluded.ClearFields;
 {-}
begin
 f_Stream := nil;
 inherited;
end;//TkwSystemIncluded.ClearFields

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwIncludedPrim.imp.pas}
{$IfEnd} //not NoScripts

end.