unit l3SimpleMM;
{* ���������� �������� ������, ���������� ����� ������� �����. }

{ ���������� "L3 (Low Level Library)" }
{ �����: ����� �.�. � }
{ ������: l3SimpleMM - }
{ �����: 27.02.2002 16:30 }
{ $Id: l3SimpleMM.pas,v 1.23 2013/04/03 15:29:32 lulin Exp $ }

// $Log: l3SimpleMM.pas,v $
// Revision 1.23  2013/04/03 15:29:32  lulin
// - ���������.
//
// Revision 1.22  2011/10/05 09:51:59  voba
// - k : 281525254 ������ � ��������
//
// Revision 1.21  2011/09/16 06:24:37  lulin
// {RequestLink:278824896}.
// - ������� �������� ������������.
//
// Revision 1.20  2008/02/08 12:14:47  lulin
// - ������������� ������ ��� ������ ������.
//
// Revision 1.19  2007/08/30 10:09:23  lulin
// - ������� �������� ������� ������.
//
// Revision 1.18  2007/08/14 14:30:13  lulin
// - ������������ ����������� ������ ������.
//
// Revision 1.17  2007/01/18 10:49:42  lulin
// - �������� ������ ��������� ������ �� ���������.
//
// Revision 1.16  2007/01/17 16:54:09  lulin
// - �������� ������������� ������ �� ������������� � ������ �������.
//
// Revision 1.15  2007/01/17 16:47:36  lulin
// - ���������������� � ������ ��� ������ �� ������ �������.
//
// Revision 1.14  2006/12/06 10:34:02  lulin
// - "����������" ������������.
//
// Revision 1.13  2004/12/05 17:57:24  migel
// - fix: �� ��������������� (�������� ���������� `dcc32.exe` ����� � ������� `C13310`).
//
// Revision 1.12  2004/08/05 17:40:31  law
// - ��������� �� ���� Warning'�� � Hint'��.
//
// Revision 1.11  2004/06/01 07:48:41  law
// - new defines: l3AssertSimpleMMCanFreeBlocks, _ALCU.
//
// Revision 1.10  2004/05/31 10:02:55  law
// - ������� define l3BoxedBitArray - ��� ����� � ��� ��� ����������.
//
// Revision 1.9  2004/05/28 18:03:35  law
// - new define: l3BoxedBitArray - ���� ��������.
//
// Revision 1.8  2004/05/28 17:12:58  law
// - ������������� commit.
//
// Revision 1.7  2004/05/28 14:49:05  law
// - new bevavior: � ���� ������� ������������ ������, ����� ������������ ���� ���������� ������.
//
// Revision 1.6  2004/05/28 14:43:07  law
// - new bevavior: ������ �������� �� ����������� ������������� ������.
//
// Revision 1.5  2004/05/28 10:42:32  law
// - bug fix: ����������� ��������������� ������� � ����.
//
// Revision 1.4  2002/04/15 12:19:00  law
// - new method: StringAsWideString.
//
// Revision 1.3  2002/03/04 10:17:04  law
// - bug fix.
//
// Revision 1.2  2002/03/04 09:58:19  law
// - buf fix: AV ��� ������ ��������.
//
// Revision 1.1  2002/02/27 17:06:54  law
// - optimization: ������� ����������� ����� ���������� ��������� ������, ����������� ������� �����.
//

{$Include l3Define.inc }

interface

uses
  Windows,

  l3Interfaces,
  l3Types,
  l3Base
  ;

type
  Pl3MemoryBlock = ^Tl3MemoryBlock;
  Tl3MemoryBlock = packed object
    public
    // public methods
      rNext : Pl3MemoryBlock;
      rFree : Cardinal;
  end;//Tl3MemoryBlock

  Tl3SimpleMemoryManager = class(Tl3Base, Il3MemoryManager)
   {* ���������� �������� ������, ���������� ����� ������� �����. }
    protected
    // internal fields
      f_AllocCount : Integer;
    private
    // internal fields
      f_Head       : Pl3MemoryBlock;
      f_BlockSize  : Cardinal;
      f_CS         : TRTLCriticalSection;
    protected
    // internal methods
      procedure AllocNewBlock;
        {-}
      function  CanFreeBlocks: Boolean;
        virtual;
        {-}
      procedure FreeBlocks;
        virtual;
        {-}
      procedure DoGetMem(var P; aSize : Cardinal);
        virtual;
        {* - �������� ���� ������. }
      procedure DoFreeMem(var P);
        virtual;
        {* - ����������� ���� ������. }
      procedure Cleanup;
        override;
        {-}
    public
      {$ifdef  MMTrace}
       f_GlobalAlloc : Integer;
      {$EndIf}
    // public methods
      constructor Create(aBlockSize: Cardinal);
        reintroduce;
        virtual;
        {* - ������� ��������. }
      procedure GetMem(var P; aSize : Cardinal);
        {* - �������� ���� ������. }
      procedure FreeMem(var P);
        {* - ����������� ���� ������. }
  end;//Tl3SimpleMemoryManager

  Tl3SizedPoolManager = class(Tl3SimpleMemoryManager)
   {* �������� "��������". }
    private
    // internal fields
      f_ItemSize : Cardinal;
    public
    // public methods
      constructor Create(aBlockSize : Cardinal;
                         anItemSize : Cardinal);
        reintroduce;
        {* - ������� ��������. }
      procedure AllocItem(var theItem;
                          aLength : Cardinal);
        {* - ������������ �������. }
      procedure FreeItem(var theItem);
        {* - ����������� �������. }
      function ItemLength(anItem: Pointer): Long;
        {* - ���������� ����� ��������. }
  end;//Tl3SizedPoolManager

  Tl3WideStringManager = class(Tl3SizedPoolManager)
   {* �������� Unicode-�����. }
    public
    // public methods
      constructor Create(aBlockSize: Long);
        reintroduce;
        {* - ������� ��������. }
      function AllocString(const aString: WideString): PWideChar;
        {* - ������������ ������. }
      procedure FreeString(var theString: PWideChar);
        {* - ����������� ������. }
      function StringAsPCharLen(aString: PWideChar): Tl3PCharLen;
        {* - �������� ������ � Tl3PChatLen. }
      function StringAsWideString(aString: PWideChar): WideString;
        {* - �������� ������ � WideString. }
  end;//Tl3WideStringManager

implementation

uses
  SysUtils,

  l3String
  ;

// start class Tl3SimpleMemoryManager

constructor Tl3SimpleMemoryManager.Create(aBlockSize: Cardinal);
  //reintroduce;
  {* - ������� ��������. }
begin
 InitializeCriticalSection(f_CS);
 inherited Create;
 f_BlockSize := aBlockSize;
 AllocNewBlock;
 f_BlockSize := l3System.GlobalSize(f_Head) // - ����� ���, ��� ����� ��������
                //- SizeOf(Tl3MemoryBlock)    // - �������� ������ ���������
                ;
end;

procedure Tl3SimpleMemoryManager.Cleanup;
  //override;
  {-}
begin
 {$IfDef l3AssertSimpleMMCanFreeBlocks}
 Assert(CanFreeBlocks);
 {$EndIf l3AssertSimpleMMCanFreeBlocks}
 FreeBlocks;
 inherited;
 DeleteCriticalSection(f_CS);
end;

function Tl3SimpleMemoryManager.CanFreeBlocks: Boolean;
  //virtual;
  {-}
begin
 Result := (f_AllocCount = 0);
end;

procedure Tl3SimpleMemoryManager.FreeBlocks;
  {-}
var
 l_Next : Pl3MemoryBlock;
begin
 while (f_Head <> nil) do begin
  l_Next := f_Head^.rNext;
  l3System.GlobalFreePtr(Pointer(f_Head));
  f_Head := l_Next;
 end;//while (f_Head <> nil)
 {$ifdef  MMTrace}
  f_GlobalAlloc := 0;
 {$EndIf}
end;

procedure Tl3SimpleMemoryManager.AllocNewBlock;
  {-}
var
 l_New  : Pl3MemoryBlock;
begin
 l_New := l3System.GlobalAllocPtr(f_BlockSize);
 {$ifdef  MMTrace}
  inc(f_GlobalAlloc, f_BlockSize);
 {$EndIf}
 Assert(l_New <> nil);
 with l_New^ do 
 begin
  rFree := l3System.GlobalSize(l_New) - SizeOf(l_New^);
  rNext := f_Head;
 end;//with l_New^
 f_Head := l_New;
end;

procedure RaiseBlockSizeError;
begin
 raise EOutOfMemory.Create('������ ����� ������ ������� ��������.');
end;

procedure Tl3SimpleMemoryManager.GetMem(var P; aSize : Cardinal);
  {* - �������� ���� ������. }
begin
 EnterCriticalSection(f_CS);
 try
  DoGetMem(P, aSize);
 finally
  LeaveCriticalSection(f_CS);
 end;//try..finally
end;

procedure Tl3SimpleMemoryManager.FreeMem(var P);
  {* - ����������� ���� ������. }
begin
 EnterCriticalSection(f_CS);
 try
  DoFreeMem(P);
 finally
  LeaveCriticalSection(f_CS);
 end;//try..finally
end;

procedure Tl3SimpleMemoryManager.DoGetMem(var P; aSize : Cardinal);
  {* - �������� ���� ������. }
var
 l_Free : Cardinal;
begin
 if (aSize > f_BlockSize) then
  RaiseBlockSizeError;
 if (aSize = 0) then
  Pointer(P) := nil
 else
 begin
  if (f_Head = nil) then
   l_Free := 0
  else
   l_Free := f_Head^.rFree;
  if (l_Free < aSize) then
   AllocNewBlock;
  Pointer(P) := PAnsiChar(f_Head) + f_BlockSize - f_Head^.rFree;
  Dec(f_Head^.rFree, aSize);
  Inc(f_AllocCount);
 end;//aSize = 0
end;

procedure Tl3SimpleMemoryManager.DoFreeMem(var P);
  {* - ����������� ���� ������. }
begin
 if (Pointer(P) <> nil) then
 begin
  Dec(f_AllocCount);
  Pointer(P) := nil;
  if CanFreeBlocks then
   FreeBlocks;
 end;//Pointer(P) <> nil
end;

// start class Tl3SizedPoolManager

constructor Tl3SizedPoolManager.Create(aBlockSize : Cardinal;
                                       anItemSize : Cardinal);
  //reintroduce;
  {* - ������� ��������. }
begin
 inherited Create(Longword(Int64(aBlockSize) * Int64(anItemSize))); // Int64 �����, ����� `dcc32.exe` �� ������� ������ `C13310`. 
 f_ItemSize := anItemSize;
end;

procedure Tl3SizedPoolManager.AllocItem(var theItem;
                                        aLength : Cardinal);
  {* - ������������ �������. }
begin
 GetMem(theItem, aLength * f_ItemSize + SizeOf(aLength));
 PLong(theItem)^ := aLength;
 Inc(PAnsiChar(theItem), SizeOf(aLength));
end;

procedure Tl3SizedPoolManager.FreeItem(var theItem);
  {* - ����������� �������. }
begin
 FreeMem(theItem);
end;

function Tl3SizedPoolManager.ItemLength(anItem: Pointer): Long;
  {* - ���������� ����� ��������. }
begin
 if (anItem = nil) then
  Result := 0
 else
  Result := PLong(PAnsiChar(anItem) - SizeOf(Result))^;
end;

// start class Tl3WideStringManager

constructor Tl3WideStringManager.Create(aBlockSize: Long);
  //reintroduce;
  {* - ������� ��������. }
begin
 inherited Create(aBlockSize, SizeOf(WideChar));
end;

function Tl3WideStringManager.AllocString(const aString: WideString): PWideChar;
  {* - ������������ ������. }
var
 l_Length : Cardinal;
begin
 l_Length := Length(aString);
 AllocItem(Result, l_Length);
 // - ���� �� ���������� - ����� �� ���-�� ������������, ���� ����� �������
 if (l_Length > 0) then
  l3Move(aString[1], Result^, l_Length * f_ItemSize);
end;

procedure Tl3WideStringManager.FreeString(var theString: PWideChar);
  {* - ����������� ������. }
begin
 FreeItem(theString);
end;

function Tl3WideStringManager.StringAsPCharLen(aString: PWideChar): Tl3PCharLen;
  {* - �������� ������ � Tl3PChatLen. }
begin
 Result := l3PCharLen(aString, ItemLength(aString));
end;

function Tl3WideStringManager.StringAsWideString(aString: PWideChar): WideString;
  {* - �������� ������ � WideString. }
begin
 SetString(Result, aString, ItemLength(aString));
end;

end.

