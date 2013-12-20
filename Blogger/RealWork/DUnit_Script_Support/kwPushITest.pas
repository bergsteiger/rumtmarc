unit kwPushITest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DUnit Script Support"
// Модуль: "w:/common/components/rtl/Garant/DUnit_Script_Support/kwPushITest.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi DUnit Scripting::DUnit Script Support::DUnit Keywords::push_ITest
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\rtl\Garant\DUnit_Script_Support\dsDefine.inc}

interface

uses
  tfwScriptingInterfaces
  ;

type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 TkwPushITest = {final} class(_tfwAutoregisteringWord_)
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: String; override;
 end;//TkwPushITest

implementation

uses
  tfwAutoregisteredDiction,
  tfwScriptEngine
  ;

type _Instance_R_ = TkwPushITest;
type _tfwAutoregisteringWord_R_ = TkwPushITest;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwPushITest

procedure TkwPushITest.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_5135945B034C_var*
//#UC END# *4DAEEDE10285_5135945B034C_var*
begin
//#UC START# *4DAEEDE10285_5135945B034C_impl*
 
//#UC END# *4DAEEDE10285_5135945B034C_impl*
end;//TkwPushITest.DoDoIt

class function TkwPushITest.GetWordNameForRegister: String;
 {-}
begin
 Result := 'push:ITest';
end;//TkwPushITest.GetWordNameForRegister

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.