{$IfNDef F1LikeAppTester_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "AppTesting"
// Модуль: "w:/common/components/gui/Garant/VCM/AppTesting/F1LikeAppTester.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi F1 Like Application::F1Like::AppTesting::AppTestingSupport::F1LikeAppTester
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define F1LikeAppTester_imp}
{$If defined(InsiderTest)}
 _F1LikeAppTester_ = {abstract mixin} class(_F1LikeAppTester_Parent_)
 private
 // private methods
   class procedure DoIdle(Sender: TObject;
     var Done: Boolean);
 protected
 // overridden protected methods
   class procedure ReadyToRun; override;
     {* Вызывается непосредственно перед запуском приложения, например для инициализации/запуска тестов }
 public
 // overridden public methods
   class function IsBatchMode: Boolean; override;
 protected
 // protected methods
   class function CalcBatchMode: Boolean; virtual; abstract;
 end;//_F1LikeAppTester_
{$IfEnd} //InsiderTest

{$Else F1LikeAppTester_imp}

{$If defined(InsiderTest)}

var
   g_IsBatchMode : Boolean = false;
var
   g_IsBatchModeValid : Boolean = false;
var
   g_Debugger : TtfwScriptDebugger_Form;
var
   g_TestsForm : TGUITestRunner;
var
   g_InRun : Boolean = false;

// start class _F1LikeAppTester_

class procedure _F1LikeAppTester_.DoIdle(Sender: TObject;
  var Done: Boolean);
//#UC START# *4DA3361A0305_4F79CD9F015F_var*
//#UC END# *4DA3361A0305_4F79CD9F015F_var*
begin
//#UC START# *4DA3361A0305_4F79CD9F015F_impl*
 if not g_InRun then
 begin
  g_InRun := true;
  try
   KTestRunner.RunRegisteredTests;
  except
   // - давим все исключения, чтобы нормально выйти
  end;//try..except
  Application.Terminate;
  l3System.ClearClipboard;
 end;//not g_InRun
//#UC END# *4DA3361A0305_4F79CD9F015F_impl*
end;//_F1LikeAppTester_.DoIdle

class function _F1LikeAppTester_.IsBatchMode: Boolean;
//#UC START# *4DA476580343_4F79CD9F015F_var*
//#UC END# *4DA476580343_4F79CD9F015F_var*
begin
//#UC START# *4DA476580343_4F79CD9F015F_impl*
 if not g_IsBatchModeValid then
 begin
  g_IsBatchMode := CalcBatchMode;
  g_IsBatchModeValid := true;
 end;//not g_IsBatchModeValid
 Result := g_IsBatchMode;
//#UC END# *4DA476580343_4F79CD9F015F_impl*
end;//_F1LikeAppTester_.IsBatchMode

class procedure _F1LikeAppTester_.ReadyToRun;
//#UC START# *4F79B9D500D7_4F79CD9F015F_var*
//#UC END# *4F79B9D500D7_4F79CD9F015F_var*
begin
//#UC START# *4F79B9D500D7_4F79CD9F015F_impl*
 inherited;
 if IsBatchMode then
 begin
  Application.OnIdle := {_Instance_R_(dmStdRes)}Self.DoIdle;
  g_BatchMode := true;
 end//IsBatchMode
 else
 begin
  Application.CreateForm(TGUITestRunner, g_TestsForm);
  g_TestsForm.DisableClose := true;
  g_TestsForm.Suite := registeredTests;
  //g_TestsForm.FormStyle := fsStayOnTop;
  g_TestsForm.Show;
  g_TestsForm.LoadFormPlacement;
  Application.CreateForm(TtfwScriptDebugger_Form, g_Debugger);
  g_Debugger.Show;
 end;//KTestRunner.NeedKTestRunner([TtoK, TItsLAW])
//#UC END# *4F79B9D500D7_4F79CD9F015F_impl*
end;//_F1LikeAppTester_.ReadyToRun

{$IfEnd} //InsiderTest

{$EndIf F1LikeAppTester_imp}
