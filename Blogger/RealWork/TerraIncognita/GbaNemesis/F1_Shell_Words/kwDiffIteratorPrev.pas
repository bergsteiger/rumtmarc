unit kwDiffIteratorPrev;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwDiffIteratorPrev.pas"
// Начат: 03.11.2011 13:50
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwDiffIteratorPrev
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
 TkwDiffIteratorPrev = class(_kwDiffIteratorWord_)
 protected
 // realized methods
   procedure DoIterator(const anIterator: IDiffIterator;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwDiffIteratorPrev

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

type _Instance_R_ = TkwDiffIteratorPrev;

{$Include ..\F1_Shell_Words\kwDiffIteratorWord.imp.pas}

// start class TkwDiffIteratorPrev

procedure TkwDiffIteratorPrev.DoIterator(const anIterator: IDiffIterator;
  const aCtx: TtfwContext);
//#UC START# *4EB2634D0118_4EB263BB0204_var*
//#UC END# *4EB2634D0118_4EB263BB0204_var*
begin
//#UC START# *4EB2634D0118_4EB263BB0204_impl*
 aCtx.rEngine.PushInt(anIterator.Prev);
//#UC END# *4EB2634D0118_4EB263BB0204_impl*
end;//TkwDiffIteratorPrev.DoIterator

{$If not defined(NoScripts)}
class function TkwDiffIteratorPrev.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EB263BB0204_var*
//#UC END# *4DB0614603C8_4EB263BB0204_var*
begin
//#UC START# *4DB0614603C8_4EB263BB0204_impl*
 Result := 'DiffIterator:Prev';
//#UC END# *4DB0614603C8_4EB263BB0204_impl*
end;//TkwDiffIteratorPrev.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include ..\F1_Shell_Words\kwDiffIteratorWord.imp.pas}

end.