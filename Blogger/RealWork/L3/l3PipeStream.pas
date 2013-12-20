unit l3PipeStream;
{* Поток-труба. }

{ Библиотека "L3 (Low Level Library)" }
{ Автор: Люлин А.В. ©                 }
{ Модуль: l3PipeStream -              }
{ Начат: 11.05.2000 11:12             }
{ $Id: l3PipeStream.pas,v 1.22 2011/05/18 12:09:16 lulin Exp $ }

// $Log: l3PipeStream.pas,v $
// Revision 1.22  2011/05/18 12:09:16  lulin
// {RequestLink:266409354}.
//
// Revision 1.21  2010/03/18 14:15:46  lulin
// {RequestLink:197951943}.
//
// Revision 1.20  2008/02/28 15:12:11  lulin
// - переносим nevTools на модель.
//
// Revision 1.19  2007/08/14 14:30:13  lulin
// - оптимизируем перемещение блоков памяти.
//
// Revision 1.18  2007/02/12 18:06:19  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.17  2007/02/12 16:40:36  lulin
// - переводим на строки с кодировкой.
//
// Revision 1.16  2007/01/22 15:20:13  oman
// - new: Локализация библиотек - l3 (cq24078)
//
// Revision 1.15  2005/04/19 15:41:51  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.14  2004/08/05 16:58:19  law
// - new behavior: для Немезиса в оглавлении вместо имени документа выводим "Оглавление" (CQ OIT5-8572).
// - избавился от ряда Warning'ов и Hint'ов.
//
// Revision 1.13  2002/05/23 13:00:18  law
// - new beahvior: не перемещаем указатель, если стоим там где надо.
//
// Revision 1.12  2002/05/20 14:11:39  narry
// - bug fix: подавление ошибки при завершении нити.
//
// Revision 1.11  2002/04/16 12:05:26  law
// - new method: NotDone.
//
// Revision 1.10  2001/08/29 07:01:10  law
// - split unit: l3Intf -> l3BaseStream, l3BaseDraw, l3InterfacedComponent.
//
// Revision 1.9  2001/07/27 15:46:04  law
// - comments: xHelpGen.
//
// Revision 1.8  2000/12/15 15:19:01  law
// - вставлены директивы Log.
//

{$Include l3Define.inc }

interface

uses
  Windows,

  Classes,
  SyncObjs,
  
  l3Types,
  l3Base,
  l3BaseStream,
  l3Memory,
  l3Interfaces,
  l3ProtoObject
  ;

type
  Tl3PipeStream = class;

  Tl3Writer = class;

  Tl3WriterThread = class(Tl3Thread)
   {* Нить для работы писателя в трубу. }
    private
    {property fields}
      f_Stream  : Tl3PipeStream;
      f_Writer  : Tl3Writer;
      f_GapPool : Tl3MemoryPool;
      f_Percent : Long;
    protected
    {internal methods}
      procedure Release;
        override;
        {-}
      procedure UpdatePercent;
        {-}
      procedure ClearReferences;
        {-}
    public
    {public methods}
      constructor Create(CreateSuspended : Bool;
                         aStream         : Tl3PipeStream;
                         aWriter         : Tl3Writer);
        reintroduce;
        {* - создать нить. }
      procedure Execute;
        override;
        {-}
      function  WriterCallBack(aWrittenSize: Long; aPercent: Long): Bool;
        {* - нотификация от писателя. }  
    protected
    {protected properties}
      property Writer: Tl3Writer
        read f_Writer;
        {* - писатель. }
    public
    {public properties}
      property Stream: Tl3PipeStream
        read f_Stream;
        {* - поток. }
  end;{Tl3WriterThread}

  Tl3Writer = class(Tl3ProtoObject)
   {* Писатель в трубу. }
    private
    {property fields}
      f_WriterThread   : Tl3WriterThread;
      f_HasData        : Bool;
    protected
    {internal methods}
      function  DoWriteProcess: Bool;
        virtual;
        abstract;
        {* - собственно процесс записи, для перекрытия в потомках. }
      procedure BeforeWriteProcess;
        virtual;
        {* - перед процессом записи, для перекрытия в потомках. }
      procedure AfterWriteProcess;
        virtual;
        {* - после процесса записи, для перекрытия в потомках. }
      procedure WriteProcessFinished(Sender: TObject);
        {-}
      procedure NotDone;
        virtual;
        {-}  
    public
    {public methods}
      constructor Create{(anOwner: TObject = nil)};
        //override;
        {-}
      procedure WriteProcess(aStream: Tl3PipeStream);
        {* - начать процесс записи. }
      procedure EndWriteProcess;
        {* - закончить процесс записи. }
      function  InWriteProcess: Bool;
        {* - в процессе записи? }  
    public
    {public properties}
      property HasData: Bool
        read f_HasData
        write f_HasData;
        {* - есть данные? }
      property WriterThread: Tl3WriterThread
        read f_WriterThread;
        {* - нить в контексте которой работает писатель. }  
  end;{Tl3Writer}

  Tl3PipeStream = class(Tl3Stream)
   {* Поток-труба. }
    private
    {property fields}
      f_BufferCS     : TCriticalSection;
      f_Buffer       : Tl3MemoryPool;
      f_WrittenSize  : Long;
      f_Offset       : Long;
      f_Writer       : Tl3Writer;
      f_Position     : Long;
      f_Progress     : Il3Progress;
      f_OriginalSize : Long;
    protected
    {internal methods}
      procedure Release;
        override;
        {-}
    public
    {public methods}
      constructor Create(aWriter         : Tl3Writer;
                         aBufferSize     : Long;
                         aOriginalSize   : Long;
                         const aProgress : Il3Progress = nil);
        reintroduce;
        {* - создать поток. }
      procedure LockBuffer;
        {* - начать операцию с буфером. }
      procedure UnlockBuffer;
        {* - закончить операцию с буфером. }
      function Read(var Buffer; Count: LongInt): LongInt;
        override;
        {-}
      function Seek(anOffset: LongInt; anOrigin: Word): LongInt;
        override;
        {-}
    public
    {public properties}
      property Buffer: Tl3MemoryPool
        read f_Buffer;
        {* - буфер потока. }
      property Offset: Long
        read f_Offset
        write f_Offset;
        {* - смещение в буфере. }
      property WrittenSize: Long
        read f_WrittenSize
        write f_WrittenSize;
        {* - сколько записано в поток? }
  end;{Tl3PipeStream}
  {* Поток-труба. Для использования в тех случаях когда процессом записи управляет один внешний объект, а процессом чтения - другой.
     То есть оба выполняют какие-то свои циклы и их надо синхронизировать.}

implementation

uses
  {$IfDef l3ConsoleApp}
  Messages,
  {$EndIf l3ConsoleApp}
  SysUtils,
  {$IfNDef l3ConsoleApp}
  Forms,
  {$EndIf  l3ConsoleApp}

  l3MinMax,
  l3Math,
  l3IntegerValueMapManager,
  l3String,
  l3PipeStreamRes,

  afwFacade
  ;

{ start class Tl3PipeStream }

constructor Tl3PipeStream.Create(aWriter         : Tl3Writer;
                                 aBufferSize     : Long;
                                 aOriginalSize   : Long;
                                 const aProgress : Il3Progress = nil);
  {reintroduce;}
  {-}
begin
 inherited Create;
 l3Set(f_Writer, aWriter);
 f_BufferCS := TCriticalSection.Create;
 f_Buffer := Tl3MemoryPool.Create;
 f_Buffer.Size := aBufferSize;
 f_Progress := aProgress;
 f_OriginalSize := aOriginalSize;
 if (f_Progress <> nil) then
  f_Progress.Start(100, str_l3mmReadFile.AsCStr);
end;

procedure Tl3PipeStream.Release;
  {override;}
  {-}
begin
 if (f_Progress <> nil) then f_Progress.Finish;
 f_Progress := nil;
 l3Free(f_Writer);
 l3Free(f_Buffer);
 l3Free(f_BufferCS);
 inherited;
end;

procedure Tl3PipeStream.LockBuffer;
  {-}
begin
 f_BufferCS.Enter;
end;

procedure Tl3PipeStream.UnlockBuffer;
  {-}
begin
 f_BufferCS.Leave;
end;

function Tl3PipeStream.Read(var Buffer; Count: LongInt): LongInt;
  {override;}
  {-}

 {$IfDef l3ConsoleApp}
 procedure ProcessMessages;
  {-as there is no Tapplication available here}
 var
  Msg: TMsg;
 begin
  if PeekMessage(Msg, 0, 0, 0, PM_REMOVE) then begin
   if (Msg.Message <> WM_QUIT) then begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
   end;{Msg.Message <> WM_QUIT}
  end;{PeekMessage}
 end;
 {$EndIf l3ConsoleApp}

var
 l_GapSize : Long;
begin
 Result := 0;
 repeat
  LockBuffer;
  try
   l_GapSize := WrittenSize - Offset;
   if (l_GapSize >= Count) then begin
    l3Move(f_Buffer.AsPointer^, Buffer, Count);
    Result := Count;
    Inc(f_Offset, Result);
    Inc(f_Position, Result);
    break;
    {l_GapSize >= Count}
   end else if not f_Writer.HasData OR ((l_GapSize > 0) AND (Count > f_Buffer.Size)) then begin
    l3Move(f_Buffer.AsPointer^, Buffer, l_GapSize);
    Result := l_GapSize;
    Inc(f_Offset, Result);
    Inc(f_Position, Result);
    break;
    {not Writer.HasData}
   end;
  finally
   UnlockBuffer;
  end;{try..finally}
  with f_Writer do
   if not InWriteProcess then WriteProcess(Self);
  {$IfDef l3ConsoleApp}
  ProcessMessages;
  {$Else  l3ConsoleApp}
  afw.ProcessMessages;
  {$EndIf l3ConsoleApp}
  Sleep(0);
 until false;
end;

function Tl3PipeStream.Seek(anOffset: LongInt; anOrigin: Word): LongInt;
  {override;}
  {-}
var
 C : Char;  
begin
 Result := f_Position;
 LockBuffer;
 try
  Case anOrigin of
   soFromBeginning: begin
    if (anOffset >= 0) then begin
     if (f_Position <> anOffset) then begin
      f_Position := 0;
      Offset := 0;
      WrittenSize := 0;
      UnlockBuffer;
      try
       with f_Writer do begin
        EndWriteProcess;
        HasData := true;
       end;{with f_Writer}
       while (anOffset > 0) AND (Read(C, 1) = 1) do Dec(anOffset);
      finally
       LockBuffer;
      end;{try..finally}
     end;//f_Position <> anOffset
     Result := f_Position;
    end else
     raise Exception.CreateFmt('Неверное смещение в Tl3PipeStream %d', [anOffset]);
   end;{soFromBeginning}
   soFromCurrent: begin
    if (anOffset = 0) then
     Result := f_Position
    else if (anOffset > 0) then begin
     Inc(f_Offset, anOffset);
     Inc(f_Position, anOffset);
     Result := f_Position;
     if (Offset = WrittenSize) then begin
      WrittenSize := 0;
      Offset := 0;
     end else if (Offset > WrittenSize) then begin
      anOffset := Offset - WrittenSize;
      WrittenSize := 0;
      Offset := 0;
      UnlockBuffer;
      try
       while (anOffset > 0) AND (Read(C, 1) = 1) do Dec(anOffset);
      finally
       LockBuffer;
      end;{try..finally}
     end;
    end else begin
     if (Offset + anOffset >= 0) then begin
      Inc(f_Offset, anOffset);
      Inc(f_Position, anOffset);
      Result := f_Position;
     end else
      Result := Seek(f_Position + anOffset, soFromBeginning);
    end;
   end;{soFromCurrent}
   soFromEnd:
    if (anOffset <= 0) then
     Result := Seek(WrittenSize - anOffset, soFromCurrent)
    else
     raise Exception.CreateFmt('Неверное смещение в Tl3PipeStream %d', [anOffset]);
   else
    raise Exception.CreateFmt('Неверный код смещения в Tl3PipeStream %d', [anOrigin]);
  end;{Case anOrigin}
 finally
  UnlockBuffer;
 end;{try..finally}
end;
  
{ start class Tl3Writer }

constructor Tl3Writer.Create{(anOwner: TObject = nil)};
  {override;}
  {-}
begin
 inherited;
 HasData := true;
end;

procedure Tl3Writer.WriteProcess(aStream: Tl3PipeStream);
  {-}
begin
 if not InWriteProcess then begin
  f_WriterThread := Tl3WriterThread.Create(true, aStream, Self);
  try
   with f_WriterThread do begin
    OnTerminate := WriteProcessFinished;
    FreeOnTerminate := true;
    BeforeWriteProcess;
    Resume;
   end;
  except
   l3Free(f_WriterThread);
   raise;
  end;{try..except}
 end;{not InWriteProcess}
end;

procedure Tl3Writer.EndWriteProcess;
  {-}
begin
 if InWriteProcess then
  with f_WriterThread do begin
   Terminate;
   try
    WaitFor;
   except
    on EOSError do begin
     // - ловим ошибки ожидания завершения нити
    end;//EOSError
   end;//try..except 
  end;{with f_WriterThread}
end;

procedure Tl3Writer.BeforeWriteProcess;
  //virtual;
  {-}
begin
end;
  
procedure Tl3Writer.AfterWriteProcess;
  //virtual;
  {-}
begin
end;

procedure Tl3Writer.WriteProcessFinished(Sender: TObject);
  {-}
begin
 f_WriterThread := nil;
 HasData := false;
 AfterWriteProcess;
end;

procedure Tl3Writer.NotDone;
  //virtual;
  {-}
begin
end;
  
function Tl3Writer.InWriteProcess: Bool;
  {-}
begin
 Result := f_WriterThread <> nil;
end;

{ start class Tl3WriterThread }

constructor Tl3WriterThread.Create(CreateSuspended : Bool;
                                   aStream         : Tl3PipeStream;
                                   aWriter         : Tl3Writer);
  {reintroduce;}
  {-}
begin
 l3Set(f_Stream, aStream);
 l3Set(f_Writer, aWriter);
 inherited Create(CreateSuspended);
end;

procedure Tl3WriterThread.ClearReferences;
  {-}
begin
 l3Free(f_Stream);
 l3Free(f_Writer);
 l3Free(f_GapPool);
end;

procedure Tl3WriterThread.Release;
  {override;}
  {-}
begin
 Synchronize(ClearReferences);
 inherited;
end;

procedure Tl3WriterThread.Execute;
  {override;}
  {-}
var
 l_Done : Bool;
begin
 Stream.LockBuffer;
 try
  with Writer do begin
   l_Done := DoWriteProcess;
   HasData := false;
  end;{with Writer}
 finally
  Stream.UnlockBuffer;
 end;{try..finally}
 if not l_Done then
  Writer.NotDone;
end;

procedure Tl3WriterThread.UpdatePercent;
  {-}
begin
 Stream.f_Progress.Progress(f_Percent);
end;

function Tl3WriterThread.WriterCallBack(aWrittenSize: Long; aPercent: Long): Bool;
  {-}
var
 l_GapSize : Long;  
begin
 Result := not Terminated;
 if Result then begin
  with Stream do begin
   if (f_GapPool = nil) then begin
    Offset := 0;
    WrittenSize := aWrittenSize
   end else begin
    l_GapSize := WrittenSize - Offset;
    with Buffer do begin
     Size := Max(aWrittenSize + l_GapSize, Size);
     if (l_GapSize > 0) then begin
      l3Move(AsPointer^, AsPointer[l_GapSize], aWrittenSize);
      l3Move(f_GapPool.AsPointer^, AsPointer^, l_GapSize);
     end;{l_GapSize > 0}
     WrittenSize := aWrittenSize + l_GapSize;
     Offset := 0;
    end;{with Buffer}
   end;{f_GapPool = nil}
   if (WrittenSize = 0) then Exit;
   UnlockBuffer;
   try
    f_Percent := aPercent;
    if (f_Percent = 0) then
     while (f_OriginalSize > 0) do begin
      f_Percent := l3MulDiv(f_Position, 100, f_OriginalSize);
      if (f_Percent <= 100) then break;
      Inc(f_OriginalSize, f_OriginalSize div 4);
     end;{while (f_OriginalSize > 0)}
    if (f_Progress <> nil) then Synchronize(UpdatePercent);
    {- здесь Reader может считать буфер}
    repeat
     Sleep(0);
    until (Offset > 0) OR Terminated; {- ждем пока хоть что-то считают}
   finally
    LockBuffer;
   end;{try..finally}
   if Terminated then
    Result := false
   else begin
    l_GapSize := WrittenSize - Offset;
    if (l_GapSize > 0) then begin
     {-кое-что осталось в буфере}
     if (f_GapPool = nil) then begin
      f_GapPool := Tl3MemoryPool.Create;
      f_GapPool.Size := l_GapSize;
      {f_GapPool = nil}
     end else
      f_GapPool.Size := Max(f_GapPool.Size, l_GapSize);
     l3Move(Buffer.AsPointer[Offset], f_GapPool.AsPointer^, l_GapSize);
     {Offset < WrittenSize}
    end else
     {-ничего не осталось - временный буфер не нужен}
     l3Free(f_GapPool);
   end;{Terminated}
  end;{with Stream}
 end;{Result}
end;

end.

