unit ddTypes;

interface
Uses
 l3Base;

type
  TAddSizeEvent = procedure (Size: Longint) of object;
  //1 —обытие дл€ обработки ошибок чтени€ документов
  TddErrorEvent = procedure(const aDescription: AnsiString; aCategory: Integer = 0) of object;
  TddCommentWriteEvent = procedure (TopicNo: Longint; Comment: Tl3String) of object;

type
 IddErrorHandler = interface(IInterface)
 ['{A28EC998-874F-4205-8CEC-9B38E162C1F3}']
  function pm_GetOnError: TddErrorEvent; stdcall;
  procedure pm_SetOnError(const Value: TddErrorEvent); stdcall;
  property OnError: TddErrorEvent read pm_GetOnError write pm_SetOnError;
 end;

implementation

end.
 