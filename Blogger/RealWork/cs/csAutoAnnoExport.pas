unit csAutoAnnoExport;

interface

uses csExport, DT_Types;

type
 TcsAutoAnnoExport = class(TcsExport)
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
 end;

implementation

uses csTaskTypes, DT_Const, ddServerTask;

constructor TcsAutoAnnoExport.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType              := cs_ttAExportAnno;
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
  AnnoTopicFileName     := 'Archianno.nsr';
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csAutoAnnoExport.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttAExportAnno, TcsAutoAnnoExport, 'Автоматический экспорт аннотаций');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csAutoAnnoExport.pas initialization leave'); {$EndIf}
end.
