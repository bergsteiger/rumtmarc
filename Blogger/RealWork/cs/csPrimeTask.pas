unit csPrimeTask;

interface

uses csExport, ddProgressObj, Dt_Types;

type
 TalcuPrimeExportLite = class(TcsExport)
 protected
  procedure DoRun(aProgressor: TddProgressObject); override;
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
  procedure Abort; override;
 end;

implementation

uses
 csTaskTypes, DT_Const, DT_Sab, l3FileUtils, DT_Serv, DT_Doc, ddAnnotations, StrUtils, SysUtils,
 HT_dll, ddServerTask;

{
******************************** TddProcessTask ********************************
}
constructor TalcuPrimeExportLite.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 TaskType              := cs_ttPrimeExport;
 DiapasonType          := tdNumList;
 ExportEmptyKW         := False;
 ExportDocument        := False;
 ExportRTFBody         := False;
 ExportKW              := False;
 ExportDocImage        := False;
 MultiUser             := True;
 Family                := CurrentFamily;
 InternalFormat        := False;
 OutFileType           := ord(outNSRC);
 SeparateFiles         := Ord(divNone);
 DocumentFileNameMask  := '';
 ReferenceFileNameMask := '';
 ObjTopicFileName      := '';
 KWFileName            := '';
 OutputFileSize        := 0;
 ExportAnnoTopics      := True;
 AnnoTopicFileName     := 'Prime_anno.nsr';
end;

procedure TalcuPrimeExportLite.Abort;
begin
 // TODO -cMM: TddProcessTask.Abort необходимо написать реализацию
end;

procedure TalcuPrimeExportLite.DoRun(aProgressor: TddProgressObject);
var
 Diapason: TDiapasonRec;
 l_ExportDir: String;
 l_Sab: ISab;
begin
 l_ExportDir:= ConcatDirName(GlobalHtServer.GetHomePath(UserID), 'Export'){+ St};
 TaskFolder := l_ExportDir;

 Diapason.Typ:= DiapasonType;
 if Diapason.Typ = tdNumList then
 begin
  l_Sab:= MakeValueSet(DocumentServer(CurrentFamily).FileTbl, fID_Fld, SABStream);
  l_Sab.Sort;
  Diapason.List:= l_Sab.HTSab;
 end
 else
  Diapason.ID:= DocID;

 Diapason.ExternalFormat:= False;
 Diapason.Choise:= 1;

 with TddAnnotationPipe.Create(nil) do
 try
  Pipe.Family:= CurrentFamily;
  Pipe.Diapason:= Diapason;
  Pipe.ExportDirectory:= IfThen(UserID <> GlobalHTServer.CurUserID, TaskFolder, ExportDirectory);
  ForceDirectories(Pipe.ExportDirectory);
  FileName := ConcatDirName(Pipe.ExportDirectory, AnnoTopicFileName);
  Pipe.Progressor := aProgressor;
  Execute;
  if Diapason.Typ = tdNumList then
   htClearResults(Diapason.List);
  if UserID <> GlobalHtServer.CurUserID then
   Delivery;
 finally
  Free;
 end;

end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csPrimeTask.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttPrimeExport, TalcuPrimeExportLite, 'Экспорт аннотаций в формате Прайм');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csPrimeTask.pas initialization leave'); {$EndIf}
end.
