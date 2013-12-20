unit Dt_Tasks;

{ $Id: Dt_Tasks.pas,v 1.2 2005/11/29 13:09:47 narry Exp $ }
// $Log: Dt_Tasks.pas,v $
// Revision 1.2  2005/11/29 13:09:47  narry
// - обновление: реализация конкретных типов задач
//
// Revision 1.1  2005/11/18 15:52:28  step
// занесено в CVS
//

{$I DtDefine.inc}

interface

uses
 Windows, Messages, SysUtils, Classes, Contnrs,
 IdGlobal, IdIOHandler,
 l3Base, l3Stream,
 dt_Types;

type
 TTaskType = (ttExport,
              ttImport,
              ttExportIncludedDocs,
              ttExportAnnotation);

 TTask = class(Tl3Base)
 private
  FUserID: Integer;
 protected
  procedure Init(aStream: TStream); virtual; abstract;
  procedure Store(aStream: TStream); virtual; abstract;
  procedure WriteString(aStream: TStream; const Str: String);
 public
  procedure ReadString(aStream: TStream; out aStr: String);
  procedure SaveTo(aIOHandler: TIdIOHandler); overload;
  procedure SaveTo(aStream: TStream); overload;
  class function RestoreFrom(aIOHandler: TIdIOHandler): TTask; overload; // как конструктор
  class function RestoreFrom(aStream: TStream): TTask; overload; // как конструктор
  class function TaskType: TTaskType; virtual; abstract;
  property UserID: Integer read FUserID write FUserID;
 end;

 TClassOfTask = class of TTask;

 TExportTask = class(TTask)
 private
  FAnnoTopicFileName: string;
  FDiapasonType: TDiapType;
  FDocID: Integer;
  FDocumentFileNameMask: string;
  FExportAnnoTopics: Boolean;
  FExportDirectory: string;
  FExportDocImage: Boolean;
  FExportDocument: Boolean;
  FExportEmpty: Boolean;
  FExportKW: Boolean;
  FExportRTFBody: Boolean;
  FFamily: Integer;
  FInternalFormat: Boolean;
  FKWFileName: string;
  FMultiUser: Boolean;
  FNumListFileName: string;
  FObjTopicFileName: string;
  FOnlyStructure: Boolean;
  FOutFileType: Longint;
  FOutputFileSize: LongInt;
  FReferenceFileNameMask: string;
  FSeparateFiles: Longint;
 protected
  class function TaskType: TTaskType; override;
  procedure Init(aStream: TStream); override;
  procedure Store(aStream: TStream); override;
 public
        {* - функция очистки объекта.  Для перекрытия в потомках. }
  procedure Assign(P: TPersistent); override;
  property AnnoTopicFileName: string read FAnnoTopicFileName write
      FAnnoTopicFileName;
  property DiapasonType: TDiapType read FDiapasonType write FDiapasonType;
  property DocID: Integer read FDocID write FDocID;
  property DocumentFileNameMask: string read FDocumentFileNameMask write
      FDocumentFileNameMask;
  property ExportAnnoTopics: Boolean read FExportAnnoTopics write
      FExportAnnoTopics;
  property ExportDirectory: string read FExportDirectory write FExportDirectory;
  property ExportDocImage: Boolean read FExportDocImage write FExportDocImage;
  property ExportDocument: Boolean read FExportDocument write FExportDocument;
  property ExportEmpty: Boolean read FExportEmpty write FExportEmpty;
  property ExportKW: Boolean read FExportKW write FExportKW;
  property ExportRTFBody: Boolean read FExportRTFBody write FExportRTFBody;
  property Family: Integer read FFamily write FFamily;
  property InternalFormat: Boolean read FInternalFormat write FInternalFormat;
  property KWFileName: string read FKWFileName write FKWFileName;
  property MultiUser: Boolean read FMultiUser write FMultiUser;
  property NumListFileName: string read FNumListFileName write FNumListFileName;
  property ObjTopicFileName: string read FObjTopicFileName write
      FObjTopicFileName;
  property OnlyStructure: Boolean read FOnlyStructure write FOnlyStructure;
  property OutFileType: Longint read FOutFileType write FOutFileType;
  property OutputFileSize: LongInt read FOutputFileSize write FOutputFileSize;
  property ReferenceFileNameMask: string read FReferenceFileNameMask write
      FReferenceFileNameMask;
  property SeparateFiles: Longint read FSeparateFiles write FSeparateFiles;
 end;

 TImportTask = class(TTask)
 private
  FDeleteIncluded: Boolean;
  FIsAnnotation: Boolean;
  FIsRegion: Boolean;
  FSourceFolder: string;
 protected
  class function TaskType: TTaskType; override;
  procedure Init(aStream: TStream); override;
  procedure Store(aStream: TStream); override;
 public
  property DeleteIncluded: Boolean read FDeleteIncluded write FDeleteIncluded;
  property IsAnnotation: Boolean read FIsAnnotation write FIsAnnotation;
  property IsRegion: Boolean read FIsRegion write FIsRegion;
  property SourceFolder: string read FSourceFolder write FSourceFolder;
 end;

  TExportIncludedDocsTask = class(TTask)
  private
  protected
   class function TaskType: TTaskType; override;
  end;

  TExportAnnotationTask = class(TTask)
  private
  protected
   class function TaskType: TTaskType; override;
  end;

implementation

uses
 l3Memory;

const
 c_TaskTypeToTaskClassMap: array[Low(TTaskType) .. High(TTaskType)] of TClassOfTask = (
  TExportTask,
  TImportTask,
  TExportIncludedDocsTask,
  TExportAnnotationTask
 );

function TaskClassOf(const aTaskType: TTaskType): TClassOfTask;
begin
 Result := c_TaskTypeToTaskClassMap[aTaskType];
end;


{ TTask }

class function TTask.RestoreFrom(aIOHandler: TIdIOHandler): TTask;
var
 l_TaskType: TTaskType;
 l_Stream: TStream;
begin
 l_TaskType := TTaskType(aIOHandler.ReadInteger);
 Result := TaskClassOf(l_TaskType).Create;
 Result.UserID := aIOHandler.ReadInteger;
 l_Stream := Tl3MemoryStream.Create;
 try
  aIOHandler.ReadStream(l_Stream);
  l_Stream.Seek(0, 0);
  Result.Init(l_Stream);
 finally
  l3Free(l_Stream);
 end;
end;

procedure TTask.SaveTo(aIOHandler: TIdIOHandler);
var
 l_Stream: TStream;
begin
 aIOHandler.Write(Integer(Ord(TaskType)));
 aIOHandler.Write(USerID);
 l_Stream := Tl3MemoryStream.Create;
 try
  Store(l_Stream);
  aIOHandler.Write(l_Stream, 0, True);
 finally
  l3Free(l_Stream);
 end;
end;

class function TTask.RestoreFrom(aStream: TStream): TTask;
var
 l_TaskType: Integer;
 l_UserID : Integer;
begin
 aStream.Read(l_TaskType, SizeOf(Integer));
 Result := TaskClassOf(TTaskType(l_TaskType)).Create;
 aStream.Read(l_UserID, SizeOf(Integer));
 Result.UserID := l_UserID;
 Result.Init(aStream);
end;

procedure TTask.SaveTo(aStream: TStream);
var
 l_TaskType: Integer;
begin
 l_TaskType := Ord(TaskType);
 aStream.Write(l_TaskType, SizeOf(Integer));
 aStream.Write(UserID, SizeOf(Integer));
 Store(aStream);
end;

procedure TTask.WriteString(aStream: TStream; const Str: String);
var
 l_Len: Integer;
begin
 l_Len := Length(Str);
 aStream.Write(l_Len, SizeOf(l_Len));
 if l_Len > 0 then
  aStream.Write(Str[1], l_Len);
end;

procedure TTask.ReadString(aStream: TStream; out aStr: String);
var
 l_Len: Integer;
begin
 aStream.Read(l_Len, SizeOf(l_Len));
 SetLength(aStr, l_Len);
 if l_Len > 0 then
  aStream.Read(aStr[1], l_Len);
end;

procedure TExportTask.Assign(P: TPersistent);
begin
 inherited;
 if (P Is TExportTask) then
 begin
  AnnoTopicFileName:= TExportTask(P).AnnoTopicFileName;
  DiapasonType:= TExportTask(P).DiapasonType;
  DocID:= TExportTask(P).DocID;
  DocumentFileNameMask:= TExportTask(P).DocumentFileNameMask;
  ExportAnnoTopics:= TExportTask(P).ExportAnnoTopics;
  ExportDirectory:= TExportTask(P).ExportDirectory;
  ExportDocImage:= TExportTask(P).ExportDocImage;
  ExportDocument:= TExportTask(P).ExportDocument;
  ExportEmpty:= TExportTask(P).ExportEmpty;
  ExportKW:= TExportTask(P).ExportKW;
  ExportRTFBody:= TExportTask(P).ExportRTFBody;
  Family:= TExportTask(P).Family;
  InternalFormat:= TExportTask(P).InternalFormat;
  KWFileName:= TExportTask(P).KWFileName;
  MultiUser:= TExportTask(P).MultiUser;
  NumListFileName:= TExportTask(P).NumListFileName;
  ObjTopicFileName:= TExportTask(P).ObjTopicFileName;
  OnlyStructure:= TExportTask(P).OnlyStructure;
  OutFileType:= TExportTask(P).OutFileType;
  OutputFileSize:= TExportTask(P).OutputFileSize;
  ReferenceFileNameMask:= TExportTask(P).ReferenceFileNameMask;
  SeparateFiles:= TExportTask(P).SeparateFiles;
 end; // if (P Is TExportTask)
end;

{ TExportTask }

procedure TExportTask.Init(aStream: TStream);
var
 l_Value: Integer;
begin
 with aStream do
 begin
  ReadString(aStream, FAnnoTopicFileName);
  Read(l_Value, SizeOf(Integer));
  FDiapasonType := TDiapType(l_Value);
  Read(FDOcID, SizeOf(Integer));
  ReadString(aStream, FDocumentFileNameMask);
  Read(FExportAnnoTopics, SizeOf(Boolean));
  ReadString(aStream, FExportDirectory);
  Read(FExportDocImage, SizeOf(Boolean));
  Read(FExportDocument, SizeOf(Boolean));
  Read(FExportEmpty, SizeOf(Boolean));
  Read(FExportKW, SizeOf(Boolean));
  Read(FExportRTFBody, SizeOF(Boolean));
  Read(FFamily, SizeOf(Integer));
  Read(FInternalFormat, SizeOf(Boolean));
  ReadString(aStream, FKWFileName);
  Read(FMultiUser, SizeOf(Boolean));
  ReadString(aStream, FNumListFileName);
  ReadString(aStream, FObjTopicFileName);
  Read(FOnlyStructure, SizeOf(Boolean));
  Read(FOutFileType, SizeOf(Longint));
  Read(FOutputFileSize, SizeOf(LongInt));
  ReadString(aStream, FReferenceFileNameMask);
  Read(FSeparateFiles, SizeOf(Longint));
 end; // with aStream

end;

procedure TExportTask.Store(aStream: TStream);
var
 l_Value : Integer;
begin
 with aStream do
 begin
  WriteString(aStream, FAnnoTopicFileName);
  l_Value := Integer(Ord(FDiapasonType));
  Write(l_Value, SizeOf(Integer));
  Write(FDocID, SizeOf(FDocID));
  WriteString(aStream, FDocumentFileNameMask);
  Write(FExportAnnoTopics, SizeOf(Boolean));
  WriteString(aStream, FExportDirectory);
  Write(FExportDocImage, SizeOf(Boolean));
  Write(FExportDocument, SizeOf(Boolean));
  Write(FExportEmpty, SizeOf(Boolean));
  Write(FExportKW, SizeOf(Boolean));
  Write(FExportRTFBody, SizeOF(Boolean));
  write(FFamily, SizeOf(Integer));
  Write(FInternalFormat, SizeOf(Boolean));
  WriteString(aStream, FKWFileName);
  Write(FMultiUser, SizeOf(Boolean));
  WriteString(aStream, FNumListFileName);
  WriteString(aStream, FObjTopicFileName);
  Write(FOnlyStructure, SizeOf(Boolean));
  Write(FOutFileType, SizeOf(Longint));
  Write(FOutputFileSize, SizeOf(LongInt));
  WriteString(aStream, FReferenceFileNameMask);
  Write(FSeparateFiles, SizeOf(Longint));
 end; // with aStream
end;

class function TExportTask.TaskType: TTaskType;
begin
 Result := ttExport;
end;


procedure TImportTask.Init(aStream: TStream);
begin
 aStream.Read(FDeleteIncluded, SizeOf(Boolean));
 aStream.Read(FIsAnnotation, SizeOf(Boolean));
 aStream.Read(FIsRegion, SizeOf(Boolean));
 ReadString(aStream, FSourceFolder);
end;

procedure TImportTask.Store(aStream: TStream);
begin
 aStream.Write(FDeleteIncluded, SizeOf(Boolean));
 aStream.Write(FIsAnnotation, SizeOf(Boolean));
 aStream.Write(FIsRegion, SizeOf(Boolean));
 WriteString(aStream, FSourceFolder);
end;

class function TImportTask.TaskType: TTaskType;
begin
 Result := ttImport;
end;

class function TExportIncludedDocsTask.TaskType: TTaskType;
begin
  Result := ttExportIncludedDocs;
end;

class function TExportAnnotationTask.TaskType: TTaskType;
begin
  Result := ttExportAnnotation;
end;

end.
