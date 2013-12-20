unit csAutoSpell;

interface

uses
  ddProgressObj, DT_Types, csProcessTask;

type
 TcsAutoSpellTask = class(TddProcessTask)
 protected
  function GetDescription: AnsiString; override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
 end;

implementation

uses
  csTaskTypes, ddServerTask;

{
****************************** TcsAutoSpellTask *******************************
}
constructor TcsAutoSpellTask.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType := cs_ttAutoSpellCheck;
end;

function TcsAutoSpellTask.GetDescription: AnsiString;
begin
 Result := 'Автоматическая проверка орфографии';
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csAutoSpell.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttAutoSpellCheck, TcsAutoSpellTask, 'Автоматическая проверка орфографии');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csAutoSpell.pas initialization leave'); {$EndIf}
end.
