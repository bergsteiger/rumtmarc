unit vcmFormSetRefreshParams;
{* Параметры обновления представления сборки. }

// Библиотека : "vcm"
// Автор      : Морозов. М.А.
// Модуль     : vcmInterfaces -
// Начат      : 21.06.2007
// Версия     : $Id: vcmFormSetRefreshParams.pas,v 1.2 2008/11/28 19:38:40 lulin Exp $ }

{-------------------------------------------------------------------------------
  $Log: vcmFormSetRefreshParams.pas,v $
  Revision 1.2  2008/11/28 19:38:40  lulin
  - избавляемся от "прокидывания данных".

  Revision 1.1  2007/06/22 08:56:23  mmorozov
  - new: параметры обновления представления сборки оформлены интерфейсом;

-------------------------------------------------------------------------------}

interface

uses
  vcmInterfaces
  ;

function vcmMakeDataRefreshParams(const aSaveToHistory  : TvcmSaveFormSetToHistory = sfsNone;
                                  const aDataForHistory : IvcmData = nil): IvcmFormSetRefreshDataParams;
  {-}
function vcmMakeRefreshParams(const aParams     : IvcmFormSetRefreshDataParams;
                              const aDataSource : IvcmFormSetDataSource;
                              const aFormSet    : IvcmFormSet): IvcmFormSetRefreshParams;
  {-}

implementation

uses
  SysUtils,
  
  vcmBase
  ;

type

  TvcmFormSetRefreshParams = class(TvcmBase,
                                   IvcmFormSetRefreshParams)
  {* Элемент стека обновления. }
  private
  // internal methods
    f_DataSource     : IvcmFormSetDataSource;
    f_FormSet        : IvcmFormSet;
    f_SaveToHistory  : TvcmSaveFormSetToHistory;
    f_DataForHistory : IvcmData;
  private
  // IvcmFormSetRefreshParams
    function pm_GetDataForHistory: IvcmData;
      {-}
    function pm_GetDataSource: IvcmFormSetDataSource;
    procedure pm_SetDataSource(const aValue: IvcmFormSetDataSource);
      {-}
    function pm_GetFormSet: IvcmFormSet;
    procedure pm_SetFormSet(const aValue: IvcmFormSet);
      {-}
    function pm_GetSaveToHistory: TvcmSaveFormSetToHistory;
      {-}
  protected
  // protected methods
    procedure Cleanup;
      override;
      {-}
  public
  // public methods
    constructor Create(const aDataSource     : IvcmFormSetDataSource;
                       const aFormSet        : IvcmFormSet;
                       const aSaveToHistory  : TvcmSaveFormSetToHistory;
                       const aDataForHistory : IvcmData);
      reintroduce;
      {-}
    class function Make(const aDataSource     : IvcmFormSetDataSource;
                        const aFormSet        : IvcmFormSet;
                        const aSaveToHistory  : TvcmSaveFormSetToHistory = sfsNone;
                        const aDataForHistory : IvcmData = nil): IvcmFormSetRefreshParams;
      {-}
  public
  // public properties
    property DataSource: IvcmFormSetDataSource
      read pm_GetDataSource;
      {-}
    property FormSet: IvcmFormSet
      read pm_GetFormSet;
      {-}
    property SaveToHistory: TvcmSaveFormSetToHistory
      read pm_GetSaveToHistory;
      {-}
    property DataForHistory: IvcmData
      read pm_GetDataForHistory;
      {-}
  end;//TvcmFormSetRefreshParams

function vcmMakeRefreshParams(const aParams     : IvcmFormSetRefreshDataParams;
                              const aDataSource : IvcmFormSetDataSource;
                              const aFormSet    : IvcmFormSet): IvcmFormSetRefreshParams;
  {-}
begin
 if Supports(aParams, IvcmFormSetRefreshParams, Result) then
  with Result do
  begin
   DataSource := aDataSource;
   FormSet := aFormSet
  end//with Result do
 else
  if aParams <> nil then
   Result := TvcmFormSetRefreshParams.Make(aDataSource,
                                           aFormSet,
                                           aParams.SaveToHistory,
                                           aParams.DataForHistory)
  else
   Result := TvcmFormSetRefreshParams.Make(aDataSource, aFormSet);
end;

function vcmMakeDataRefreshParams(const aSaveToHistory  : TvcmSaveFormSetToHistory = sfsNone;
                                  const aDataForHistory : IvcmData = nil): IvcmFormSetRefreshDataParams;
  {-}
begin
 Result := TvcmFormSetRefreshParams.Make(nil,
                                         nil,
                                         aSaveToHistory,
                                         aDataForHistory);
end;

{ TvcmFormSetRefreshParams }

procedure TvcmFormSetRefreshParams.Cleanup;
  // override;
  {-}
begin
 f_DataForHistory := nil;
 f_DataSource := nil;
 f_FormSet := nil;
 inherited;
end;//Cleanup

constructor TvcmFormSetRefreshParams.Create(const aDataSource     : IvcmFormSetDataSource;
                                            const aFormSet        : IvcmFormSet;
                                            const aSaveToHistory  : TvcmSaveFormSetToHistory;
                                            const aDataForHistory : IvcmData);
  // reintroduce;
  {-}
begin
 inherited Create;
 f_DataSource := aDataSource;
 f_FormSet := aFormSet;
 f_SaveToHistory := aSaveToHistory;
 f_DataForHistory := aDataForHistory;
end;//Create

class function TvcmFormSetRefreshParams.Make(const aDataSource     : IvcmFormSetDataSource;
                                             const aFormSet        : IvcmFormSet;
                                             const aSaveToHistory  : TvcmSaveFormSetToHistory = sfsNone;
                                             const aDataForHistory : IvcmData = nil): IvcmFormSetRefreshParams;
      {-}
var
 l_Class: TvcmFormSetRefreshParams;
begin
 l_Class := Create(aDataSource, aFormSet, aSaveToHistory,
  aDataForHistory);
 try
  Result := l_Class;
 finally
  FreeAndNil(l_Class);
 end;{try..finally}
end;//Make

function TvcmFormSetRefreshParams.pm_GetDataForHistory: IvcmData;
begin
 Result := f_DataForHistory;
end;//pm_GetDataForHistory

function TvcmFormSetRefreshParams.pm_GetDataSource: IvcmFormSetDataSource;
begin
 Result := f_DataSource;
end;//pm_GetDataSource

function TvcmFormSetRefreshParams.pm_GetFormSet: IvcmFormSet;
begin
 Result := f_FormSet;
end;//pm_GetFormSet

function TvcmFormSetRefreshParams.pm_GetSaveToHistory: TvcmSaveFormSetToHistory;
begin
 Result := f_SaveToHistory;
end;//pm_GetSaveToHistory

procedure TvcmFormSetRefreshParams.pm_SetDataSource(const aValue: IvcmFormSetDataSource);
begin
 f_DataSource := aValue;
end;//pm_SetDataSource

procedure TvcmFormSetRefreshParams.pm_SetFormSet(const aValue: IvcmFormSet);
begin
 f_FormSet := aValue;
end;//pm_SetFormSet

end.
