unit dt_SabHelp;
{Хелперы для ISab}
{ $Id: dt_SabHelp.pas,v 1.1 2009/04/22 14:24:52 voba Exp $ }

// $Log: dt_SabHelp.pas,v $
// Revision 1.1  2009/04/22 14:24:52  voba
// no message
//

interface
 uses
  SysUtils,
  l3Types,
  l3Interfaces,
  dt_Sab;

 procedure OutSab2File(aSab : ISab; aFileName : TFileName);

 procedure OutSab2Stream(aSab : ISab; const aStream : IStream);


implementation
uses
 l3Stream,
 l3Chars,
 m2ComLib,
 DT_Types;

type
 PInteger = ^Integer;

procedure OutSab2File(aSab : ISab; aFileName : TFileName);
begin
 OutSab2Stream(aSab, Tl3FileStream.Make(aFileName, l3_fmWrite));
end;

procedure PutLine(const aStream : IStream; const Str: string);
const
 lEOL : PChar = cc_EOL;
begin
 if Str <> '' then
  m2COMWriteBuffer(aStream, Str[1], Length(Str));
 m2COMWriteBuffer(aStream, lEOL^, 2);
end;

procedure OutSab2Stream(aSab : ISab; const aStream : IStream);

 function lIterator(aPDocID : PInteger) : Boolean;
 begin
  Result := True;
  PutLine(aStream, InttoStr(aPDocID^));
 end;

var
 lRAProcStub : TdtRecAccessProc;

begin
 lRAProcStub := L2RecAccessProc(@lIterator);
 try
  aSab.IterateRecords(lRAProcStub);
 finally
  FreeRecAccessProc(lRAProcStub);
 end;
end; 
end.
