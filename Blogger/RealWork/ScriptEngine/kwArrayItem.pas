unit kwArrayItem;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwArrayItem.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::ArrayProcessing::array_Item
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
 {$Include ..\ScriptEngine\tfwArrayWord.imp.pas}
 TkwArrayItem = {final} class(_tfwArrayWord_)
 protected
 // realized methods
   procedure DoArray(const aCtx: TtfwContext;
     const anArray: ItfwValueList); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwArrayItem
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwArrayItem;

{$Include ..\ScriptEngine\tfwArrayWord.imp.pas}

// start class TkwArrayItem

procedure TkwArrayItem.DoArray(const aCtx: TtfwContext;
  const anArray: ItfwValueList);
//#UC START# *4ED7A0640044_503F2A4100C8_var*
var
 I: Integer;
//#UC END# *4ED7A0640044_503F2A4100C8_var*
begin
//#UC START# *4ED7A0640044_503F2A4100C8_impl*
 RunnerAssert(aCtx.rEngine.IsTopInt, '��� ����� �����!', aCtx);
 I := aCtx.rEngine.PopInt;
 RunnerAssert(I >= 0, '��� ����� ������������� �����.', aCtx);
 RunnerAssert(I < anArray.Count, '� ������� ��� ������� ���������.', aCtx);
 aCtx.rEngine.Push(anArray.Items[I]);
//#UC END# *4ED7A0640044_503F2A4100C8_impl*
end;//TkwArrayItem.DoArray

class function TkwArrayItem.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '[i]';
end;//TkwArrayItem.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwArrayWord.imp.pas}
{$IfEnd} //not NoScripts

end.