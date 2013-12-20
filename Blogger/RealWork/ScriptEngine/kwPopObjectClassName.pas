unit kwPopObjectClassName;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopObjectClassName.pas"
// �����: 26.02.2012 14:41
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CommonObjectWords::pop_object_ClassName
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  tfwScriptingInterfaces
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
 TkwPopObjectClassName = class(_kwObjectFromStackWord_)
 protected
 // realized methods
   procedure DoObject(anObject: TObject;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopObjectClassName
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  Controls,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopObjectClassName;

{$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}

// start class TkwPopObjectClassName

procedure TkwPopObjectClassName.DoObject(anObject: TObject;
  const aCtx: TtfwContext);
//#UC START# *4F212BD5010E_4F212DBF027D_var*
//#UC END# *4F212BD5010E_4F212DBF027D_var*
begin
//#UC START# *4F212BD5010E_4F212DBF027D_impl*
 if (anObject = nil) then
  aCtx.rEngine.PushString('��������� ��� ������ � nil')
 else
  aCtx.rEngine.PushString(anObject.ClassName);
//#UC END# *4F212BD5010E_4F212DBF027D_impl*
end;//TkwPopObjectClassName.DoObject

class function TkwPopObjectClassName.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:object:ClassName';
end;//TkwPopObjectClassName.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.