unit kwPopReminderMove;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "ScriptEngine"
// Модуль: "w:/common/components/rtl/Garant/ScriptEngine/kwPopReminderMove.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::pop_reminder_Move
//
// *Формат:*
// {code}
// aDeltaX aDeltaY aReminderRatio aReminder pop:Reminder:Move
// {code}
// *Описание:* Перемещение линейки со значаками на aDetaX по горизонтали и на aDeltaY по вертикали
// относительно текущей позиции. *Внимание! aDeltaX и aDeltaY - смещения, а не координаты!*
// aReminderRatio - нужно ли запоминать положение. Полный аналог перемещения с помощью мыши.
// 
// *Прммер:*
// {code}
// CONST "Красная медаль с восклицательным знаком" 'OldBaseWarning'
// 
// 500 500 true "Красная медаль с восклицательным знаком" byname:control:Push pop:Reminder:Move
// {code}
// Смещает медали на 500 пикселей по горизонтали и 500  пикселей по вертикали относительно текущего
// положения.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  vtCustomReminder,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwVTCustomReminder.imp.pas}
 TkwPopReminderMove = {final} class(_kwVTCustomReminder_)
  {* *Формат:* 
[code]
aDeltaX aDeltaY aReminderRatio aReminder pop:Reminder:Move
[code] 
*Описание:* Перемещение линейки со значаками на aDetaX по горизонтали и на aDeltaY по вертикали относительно текущей позиции. *Внимание! aDeltaX и aDeltaY - смещения, а не координаты!* aReminderRatio - нужно ли запоминать положение. Полный аналог перемещения с помощью мыши. 

*Прммер:* 
[code]
CONST "Красная медаль с восклицательным знаком" 'OldBaseWarning'

500 500 true "Красная медаль с восклицательным знаком" byname:control:Push pop:Reminder:Move
[code] 
Смещает медали на 500 пикселей по горизонтали и 500  пикселей по вертикали относительно текущего положения. }
 protected
 // realized methods
   procedure DoWithvtCustomReminder(const aReminder: TvtCustomReminder;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopReminderMove
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopReminderMove;

{$Include ..\ScriptEngine\kwVTCustomReminder.imp.pas}

// start class TkwPopReminderMove

procedure TkwPopReminderMove.DoWithvtCustomReminder(const aReminder: TvtCustomReminder;
  const aCtx: TtfwContext);
//#UC START# *4FFD36D9017A_4FFD37650303_var*
var
 l_DeltaX   : Integer;
 l_DeltaY   : Integer;
 l_Remember : Boolean;
//#UC END# *4FFD36D9017A_4FFD37650303_var*
begin
//#UC START# *4FFD36D9017A_4FFD37650303_impl*
 if aCtx.rEngine.IsTopBool then
 begin
  l_Remember := aCtx.rEngine.PopBool;
  if aCtx.rEngine.IsTopInt then
  begin
   l_DeltaY := aCtx.rEngine.PopInt;
   if aCtx.rEngine.IsTopInt then
    l_DeltaX := aCtx.rEngine.PopInt
   else
    Assert(False, 'Не задано смещение по оси X');
   TvtHackCustomReminder(aReminder).MoveReminder(l_DeltaX, l_DeltaY, l_Remember);
  end // if aCtx.rEngine.IsTopInt then
  else
   Assert(False, 'Не задано смещение по оси Y');
 end // if aCtx.rEngine.IsTopBool then
 else
  Assert(False, 'Не задан флаг для необходимости запоминания координат!');
//#UC END# *4FFD36D9017A_4FFD37650303_impl*
end;//TkwPopReminderMove.DoWithvtCustomReminder

class function TkwPopReminderMove.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:reminder:Move';
end;//TkwPopReminderMove.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwVTCustomReminder.imp.pas}
{$IfEnd} //not NoScripts

end.