unit l3BoxMM;

{ Ѕиблиотека "L3 (Low Level Library)" }
{ јвтор: Ћюлин ј.¬. ©                 }
{ ћодуль: l3BoxMM -                   }
{ Ќачат: 28.05.2004 19:49             }
{ $Id: l3BoxMM.pas,v 1.17 2013/04/08 14:50:41 lulin Exp $ }

// $Log: l3BoxMM.pas,v $
// Revision 1.17  2013/04/08 14:50:41  lulin
// - портируем.
//
// Revision 1.16  2011/10/05 09:26:18  voba
// - k : 281525254 Ѕорьба с утечками
//
// Revision 1.15  2007/08/14 14:30:12  lulin
// - оптимизируем перемещение блоков пам€ти.
//
// Revision 1.14  2007/01/17 16:47:36  lulin
// - подготавливаемс€ к защите при работе из разных потоков.
//
// Revision 1.13  2004/08/05 17:40:31  law
// - избавилс€ от р€да Warning'ов и Hint'ов.
//
// Revision 1.12  2004/05/31 14:12:29  law
// - new class: Tl3FixedSizeMemoryManager.
//
// Revision 1.11  2004/05/31 13:59:34  law
// - new class: Tl3BaseBoxMemoryManager.
//
// Revision 1.10  2004/05/31 13:49:41  law
// - new method: Tl3BoxMemoryManager.InitFreed.
//
// Revision 1.9  2004/05/31 13:31:04  law
// - new method: Tl3BoxMemoryManager.IsValidIndex.
//
// Revision 1.8  2004/05/31 13:27:17  law
// - new methods: Tl3BoxMemoryManager.HasFreed, InitFreed.
//
// Revision 1.7  2004/05/31 13:20:56  law
// - new methods: Tl3BoxMemoryManager.GetFreed, SetFreed.
//
// Revision 1.6  2004/05/31 12:30:29  law
// - new behavior: в Tl3BoxMemoryManager сделана возможность задавать верхний и нижний индексы дл€ массива кусков пам€ти, которые подлежат повторному использованию.
//
// Revision 1.5  2004/05/31 10:02:55  law
// - включен define l3BoxedBitArray - так вроде с ним все заработало.
//
// Revision 1.4  2004/05/28 18:10:17  law
// - bug fix: были несбалансированы скобки выделени€/освобождени€.
//
// Revision 1.3  2004/05/28 18:03:35  law
// - new define: l3BoxedBitArray - пока выключен.
//
// Revision 1.2  2004/05/28 17:12:58  law
// - промежуточный commit.
//
// Revision 1.1  2004/05/28 15:57:09  law
// - new unit: l3BoxMM.
//

{$I l3Define.inc }

interface

uses
  l3Types,
  l3Base,
  l3SimpleMM
  ;

type
  Tl3BaseBoxMemoryManager = class(Tl3SimpleMemoryManager)
    private
    // internal fields
      f_Lost : Integer;
    protected
    // internal methods
      procedure FreeBlocks;
        override;
        {-}
      function  SizeSize: Cardinal;
        virtual;
        abstract;
        {-}
      function  Size2Index(aSize: Cardinal): Integer;
        virtual;
        abstract;
        {-}
      function  AlignSize(aSize: Cardinal): Cardinal;
        virtual;
        abstract;
        {-}
      function  GetPSz(aPt: PAnsiChar): Cardinal;
        virtual;
        abstract;
        {-}
      procedure SetPSz(aPt: PAnsiChar; aValue: Cardinal);
        virtual;
        abstract;
        {-}
      function  HasFreed: Boolean;
        virtual;
        abstract;
        {-}
      procedure InitFreed;
        virtual;
        abstract;
        {-}
      procedure ClearFreed;
        virtual;
        abstract;
        {-}
      function  IsValidIndex(anIndex: Integer): Boolean;
        virtual;
        abstract;
        {-}
      function  GetFreed(anIndex: Integer): Pointer;
        virtual;
        abstract;
      procedure SetFreed(anIndex: Integer; aValue: Pointer);
        virtual;
        abstract;
        {-}
    public
    // public methods
      constructor Create(aBlockSize : Cardinal);
        override;
        {* - создает менеджер. }
      function  GetSize(aPt: Pointer): Cardinal;
        {-}
      procedure DoGetMem(var P; aSize : Cardinal);
        override;
        {* - выдел€ет блок пам€ти. }
      procedure DoFreeMem(var P);
        override;
        {* - освобождает блок пам€ти. }
      procedure ReallocMem(var P; aNewSize: Cardinal);
        {* - перераспредел€ет блок пам€ти. }
  end;//Tl3BaseBoxMemoryManager
  
  Tl3BoxMemoryManager = class(Tl3BaseBoxMemoryManager)
    private
    // internal fields
      f_Freed     : PAnsiChar;
      f_LowIndex  : Integer;
      f_HighIndex : Integer;
      f_SizeSize  : Cardinal;
    protected
    // internal methods
      function  SizeSize: Cardinal;
        override;
        {-}
      function  Size2Index(aSize: Cardinal): Integer;
        override;
        {-}
      function  AlignSize(aSize: Cardinal): Cardinal;
        override;
        {-}
      function  GetPSz(aPt: PAnsiChar): Cardinal;
        override;
        {-}
      procedure SetPSz(aPt: PAnsiChar; aValue: Cardinal);
        override;
        {-}
      function  HasFreed: Boolean;
        override;
        {-}
      procedure InitFreed;
        override;
        {-}
      procedure ClearFreed;
        override;
        {-}
      function  IsValidIndex(anIndex: Integer): Boolean;
        override;
        {-}
      function  GetFreed(anIndex: Integer): Pointer;
        override;
      procedure SetFreed(anIndex: Integer; aValue: Pointer);
        override;
        {-}
    public
    // public methods
      constructor Create(aBlockSize : Long;
                         aHighIndex : Integer = 8;
                         aLowIndex  : Integer = 0);
        reintroduce;
        {* - создает менеджер. }
  end;//Tl3BoxMemoryManager

  Tl3FixedSizeMemoryManager = class(Tl3BaseBoxMemoryManager)
    private
    // internal fields
      f_Freed     : PPointer;
      f_PartSize  : Cardinal;
    protected
    // internal methods
      function  SizeSize: Cardinal;
        override;
        {-}
      function  Size2Index(aSize: Cardinal): Integer;
        override;
        {-}
      function  AlignSize(aSize: Cardinal): Cardinal;
        override;
        {-}
      function  GetPSz(aPt: PAnsiChar): Cardinal;
        override;
        {-}
      procedure SetPSz(aPt: PAnsiChar; aValue: Cardinal);
        override;
        {-}
      function  HasFreed: Boolean;
        override;
        {-}
      procedure InitFreed;
        override;
        {-}
      procedure ClearFreed;
        override;
        {-}
      function  IsValidIndex(anIndex: Integer): Boolean;
        override;
        {-}
      function  GetFreed(anIndex: Integer): Pointer;
        override;
      procedure SetFreed(anIndex: Integer; aValue: Pointer);
        override;
        {-}
    public
    // public methods
      constructor Create(aBlockSize : Long;
                         aPartSize  : Cardinal);
        reintroduce;
        {* - создает менеджер. }
  end;//Tl3FixedSizeMemoryManager

implementation

uses
  l3MinMax,
  l3Memory
  ;

// start class Tl3BaseBoxMemoryManager

constructor Tl3BaseBoxMemoryManager.Create(aBlockSize: Cardinal);
  //override;
  {* - создает менеджер. }
begin
 inherited Create(aBlockSize);
end;

procedure Tl3BaseBoxMemoryManager.FreeBlocks;
  //override;
  {-}
begin
 ClearFreed;
 inherited;
end;

function Tl3BaseBoxMemoryManager.GetSize(aPt: Pointer): Cardinal;
  {-}
begin
 if (aPt = nil) then
  Result := 0
 else
  Result := GetPSz(PAnsiChar(aPt) - SizeSize);
end;

procedure Tl3BaseBoxMemoryManager.DoGetMem(var P; aSize : Cardinal);
  //override;
  {* - выдел€ет блок пам€ти. }
var
 l_Index : Integer;
 l_Sz    : Cardinal;
begin
 if (aSize = 0) then
  Pointer(P) := nil
 else
 begin
  l_Index := Size2Index(aSize);
  Assert(IsValidIndex(l_Index), '«апрошен  неверный размер куска пам€ти Tl3BaseBoxMemoryManager.DoGetMem');
  if HasFreed AND IsValidIndex(l_Index) then
  begin
   Pointer(P) := GetFreed(l_Index);
   if (Pointer(P) <> nil) then
   begin
    // - удалось вз€ть освобожденный кусок
    Inc(f_AllocCount);
    // - увеличиваем число вз€тых кусков
    SetFreed(l_Index, PPointer(P)^);
    // - указываем на другой освобожденный
    Exit;
    // - выходим, т.к уже все выделили
   end
   else
    l_Sz := AlignSize(aSize);
    // - надо выровн€ть размер куска
  end
  else
   l_Sz := aSize; 
  Inc(l_Sz, SizeSize);
  // - резервируем место под размер
  inherited DoGetMem(P, l_Sz);
  SetPSz(PAnsiChar(P), l_Sz - SizeSize);
  Inc(PAnsiChar(P), SizeSize);
  // - сдвигаем на размер размера куска 
 end;//l_Sz = 0
end;

procedure Tl3BaseBoxMemoryManager.DoFreeMem(var P);
  //override;
  {* - освобождает блок пам€ти. }
var
 l_Sz    : Integer;
 l_Index : Integer;
begin
 if (Pointer(P) = nil) then
  Exit;
 l_Sz := GetSize(Pointer(P));
 if (l_Sz > 0) then
 begin
  // - если действительно что-то освобождаем
  l_Index := Size2Index(l_Sz);
  // - вычисл€ем индекс в массиве уже освобожденных
  if IsValidIndex(l_Index) then
  begin
   // - надо положить этот кусок в массив освобожденных
   InitFreed;
   PPointer(P)^ := GetFreed(l_Index);
   SetFreed(l_Index, Pointer(P));
  end
  else
  begin
   Inc(f_Lost);
   Assert(false, ' оробка создана неправильно Tl3BaseBoxMemoryManager.DoFreeMem');
  end;//IsValidIndex(l_Index)
 end;//l_Sz > 0
 Dec(PAnsiChar(P), SizeSize);
 // - сдвигаем на размер размера куска
 inherited DoFreeMem(P);
end;

procedure Tl3BaseBoxMemoryManager.ReallocMem(var P; aNewSize: Cardinal);
  {* - перераспредел€ет блок пам€ти. }
var
 l_OldSz : Integer;
 l_NewSz : Integer;
 l_OldPt : Pointer;
 l_NewPt : Pointer;
begin
 l_OldSz := GetSize(Pointer(P));
 l_NewSz := AlignSize(aNewSize);
 if (l_OldSz <> l_NewSz) then
 begin
  l_OldPt := Pointer(P);
  GetMem(l_NewPt, l_NewSz);
  Pointer(P) := l_NewPt;
  if (l_OldPt <> nil) then
   l3Move(l_OldPt^, l_NewPt^, Min(l_OldSz, l_NewSz));
  FreeMem(l_OldPt);
 end;//l_OldSz <> l_NewSz
end;

// start class Tl3BoxMemoryManager

const
 cStep = 4;

constructor Tl3BoxMemoryManager.Create(aBlockSize : Long;
                                       aHighIndex : Integer = 8;
                                       aLowIndex  : Integer = 0);
  //override;
  {* - создает менеджер. }
begin
 inherited Create(aBlockSize);
 f_SizeSize := 1;
 f_LowIndex := aLowIndex;
 f_HighIndex := aHighIndex;
end;

function Tl3BoxMemoryManager.SizeSize: Cardinal;
  //override;
  {-}
begin
 Result := f_SizeSize;
end;

function Tl3BoxMemoryManager.Size2Index(aSize: Cardinal): Integer;
  {-}
begin
 Result := ((aSize - 1) div cStep) - 1;
end;

function Tl3BoxMemoryManager.AlignSize(aSize: Cardinal): Cardinal;
  {-}
begin
 Result := (((aSize - 1) div cStep) + 1) * cStep;
end;
  
function Tl3BoxMemoryManager.GetPSz(aPt: PAnsiChar): Cardinal;
  {-}
begin
 Case SizeSize of
  1: Result := PByte(aPt)^;
  2: Result := PWord(aPt)^;
  4: Result := PLong(aPt)^;
  else
  begin
   Result := 0;
   Assert(false);
  end;//else
 end;//Case SizeSize
end;

procedure Tl3BoxMemoryManager.SetPSz(aPt: PAnsiChar; aValue: Cardinal);
  {-}
begin
 Case SizeSize of
  1: PByte(aPt)^ := aValue;
  2: PWord(aPt)^ := aValue;
  4: PLong(aPt)^ := aValue;
  else Assert(false);
 end;//Case SizeSize
end;

function Tl3BoxMemoryManager.HasFreed: Boolean;
  {-}
begin
 Result := (f_Freed <> nil);
end;

procedure Tl3BoxMemoryManager.InitFreed;
  {-}
begin
 if (f_Freed = nil) then
  l3System.GetLocalMemZ(f_Freed, (f_HighIndex - f_LowIndex + 1) * SizeOf(Pointer));
end;

procedure Tl3BoxMemoryManager.ClearFreed;
  {-}
begin
 l3System.FreeLocalMem(f_Freed);
end;

function Tl3BoxMemoryManager.IsValidIndex(anIndex: Integer): Boolean;
  {-}
begin
 Result := (anIndex >= f_LowIndex) AND (anIndex <= f_HighIndex); 
end;

function Tl3BoxMemoryManager.GetFreed(anIndex: Integer): Pointer;
  {-}
begin
 Result := PPointer(f_Freed + (anIndex - f_LowIndex) * SizeOf(Pointer))^;
end;

procedure Tl3BoxMemoryManager.SetFreed(anIndex: Integer; aValue: Pointer);
  {-}
begin
 PPointer(f_Freed + (anIndex - f_LowIndex) * SizeOf(Pointer))^ := aValue;
end;

// start class Tl3FixedSizeMemoryManager

constructor Tl3FixedSizeMemoryManager.Create(aBlockSize : Long;
                                             aPartSize  : Cardinal);
  //override;
  {* - создает менеджер. }
begin
 inherited Create(aBlockSize);
 f_PartSize := aPartSize;
end;

function Tl3FixedSizeMemoryManager.SizeSize: Cardinal;
  //override;
  {-}
begin
 Result := 0;
end;

function Tl3FixedSizeMemoryManager.Size2Index(aSize: Cardinal): Integer;
  {-}
begin
 Assert(aSize = f_PartSize);
 Result := 0;
end;

function Tl3FixedSizeMemoryManager.AlignSize(aSize: Cardinal): Cardinal;
  {-}
begin
 Assert(aSize = f_PartSize);
 Result := aSize;
end;
  
function Tl3FixedSizeMemoryManager.GetPSz(aPt: PAnsiChar): Cardinal;
  {-}
begin
 Result := f_PartSize;
end;

procedure Tl3FixedSizeMemoryManager.SetPSz(aPt: PAnsiChar; aValue: Cardinal);
  {-}
begin
 Assert(aValue = f_PartSize);
end;

function Tl3FixedSizeMemoryManager.HasFreed: Boolean;
  {-}
begin
 Result := (f_Freed <> nil);
end;

procedure Tl3FixedSizeMemoryManager.InitFreed;
  {-}
begin
end;

procedure Tl3FixedSizeMemoryManager.ClearFreed;
  {-}
begin
 f_Freed := nil;
end;

function Tl3FixedSizeMemoryManager.IsValidIndex(anIndex: Integer): Boolean;
  {-}
begin
 Result := (anIndex = 0); 
end;

function Tl3FixedSizeMemoryManager.GetFreed(anIndex: Integer): Pointer;
  {-}
begin
 Result := f_Freed^;
end;

procedure Tl3FixedSizeMemoryManager.SetFreed(anIndex: Integer; aValue: Pointer);
  {-}
begin
 f_Freed^ := aValue;
end;

end.

