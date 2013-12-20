unit kwPopReminderMove;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopReminderMove.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::pop_reminder_Move
//
// *������:*
// {code}
// aDeltaX aDeltaY aReminderRatio aReminder pop:Reminder:Move
// {code}
// *��������:* ����������� ������� �� ��������� �� aDetaX �� ����������� � �� aDeltaY �� ���������
// ������������ ������� �������. *��������! aDeltaX � aDeltaY - ��������, � �� ����������!*
// aReminderRatio - ����� �� ���������� ���������. ������ ������ ����������� � ������� ����.
// 
// *������:*
// {code}
// CONST "������� ������ � ��������������� ������" 'OldBaseWarning'
// 
// 500 500 true "������� ������ � ��������������� ������" byname:control:Push pop:Reminder:Move
// {code}
// ������� ������ �� 500 �������� �� ����������� � 500  �������� �� ��������� ������������ ��������
// ���������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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
  {* *������:* 
[code]
aDeltaX aDeltaY aReminderRatio aReminder pop:Reminder:Move
[code] 
*��������:* ����������� ������� �� ��������� �� aDetaX �� ����������� � �� aDeltaY �� ��������� ������������ ������� �������. *��������! aDeltaX � aDeltaY - ��������, � �� ����������!* aReminderRatio - ����� �� ���������� ���������. ������ ������ ����������� � ������� ����. 

*������:* 
[code]
CONST "������� ������ � ��������������� ������" 'OldBaseWarning'

500 500 true "������� ������ � ��������������� ������" byname:control:Push pop:Reminder:Move
[code] 
������� ������ �� 500 �������� �� ����������� � 500  �������� �� ��������� ������������ �������� ���������. }
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
    Assert(False, '�� ������ �������� �� ��� X');
   TvtHackCustomReminder(aReminder).MoveReminder(l_DeltaX, l_DeltaY, l_Remember);
  end // if aCtx.rEngine.IsTopInt then
  else
   Assert(False, '�� ������ �������� �� ��� Y');
 end // if aCtx.rEngine.IsTopBool then
 else
  Assert(False, '�� ����� ���� ��� ������������� ����������� ���������!');
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