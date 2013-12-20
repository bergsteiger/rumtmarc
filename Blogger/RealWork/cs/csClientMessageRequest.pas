unit csClientMessageRequest;

interface

uses
 Classes, CsDataPipe, csRequestTask, CsNotification, DT_types;

type
 TddClientMessage = class(TddRequestTask)
 private
  f_Data: Integer;
  f_NotifyType: TCsNotificationType;
  f_Text: string;
 protected
  procedure Cleanup; override;
  procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure FromPipe(aDataPipe: TcsDataPipe);
  procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
  property Data: Integer read f_Data write f_Data;
  property NotifyType: TCsNotificationType read f_NotifyType write f_NotifyType;
  property Text: string read f_Text write f_Text;
 end;

implementation

constructor TddClientMessage.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
end;

procedure TddClientMessage.Cleanup;
begin
 inherited;
end;

procedure TddClientMessage.FromPipe(aDataPipe: TcsDataPipe);
begin
 with aDataPipe do
 begin
  f_NotifyType := TCsNotificationType(ReadInteger);
  f_Data := ReadInteger;
  f_Text := ReadStr;
 end;
end;

procedure TddClientMessage.LoadFrom(aStream: TStream; aIsPipe: Boolean);
var
 l_N: Integer;
begin
 inherited;
 with aStream do
 begin
  Read(l_N, SizeOf(Integer));
  f_NotifyType := TCsNotificationType(l_N);
  Read(f_Data, SizeOf(f_Data));
  ReadString(aStream, f_Text);
 end; // with aStream
end;

procedure TddClientMessage.SaveTo(aStream: TStream; aIsPipe: Boolean);
var
 l_N: Integer;
begin
 inherited;
 with aStream do
 begin
  l_N := Ord(f_NotifyType);
  Write(l_N, SizeOf(Integer));
  Write(f_Data, SizeOf(f_Data));
  WriteString(aStream, f_Text);
 end; // with aStream
end;

end.
