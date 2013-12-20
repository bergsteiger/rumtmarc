{$IfNDef kwControlWord_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwControlWord.imp.pas"
// Начат: 28.04.2011 19:44
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::kwControlWord
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define kwControlWord_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _SystemWord_Parent_ = _tfwAutoregisteringWord_;
 {$Include ..\ScriptEngine\SystemWord.imp.pas}
 _kwControlWord_ = {abstract mixin} class(_SystemWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoControl(aControl: TControl;
     const aCtx: TtfwContext); virtual; abstract;
 end;//_kwControlWord_
{$IfEnd} //not NoScripts

{$Else kwControlWord_imp}

{$IfNDef kwControlWord_imp_impl}
{$Define kwControlWord_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

{$Include ..\ScriptEngine\SystemWord.imp.pas}

type
  THackControl = {abstract} class(TControl)
  end;//THackControl

// start class _kwControlWord_

procedure _kwControlWord_.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB98B4B0382_var*

var
 l_C : TControl;
 
 procedure GetControl;
 begin//GetControl
  l_C := FindControl(GetFocus);
  if (l_C = nil) then
  // - наверное мы под отладчиком или из под нас выдернули фокус
  begin
   if (Screen.ActiveForm <> nil) then
    l_C := Screen.ActiveForm.ActiveControl
   else 
   if (Screen.ActiveCustomForm <> nil) then
    l_C := TForm(Screen.ActiveCustomForm).ActiveControl;
  end;//l_C = nil
  RunnerAssert(l_C <> nil, '', aCtx);
 end;//GetControl

var
{$IFDEF Archi}
 i      : Integer;
 l_Comp : TComponent;
{$ENDIF Archi}
 l_F    : TafwCustomForm;
 l_CP   : TComponent;
 l_N    : AnsiString;
 l_PrevClosedForm : TafwCustomForm;
//#UC END# *4DAEEDE10285_4DB98B4B0382_var*
begin
//#UC START# *4DAEEDE10285_4DB98B4B0382_impl*
 l_N := aCtx.rEngine.PopDelphiString;
 l_PrevClosedForm := nil;
 l_CP := nil;
 GetControl;
 if (l_C.Name <> l_N) then
 begin
  l_F := afw.GetParentForm(l_C);
  RunnerAssert(l_F <> nil, '', aCtx);
  while (l_F <> nil) do
  begin
   if l_F.Name = l_N then
   begin
    l_CP := l_F;
    Break;
   end; // if l_F.Name = l_N then
   l_CP := l_F.FindComponent(l_N);
   {$IFDEF Archi}
   for i := 0 to l_F.ComponentCount - 1 do
   begin
    l_Comp := l_F.Components[i];
    if l_Comp.ComponentCount > 0 then
     l_CP := l_Comp.FindComponent(l_N);
    if (l_CP <> nil) then Break;
   end;
   {$ENDIF Archi}
   if (l_CP <> nil) then
    Break;
   if (TForm(l_F).FormStyle = fsStayOnTop) then
   begin
    RunnerAssert(l_F <> l_PrevClosedForm, '', aCtx);
    l_PrevClosedForm := l_F;
    {$IfNDef NoVCM}
    if (l_F Is TvcmForm) then
     (l_F As TvcmForm).SafeClose
    else
    {$EndIf  NoVCM}
    begin
     l_F.Close;
     afw.ProcessMessages;
     // - чтобы форма "успела" закрыться
    end;//l_F Is TvcmForm
    GetControl;
    if (l_C.Name = l_N) then
    begin
     l_CP := l_C;
     break;
    end;//l_C.Name = l_N
    l_F := afw.GetParentForm(l_C);
    RunnerAssert(l_F <> nil, '', aCtx);
    continue;
   end;//TForm(l_F).FormStyle = fsStayOnTop
   RunnerAssert(TForm(l_F).FormStyle <> fsStayOnTop, '', aCtx);
   l_F := afw.GetAnotherParentForm(l_F);
  end;//while (l_F <> nil)
  RunnerAssert(l_CP <> nil, Format('Не найден контрол %s', [l_N]), aCtx);
  //RunnerAssert(l_CP <> nil, Format('Не найден контрол %s на форме %s', [l_N, l_F.ClassName]));
  l_C := l_CP As TControl;
  RunnerAssert(l_C.Name = l_N, '', aCtx);
 end;//l_C.Name <> l_N
 DoControl(l_C, aCtx);
//#UC END# *4DAEEDE10285_4DB98B4B0382_impl*
end;//_kwControlWord_.DoDoIt

{$IfEnd} //not NoScripts

{$Else  kwControlWord_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf kwControlWord_imp_impl}
{$EndIf kwControlWord_imp}
