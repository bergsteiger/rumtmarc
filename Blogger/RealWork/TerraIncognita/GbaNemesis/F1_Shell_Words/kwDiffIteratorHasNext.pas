unit kwDiffIteratorHasNext;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwDiffIteratorHasNext.pas"
// Начат: 03.11.2011 13:30
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwDiffIteratorHasNext
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

uses
  DocumentUnit
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  Diff_Form
  {$IfEnd} //not Admin AND not Monitorings
  ,
  Forms,
  Controls
  ;

type
 {$Include ..\F1_Shell_Words\kwDiffIteratorWord.imp.pas}
 TkwDiffIteratorHasNext = class(_kwDiffIteratorWord_)
 protected
 // realized methods
   procedure DoIterator(const anIterator: IDiffIterator;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwDiffIteratorHasNext

implementation

uses
  SysUtils,
  afwFacade,
  Classes
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

type _Instance_R_ = TkwDiffIteratorHasNext;

{$Include ..\F1_Shell_Words\kwDiffIteratorWord.imp.pas}

// start class TkwDiffIteratorHasNext

procedure TkwDiffIteratorHasNext.DoIterator(const anIterator: IDiffIterator;
  const aCtx: TtfwContext);
//#UC START# *4EB2634D0118_4EB25F2501B3_var*
//#UC END# *4EB2634D0118_4EB25F2501B3_var*
begin
//#UC START# *4EB2634D0118_4EB25F2501B3_impl*
 aCtx.rEngine.PushBool(anIterator.HasNext);
//#UC END# *4EB2634D0118_4EB25F2501B3_impl*
end;//TkwDiffIteratorHasNext.DoIterator

{$If not defined(NoScripts)}
class function TkwDiffIteratorHasNext.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EB25F2501B3_var*
//#UC END# *4DB0614603C8_4EB25F2501B3_var*
begin
//#UC START# *4DB0614603C8_4EB25F2501B3_impl*
 Result := 'DiffIterator:HasNext';
//#UC END# *4DB0614603C8_4EB25F2501B3_impl*
end;//TkwDiffIteratorHasNext.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include ..\F1_Shell_Words\kwDiffIteratorWord.imp.pas}

end.