program testLoad;

{$Include evDefine.inc }

uses
  Windows,
  SysUtils,
  l3Interfaces,
  l3Base,
  Forms,
  evdSchema,
  l3Types,
  l3CBaseRefInterfacedList,
  l3Filer,
  l3Stream,
  Main in 'Main.pas' {MainForm};

{$R *.res}

type
 TA1 = procedure (var index: Integer); pascal;
 TA2 = procedure (var index: Integer; a: Integer); pascal;
 TA3 = procedure (var index: Integer; a: Integer; b: integer); pascal;
 TsA2 = procedure (var index: Integer; a: Integer); stdcall;
 TsA3 = procedure (var index: Integer; a: Integer; b: integer); stdcall;

procedure call1(A: TA1);
var
 i : Integer;
begin
 i := 100;
 A(i{, 2});
end;

procedure call2(A: TA2);
var
 i : Integer;
begin
 i := 10;
 A(i, 2);
end;

procedure call3(A: TA3); 
var
 i : Integer;
begin
 i := 10;
 A(i, 2, 16);
end;

procedure calls2(A: TsA2);
var
 i : Integer;
begin
 i := 10;
 A(i, 2);
end;

procedure calls3(A: TsA3);
var
 i : Integer;
begin
 i := 10;
 A(i, 2, 16);
end;

procedure test;

var
 j : Integer;
 s : string;

 procedure local1(var index: Integer); 
 begin
  index := index + 1;
  j := index + 1;
  s := 'Hello';
 end;

 procedure local2(var index: Integer; a: Integer);
 begin
  index := index + a;
  j := index + a;
  s :=  s + 'Hello';
 end;

 procedure local3(var index: Integer; a: Integer);
 begin
  index := index + a;
  j := index + a;
  s :=  s + 'Hello';
 end;

begin
 j := 0;
 call1(l3PasLocalStub1(@local1));
 call2(l3PasLocalStub2(@local2));
 call3(l3PasLocalStub3(@local3));
 calls2(l3StdLocalStub2(@local2));
 calls3(l3StdLocalStub3(@local3));
 s := s + '1';
end;

(*type
  TObj = object
    private
      fString : Il3CString;
      procedure Fake; virtual;
    protected
      function GetProp: Il3CString;
      function GetAsWStr: Tl3WString;
    public
      constructor Create;
      property Prop: Il3CString read GetProp;
      property AsWStr: Tl3WString read GetAsWStr;
  end;//TObj

constructor TObj.Create;
begin
end;

procedure TObj.Fake; //virtual;
begin
end;

function TObj.GetProp: Il3CString;
begin
 Result := fString;
end;

function TObj.GetAsWStr: Tl3WString;
begin
 Result := fString.AsWStr;
end;

procedure test1;
var
 l_O : TObj;
 l_S : Il3CString;
begin
 l_O.Create;
 l_O.fString := l3CStr('test');
 l_S := l_O.Prop;
 l_O.GetAsWstr;
 l_O.AsWstr;
 l_O.fString := l_S;
end;*)

procedure test2;
var
 l_T  : Longword;
 l_F  : Tl3CustomFiler;
 l_O  : Tl3CustomFiler;
 l_TF : TextFile;
 l_S  : String;
 l_I  : Integer;
begin
 AssignFile(l_TF, 'C:\document_.nsr');
 Reset(l_TF);
 try
  l_T := GetTickCount;
  while not EOF(l_TF) do
   ReadLn(l_TF, l_S);
  l_T := GetTickCount - l_T;
  l3System.Msg2Log('Read via Delphi done: ' + IntToStr(l_T));
 finally
  CloseFile(l_TF);
 end;//try..finally

 for l_I := 0 to 0{99} do
 begin
  l_F := Tl3CustomDosFiler.Make('C:\document_.nsr');
  try
   l_F.Open;
   l_T := GetTickCount;
   while not l_F.EOF do
    l_F.ReadLn;
   l_T := GetTickCount - l_T;
   l3System.Msg2Log('Read done: ' + IntToStr(l_T));
   l_F.Close;
  finally
   FreeAndNil(l_F);
  end;//try..finally
 end;//for l_I

(* l_F := Tl3CustomDosFiler.Make('C:\document_.nsr');
 try
  for l_I := 0 to 99 do
  begin
   l_F.Open;
   l_T := GetTickCount;
   while not l_F.EOF do
    l_F.ReadLn;
   l_T := GetTickCount - l_T;
   l3System.Msg2Log('Read done: ' + IntToStr(l_T));
   l_F.Close;
  end;//for l_I
 finally
  FreeAndNil(l_F);
 end;//try..finally*)

 AssignFile(l_TF, 'C:\document_.nsr');
 Reset(l_TF);
 try
  l_T := GetTickCount;
  while not EOF(l_TF) do
   ReadLn(l_TF, l_S);
  l_T := GetTickCount - l_T;
  l3System.Msg2Log('Read via Delphi (again) done: ' + IntToStr(l_T));
 finally
  CloseFile(l_TF);
 end;//try..finally

 l_F := Tl3CustomDosFiler.Make('C:\document_.nsr');
 try
  l_O := Tl3CustomDosFiler.Make('C:\out.nsr', l3_fmWrite);
  try
   l_F.Open;
   l_O.Open;
   l_T := GetTickCount;
   while not l_F.EOF do
   begin
    with l_F.ReadLn do
     l_O.Write(S, SLen);
    if not l_F.EOF then
     l_O.OutEOL;
   end;//while not l_F.EOF
   l_T := GetTickCount - l_T;
   l_O.Close;
   l_F.Close;
  finally
   FreeAndNil(l_O);
  end;//try..finally
 finally
  FreeAndNil(l_F);
 end;//try..finally
 l3System.Msg2Log('Copy done: ' + IntToStr(l_T));

 l_F := Tl3CustomDosFiler.Make('C:\document_.nsr');
 try
  l_O := Tl3CustomDosFiler.Make('C:\out.nsr');
  try
   l_F.Open;
   try
    l_O.Open;
    try
     if not l3CompareStreams(l_F As IStream, l_O As IStream) then
     begin
      Assert(false);
      l3System.Msg2Log('!!! Files different !!!');
     end;//not l3CompareStreams(l_F.Stream, l_O.Stream)
    finally
     l_O.Close;
    end;//try..finally
   finally
    l_F.Close;
   end;//try..finally
  finally
   FreeAndNil(l_O);
  end;//try..finally
 finally
  FreeAndNil(l_F);
 end;//try..finally

 l3System.Msg2Log('Compare done');
end;

(*const
 S = #$84#$4e#$84#$75#$84#$81#$84#$82;
var
 W : WideString;
 S1 : String;*)
begin
 {$IfDef l3UseMMX}
 l3System.Msg2Log('l3UseMMX enabled');
 {$Else  l3UseMMX}
 l3System.Msg2Log('l3UseMMX disabled');
 {$EndIf l3UseMMX}
  //test1;
  //test;
  //test2;
  //Exit;
(*  SetLength(W, Length(S) div 2);
  MultiByteToWideChar(932, 0, PChar(S), Length(S), PWideChar(W), Length(W));
  SetLength(S1, Length(W));
  WideCharToMultiByte(1251, 0, PWideChar(W), Length(W), PChar(S1), Length(S1), nil, nil);*)
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
