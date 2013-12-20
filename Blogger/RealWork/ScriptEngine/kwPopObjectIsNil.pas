unit kwPopObjectIsNil;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopObjectIsNil.pas"
// �����: 26.01.2012 14:37
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::CommonObjectWords::pop_object_IsNil
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
 TkwPopObjectIsNil = class(_kwObjectFromStackWord_)
 protected
 // realized methods
   procedure DoObject(anObject: TObject;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopObjectIsNil
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

type _Instance_R_ = TkwPopObjectIsNil;

{$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}

// start class TkwPopObjectIsNil

procedure TkwPopObjectIsNil.DoObject(anObject: TObject;
  const aCtx: TtfwContext);
//#UC START# *4F212BD5010E_4F212CC00391_var*
//#UC END# *4F212BD5010E_4F212CC00391_var*
begin
//#UC START# *4F212BD5010E_4F212CC00391_impl*
 aCtx.rEngine.PushBool(anObject = nil);
//#UC END# *4F212BD5010E_4F212CC00391_impl*
end;//TkwPopObjectIsNil.DoObject

class function TkwPopObjectIsNil.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:object:IsNil';
end;//TkwPopObjectIsNil.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwObjectFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.