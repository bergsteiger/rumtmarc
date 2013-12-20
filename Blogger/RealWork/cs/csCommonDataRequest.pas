unit csCommonDataRequest;

interface

uses CsDataPipe, csRequestTask, ddServerTask, DT_types;

type
 TddCommonDataRequest = class(TddRequestTask)
 private
  f_Data: TddTaskItem;
  f_DataIndex: Integer;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure SaveToPipe(aPipe: TCsDataPipe); override;
  property Data: TddTaskItem read f_Data write f_Data;
  property DataIndex: Integer read f_DataIndex write f_DataIndex;
 end;

implementation

uses CsTaskTypes, l3Base, l3Memory;

{
******************************** TddProcessTask ********************************
}
constructor TddCommonDataRequest.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType := cs_ttCommonData;
end;

procedure TddCommonDataRequest.Cleanup;
begin
 l3Free(f_Data);
 inherited;
end;

procedure TddCommonDataRequest.SaveToPipe(aPipe: TCsDataPipe);
var
 l_Stream: Tl3MemoryStream;
begin
 aPipe.Write(f_DataIndex);
  l_Stream:= Tl3MemoryStream.Create;
  try
   aPipe.ReadStream(l_Stream);
   l_Stream.Seek(0, 0);
   f_Data := TddTaskItem.MakeFrom(UserID, l_Stream, '', True);
  finally
   l3Free(l_Stream);
  end;
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csCommonDataRequest.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttCommonData, TddCommonDataRequest, 'Общие данные');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csCommonDataRequest.pas initialization leave'); {$EndIf}
end.
