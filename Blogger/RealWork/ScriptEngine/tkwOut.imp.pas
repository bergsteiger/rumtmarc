{$IfNDef tkwOut_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/tkwOut.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Scripting::ScriptEngine::Basics::tkwOut
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define tkwOut_imp}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _tkwOut_ = {mixin} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 protected
 // protected methods
   procedure DoOut(const Msg: Il3CString;
    const aCtx: TtfwContext); overload;  virtual; abstract;
   procedure DoOut(const Msg: AnsiString;
    const aCtx: TtfwContext); overload;  virtual; abstract;
 end;//_tkwOut_
{$IfEnd} //not NoScripts

{$Else tkwOut_imp}

{$IfNDef tkwOut_imp_impl}
{$Define tkwOut_imp_impl}

{$If not defined(NoScripts)}


{$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class _tkwOut_

procedure _tkwOut_.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F34CD0F02CA_var*
(*var
 l_Obj : TObject;*)
//#UC END# *4DAEEDE10285_4F34CD0F02CA_var*
begin
//#UC START# *4DAEEDE10285_4F34CD0F02CA_impl*
 DoOut(aCtx.rEngine.PopPrintable, aCtx);
(* if aCtx.rEngine.IsTopString then
  DoOut(aCtx.rEngine.PopString, aCtx)
 else
 if aCtx.rEngine.IsTopInt then
  DoOut(IntToStr(aCtx.rEngine.PopInt), aCtx)
 else
 if aCtx.rEngine.IsTopBool then
  DoOut(BoolToStr(aCtx.rEngine.PopBool, true), aCtx)
 else
 if aCtx.rEngine.IsTopType(tfw_svtVoid) then
 begin
  aCtx.rEngine.Drop;
  DoOut('<void>', aCtx);
 end//aCtx.rEngine.IsType(tfw_svtVoid)
 else
 if aCtx.rEngine.IsTopType(tfw_svtObj) then
 begin
  l_Obj := aCtx.rEngine.Pop.AsObject;
  if (l_Obj Is TComponent) then
   DoOut(TComponent(l_Obj).Name + ' : ' + l_Obj.ClassName, aCtx)
  else
   DoOut(l_Obj.ClassName, aCtx)
 end//aCtx.rEngine.IsTopType(tfw_svtObj)
 else
 if aCtx.rEngine.IsTopType(tfw_svtIntf) then
 begin
  aCtx.rEngine.Drop;
  DoOut('<interface>', aCtx);
 end//aCtx.rEngine.IsTopType(tfw_svtIntf)
 else
 if aCtx.rEngine.IsTopType(tfw_svtList) then
 begin
  aCtx.rEngine.Drop;
  DoOut('<array>', aCtx);
 end//aCtx.rEngine.IsTopType(tfw_svtList)
 else
  RunnerAssert(false, '', aCtx);*)
//#UC END# *4DAEEDE10285_4F34CD0F02CA_impl*
end;//_tkwOut_.DoDoIt

{$IfEnd} //not NoScripts

{$Else  tkwOut_imp_impl}
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\tfwAutoregisteringWord.imp.pas}
{$IfEnd} //not NoScripts

{$EndIf tkwOut_imp_impl}
{$EndIf tkwOut_imp}
