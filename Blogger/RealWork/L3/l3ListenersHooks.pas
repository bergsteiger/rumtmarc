unit l3ListenersHooks;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Модуль: "w:/common/components/rtl/Garant/L3/l3ListenersHooks.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Low Level::L3::l3Listeners::l3ListenersHooks
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\L3\l3Define.inc}

interface

uses
  Windows
  ;

function CBTHookFunc(Code: Integer;
  WParam: WPARAM;
  LParam: LPARAM): LongInt; stdcall;
function CallWndProcHookFunc(Code: Integer;
  WParam: WPARAM;
  Msg: PCWPStruct): LongInt; stdcall;
function GetMessageHookFunc(Code: Integer;
  WParam: WPARAM;
  Msg: PMsg): LongInt; stdcall;
function CallWndProcRetHookFunc(Code: Integer;
  WParam: WPARAM;
  Msg: PCWPRetStruct): LongInt; stdcall;
function MouseHookFunc(Code: Integer;
  WParam: WPARAM;
  HookStruct: PMouseHookStruct): LongInt; stdcall;

implementation

uses
  l3ListenersManager,
  l3Base,
  l3Interfaces,
  Messages
  ;

// unit methods

function CBTHookFunc(Code: Integer;
  WParam: WPARAM;
  LParam: LPARAM): LongInt;
//#UC START# *4F6714B90103_4F67149B024A_var*
var
 l_Index: Integer;
 l_Result: Tl3HookProcResult;
//#UC END# *4F6714B90103_4F67149B024A_var*
begin
//#UC START# *4F6714B90103_4F67149B024A_impl*
 if Code < 0 then
 begin
  Result := CallNextHookEx(Tl3ListenersManager.Instance.CBTHook, Code, WParam, LParam);
  Exit;
 end;

 l_Result.Handled := False;
 l_Result.Result := 0;
 for l_Index := 0 to Tl3ListenersManager.Instance.CBTListeners.Count - 1 do
 begin
  Tl3ListenersManager.Instance.CBTListeners[l_Index].CBTListenerNotify(Code, WParam, LParam, l_Result);
  if l_Result.Handled then
  begin
   Result := l_Result.Result;
   Exit;
  end;
 end;
 Result := CallNextHookEx(Tl3ListenersManager.Instance.CBTHook, Code, WParam, LParam);
//#UC END# *4F6714B90103_4F67149B024A_impl*
end;//CBTHookFunc

function CallWndProcHookFunc(Code: Integer;
  WParam: WPARAM;
  Msg: PCWPStruct): LongInt;
//#UC START# *4F67157402EF_4F67149B024A_var*
var
 l_Index : Integer;
 l_Result: Tl3HookProcResult;
//#UC END# *4F67157402EF_4F67149B024A_var*
begin
//#UC START# *4F67157402EF_4F67149B024A_impl*
 if Code < 0 then
 begin
  Result := CallNextHookEx(Tl3ListenersManager.Instance.WndProcHook, Code, WParam, Longint(Msg));
  Exit;
 end;

 if Code = HC_ACTION then
 begin
  l_Result.Handled := False;
  l_Result.Result := 0;
  for l_Index := 0 to Tl3ListenersManager.Instance.WndProcListeners.Count - 1 do
  begin
   Tl3ListenersManager.Instance.WndProcListeners[l_Index].WndProcListenerNotify(Msg, l_Result);
   if l_Result.Handled then
   begin
    Result := l_Result.Result;
    Exit; 
   end;
  end;
 end;//if Code = HC_ACTION then
 Result := CallNextHookEx(Tl3ListenersManager.Instance.WndProcHook, Code, WParam, Longint(Msg));
//#UC END# *4F67157402EF_4F67149B024A_impl*
end;//CallWndProcHookFunc

function GetMessageHookFunc(Code: Integer;
  WParam: WPARAM;
  Msg: PMsg): LongInt;
//#UC START# *4F6715D20141_4F67149B024A_var*
var
 l_Index: Integer;
 l_Result: Tl3HookProcResult;
//#UC END# *4F6715D20141_4F67149B024A_var*
begin
//#UC START# *4F6715D20141_4F67149B024A_impl*
 if Code < 0 then
 begin
  Result := CallNextHookEx(Tl3ListenersManager.Instance.GetMessageHook, Code, WParam, Longint(Msg));
  Exit;
 end;

 l_Result.Handled := False;
 l_Result.Result := 0;
 if (Msg.Message = WM_MOUSEWHEEL) and
    Assigned(Tl3ListenersManager.Instance.MouseWheelListeners) then
  for l_Index := 0 to Tl3ListenersManager.Instance.MouseWheelListeners.Count - 1 do
  begin
   Tl3ListenersManager.Instance.MouseWheelListeners[l_Index].MouseWheelListenerNotify(Msg, l_Result);
   if l_Result.Handled then
   begin
    Result := l_Result.Result;
    Exit;
   end;
  end
 else
  for l_Index := 0 to Tl3ListenersManager.Instance.GetMessageListeners.Count - 1 do
  begin
   Tl3ListenersManager.Instance.GetMessageListeners[l_Index].GetMessageListenerNotify(Code, WParam, Msg, l_Result);
   if l_Result.Handled then
   begin
    Result := l_Result.Result;
    Exit;
   end;
  end;
 Result := CallNextHookEx(Tl3ListenersManager.Instance.GetMessageHook, Code, WParam, Longint(Msg));
//#UC END# *4F6715D20141_4F67149B024A_impl*
end;//GetMessageHookFunc

function CallWndProcRetHookFunc(Code: Integer;
  WParam: WPARAM;
  Msg: PCWPRetStruct): LongInt;
//#UC START# *4F73208D0297_4F67149B024A_var*
var
 l_Index : Integer;
 l_Result: Tl3HookProcResult;
//#UC END# *4F73208D0297_4F67149B024A_var*
begin
//#UC START# *4F73208D0297_4F67149B024A_impl*
 if Code < 0 then
 begin
  Result := CallNextHookEx(Tl3ListenersManager.Instance.WndProcRetHook, Code, WParam, Longint(Msg));
  Exit;
 end;

 if Code = HC_ACTION then
 begin
  l_Result.Handled := False;
  l_Result.Result := 0;
  for l_Index := 0 to Tl3ListenersManager.Instance.WndProcRetListeners.Count - 1 do
  begin
   Tl3ListenersManager.Instance.WndProcRetListeners[l_Index].WndProcRetListenerNotify(Msg, l_Result);
   if l_Result.Handled then
   begin
    Result := l_Result.Result;
    Exit;
   end;
  end;
 end;//if Code = HC_ACTION then
 Result := CallNextHookEx(Tl3ListenersManager.Instance.WndProcRetHook, Code, WParam, Longint(Msg));
//#UC END# *4F73208D0297_4F67149B024A_impl*
end;//CallWndProcRetHookFunc

function MouseHookFunc(Code: Integer;
  WParam: WPARAM;
  HookStruct: PMouseHookStruct): LongInt;
//#UC START# *4F74214D035A_4F67149B024A_var*
var
 l_Index: Integer;
 l_Result: Tl3HookProcResult;
//#UC END# *4F74214D035A_4F67149B024A_var*
begin
//#UC START# *4F74214D035A_4F67149B024A_impl*
 if Code < 0 then
 begin
  Result := CallNextHookEx(Tl3ListenersManager.Instance.MouseHook, Code, WParam, Longint(HookStruct));
  Exit;
 end;

 l_Result.Handled := False;
 l_Result.Result := 0;
 for l_Index := 0 to Tl3ListenersManager.Instance.MouseListeners.Count - 1 do
 begin
  Tl3ListenersManager.Instance.MouseListeners[l_Index].MouseListenerNotify(WParam, HookStruct, l_Result);
  if l_Result.Handled then
  begin
   Result := l_Result.Result;
   Exit;
  end;
 end;
 Result := CallNextHookEx(Tl3ListenersManager.Instance.MouseHook, Code, WParam, Longint(HookStruct));
//#UC END# *4F74214D035A_4F67149B024A_impl*
end;//MouseHookFunc

end.