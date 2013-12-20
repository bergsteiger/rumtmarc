unit kwPopEditorGetParaByID;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopEditorGetParaByID.pas"
// �����: 03.11.2011 15:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::EditorFromStackKeyWords::pop_editor_GetParaByID
//
// �������� �� ��������� �������� �� ��� ID.
// 
// ������:
// {code}
// 12 editor:GetParaByID
// IF
// Para:Text .
// ELSE
// '�������� �� ������' .
// ENDIF
// {code}
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
  evCustomEditorWindow,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
 TkwPopEditorGetParaByID = class(_kwEditorFromStackWord_)
  {* �������� �� ��������� �������� �� ��� ID.

������:
[code]
 12 editor:GetParaByID
 IF
  Para:Text .
 ELSE
 '�������� �� ������' .
 ENDIF
[code] }
 protected
 // realized methods
   procedure DoWithEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopEditorGetParaByID
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  nevTools,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopEditorGetParaByID;

{$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}

// start class TkwPopEditorGetParaByID

procedure TkwPopEditorGetParaByID.DoWithEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4F4CB81200CA_4EB27F0E00CF_var*
var
 l_O : InevObject;
 l_P : InevPara;
//#UC END# *4F4CB81200CA_4EB27F0E00CF_var*
begin
//#UC START# *4F4CB81200CA_4EB27F0E00CF_impl*
 if anEditor.TextSource.DocumentContainer.FindObjByID(aCtx.rEngine.PopInt, l_O) then
 begin
  if not l_O.QT(InevPara, l_P) then
   RunnerAssert(false, '', aCtx);
  aCtx.rEngine.PushIntf(l_P);
  aCtx.rEngine.PushBool(true);
 end//anEditor.TextSource.DocumentContainer.FindObjByID(anID, l_O)
 else
  aCtx.rEngine.PushBool(false);
//#UC END# *4F4CB81200CA_4EB27F0E00CF_impl*
end;//TkwPopEditorGetParaByID.DoWithEditor

class function TkwPopEditorGetParaByID.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:editor:GetParaByID';
end;//TkwPopEditorGetParaByID.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwEditorFromStackWord.imp.pas}
{$IfEnd} //not NoScripts

end.