unit dt_UserTypes;

interface

uses
 classes,
 l3Base,
 dt_Types;

type
 TArchiUser = class(Tl3Base)
 private
  f_Active: Boolean;
  f_ExportPriority: TPriority;
  f_ID: TUserID;
  f_ImportPriority: TPriority;
  f_IP: AnsiString;
  f_LoginDate: TDateTime;
  f_LoginName: ShortString;
  f_Password: AnsiString;
  f_UserName: ShortString;
 public
  procedure Load(aStream: TStream);
  procedure Save(aStream: TStream);
  property Active: Boolean read f_Active write f_Active;
  property ExportPriority: TPriority read f_ExportPriority write f_ExportPriority;
  property ID: TUserID read f_ID write f_ID;
  property ImportPriority: TPriority read f_ImportPriority write f_ImportPriority;
  property IP: AnsiString read f_IP write f_IP;
  property LoginDate: TDateTime read f_LoginDate write f_LoginDate;
  property LoginName: ShortString read f_LoginName write f_LoginName;
  property Password: AnsiString read f_Password write f_Password;
  property UserName: ShortString read f_UserName write f_UserName;
 end;

implementation

uses
 ddStreamUtils;

procedure TArchiUser.Load(aStream: TStream);
begin
 with aStream do
 begin
  Read(f_ID, SizeOf(f_ID));
  Read(f_ImportPriority, SizeOf(f_ImportPriority));
  ReadString(aStream, f_IP);
  Read(f_LoginDate, SizeOf(f_LoginDate));
  ReadString(aStream, f_LoginName);
  ReadString(aStream, f_Password);
  ReadString(aStream, f_UserName);
 end; // aStream
end;

procedure TArchiUser.Save(aStream: TStream);
begin
 with aStream do
 begin
  Write(f_ID, SizeOf(f_ID));
  Write(f_ImportPriority, SizeOf(f_ImportPriority));
  WriteString(aStream, f_IP);
  Write(f_LoginDate, SizeOf(f_LoginDate));
  WriteString(aStream, f_LoginName);
  WriteString(aStream, f_Password);
  WriteString(aStream, f_UserName);
 end; // aStream
end;


end.
