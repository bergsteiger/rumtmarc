unit csLineRequest;
{ ������ ������� ������� ������� }

{ $Id: csLineRequest.pas,v 1.8 2012/11/01 09:43:22 lulin Exp $ }

// $Log: csLineRequest.pas,v $
// Revision 1.8  2012/11/01 09:43:22  lulin
// - ����� ����� � �������.
//
// Revision 1.7  2012/11/01 07:45:44  lulin
// - ������ ����������� ����������� �������� �������� �������.
//
// Revision 1.6  2011/12/08 12:31:29  narry
// ������������ �� ��� ������� ������� (304874341)
//
// Revision 1.5  2010/07/15 05:45:42  narry
// - K226003695
//
{$DEFINE NewLine}

interface

uses CsDataPipe, csRequestTask, l3ObjectRefList, DT_types;

type
 TcsLineRequest = class(TddRequestTask)
 private
  f_TaskList: Tl3ObjectRefList;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure SaveToPipe(aPipe: TCsDataPipe); override;
  property TaskList: Tl3ObjectRefList read f_TaskList;
 end;

implementation

uses CsTaskTypes, l3Base, l3Memory, ddServerTask, Classes, l3LongintList,
 SysUtils;

{
******************************** TddRequestTask ********************************
}
constructor TcsLineRequest.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 f_TaskList := Tl3ObjectRefList.Make;
 TaskType := cs_ttLine
end;

procedure TcsLineRequest.Cleanup;
begin
 l3Free(f_TaskList);
 inherited Cleanup;
end;

procedure TcsLineRequest.SaveToPipe(aPipe: TCsDataPipe);
var
 i: Integer;
 l_Count: Integer;
 l_Task: TddTaskItem;
 l_Stream: TStream;
 l_SizeList: Tl3longintList;
 l_Pos: Longint;
begin
 inherited SaveToPipe(aPipe);
 f_TaskList.Clear;
 l_Count := aPipe.ReadInteger;
 l_SizeList:= Tl3LongintList.Make;
 try
  {$IFDEF NewLine}
  for i:= 0 to Pred(l_Count) do
   l_SizeList.Add(aPipe.ReadInteger);
  {$ENDIF}
  l_Stream := Tl3MemoryStream.Make;
  try
   aPipe.ReadStream(l_Stream);
   l_Stream.Seek(0, 0);
   for i:= 0 to Pred(l_Count) do
   begin
    l_Task := TddTaskItem.MakeFrom(UserID, l_Stream, '', False);
    try
     if l_Task <> nil then
      f_TaskList.Add(l_Task)
     else
     begin
      {$IFNDEF NewLine}
      l3System.Msg2log('������ ��������� ������� �������. �������� %d �� %d �������', [i, l_Count]);
      break;
      {$ELSE}
      l_Pos:= l_Stream.Position;

      // � ��������, ����� ��������� �������� ������
      l_Task:= TddTaskItem.Create(nil, UserID);
      l_Task.LoadFrom(l_Stream, true);
      f_TaskList.Add(l_Task);
      l_Stream.Position:= l_Pos;
      l_Stream.Seek(l_SizeList[i], soFromCurrent);
      {$ENDIF}
     end;
    finally
     FreeAndNil(l_Task);
    end;
   end; // for i
  finally
   FreeAndNil(l_Stream);
  end;
 finally
  FreeAndNil(l_SizeList);
 end;
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csLineRequest.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttLine, TcsLineRequest, '������ �������');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csLineRequest.pas initialization leave'); {$EndIf}
end.
