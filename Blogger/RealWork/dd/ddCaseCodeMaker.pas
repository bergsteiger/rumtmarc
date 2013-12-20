unit ddCaseCodeMaker;
{ Автоматическое создание Номеров дел для Постановлений Федеральных Арбитражных судов }

interface

Uses
 l3Base, l3TempMemoryStream, l3Filer,
 csServerTaskTypes, csProcessTask,
 dt_Types, l3CustomString, ddProgressObj, CsExport;

type
 TalcuCaseCodeMaker = class(Tl3Base)
 private
  f_Filer: Tl3CustomFiler;
  f_Stream: Tl3TempMemoryStream;
  f_TopicNo: Integer;
 public
  function Execute(aTask: TddProcessTask; aProgressor: TddProgressObject): Boolean;
 end;

type
 TddCaseCodeTask = class(TcsExport)
 protected
  procedure DoRun(aProgressor: TddProgressObject); override;
  function GetDescription: AnsiString; override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
 end;

implementation

Uses
 SewerPipe, ddImportPipeKernel,
 dd_lcCaseCodeGenerator, Document_Const, ddAppConfig, DT_Sab, dt_Doc, DT_Const,
 DT_Serv, evdWriter, evEvdRd, Classes, DT_User, DT_UserConst, DT_IFltr,
 SysUtils, csTaskTypes, ddServerTask;

function TalcuCaseCodeMaker.Execute(aTask: TddProcessTask; aProgressor:
    TddProgressObject): Boolean;
var
 l_OutPipe: TSewerPipe;
 l_Maker: TlcCaseCodeGenerator;
 l_Writer: TevdNativeWriter;
 l_DR: TDiapasonRec;
 l_Sab: ISab;
begin
 // Экспортируем во временный файл
 l_OutPipe:= TSewerPipe.Create(nil);
 try
  l_outPipe.Progressor:= aProgressor;
  l_OutPipe.ExportDocument:= True;
  l_DR.Typ:= TddCaseCodeTask(aTask).DiapasonType;
  if l_DR.Typ = tdNumList then
  begin
   DocumentServer.Family:= CurrentFamily;
   l_Sab:= MakeValueSet(DocumentServer.FileTbl, fID_Fld, TcsExport(aTask).SABStream);
   l_Sab.Sort;
   l_DR.List:= l_Sab.HTSab;
  end
  else
   l_DR.ID:= TcsExport(aTask).DocID;
  l_DR.ExternalFormat:= False;
  l_DR.Choise:= 1;
  l_OutPipe.Diapason:= l_DR;

  l_Maker:= TlcCaseCodeGenerator.Create(nil);
  try
   l_OutPipe.Writer:= l_Maker;
   l_Maker.Generator:= nil; //l_Writer;
   Result:= l_OutPipe.Execute;
  finally
   l3Free(l_Maker);
  end;
 finally
  l3Free(l_OutPipe);
 end;
end;


constructor TddCaseCodeTask.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType              := cs_ttCaseCode;
  DiapasonType          := tdNumList;
  ExportEmptyKW         := False;
  ExportDocument        := True;
  ExportRTFBody         := False;
  ExportKW              := False;
  ExportDocImage        := False;
  MultiUser             := True;
  Family                := CurrentFamily;
  InternalFormat        := False;
  OutFileType           := ord(outEVD);
  SeparateFiles         := Ord(divNone);
  DocumentFileNameMask  := '';
  ReferenceFileNameMask := '';
  ObjTopicFileName      := '';
  KWFileName            := '';
  OutputFileSize        := 0;
  ExportAnnoTopics      := False;
  AnnoTopicFileName     := 'Archianno.nsr';
end;

procedure TddCaseCodeTask.DoRun(aProgressor: TddProgressObject);
begin
 with TalcuCaseCodeMaker.Create(nil) do
 try
  Execute(Self, aProgressor)
 finally
  Free;
 end;

end;

function TddCaseCodeTask.GetDescription: AnsiString;
begin
 Result:= 'Расстановка Номеров дел в постановлениях ФАС';
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddCaseCodeMaker.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttCaseCode, TddCaseCodeTask, 'Создание номеров дел для постановлений ФАС');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\ddCaseCodeMaker.pas initialization leave'); {$EndIf}
end.
