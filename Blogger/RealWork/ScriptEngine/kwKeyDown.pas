unit kwKeyDown;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwKeyDown.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::KeyBoardInput::KeyDown
//
// 'Alt' KeyDown // ������ �������
// 1000 SLEEP
// 'Alt' KeyUp // ��������� �������
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
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwKeyDown = {final} class(_tfwAutoregisteringWord_)
  {* 'Alt' KeyDown // ������ �������
1000 SLEEP
'Alt' KeyUp // ��������� ������� }
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwKeyDown
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  afwFacade,
  Windows,
  Menus,
  Classes,
  Messages,
  SysUtils,
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwKeyDown;

{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwKeyDown

procedure TkwKeyDown.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5220A3ED0104_var*
{$IfNDef XE}
var
 l_Input: array[0..0] of TInput;
 l_String: string;
 l_Key: Word;
{$EndIf  XE}
//#UC END# *4DAEEDE10285_5220A3ED0104_var*
begin
//#UC START# *4DAEEDE10285_5220A3ED0104_impl*
{$IfNDef XE}
 l_String := aCtx.rEngine.PopDelphiString;

 if AnsiCompareText(l_String, MenuKeyCaps[mkcShift]) = 0 then
  l_Key := VK_SHIFT
 else
 if (AnsiCompareText(l_String, '^') = 0) or (AnsiCompareText(l_String, MenuKeyCaps[mkcCtrl]) = 0) then
  l_Key := VK_CONTROL
 else
 if AnsiCompareText(l_String, MenuKeyCaps[mkcAlt]) = 0 then
  l_Key := VK_MENU
 else
 begin
  if Length(l_String) > 0 then
   for l_Key := $08 to $255 do
    if AnsiCompareText(l_String, ShortCutToText(l_Key)) = 0 then
     Break;
 end;

 with l_Input[0] do
 begin
  Itype := INPUT_KEYBOARD;
  ki.wVk := l_Key;
  ki.wScan := MapVirtualKey(ki.wVk, 0);
  ki.dwFlags := KEYEVENTF_EXTENDEDKEY;
  ki.time := 0;
  ki.dwExtraInfo := 0;
 end;

 SendInput(1, l_Input[0], SizeOf(TInput));
 Tafw.ProcessMessages;
{$Else  XE}
 Assert(false);
{$EndIf XE}
//#UC END# *4DAEEDE10285_5220A3ED0104_impl*
end;//TkwKeyDown.DoDoIt

class function TkwKeyDown.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'KeyDown';
end;//TkwKeyDown.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

end.