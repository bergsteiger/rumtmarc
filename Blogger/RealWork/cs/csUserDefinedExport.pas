unit csUserDefinedExport;
{ Задание на экспорт, которое выполняется с заданной периодичностью }


interface

uses
 csProcessTask,
 Classes,
 DT_types;

type
 TcsUserDefinedExport = class(TddProcessTask)
 // Периодичность, время
 private
  f_QueryFile: String;
  f_TimeToRun: TDateTime;
 protected
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
  property QueryFile: String read f_QueryFile write f_QueryFile;
  property TimeToRun: TDateTime read f_TimeToRun write f_TimeToRun;
 end;

implementation

uses CsTaskTypes, ddServerTask;

{
****************************** TddExportTaskItem *******************************
}
constructor TcsUserDefinedExport.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType := cs_ttUserDefinedExport;
end;

procedure TcsUserDefinedExport.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
  l_Value: Integer;
begin
  inherited;
  with aStream do
  begin
   aStream.Read(f_TimeToRun, SizeOf(TDateTime));
   ReadFileFrom(aStream, TaskFolder);
  end; // with aStream
end;

procedure TcsUserDefinedExport.SaveTo(aStream: TStream; aIsPipe: Boolean);
var
  l_Value: Integer;
begin
  inherited;
  with aStream do
  begin
   aStream.Write(f_TimeToRun, SizeOf(TDateTime));
   WriteFileTo(aStream, f_QueryFile);
  end; // with aStream
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csUserDefinedExport.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttUserDefinedExport, TcsUserDefinedExport, 'Выполнение команды на сервере');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csUserDefinedExport.pas initialization leave'); {$EndIf}
end.
