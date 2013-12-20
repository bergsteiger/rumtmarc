unit l3SimpleMM;
{* Простейший менеджер памяти, выделяющий сразу большие куски. }

{ Библиотека "L3 (Low Level Library)" }
{ Автор: Люлин А.В. © }
{ Модуль: l3SimpleMM - }
{ Начат: 27.02.2002 16:30 }
{ $Id: l3SimpleMM.pas,v 1.23 2013/04/03 15:29:32 lulin Exp $ }

// $Log: l3SimpleMM.pas,v $
// Revision 1.23  2013/04/03 15:29:32  lulin
// - портируем.
//
// Revision 1.22  2011/10/05 09:51:59  voba
// - k : 281525254 Борьба с утечками
//
// Revision 1.21  2011/09/16 06:24:37  lulin
// {RequestLink:278824896}.
// - убираем ненужные модификаторы.
//
// Revision 1.20  2008/02/08 12:14:47  lulin
// - потенциальная ошибка при пустой строке.
//
// Revision 1.19  2007/08/30 10:09:23  lulin
// - убираем ненужную функцию поиска.
//
// Revision 1.18  2007/08/14 14:30:13  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.17  2007/01/18 10:49:42  lulin
// - заменяем объект менеджера памяти на интерфейс.
//
// Revision 1.16  2007/01/17 16:54:09  lulin
// - защищаем распределение памяти от использования в разных потоках.
//
// Revision 1.15  2007/01/17 16:47:36  lulin
// - подготавливаемся к защите при работе из разных потоков.
//
// Revision 1.14  2006/12/06 10:34:02  lulin
// - "выпрямляем" наследование.
//
// Revision 1.13  2004/12/05 17:57:24  migel
// - fix: не компилировалось (строчный компилятор `dcc32.exe` падал с ошибкой `C13310`).
//
// Revision 1.12  2004/08/05 17:40:31  law
// - избавился от ряда Warning'ов и Hint'ов.
//
// Revision 1.11  2004/06/01 07:48:41  law
// - new defines: l3AssertSimpleMMCanFreeBlocks, _ALCU.
//
// Revision 1.10  2004/05/31 10:02:55  law
// - включен define l3BoxedBitArray - так вроде с ним все заработало.
//
// Revision 1.9  2004/05/28 18:03:35  law
// - new define: l3BoxedBitArray - пока выключен.
//
// Revision 1.8  2004/05/28 17:12:58  law
// - промежуточный commit.
//
// Revision 1.7  2004/05/28 14:49:05  law
// - new bevavior: в пуле сделано освобождение памяти, после освобождения всех выделенных кусков.
//
// Revision 1.6  2004/05/28 14:43:07  law
// - new bevavior: сделан контроль за количеством освобожденных блоков.
//
// Revision 1.5  2004/05/28 10:42:32  law
// - bug fix: неправильно распеределялись объекты в пуле.
//
// Revision 1.4  2002/04/15 12:19:00  law
// - new method: StringAsWideString.
//
// Revision 1.3  2002/03/04 10:17:04  law
// - bug fix.
//
// Revision 1.2  2002/03/04 09:58:19  law
// - buf fix: AV при пустом элементе.
//
// Revision 1.1  2002/02/27 17:06:54  law
// - optimization: попытка оптимизации путем применения менеджера памяти, выделяющего большие блоки.
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
   {* Простейший менеджер памяти, выделяющий сразу большие куски. }
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
        {* - выделяет блок памяти. }
      procedure DoFreeMem(var P);
        virtual;
        {* - освобождает блок памяти. }
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
        {* - создает менеджер. }
      procedure GetMem(var P; aSize : Cardinal);
        {* - выделяет блок памяти. }
      procedure FreeMem(var P);
        {* - освобождает блок памяти. }
  end;//Tl3SimpleMemoryManager

  Tl3SizedPoolManager = class(Tl3SimpleMemoryManager)
   {* Менеджер "массивов". }
    private
    // internal fields
      f_ItemSize : Cardinal;
    public
    // public methods
      constructor Create(aBlockSize : Cardinal;
                         anItemSize : Cardinal);
        reintroduce;
        {* - создает менеджер. }
      procedure AllocItem(var theItem;
                          aLength : Cardinal);
        {* - распределяет элемент. }
      procedure FreeItem(var theItem);
        {* - освобождает элемент. }
      function ItemLength(anItem: Pointer): Long;
        {* - возвращает длину элемента. }
  end;//Tl3SizedPoolManager

  Tl3WideStringManager = class(Tl3SizedPoolManager)
   {* Менеджер Unicode-строк. }
    public
    // public methods
      constructor Create(aBlockSize: Long);
        reintroduce;
        {* - создает менеджер. }
      function AllocString(const aString: WideString): PWideChar;
        {* - распределяет строку. }
      procedure FreeString(var theString: PWideChar);
        {* - освобождает строку. }
      function StringAsPCharLen(aString: PWideChar): Tl3PCharLen;
        {* - приводит строку к Tl3PChatLen. }
      function StringAsWideString(aString: PWideChar): WideString;
        {* - приводит строку к WideString. }
  end;//Tl3WideStringManager

implementation

uses
  SysUtils,

  l3String
  ;

// start class Tl3SimpleMemoryManager

constructor Tl3SimpleMemoryManager.Create(aBlockSize: Cardinal);
  //reintroduce;
  {* - создает менеджер. }
begin
 InitializeCriticalSection(f_CS);
 inherited Create;
 f_BlockSize := aBlockSize;
 AllocNewBlock;
 f_BlockSize := l3System.GlobalSize(f_Head) // - берем все, что винды выделили
                //- SizeOf(Tl3MemoryBlock)    // - вычитаем размер заголовка
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
 raise EOutOfMemory.Create('Размер блока больше размера страницы.');
end;

procedure Tl3SimpleMemoryManager.GetMem(var P; aSize : Cardinal);
  {* - выделяет блок памяти. }
begin
 EnterCriticalSection(f_CS);
 try
  DoGetMem(P, aSize);
 finally
  LeaveCriticalSection(f_CS);
 end;//try..finally
end;

procedure Tl3SimpleMemoryManager.FreeMem(var P);
  {* - освобождает блок памяти. }
begin
 EnterCriticalSection(f_CS);
 try
  DoFreeMem(P);
 finally
  LeaveCriticalSection(f_CS);
 end;//try..finally
end;

procedure Tl3SimpleMemoryManager.DoGetMem(var P; aSize : Cardinal);
  {* - выделяет блок памяти. }
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
  {* - освобождает блок памяти. }
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
  {* - создает менеджер. }
begin
 inherited Create(Longword(Int64(aBlockSize) * Int64(anItemSize))); // Int64 нужен, чтобы `dcc32.exe` не выдавал ошибку `C13310`. 
 f_ItemSize := anItemSize;
end;

procedure Tl3SizedPoolManager.AllocItem(var theItem;
                                        aLength : Cardinal);
  {* - распределяет элемент. }
begin
 GetMem(theItem, aLength * f_ItemSize + SizeOf(aLength));
 PLong(theItem)^ := aLength;
 Inc(PAnsiChar(theItem), SizeOf(aLength));
end;

procedure Tl3SizedPoolManager.FreeItem(var theItem);
  {* - освобождает элемент. }
begin
 FreeMem(theItem);
end;

function Tl3SizedPoolManager.ItemLength(anItem: Pointer): Long;
  {* - возвращает длину элемента. }
begin
 if (anItem = nil) then
  Result := 0
 else
  Result := PLong(PAnsiChar(anItem) - SizeOf(Result))^;
end;

// start class Tl3WideStringManager

constructor Tl3WideStringManager.Create(aBlockSize: Long);
  //reintroduce;
  {* - создает менеджер. }
begin
 inherited Create(aBlockSize, SizeOf(WideChar));
end;

function Tl3WideStringManager.AllocString(const aString: WideString): PWideChar;
  {* - распределяет строку. }
var
 l_Length : Cardinal;
begin
 l_Length := Length(aString);
 AllocItem(Result, l_Length);
 // - надо бы посмотреть - нужно ли что-то распределять, если длина нулевая
 if (l_Length > 0) then
  l3Move(aString[1], Result^, l_Length * f_ItemSize);
end;

procedure Tl3WideStringManager.FreeString(var theString: PWideChar);
  {* - освобождает строку. }
begin
 FreeItem(theString);
end;

function Tl3WideStringManager.StringAsPCharLen(aString: PWideChar): Tl3PCharLen;
  {* - приводит строку с Tl3PChatLen. }
begin
 Result := l3PCharLen(aString, ItemLength(aString));
end;

function Tl3WideStringManager.StringAsWideString(aString: PWideChar): WideString;
  {* - приводит строку к WideString. }
begin
 SetString(Result, aString, ItemLength(aString));
end;

end.

