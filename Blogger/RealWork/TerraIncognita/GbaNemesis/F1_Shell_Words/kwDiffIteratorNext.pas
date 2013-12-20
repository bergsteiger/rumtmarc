unit kwDiffIteratorNext;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwDiffIteratorNext.pas"
// Начат: 03.11.2011 13:31
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwDiffIteratorNext
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
 TkwDiffIteratorNext = class(_kwDiffIteratorWord_)
 protected
 // realized methods
   procedure DoIterator(const anIterator: IDiffIterator;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwDiffIteratorNext

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

type _Instance_R_ = TkwDiffIteratorNext;

{$Include ..\F1_Shell_Words\kwDiffIteratorWord.imp.pas}

// start class TkwDiffIteratorNext

procedure TkwDiffIteratorNext.DoIterator(const anIterator: IDiffIterator;
  const aCtx: TtfwContext);
//#UC START# *4EB2634D0118_4EB25F5F0340_var*
//#UC END# *4EB2634D0118_4EB25F5F0340_var*
begin
//#UC START# *4EB2634D0118_4EB25F5F0340_impl*
 aCtx.rEngine.PushInt(anIterator.Next);
//#UC END# *4EB2634D0118_4EB25F5F0340_impl*
end;//TkwDiffIteratorNext.DoIterator

{$If not defined(NoScripts)}
class function TkwDiffIteratorNext.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4EB25F5F0340_var*
//#UC END# *4DB0614603C8_4EB25F5F0340_var*
begin
//#UC START# *4DB0614603C8_4EB25F5F0340_impl*
 Result := 'DiffIterator:Next';
//#UC END# *4DB0614603C8_4EB25F5F0340_impl*
end;//TkwDiffIteratorNext.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include ..\F1_Shell_Words\kwDiffIteratorWord.imp.pas}

end.