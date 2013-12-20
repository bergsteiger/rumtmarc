unit kwDocumentLikeState;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwDocumentLikeState.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::document_LikeState
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  ExText_Form
  {$IfEnd} //not Admin AND not Monitorings
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  Forms,
  Controls
  ;

type
 {$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}
 TkwDocumentLikeState = {final} class(_ExTextFormWord_)
 protected
 // realized methods
   procedure DoTextForm(aForm: TExTextForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwDocumentLikeState

implementation

uses
  afwFacade,
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  Windows
  ;

type _Instance_R_ = TkwDocumentLikeState;

{$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}

// start class TkwDocumentLikeState

procedure TkwDocumentLikeState.DoTextForm(aForm: TExTextForm;
  const aCtx: TtfwContext);
//#UC START# *4DCA5B340360_500E876A0208_var*
//#UC END# *4DCA5B340360_500E876A0208_var*
begin
//#UC START# *4DCA5B340360_500E876A0208_impl*
 aCtx.rEngine.PushInt(Ord(TExTextFormHack(aForm).dsDocument.LikeState));
//#UC END# *4DCA5B340360_500E876A0208_impl*
end;//TkwDocumentLikeState.DoTextForm

{$If not defined(NoScripts)}
class function TkwDocumentLikeState.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'document:LikeState';
end;//TkwDocumentLikeState.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}

end.