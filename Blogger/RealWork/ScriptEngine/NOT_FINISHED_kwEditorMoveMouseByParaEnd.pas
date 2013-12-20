unit NOT_FINISHED_kwEditorMoveMouseByParaEnd;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/NOT_FINISHED_kwEditorMoveMouseByParaEnd.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::ScriptEngine::CommonWords::TkwEditorMoveMouseByParaEnd
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\common\components\rtl\Garant\ScriptEngine\seDefine.inc}

interface

uses
  evCustomEditorWindow,
  tfwScriptingInterfaces,
  Controls,
  tfwWord,
  l3Units,
  nevTools
  ;

type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwCurrentEditorWord.imp.pas}
 _Para2Point_Parent_ = _kwCurrentEditorWord_;
 {$Include w:\common\components\rtl\Garant\EditorUsers\Para2Point.imp.pas}
 TkwEditorMoveMouseByParaEnd = class(_Para2Point_)
 protected
 // realized methods
   procedure DoEditor(const aCtx: TtfwContext;
     anEditor: TevCustomEditorWindow); override;
 protected
 // overridden protected methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwEditorMoveMouseByParaEnd

implementation

uses
  CommentPara_Const,
  evParaTools,
  Windows,
  TextPara_Const,
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  afwFacade,
  Forms
  ;

type _Instance_R_ = TkwEditorMoveMouseByParaEnd;
type _kwCurrentEditorWord_R_ = TkwEditorMoveMouseByParaEnd;

{$Include w:\common\components\rtl\Garant\ScriptEngine\kwCurrentEditorWord.imp.pas}

type _Para2Point_R_ = TkwEditorMoveMouseByParaEnd;

{$Include w:\common\components\rtl\Garant\EditorUsers\Para2Point.imp.pas}

// start class TkwEditorMoveMouseByParaEnd

procedure TkwEditorMoveMouseByParaEnd.DoEditor(const aCtx: TtfwContext;
  anEditor: TevCustomEditorWindow);
//#UC START# *4DD0FA2F00C7_4EFC73B30004_var*
//#UC END# *4DD0FA2F00C7_4EFC73B30004_var*
begin
//#UC START# *4DD0FA2F00C7_4EFC73B30004_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DD0FA2F00C7_4EFC73B30004_impl*
end;//TkwEditorMoveMouseByParaEnd.DoEditor

class function TkwEditorMoveMouseByParaEnd.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EFC73B30004_var*
//#UC END# *4DB0614603C8_4EFC73B30004_var*
begin
//#UC START# *4DB0614603C8_4EFC73B30004_impl*
 !!! Needs to be implemented !!!
//#UC END# *4DB0614603C8_4EFC73B30004_impl*
end;//TkwEditorMoveMouseByParaEnd.GetWordNameForRegister

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\ScriptEngine\NOT_FINISHED_kwEditorMoveMouseByParaEnd.pas initialization enter'); {$EndIf}
 {$Include w:\common\components\rtl\Garant\ScriptEngine\kwCurrentEditorWord.imp.pas}

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\ScriptEngine\NOT_FINISHED_kwEditorMoveMouseByParaEnd.pas initialization leave'); {$EndIf}
end.

