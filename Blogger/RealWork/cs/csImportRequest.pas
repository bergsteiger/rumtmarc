unit csImportRequest;
{ Запрос на импорт }


interface

uses
 CSRequests,
 Classes,
 DT_Types;

type
 TcsImportRequest = class(TcsRequest)
 private
  function pm_GetDeleteIncluded: Boolean;
  function pm_GetIsAnnotation: Boolean;
  function pm_GetIsRegion: Boolean;
  function pm_GetSourceFiles: TStrings;
  function pm_GetSourceFolder: String;
  procedure pm_SetDeleteIncluded(const Value: Boolean);
  procedure pm_SetIsAnnotation(const Value: Boolean);
  procedure pm_SetIsRegion(const Value: Boolean);
  procedure pm_SetSourceFiles(const Value: TStrings);
  procedure pm_SetSourceFolder(const Value: String);
 public
  constructor Create(aOwner: TObject; aUserID: TUserID); override;
 published
  property DeleteIncluded: Boolean read pm_GetDeleteIncluded write pm_SetDeleteIncluded;
  property IsAnnotation: Boolean read pm_GetIsAnnotation write pm_SetIsAnnotation;
  property IsRegion: Boolean read pm_GetIsRegion write pm_SetIsRegion;
  property SourceFiles: TStrings read pm_GetSourceFiles write pm_SetSourceFiles;
  property SourceFolder: String read pm_GetSourceFolder write pm_SetSourceFolder;
 end;

const
 reqSourceFolder   = reqChildProperty;
 reqDeleteIncluded = reqChildProperty + 1;
 reqIsAnnotation  = reqChildProperty + 2;
 reqIsRegion       = reqChildProperty + 3;
 reqSourceFiles    = reqChildProperty + 4;

implementation

uses
 csRequestTypes,
 ddAppConfigUtils,
 ddAppConfigTypes;


{
********************************* TcsRequest **********************************
}

constructor TcsImportRequest.Create(aOwner: TObject; aUserID: TUserID);
begin
 inherited;
 Tasktype:= cs_rtImport;
 AppendNode(Data,
           makeFolderName('Исходная папка', '',
           makeBoolean('Подключенные', False,
           MakeBoolean('Аннотации', False,
           MakeBoolean('Региональные', False,
           MakeStrings('Исходные файлы',
           nil))))));
end;

function TcsImportRequest.pm_GetDeleteIncluded: Boolean;
begin
 Result := Data.Items[reqDeleteIncluded].BooleanValue;
end;

function TcsImportRequest.pm_GetIsAnnotation: Boolean;
begin
 Result := Data.Items[reqIsAnnotation].BooleanValue;
end;

function TcsImportRequest.pm_GetIsRegion: Boolean;
begin
 Result := Data.Items[reqIsRegion].BooleanValue;
end;

function TcsImportRequest.pm_GetSourceFiles: TStrings;
begin
 Result := Data.Items[reqSourceFiles].ObjectValue as TStrings;
end;

function TcsImportRequest.pm_GetSourceFolder: String;
begin
 Result := Data.Items[reqSourceFolder].StringValue;
end;

procedure TcsImportRequest.pm_SetDeleteIncluded(const Value: Boolean);
begin
 Data.Items[reqDeleteIncluded].BooleanValue:= Value;
end;

procedure TcsImportRequest.pm_SetIsAnnotation(const Value: Boolean);
begin
 Data.Items[reqIsAnnotation].BooleanValue:= Value;
end;

procedure TcsImportRequest.pm_SetIsRegion(const Value: Boolean);
begin
 Data.Items[reqIsRegion].BooleanValue:= Value;
end;

procedure TcsImportRequest.pm_SetSourceFiles(const Value: TStrings);
begin
 (Data.Items[reqSourceFiles].ObjectValue as TStrings).Assign(Value)
end;

procedure TcsImportRequest.pm_SetSourceFolder(const Value: String);
begin
 Data.Items[reqSourceFolder].StringValue:= Value;
end;


end.
