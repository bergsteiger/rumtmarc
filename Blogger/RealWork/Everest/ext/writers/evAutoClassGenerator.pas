unit evAutoClassGenerator;
{* Генератор автоклассов. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evAutoClassGenerator - }
{ Начат: 03.06.2003 12:38 }
{ $Id: evAutoClassGenerator.pas,v 1.23 2007/12/04 12:47:49 lulin Exp $ }

// $Log: evAutoClassGenerator.pas,v $
// Revision 1.23  2007/12/04 12:47:49  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.21.6.2  2005/07/15 10:14:10  lulin
// - избавляемся от использования самостийной функции преобразования интерфейсов.
//
// Revision 1.21.6.1  2005/05/18 12:42:57  lulin
// - отвел новую ветку.
//
// Revision 1.20.2.1  2005/04/28 09:18:40  lulin
// - объединил с веткой B_Tag_Box.
//
// Revision 1.21  2005/04/19 15:41:32  lulin
// - переходим на "правильный" ProcessMessages.
//
// Revision 1.20  2005/03/29 08:34:50  lulin
// - bug fix: не компилировалось.
//
// Revision 1.19  2005/01/13 14:14:32  narry
// - bug fix: переименование метода
//
// Revision 1.18  2004/09/21 12:55:53  lulin
// - Release заменил на Cleanup.
//
// Revision 1.17  2003/07/15 14:24:21  law
// - new behavior: сделана обработка исключения во время автоклассификации.
//
// Revision 1.16  2003/06/25 16:42:01  law
// - new behavior: сделана возможность устанавливать событие на завершение записи результатов автоклассификации.
//
// Revision 1.15  2003/06/25 11:53:33  law
// - new prop: TevCustomNSRCWriter.SkipPreformatted.
//
// Revision 1.14  2003/06/25 11:44:21  law
// - new behavior: ожидание окончания автоклассификации перенесено в метод TevAutoClassThread.Restart.
//
// Revision 1.13  2003/06/25 11:14:24  law
// - new unit: l3TempMemoryStream - содержит класс Tl3TempMemoryStream - потокв памяти, который имеет ограничение на размер, после достижения которого все данные вымещаются во временный файл.
//
// Revision 1.12  2003/06/25 10:33:20  law
// - new behavior: сделана возможность устанавливать событие на завершение автоклассификации.
//
// Revision 1.11  2003/06/25 10:25:38  law
// - new behavior: сделана возможность запускать автоклассификацию в отдельной нити.
//
// Revision 1.10  2003/06/24 16:09:36  law
// - new prop: TevAutoClassGenerator.Async - задел на классификацию в отдельной нити.
//
// Revision 1.9  2003/06/16 12:16:43  law
// - bug fix: писателю в NSRC неправильно выставлялась кодовая страница.
//
// Revision 1.8  2003/06/10 15:16:10  law
// - new behavior: для автоклассификации убрана выливка технических комментариев и комментариев в заголовке файла.
//
// Revision 1.7  2003/06/10 15:03:13  law
// - new behavior: для автоклассификации убрана выливка команды !Style.
//
// Revision 1.6  2003/06/10 14:15:58  law
// - change: изменения в соответствии с новой версией автоклассифицирующей dll.
//
// Revision 1.5  2003/06/03 11:11:20  narry
// - bug fix: не открывался поток во вновь созданном генераторе
//
// Revision 1.4  2003/06/03 10:21:52  law
// - new behavior: настраиваем стандартное поведение.
//
// Revision 1.3  2003/06/03 10:17:39  law
// - new param: TevAutoClassGenerator.Create - aGeneratorClass.
//
// Revision 1.2  2003/06/03 10:13:35  law
// - bug fix: перед запуском автоклассификации не закрывалась последняя скобка.
//
// Revision 1.1  2003/06/03 10:00:53  law
// - new unit: evAutoClassGenerator.
//

{$I evDefine.inc }

interface

uses
  Classes,

  l3Types,
  l3Base,
  l3BaseStream,

  k2TagGen,
  k2Reader,

  evTextFormatter
  ;

type
  TevAutoClassThread = class(Tl3LoopThread)
    private
    // internal fields
      f_Path           : String;
      f_Reader         : Tk2CustomFileReader;
      f_InStream       : Tl3Stream;
      f_OnClassifyDone : TNotifyEvent;
      f_OnReadDone     : TNotifyEvent;
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      procedure DoExecute;
        override;
        {-}
      procedure OneIteration;
        override;
        {-}
      procedure IterationDone;
        override;
        {-}
      procedure Reader_Execute;
        {-}
      procedure Classify_Fail;
        {-}
    protected
    // internal properties
      property Path: String
        read f_Path;
        {* - путь к словарям. }
    public
    // public methods
      constructor Create(const aPath      : String;
                         anInStream       : Tl3Stream;
                         aReader          : Tk2CustomFileReader;
                         anOnClassifyDone : TNotifyEvent;
                         anOnReadDone     : TNotifyEvent);
        reintroduce;
        {-}
      procedure Restart(anInStream: Tl3Stream);
        {-}
  end;//TevAutoClassThread

  TevAutoClassGenerator = class(TevCustomTextFormatter)
   {* Генератор автоклассов. }
    private
    // internal fields
      f_Path           : String;
      f_InStream       : Tl3Stream;
      f_Reader         : Tk2CustomFileReader;
      f_GeneratorClass : Rk2TagGenerator;
      f_Async          : Bool;
      f_Thread         : TevAutoClassThread;
      f_OnClassifyDone : TNotifyEvent;
      f_OnReadDone     : TNotifyEvent;
    protected
    // internal methods
      procedure OpenStream;
        override;
        {-}
      procedure CloseStream(NeedUndo: Bool);
        override;
        {-}
      function  GeneratorClass: Rk2TagGenerator;
        virtual;
        {-}
      procedure CloseStructure(NeedUndo: Bool);
        override;
        {-}
      procedure Cleanup;
        override;
        {-}
      procedure MakeStream;
        {-}
      procedure FreeStream;
        {-}
      procedure Classify;
        {-}  
      procedure ClassifyAsync;
        {-}  
    protected
    // internal properties
      property Path: String
        read f_Path;
        {* - путь к словарям. }
      property Async: Bool
        read f_Async;
        {-}  
    public
    // public methods
      constructor Create(const aPath      : String;
                         aReader          : Tk2CustomFileReader;
                         anAsync          : Bool;
                         anOnClassifyDone : TNotifyEvent;
                         anOnReadDone     : TNotifyEvent;
                         aGeneratorClass  : Rk2TagGenerator = nil);
        reintroduce;
        {* - создает генератор автоклассов. }
      procedure StartChild(TypeID: Long);
        override;
        {-}
  end;//TevAutoClassGenerator

implementation

uses
  SysUtils,
  Forms,
  
  l3Chars,
  l3InternalInterfaces,
  l3InterfacesMisc,
  l3TempMemoryStream,

  afwFacade,
  
  k2InternalInterfaces,
  k2Tags,
  
  evNSRWrt
  ;

procedure cir_gar_alot_nsr(const InputS, OutputS: IStream); stdcall; external 'cir_gar_nlrubr.dll';
procedure cir_gar_alot_arx(const InputS, OutputS: IStream); stdcall; external 'cir_gar_nlrubr.dll';
function cir_gar_verclass(aStrBuff : PChar; aStrBuffLength : Integer): Integer; stdcall; external 'cir_gar_nlrubr.dll';
function  cir_gar_verrubr(aStrBuff : PChar; aStrBuffLength : Integer): Integer; stdcall; external 'cir_gar_nlrubr.dll';
procedure cir_gar_init(Path: PChar); stdcall; external 'cir_gar_nlrubr.dll';

var
 g_WasInit : Bool = false;

// start class TevAutoClassGenerator

constructor TevAutoClassGenerator.Create(const aPath      : String;
                                         aReader          : Tk2CustomFileReader;
                                         anAsync          : Bool;
                                         anOnClassifyDone : TNotifyEvent;
                                         anOnReadDone     : TNotifyEvent;
                                         aGeneratorClass  : Rk2TagGenerator = nil);
  //reintroduce;
  {* - создает генератор автоклассов. }
begin
 inherited Create;
 CodePage := CP_ANSI;
 FormatOrdinalParas := false;
 f_Path := aPath;
 f_Async := anAsync;
 f_OnClassifyDone := anOnClassifyDone;
 f_OnReadDone := anOnReadDone;
 l3Set(f_Reader, aReader);
 if (aGeneratorClass = nil) then
  f_GeneratorClass := TevCustomNSRCWriter
 else
  f_GeneratorClass := aGeneratorClass; 
end;

procedure TevAutoClassGenerator.Cleanup;
  //override;
  {-}
begin
 l3Free(f_Thread);
 l3Free(f_Reader);
 l3Free(f_InStream);
 inherited;
end;

procedure TevAutoClassGenerator.OpenStream;
  //override;
  {-}
var
 l_Generator : Tk2TagGenerator;
 l_Wrap      : Il3ObjectWrap;
begin
 inherited;
 if not Async AND not g_WasInit then begin
  cir_gar_init(PChar(Path));
  g_WasInit := true;
 end;//not Async AND not g_WasInit
 if (Generator = nil) then
 begin
  l_Generator := GeneratorClass.Create(Self);
  try
   Generator := l_Generator;
   Generator.Start;
  finally
   l3Free(l_Generator);
  end;//try..finally
 end;//Generator = nil
 if Supports(Generator, Il3ObjectWrap, l_Wrap) then
  try
   if (l_Wrap.GetObject Is TevCustomNSRCWriter) then
    with TevCustomNSRCWriter(l_Wrap.GetObject) do
    begin
     OutStyle := false;
     PlainText := true;
     SkipPreformatted := true;
     CodePage := CodePage;
    end;//with TevCustomNSRCWriter(l_Wrap.GetObject)
  finally
   l_Wrap := nil;
  end;//try..finally
 if Async then
  MakeStream;
end;

procedure TevAutoClassGenerator.CloseStream(NeedUndo: Bool);
  //override;
  {-}
begin
 if not NeedUndo AND Async then
 begin
  ClassifyAsync;
  FreeStream;
 end;//Async
 inherited;
end;

function TevAutoClassGenerator.GeneratorClass: Rk2TagGenerator;
  //virtual;
  {-}
begin
 Result := f_GeneratorClass;
end;

procedure TevAutoClassGenerator.MakeStream;
  {-}
var
 l_FilerSource : Ik2FilerSource;
begin
 f_InStream := Tl3TempMemoryStream.Create;
 if Supports(Generator, Ik2FilerSource, l_FilerSource) then
  try
   l_FilerSource.Filer.Stream := f_InStream;
  finally
   l_FilerSource := nil;
  end;//try..finally
end;

procedure TevAutoClassGenerator.FreeStream;
  {-}
var  
 l_FilerSource : Ik2FilerSource;
begin
 if Supports(Generator, Ik2FilerSource, l_FilerSource) then
  try
   l_FilerSource.Filer.Stream := nil;
  finally
   l_FilerSource := nil;
  end;//try..finally
 l3Free(f_InStream);
end;

procedure TevAutoClassGenerator.Classify;
  {-}
var
 l_OutStream : Tl3Stream;
begin
 if (f_Reader <> nil) then
 begin
  f_InStream.Seek(0, soBeginning);
  // - перематываем поток на начало
  l_OutStream := Tl3TempMemoryStream.Create;
  try
   try
    cir_gar_alot_arx(f_InStream, l_OutStream);
   except
    on E: Exception do
    begin
     l3System.Exception2Log(E);
     if Assigned(f_OnReadDone) then
      f_OnReadDone(Self);
     Exit;
    end;//on E: Exception
   end;//try..except
   l_OutStream.Seek(0, soBeginning);
   // - перематываем поток на начало
   f_Reader.Filer.Stream := l_OutStream;
   try
    if Assigned(f_OnClassifyDone) then
     f_OnClassifyDone(Self);
    f_Reader.Execute;
    if Assigned(f_OnReadDone) then
     f_OnReadDone(Self);
   finally
    f_Reader.Filer.Stream := nil;
   end;//try..finally
  finally
   l3Free(l_OutStream);
  end;//try..finally
 end;//f_Reader <> nil
end;

procedure TevAutoClassGenerator.ClassifyAsync;
  {-}
begin
 if (f_Reader <> nil) then
 begin
  f_InStream.Seek(0, soBeginning);
  // - перематываем поток на начало
  if (f_Thread = nil) then
  begin
   f_Thread := TevAutoClassThread.Create(Path, f_InStream, f_Reader,
                                         f_OnClassifyDone,
                                         f_OnReadDone);
   f_Thread.Suspended := false;
  end//f_Thread = nil
  else
   f_Thread.Restart(f_InStream);
 end;//f_Reader <> nil
end;

procedure TevAutoClassGenerator.StartChild(TypeID: Long);
  //override;
  {-}
begin
 inherited;
 if not Async AND (f_InStream = nil) AND CurrentType.InheritsFrom(k2_idDocument) then
  MakeStream;
end;

procedure TevAutoClassGenerator.CloseStructure(NeedUndo: Bool);
  //override;
  {-}
var
 l_NeedWrite : Bool;
begin
 l_NeedWrite := not Async AND not NeedUndo AND (f_InStream <> nil) AND
                CurrentType.InheritsFrom(k2_idDocument);
 inherited;
 if l_NeedWrite then
 begin
  Classify;
  FreeStream;
 end;//not NeedUndo
end;

// start class TevAutoClassThread

constructor TevAutoClassThread.Create(const aPath      : String;
                                      anInStream       : Tl3Stream;
                                      aReader          : Tk2CustomFileReader;
                                      anOnClassifyDone : TNotifyEvent;
                                      anOnReadDone     : TNotifyEvent);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_Path := aPath;
 f_OnClassifyDone := anOnClassifyDone;
 f_OnReadDone := anOnReadDone;
 l3Set(f_Reader, aReader);
 l3Set(f_InStream, anInStream);
end;

procedure TevAutoClassThread.Cleanup;
  //override;
  {-}
begin
 l3Free(f_Reader);
 l3Free(f_InStream);
 inherited;
end;

procedure TevAutoClassThread.Restart(anInStream: Tl3Stream);
  {-}
begin
 while not Suspended do
  afw.ProcessMessages;
  // - ожидаем завершения предыдущей классификации
 l3Set(f_InStream, anInStream);
 Suspended := false;
end;

procedure TevAutoClassThread.DoExecute;
  //override;
  {-}
begin
 cir_gar_init(PChar(Path));
 inherited;
end;

procedure TevAutoClassThread.OneIteration;
  //override;
  {-}
var
 l_OutStream : Tl3Stream;
begin
 l_OutStream := Tl3TempMemoryStream.Create;
 try
  try
   cir_gar_alot_arx(f_InStream, l_OutStream);
  except
   on E: Exception do
   begin
    l3System.Exception2Log(E);
    Synchronize(Classify_Fail);
    Terminate;
    Exit;
   end;//on E: Exception
  end;//try..except
  l_OutStream.Seek(0, soBeginning);
  // - перематываем поток на начало
  f_Reader.Filer.Stream := l_OutStream;
 finally
  l3Free(l_OutStream);
 end;//try..finally
end;

procedure TevAutoClassThread.IterationDone;
  //override;
  {-}
begin
 Synchronize(Reader_Execute);
end;

procedure TevAutoClassThread.Reader_Execute;
  {-}
begin
 try
  if Assigned(f_OnClassifyDone) then
   f_OnClassifyDone(Self);
  f_Reader.Execute;
  if Assigned(f_OnReadDone) then
   f_OnReadDone(Self);
 finally
  f_Reader.Filer.Stream := nil;
 end;//try..finally
end;

procedure TevAutoClassThread.Classify_Fail;
  {-}
begin
 if Assigned(f_OnReadDone) then
  f_OnReadDone(Self);
end;

end.

