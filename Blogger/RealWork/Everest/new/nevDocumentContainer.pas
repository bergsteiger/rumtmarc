unit nevDocumentContainer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevDocumentContainer.pas"
// Начат: 04.05.2000 10:18
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::DocumentContainers::TnevDocumentContainer
//
// Контейнер документа.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  l3Interfaces,
  k2Interfaces,
  nevBase,
  afwInterfaces,
  k2Types,
  l3Filer,
  l3LongintList,
  nevTools,
  k2Op,
  k2TagGen,
  evDocumentPreviewInfoList,
  nevWaiterList,
  nevInternalInterfaces,
  k2InternalInterfaces,
  k2DocumentGenerator,
  evDocumentPartGenerator,
  nevObjectHolderPrim,
  evGeneratorsInterfaces,
  Classes,
  k2Base,
  l3IID,
  evdInterfaces
  ;

type
 RevDocumentPartGenerator = class of evDocumentPartGenerator.TevDocumentPartGenerator;

 TnevDocumentContainer = class(TnevObjectHolderPrim, Il3Lock, Il3ItemNotifyRecipient, Ik2GeneratorTarget, InevDocumentContainer, InevSubList, InevTagReader, InevTagWriter, InevDocumentContainerInternal, InevCommentTextProvider)
  {* Контейнер документа. }
 private
 // private fields
   fl_FlagsIteratorCalled : Boolean;
   f_SubChangeListner : InevSubChangeListner;
   f_MaxSubID : Integer;
    {* Максимальное значение ID саба в документе. Используется только при загрузке!}
   f_Waiters : TnevWaiterList;
   f_InfoPreviewCache : TevDocumentPreviewInfoList;
   f_DocumentPreviewCache : TevDocumentPreviewInfoList;
   f_PreviewFactory : IafwComplexDocumentPreviewFactory;
   f_NotFoundParas : Tl3LongintList;
   f_Loading : Boolean;
    {* Поле для свойства Loading}
   f_AbortedLoad : Boolean;
    {* Поле для свойства AbortedLoad}
   f_NeedProcessMessages : Boolean;
    {* Поле для свойства NeedProcessMessages}
   f_Document : InevTag;
    {* Поле для свойства Document}
   f_TextSource : InevTextSourcePool;
    {* Поле для свойства TextSource}
   f_Next : TnevDocumentContainer;
    {* Поле для свойства Next}
 private
 // private methods
   procedure WriteDataExEx(const aView: InevView;
     const aReader: Ik2TagReader;
     const aBlock: IUnknown;
     aFlags: TevLoadFlags);
     {* считать документ из памяти в TextSource }
   procedure ClearSubs;
   procedure ResetPreviewCaches(ResetInfo: Boolean);
   function FindPreview(aCache: TevDocumentPreviewInfoList;
    const aKey: TevPreviewCacheKey): IafwDocumentPreview;
   procedure SignalDocumentLoaded;
   function CheckDocumentPreviewCache: TevDocumentPreviewInfoList;
   function CheckInfoPreviewCache: TevDocumentPreviewInfoList;
   procedure SetLoaded;
 protected
 // property methods
   function pm_GetDocument: InevTag;
   procedure pm_SetDocument(const aValue: InevTag);
   procedure pm_SetNext(aValue: TnevDocumentContainer);
 protected
 // realized methods
   {iterator} function Iterate(anAction: InevSubList_Iterate_Action;
    const aBlock: IUnknown = nil;
    const aMessage: Il3CString = nil): Integer;
     {* Перебирает список меток }
   {iterator} function IterateF(anAction: InevSubList_Iterate_Action;
    const aBlock: IUnknown = nil;
    const aMessage: Il3CString = nil): Integer;
     {* Перебирает список меток }
   procedure Lock(const aLocker: IUnknown);
     {* закрыть. }
   procedure Unlock(const aLocker: IUnknown);
     {* открыть. }
   procedure Notify(const aNotifier: Il3ChangeNotifier;
    aOperation: Integer;
    aIndex: Integer);
     {* прошла операция. }
   function ReadTag(aFormat: TnevFormat;
     const aPool: IStream;
     const aFilters: InevTagGenerator;
     const Block: InevDataObjectPrim2 = nil;
     aFlags: TevdStoreFlags = evDefaultStoreFlags;
     aCodePage: Integer = CP_DefaultValue): Integer;
     {* считать тег из Storage в aPool. }
   function ReadTagEx(const Writer: InevTagGenerator;
     const aPool: IStream = nil;
     const aBlock: InevDataObjectPrim2 = nil;
     aFlags: TevdStoreFlags = evDefaultStoreFlags;
     CharCountMul: Integer = 2;
     const FormatName: Il3CString = nil;
     aCodePage: Integer = CP_DefaultValue): Integer;
     {* записать документ в память (Pool) из TextSource. }
   function WriteTag(const aView: InevView;
     aFormat: TnevFormat;
     const aPool: IStream;
     const aBlock: IUnknown = nil;
     aFlags: TevLoadFlags = evDefaultLoadFlags;
     aCodePage: Integer = CP_DefaultValue): Boolean;
     {* записать тэг из Pool в Storage. }
   procedure WriteTagEx(const aView: InevView;
     const aReader: InevReader;
     const aBlock: IUnknown = nil;
     aFlags: TevLoadFlags = evDefaultLoadFlags);
     {* записать тэг из Pool в Storage. }
   function HasDocument: Boolean;
   function IsSame(const aContainer: InevDocumentContainer): Boolean;
   function IsSameText(const aTextSource: IUnknown): Boolean; overload; 
   function IsSameText(const aContainer: InevDocumentContainer): Boolean; overload; 
   function ReadFrom(const aStream: IStream): Boolean;
   procedure WriteTo(const aGenerator: InevTagGenerator);
   procedure LinkTextSource(const aTextSource: InevTextSource);
   procedure UnlinkTextSource(const aTextSource: InevTextSource);
   function HasProcessor: Boolean;
   procedure RemoveFromDocumentsCache;
   function Internal: IUnknown;
     {* //InevDocumentContainerInternal }
   procedure GetSubFlagsIterator(aLayer: Integer);
   function Preview(const aKey: TevPreviewCacheKey;
    const aMacroReplacer: IafwHAFMacroReplacer;
    const aRange: InevRange = nil;
    TreatRangeAsSelection: Boolean = True): InevComplexDocumentPreview;
   function RealizeSub(aLayerHandle: Integer;
    const Atom: InevTag;
    const anObject: InevTag): InevTag; overload; 
   function LinkWaiter(const aWaiter: InevWaiter): Boolean;
   function GetGenerator(const aView: InevView;
    const aGeneratorTarget: IUnknown): InevTagGenerator;
   function pm_GetTextSource: InevTextSource;
   function Get_Processor: InevProcessor;
   function Get_Document: IevDocument;
   function pm_GetSubList: InevSubList;
   function pm_GetDocumentInfo: InevDocumentInfo;
   function pm_GetDocumentLimits: InevDocumentLimits;
   function pm_GetAbortedLoad: Boolean;
   procedure pm_SetAbortedLoad(aValue: Boolean);
   function pm_GetNeedProcessMessages: Boolean;
   procedure pm_SetNeedProcessMessages(aValue: Boolean);
   function pm_GetContentsTree: InevSimpleTree;
   function pm_GetExistingDocument: InevTag;
   function pm_GetSub(anID: Integer): IevSub;
   function pm_GetSubEx(anID: Integer; aLayerID: Integer): IevSub;
   function pm_GetNewSub: IevSub;
   function pm_GetNewSubEx(aLayerID: Integer): IevSub;
   function pm_GetBlock(anID: Integer): IevDocumentPart;
   function pm_GetBlockEx(anID: Integer; aLayerID: Integer): IevDocumentPart;
   function Get_InternalDocument: InevTag;
   procedure GetReader(aFormat: TnevFormat;
    const aPool: IStream;
    out theReader: Tk2CustomReader;
    anInternal: Boolean = true;
    aCodePage: Integer = CP_DefaultValue;
    const aBlock: IUnknown = nil);
   procedure GetWriter(aFormat: TnevFormat;
    anInternal: Boolean;
    out theWriter: Tk2TagGenerator;
    const aFilters: InevTagGenerator;
    aCodePage: Integer = CP_DefaultValue); overload; 
   function pm_GetLoading: Boolean;
   procedure LinkSubChangeListner(const aSubChangeListner: InevSubChangeListner);
   procedure DoInvalidateShape(const aShape: InevObject;
    aParts: TnevShapeParts); override;
   function GetTagReader: InevTagReader; override;
   function GetTagWriter: InevTagWriter; override;
   function DefaultDocumentType: Integer;
     {* Тип документа по-умолчанию }
   procedure NotifySubAdded(aParaID: Integer;
    aSubID: Integer;
    aLayerID: Integer;
    const aSubName: Tl3WString;
    aFlags: Integer);
     {* Нотификация о добавлении Sub'а в другом "похожем" документе }
   function GetCommentTextByParaID(aParaID: Integer): Il3CString;
   procedure DeleteCommentByParaID(aParaID: Integer);
 protected
 // overridden property methods
   procedure pm_SetModified(aValue: Boolean); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InitFields; override;
   function GetObj: InevObject; override;
   function DoFindObjByID(aParaID: Integer;
    out aPara: InevObject): Boolean; override;
   function GetViewArea: InevViewArea; override;
   procedure DoChildAdded(const aList: InevTag;
    const aChild: InevTag;
    anIndex: Integer;
    const anOpPack: InevOp); override;
   procedure DoChildDeleted(const aList: InevTag;
    const aChild: InevTag;
    anIndex: Integer;
    const anOpPack: InevOp); override;
   procedure UnformatAll; override;
   function GetLock: Il3Lock; override;
   procedure DoUpdatePreview; override;
   procedure DoPropChanged(Prop: Tk2Prop;
    const V: TnevValues;
    const anOpPack: InevOp); override;
   function GetSubCache: IevSubCache; override;
   function COMQueryInterface(const IID: Tl3GUID;
    out Obj): Tl3HResult; override;
     {* Реализация запроса интерфейса }
   function DoGetControlImg(const aControl: TnevControlInfo;
     var theImageInfo: TnevControlImageInfo): Boolean; override;
   procedure ClearFields; override;
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
 protected
 // protected methods
   procedure NotifySubReallyAdded(aParaID: Integer;
     aSubID: Integer;
     aLayerID: Integer;
     const aSubName: Tl3WString;
     aFlags: Integer); virtual;
   procedure NotifySubReallyDeleted(aParaID: Integer;
     aSubID: Integer;
     aLayerID: Integer); virtual;
   procedure SendTOCCreatedNotify; virtual;
   procedure GetWriter(aFormat: TnevFormat;
    anInternal: Boolean;
    out theWriter: Tk2TagGenerator;
    out theCharCountMul: Integer;
    out theFormatName: Il3CString;
    const aFilters: InevTagGenerator;
    aCodePage: Integer); overload;  virtual;
   function ReplaceContainerInOwner(const aDocumentContainer: InevDocumentContainer): Boolean; virtual;
   procedure Clear; virtual;
   function StartOp(Op: Integer = 0;
    DoLock: Boolean = true): InevOp; virtual;
     {* открывает пачку операций с кодом Op. }
   procedure DocumentChanged(const anOldDocument: InevTag;
    const aNewDocument: InevTag); virtual;
   procedure AddToDocumentsCache;
   function CanBePlacedInDocumentsCache: Boolean; virtual;
   function DocumentPreview(const aKey: TevPreviewCacheKey;
    const aMacroReplacer: IafwHAFMacroReplacer;
    const aRange: InevRange = nil): IafwDocumentPreview;
   function InfoPreview(const aKey: TevPreviewCacheKey;
    const aMacroReplacer: IafwHAFMacroReplacer): IafwDocumentPreview;
   function MakeDocumentPreview(const aKey: TevPreviewCacheKey;
    const aMacroReplacer: IafwHAFMacroReplacer;
    const aRange: InevRange = nil): IafwDocumentPreview; virtual;
   function MakeInfoPreview(const aKey: TevPreviewCacheKey;
    const aMacroReplacer: IafwHAFMacroReplacer): IafwDocumentPreview; virtual;
   procedure CheckWaiters; overload; 
   procedure CheckWaiters(const aParent: InevTag;
    const aChild: InevTag); overload; 
   function StartLoading: Boolean;
   function DoFindParaByID(const aDocument: InevObject;
    aParaID: Integer;
    out aPara: InevObject): Boolean; virtual;
   procedure CheckCloseWindow;
   function RealizeSub(aLayerHandle: Integer;
    const Atom: InevTag;
    const anObject: InevTag;
    const anOpPack: InevOp): InevTag; overload; 
   procedure NotifySubDeleted(const aSubTag: InevTag;
    const aSub: IevSub);
   function GetGeneratorPrim(const aView: InevView;
    const aGeneratorTarget: IUnknown): Tk2TagGenerator; virtual;
   function DoStartAtom(G: Tk2DocumentGenerator;
    var Atom: Tk2StackAtom): Boolean;
   function DoFinishAtom(G: Tk2DocumentGenerator;
    var Atom: Tk2StackAtom): Boolean; virtual;
   function DoFinishAtom1(G: Tk2DocumentGenerator;
    var Atom: Tk2StackAtom): Boolean;
   procedure DoAddAtom(G: Tk2TagGenerator;
    const Atom: Tk2StackAtom;
    Prop: Integer;
    TK: Tk2TypeKind;
    const Source);
   function DoBeforeFinishAtom1(aGenerator: Tk2DocumentGenerator;
    var anAtom: Tk2StackAtom): Boolean; virtual;
   function DoBeforeFinishAtom(G: Tk2DocumentGenerator;
    var Atom: Tk2StackAtom): Boolean; virtual;
   procedure DoCloseStream(Sender: TObject);
   function StartIOOp(DoLock: Boolean = true): InevOp;
     {* открывает пачку операций ввода/вывода. }
   procedure MakeNext;
   procedure RealizeSubs(const Parent: InevTag;
    const Atom: InevTag;
    G: Tk2TagGenerator);
   procedure DoGetReader(aFormat: TnevFormat;
    const aPool: IStream;
    out theReader: Tk2CustomReader;
    anInternal: Boolean;
    aCodePage: Integer;
    const aBlock: IUnknown); virtual;
   function DoGetProcessor: InevProcessor; virtual;
   function DoGetDocumentLimits: InevDocumentLimits; virtual;
   function DoGetDocumentInfo: InevDocumentInfo; virtual;
   function GetHasProcessor: Boolean; virtual;
   function DoGetSubEx(anID: Integer;
    aLayerID: Integer): IevSub; virtual;
   procedure ResetDocument; virtual;
     {* Документ изменился в базе - пересбросить его }
   function GetIsSame(const aContainer: InevDocumentContainer): Boolean; virtual;
   function GetIsSameText(const aContainer: InevDocumentContainer): Boolean; overload;  virtual;
   function GetIsSameText(const aTextSource: IUnknown): Boolean; overload;  virtual;
   function GetDocument: InevTag; virtual;
   function GetContentsTree: InevSimpleTree; virtual;
   function PartGeneratorClass: RevDocumentPartGenerator; virtual;
   function NeedsProgressOnSave: Boolean; virtual;
   function GetDocumentType: Integer; virtual;
 public
 // public methods
   class function Make: InevDocumentContainer; reintroduce;
 protected
 // protected properties
   property Loading: Boolean
     read f_Loading;
     {* находимся в процессе загрузки документа. }
   property AbortedLoad: Boolean
     read f_AbortedLoad
     write f_AbortedLoad;
     {* загрузка документа прервана. }
   property NeedProcessMessages: Boolean
     read f_NeedProcessMessages
     write f_NeedProcessMessages
     default false;
     {* надо ли отдавать ProcessMessages в процессе загрузки. }
   property Document: InevTag
     read pm_GetDocument
     write pm_SetDocument;
   property TextSource: InevTextSourcePool
     read f_TextSource;
   property Next: TnevDocumentContainer
     read f_Next
     write pm_SetNext;
 end;//TnevDocumentContainer

implementation

uses
  k2NilOp,
  l3Types,
  l3Stream,
  l3Chars,
  nevInterfaces,
  l3String,
  evDocumentsCache,
  l3InterfacesMisc,
  Messages,
  l3Base,
  l3Math,
  l3Except,
  nevFacade,
  evParaTools,
  evSearch,
  nevTextSourcePool,
  k2Tags,
  afwComplexDocumentPreviewFactory,
  evHighLevelDocumentGenerator,
  afwFacade,
  evDef,
  evSegLst,
  evdTypes,
  l3MinMax,
  evMsgCode,
  evSubImplementation,
  l3Nodes,
  evSubNode,
  evNode,
  l3Bits,
  SysUtils,
  l3CBase,
  k2BaseTypes,
  Mark_Const,
  CommentPara_Const,
  Document_Const,
  LeafPara_Const,
  SubLayer_Const,
  DocSubLayer_Const,
  Block_Const,
  Para_Const,
  StyledLeafPara_Const,
  TableCell_Const,
  Bookmark_Const,
  TextSegment_Const,
  ParaList_Const,
  Sub_Const,
  DocumentSub_Const,
  HyperLink_Const,
  TextPara_Const,
  evdTextStyle_Const,
  k2Facade,
  k2Prim,
  evTypes,
  evdStyles,
  LeafParaDecorationsHolder_Const,
  l3BaseStream
  ;

type
  OevModified = class(Tk2Op)
  protected
  // overridden protected methods
   function CanJoinWith(anOperation: Tk2Op): Boolean; override;
   function DoJoin(anOperation: Tk2Op): Tk2Op; override;
     {* соединяет две операции и возвращает:
          nil  - соединение неудачно
          Self - соединение удачно и все поместилось в старую запись
          New  - распределена новая операция }
   procedure DoUndo(const Container: Ik2Op); override;
     {* отменить операцию }
   procedure DoRedo(const Container: Ik2Op); override;
     {* вернуть операцию }
  end;//OevModified

// start class OevModified

function OevModified.CanJoinWith(anOperation: Tk2Op): Boolean;
//#UC START# *47F107C80149_47F1078100C8_var*
//#UC END# *47F107C80149_47F1078100C8_var*
begin
//#UC START# *47F107C80149_47F1078100C8_impl*
 Result := true;
//#UC END# *47F107C80149_47F1078100C8_impl*
end;//OevModified.CanJoinWith

function OevModified.DoJoin(anOperation: Tk2Op): Tk2Op;
//#UC START# *47F107DF00E6_47F1078100C8_var*
//#UC END# *47F107DF00E6_47F1078100C8_var*
begin
//#UC START# *47F107DF00E6_47F1078100C8_impl*
 if (anOperation Is OevModified) then
  Result := Tk2NilOp.Instance
 else
  Result := nil;
//#UC END# *47F107DF00E6_47F1078100C8_impl*
end;//OevModified.DoJoin

procedure OevModified.DoUndo(const Container: Ik2Op);
//#UC START# *47F1080F00E8_47F1078100C8_var*
//#UC END# *47F1080F00E8_47F1078100C8_var*
begin
//#UC START# *47F1080F00E8_47F1078100C8_impl*
 Container.InvertModified;
//#UC END# *47F1080F00E8_47F1078100C8_impl*
end;//OevModified.DoUndo

procedure OevModified.DoRedo(const Container: Ik2Op);
//#UC START# *47F1082B00D0_47F1078100C8_var*
//#UC END# *47F1082B00D0_47F1078100C8_var*
begin
//#UC START# *47F1082B00D0_47F1078100C8_impl*
 Container.InvertModified;
//#UC END# *47F1082B00D0_47F1078100C8_impl*
end;//OevModified.DoRedo

procedure TnevDocumentContainer.WriteDataExEx(const aView: InevView;
  const aReader: Ik2TagReader;
  const aBlock: IUnknown;
  aFlags: TevLoadFlags);

 procedure WriteBlock;
 //#UC START# *4A2541A601D3__var*
 //#UC END# *4A2541A601D3__var*
 var
  l_JoinGenerator : IevJoinGenerator;
  l_Gen : InevTagGenerator;
 begin
 //#UC START# *4A2541A601D3__impl*
  l_Gen := GetGenerator(aView, aBlock);
  try
   if Supports(l_Gen, IevJoinGenerator, l_JoinGenerator) then
    try
     l_JoinGenerator.LoadFlags := aFlags;
    finally
     l_JoinGenerator := nil;
    end;//try..finally
   aReader.Link(l_Gen);
   try
    try
     aReader.Execute;
    except
     on El3AbortLoad do
      if not TextSource.HandleAbortLoad then
       raise;
    end;{try..except}
   finally
    aReader.UnLink(l_Gen);
   end;//try..finally
  finally
   l_Gen := nil;
  end;//try..finally
 //#UC END# *4A2541A601D3__impl*
 end;//WriteBlock

//#UC START# *4A25405F0203_47F0870E0034_var*
//#UC END# *4A25405F0203_47F0870E0034_var*
var
 l_FS : Ik2FilerSource2;
 l_Events : TnevFilerEvents;
 l_F : Tl3CustomFiler;
begin
//#UC START# *4A25405F0203_47F0870E0034_impl*
 if (aReader <> nil) then
 begin
  if StartLoading then
   try
    Use;
    try
     try
      if (TextSource <> nil) AND Supports(aReader, Ik2FilerSource2, l_FS) then
      begin
       try
        l_F := l_FS.Filer;
        TextSource.Events2Filer(l_F, l_Events);
        try
         try
          WriteBlock;
         finally
          aReader.Rollback(true);
          // - вставлено специально, чтобы "градусник" не повисал при чтении битых файлов
         end;//try..finally
        finally
         TextSource.RestoreEvents(l_F, l_Events);
        end;//try..finally
       finally
        l_FS := nil;
       end//try..finally
      end//TextSource <> nil
      else
       WriteBlock;
     except
      on El3AbortLoad do
       if not TextSource.HandleAbortLoad then
        raise;
     end;//try..except
    finally
     Free;
    end;//try..finally
   finally
    SetLoaded;
   end;//try..finally
 end;//aReader <> nil
//#UC END# *4A25405F0203_47F0870E0034_impl*
end;//TnevDocumentContainer.WriteDataExEx

procedure TnevDocumentContainer.NotifySubReallyAdded(aParaID: Integer;
  aSubID: Integer;
  aLayerID: Integer;
  const aSubName: Tl3WString;
  aFlags: Integer);
//#UC START# *4D2F0B29034E_47F0870E0034_var*
//#UC END# *4D2F0B29034E_47F0870E0034_var*
begin
//#UC START# *4D2F0B29034E_47F0870E0034_impl*
 // - ничего не делаем, это для потомков
//#UC END# *4D2F0B29034E_47F0870E0034_impl*
end;//TnevDocumentContainer.NotifySubReallyAdded

procedure TnevDocumentContainer.NotifySubReallyDeleted(aParaID: Integer;
  aSubID: Integer;
  aLayerID: Integer);
//#UC START# *4D3071570355_47F0870E0034_var*
//#UC END# *4D3071570355_47F0870E0034_var*
begin
//#UC START# *4D3071570355_47F0870E0034_impl*
 // - ничего не делаем, это для потомков
//#UC END# *4D3071570355_47F0870E0034_impl*
end;//TnevDocumentContainer.NotifySubReallyDeleted

function TnevDocumentContainer.pm_GetDocument: InevTag;
//#UC START# *47F0FCE302F8_47F0870E0034get_var*
//#UC END# *47F0FCE302F8_47F0870E0034get_var*
begin
//#UC START# *47F0FCE302F8_47F0870E0034get_impl*
 Result := GetDocument;
//#UC END# *47F0FCE302F8_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetDocument

procedure TnevDocumentContainer.pm_SetDocument(const aValue: InevTag);
//#UC START# *47F0FCE302F8_47F0870E0034set_var*
var
 l_OldDocument : InevTag;
//#UC END# *47F0FCE302F8_47F0870E0034set_var*
begin
//#UC START# *47F0FCE302F8_47F0870E0034set_impl*
 if not l3IEQ(f_Document, aValue) then
 begin
  if (f_Document <> nil) AND f_Document.IsSame(aValue) then
   Exit;
  Clear;
  l_OldDocument := f_Document;
  if not AbortedLoad then
  begin
   // - не надо перезаписывать документ, если прервана загрузка
   f_Document := aValue;
   if (f_Document <> nil) then
   begin
    f_Document.Owner := k2.TypeTable.ObjToTag(Self);
   end;//f_Document <> nil
  end;//not AbortedLoad
  Modified := false;
  DocumentChanged(l_OldDocument, f_Document);
  if (TextSource <> nil) then
   TextSource.ViewArea.Invalidate;
 end;//f_Document <> aValue
//#UC END# *47F0FCE302F8_47F0870E0034set_impl*
end;//TnevDocumentContainer.pm_SetDocument

procedure TnevDocumentContainer.pm_SetNext(aValue: TnevDocumentContainer);
//#UC START# *47F2358001B5_47F0870E0034set_var*
//#UC END# *47F2358001B5_47F0870E0034set_var*
begin
//#UC START# *47F2358001B5_47F0870E0034set_impl*
 l3Set(f_Next, aValue);
//#UC END# *47F2358001B5_47F0870E0034set_impl*
end;//TnevDocumentContainer.pm_SetNext

procedure TnevDocumentContainer.ClearSubs;
//#UC START# *47F0A574000F_47F0870E0034_var*
//#UC END# *47F0A574000F_47F0870E0034_var*
begin
//#UC START# *47F0A574000F_47F0870E0034_impl*
 TextSource.SubCache.ClearSubs;
//#UC END# *47F0A574000F_47F0870E0034_impl*
end;//TnevDocumentContainer.ClearSubs

procedure TnevDocumentContainer.SendTOCCreatedNotify;
//#UC START# *47F0BA6E0019_47F0870E0034_var*
//#UC END# *47F0BA6E0019_47F0870E0034_var*
begin
//#UC START# *47F0BA6E0019_47F0870E0034_impl*
 CallNotify(Ord(nev_deTOCCreated), 0);
//#UC END# *47F0BA6E0019_47F0870E0034_impl*
end;//TnevDocumentContainer.SendTOCCreatedNotify

procedure TnevDocumentContainer.GetWriter(aFormat: TnevFormat;
  anInternal: Boolean;
  out theWriter: Tk2TagGenerator;
  out theCharCountMul: Integer;
  out theFormatName: Il3CString;
  const aFilters: InevTagGenerator;
  aCodePage: Integer);
//#UC START# *47F0BE5A00C9_47F0870E0034_var*
//#UC END# *47F0BE5A00C9_47F0870E0034_var*
begin
//#UC START# *47F0BE5A00C9_47F0870E0034_impl*
 theWriter := nil;
//#UC END# *47F0BE5A00C9_47F0870E0034_impl*
end;//TnevDocumentContainer.GetWriter

function TnevDocumentContainer.ReplaceContainerInOwner(const aDocumentContainer: InevDocumentContainer): Boolean;
//#UC START# *47F1024C0150_47F0870E0034_var*
//#UC END# *47F1024C0150_47F0870E0034_var*
begin
//#UC START# *47F1024C0150_47F0870E0034_impl*
 Result := false;
 if (TextSource <> nil) then
 begin
  //Self.UnlinkTextSource(TextSource);
  // - мы же перестаём быть привязанными к данному TextSource
  //   если этого не сделать, то случается байда как с TnsAACDocumentContainerPrim
  //   когда провисает ссылка на убитый TextSource
  // Или я гоню? Разве DocumentContainer := aContainer; не должен отписывать TextSource?
  TextSource.LinkDocumentContainer(aDocumentContainer);
  if (f_Waiters <> nil) then
   with f_Waiters do
    while not Empty do
    begin
     aDocumentContainer.LinkWaiter(First);
     Delete(0);
    end;//while not Empty
  Result := true;
 end;//TextSource <> nil
//#UC END# *47F1024C0150_47F0870E0034_impl*
end;//TnevDocumentContainer.ReplaceContainerInOwner

procedure TnevDocumentContainer.Clear;
//#UC START# *47F1047E02B6_47F0870E0034_var*
//#UC END# *47F1047E02B6_47F0870E0034_var*
begin
//#UC START# *47F1047E02B6_47F0870E0034_impl*
 {$IfDef evUseTreePara}
(* if (f_Document <> nil) then
  f_Document.DeleteChildren;*)
 // - это КРАЙНЕ вредоносный код, т.к. он очищает ЖИВОЙ документ
 // http://mdp.garant.ru/pages/viewpage.action?pageId=250088031 
 {$EndIf evUseTreePara}
 if (f_Document <> nil) then
  f_Document.Owner := nil;
 f_Document := nil;
//#UC END# *47F1047E02B6_47F0870E0034_impl*
end;//TnevDocumentContainer.Clear

procedure TnevDocumentContainer.ResetPreviewCaches(ResetInfo: Boolean);
//#UC START# *47F10700035A_47F0870E0034_var*
var
 l_IDX: Integer;
 l_Info: IevDocumentPreviewInfo;
//#UC END# *47F10700035A_47F0870E0034_var*
begin
//#UC START# *47F10700035A_47F0870E0034_impl*
 if ResetInfo then
 begin
  if Assigned(f_InfoPreviewCache) then
   f_InfoPreviewCache.StopAllPreviews;
  FreeAndNil(f_InfoPreviewCache);
 end;
 if Assigned(f_DocumentPreviewCache) then
  f_DocumentPreviewCache.StopAllPreviews;
 FreeAndNil(f_DocumentPreviewCache);
 if Assigned(f_PreviewFactory) then
 begin
  f_PreviewFactory.ResetCache(ResetInfo);
  for l_IDX := 0 to f_PreviewFactory.Count-1 do
   with f_PreviewFactory.Item[l_IDX] do
   begin
    if Supports(Document, IevDocumentPreviewInfo, l_Info) then
     SetDocument(DocumentPreview(l_Info.CacheKey, l_Info.HAFMacroReplacer))
    else
     SetDocument(nil);
    if ResetInfo then
    begin
     if Supports(Info, IevDocumentPreviewInfo, l_Info) then
      SetInfo(InfoPreview(l_Info.CacheKey, l_Info.HAFMacroReplacer))
     else
     begin
      ContentKind := afw_pckDocument;
      SetInfo(nil);
     end;
    end;
    if ContentKind = afw_pckSelection then
     ContentKind := afw_pckDocument;
    SetSelection(nil);
   end;//f_PreviewFactory.Item[l_IDX]
 end;//Assigned(f_PreviewFactory)
//#UC END# *47F10700035A_47F0870E0034_impl*
end;//TnevDocumentContainer.ResetPreviewCaches

function TnevDocumentContainer.StartOp(Op: Integer = 0;
  DoLock: Boolean = true): InevOp;
//#UC START# *47F10A0502B8_47F0870E0034_var*
//#UC END# *47F10A0502B8_47F0870E0034_var*
begin
//#UC START# *47F10A0502B8_47F0870E0034_impl*
 Result := nil;
//#UC END# *47F10A0502B8_47F0870E0034_impl*
end;//TnevDocumentContainer.StartOp

procedure TnevDocumentContainer.DocumentChanged(const anOldDocument: InevTag;
  const aNewDocument: InevTag);
//#UC START# *47F10BAA00E2_47F0870E0034_var*
//#UC END# *47F10BAA00E2_47F0870E0034_var*
begin
//#UC START# *47F10BAA00E2_47F0870E0034_impl*
 inherited UnformatAll;
 ResetPreviewCaches(False);
 if (TextSource <> nil) then
  TextSource.DocumentChanged(anOldDocument, aNewDocument);
 if (aNewDocument <> nil) AND aNewDocument.IsValid then
 begin
  AddToDocumentsCache;
  if f_SubChangeListner <> nil then
   f_SubChangeListner.SubChanged(aNewDocument, ev_chtDocument);
  SignalDocumentLoaded;
 end;//aNewDocument <> nil
//#UC END# *47F10BAA00E2_47F0870E0034_impl*
end;//TnevDocumentContainer.DocumentChanged

procedure TnevDocumentContainer.AddToDocumentsCache;
//#UC START# *47F10C1C03CC_47F0870E0034_var*
//#UC END# *47F10C1C03CC_47F0870E0034_var*
begin
//#UC START# *47F10C1C03CC_47F0870E0034_impl*
 if CanBePlacedInDocumentsCache then
  TevDocumentsCache.AddDocument(Self);
//#UC END# *47F10C1C03CC_47F0870E0034_impl*
end;//TnevDocumentContainer.AddToDocumentsCache

function TnevDocumentContainer.CanBePlacedInDocumentsCache: Boolean;
//#UC START# *47F10C6E0240_47F0870E0034_var*
//#UC END# *47F10C6E0240_47F0870E0034_var*
begin
//#UC START# *47F10C6E0240_47F0870E0034_impl*
 Result := false;
//#UC END# *47F10C6E0240_47F0870E0034_impl*
end;//TnevDocumentContainer.CanBePlacedInDocumentsCache

function TnevDocumentContainer.DocumentPreview(const aKey: TevPreviewCacheKey;
  const aMacroReplacer: IafwHAFMacroReplacer;
  const aRange: InevRange = nil): IafwDocumentPreview;
//#UC START# *47F10F4402F9_47F0870E0034_var*
var
 l_I : IevDocumentPreviewInfo;
//#UC END# *47F10F4402F9_47F0870E0034_var*
begin
//#UC START# *47F10F4402F9_47F0870E0034_impl*
 if aRange = nil then
  Result := FindPreview(f_DocumentPreviewCache, aKey)
 else
  Result := nil;
 if Result = nil then
 begin
  Result := MakeDocumentPreview(aKey, aMacroReplacer, aRange);
  if (aRange = nil) and Supports(Result, IevDocumentPreviewInfo, l_I) then
   CheckDocumentPreviewCache.Add(l_I);
 end;
//#UC END# *47F10F4402F9_47F0870E0034_impl*
end;//TnevDocumentContainer.DocumentPreview

function TnevDocumentContainer.FindPreview(aCache: TevDocumentPreviewInfoList;
  const aKey: TevPreviewCacheKey): IafwDocumentPreview;
//#UC START# *47F110AF01E7_47F0870E0034_var*
var
 l_IDX: Integer;
//#UC END# *47F110AF01E7_47F0870E0034_var*
begin
//#UC START# *47F110AF01E7_47F0870E0034_impl*
 Result := nil;
 if Assigned(aCache) then
  with aCache do
   for l_IDX := Lo to Hi do
    with Items[l_IDX].CacheKey do
     if (HiddenStyles = aKey.HiddenStyles) and (CaleeArea = aKey.CaleeArea) then
     begin
      Result := Items[l_IDX].Preview;
      Break;
     end;
//#UC END# *47F110AF01E7_47F0870E0034_impl*
end;//TnevDocumentContainer.FindPreview

function TnevDocumentContainer.InfoPreview(const aKey: TevPreviewCacheKey;
  const aMacroReplacer: IafwHAFMacroReplacer): IafwDocumentPreview;
//#UC START# *47F110E70123_47F0870E0034_var*
var
 l_I : IevDocumentPreviewInfo;
//#UC END# *47F110E70123_47F0870E0034_var*
begin
//#UC START# *47F110E70123_47F0870E0034_impl*
 Result := FindPreview(f_InfoPreviewCache, aKey);
 if Result = nil then
 begin
  Result := MakeInfoPreview(aKey, aMacroReplacer);
  if Supports(Result, IevDocumentPreviewInfo, l_I) then
   CheckInfoPreviewCache.Add(l_I);
 end;
//#UC END# *47F110E70123_47F0870E0034_impl*
end;//TnevDocumentContainer.InfoPreview

function TnevDocumentContainer.MakeDocumentPreview(const aKey: TevPreviewCacheKey;
  const aMacroReplacer: IafwHAFMacroReplacer;
  const aRange: InevRange = nil): IafwDocumentPreview;
//#UC START# *47F1112A0183_47F0870E0034_var*
//#UC END# *47F1112A0183_47F0870E0034_var*
begin
//#UC START# *47F1112A0183_47F0870E0034_impl*
 Result := nil;
//#UC END# *47F1112A0183_47F0870E0034_impl*
end;//TnevDocumentContainer.MakeDocumentPreview

function TnevDocumentContainer.MakeInfoPreview(const aKey: TevPreviewCacheKey;
  const aMacroReplacer: IafwHAFMacroReplacer): IafwDocumentPreview;
//#UC START# *47F111500241_47F0870E0034_var*
//#UC END# *47F111500241_47F0870E0034_var*
begin
//#UC START# *47F111500241_47F0870E0034_impl*
 Result := nil;
//#UC END# *47F111500241_47F0870E0034_impl*
end;//TnevDocumentContainer.MakeInfoPreview

procedure TnevDocumentContainer.SignalDocumentLoaded;
//#UC START# *47F1124B02F7_47F0870E0034_var*
//#UC END# *47F1124B02F7_47F0870E0034_var*
begin
//#UC START# *47F1124B02F7_47F0870E0034_impl*
 if AbortedLoad then Exit;
 SendTOCCreatedNotify;
 if (TextSource <> nil) then
  TextSource.MakeCursor;
 CheckWaiters; 
//#UC END# *47F1124B02F7_47F0870E0034_impl*
end;//TnevDocumentContainer.SignalDocumentLoaded

procedure TnevDocumentContainer.CheckWaiters;
//#UC START# *47F1129A0196_47F0870E0034_var*

 function DoWaiter(pWaiter: PIUnknown; anIndex: Integer): Boolean;
 begin//DoWaiter
  Result := true;
  if InevWaiter(pWaiter^).TrySelect(Self) then
   f_Waiters.Delete(anIndex);
 end;//DoWaiter

//#UC END# *47F1129A0196_47F0870E0034_var*
begin
//#UC START# *47F1129A0196_47F0870E0034_impl*
 if (f_Waiters <> nil) then
  f_Waiters.IterateAllF(l3L2IA(@DoWaiter))
//#UC END# *47F1129A0196_47F0870E0034_impl*
end;//TnevDocumentContainer.CheckWaiters

procedure TnevDocumentContainer.CheckWaiters(const aParent: InevTag;
  const aChild: InevTag);
//#UC START# *47F112AA01FA_47F0870E0034_var*

 function DoWaiter(pWaiter: PIUnknown; anIndex: Integer): Boolean;
 begin//DoWaiter
  Result := true;
  if InevWaiter(pWaiter^).TrySelectObj(Self, aParent, aChild) then
   f_Waiters.Delete(anIndex);
 end;//DoWaiter

//#UC END# *47F112AA01FA_47F0870E0034_var*
begin
//#UC START# *47F112AA01FA_47F0870E0034_impl*
 if (f_Waiters <> nil) then
  f_Waiters.IterateAllF(l3L2IA(@DoWaiter))
//#UC END# *47F112AA01FA_47F0870E0034_impl*
end;//TnevDocumentContainer.CheckWaiters

function TnevDocumentContainer.CheckDocumentPreviewCache: TevDocumentPreviewInfoList;
//#UC START# *47F114060170_47F0870E0034_var*
//#UC END# *47F114060170_47F0870E0034_var*
begin
//#UC START# *47F114060170_47F0870E0034_impl*
 If f_DocumentPreviewCache = nil then
  f_DocumentPreviewCache := TevDocumentPreviewInfoList.Make;
 Result := f_DocumentPreviewCache;
//#UC END# *47F114060170_47F0870E0034_impl*
end;//TnevDocumentContainer.CheckDocumentPreviewCache

function TnevDocumentContainer.CheckInfoPreviewCache: TevDocumentPreviewInfoList;
//#UC START# *47F114200018_47F0870E0034_var*
//#UC END# *47F114200018_47F0870E0034_var*
begin
//#UC START# *47F114200018_47F0870E0034_impl*
 If f_InfoPreviewCache = nil then
  f_InfoPreviewCache := TevDocumentPreviewInfoList.Make;
 Result := f_InfoPreviewCache;
//#UC END# *47F114200018_47F0870E0034_impl*
end;//TnevDocumentContainer.CheckInfoPreviewCache

function TnevDocumentContainer.StartLoading: Boolean;
//#UC START# *47F11A6E02C1_47F0870E0034_var*
//#UC END# *47F11A6E02C1_47F0870E0034_var*
begin
//#UC START# *47F11A6E02C1_47F0870E0034_impl*
 if f_Loading then
  Result := false
 else
 begin
  f_Loading := true;
  Result := true;
 end;//f_Loading
//#UC END# *47F11A6E02C1_47F0870E0034_impl*
end;//TnevDocumentContainer.StartLoading

procedure TnevDocumentContainer.SetLoaded;
//#UC START# *47F11A7A01B3_47F0870E0034_var*
//#UC END# *47F11A7A01B3_47F0870E0034_var*
begin
//#UC START# *47F11A7A01B3_47F0870E0034_impl*
 f_Loading := false;
 SignalDocumentLoaded;
//#UC END# *47F11A7A01B3_47F0870E0034_impl*
end;//TnevDocumentContainer.SetLoaded

function TnevDocumentContainer.DoFindParaByID(const aDocument: InevObject;
  aParaID: Integer;
  out aPara: InevObject): Boolean;
//#UC START# *47F11C2103DC_47F0870E0034_var*
//#UC END# *47F11C2103DC_47F0870E0034_var*
begin
//#UC START# *47F11C2103DC_47F0870E0034_impl*
 Result := evSearchPara(aDocument, TevParaByIDSearcher.Make(aParaID), aPara);
//#UC END# *47F11C2103DC_47F0870E0034_impl*
end;//TnevDocumentContainer.DoFindParaByID

procedure TnevDocumentContainer.CheckCloseWindow;
//#UC START# *47F1FB290261_47F0870E0034_var*
//#UC END# *47F1FB290261_47F0870E0034_var*
begin
//#UC START# *47F1FB290261_47F0870E0034_impl*
 if (TextSource <> nil) then
  TextSource.CheckCloseWindow;
//#UC END# *47F1FB290261_47F0870E0034_impl*
end;//TnevDocumentContainer.CheckCloseWindow

function TnevDocumentContainer.RealizeSub(aLayerHandle: Integer;
  const Atom: InevTag;
  const anObject: InevTag;
  const anOpPack: InevOp): InevTag;
//#UC START# *47F20BE701DC_47F0870E0034_var*
var
 l_Handle : Integer;
 l_F : Integer;
 {$IfDef Nemesis}
 l_Para : InevPara;
 {$endIf Nemesis}
 l_Object : InevTag;
 //l_Obj    : InevObject;
//#UC END# *47F20BE701DC_47F0870E0034_var*
begin
//#UC START# *47F20BE701DC_47F0870E0034_impl*
 Result := k2NullTag;
 if (aLayerHandle > 0) then
 begin
  if HasDocument then
  begin
   l_Handle := Atom.rLong(k2_tiHandle, -1);
   if (l_Handle = -1) OR (l_Handle = Pred(High(Integer))) then
   begin
    {$IfDef Nemesis}
    if Atom.InheritsFrom(k2_idMark) OR Atom.InheritsFrom(k2_idCommentPara) then
    begin
     l_Handle := Integer(anObject.AsObject);
     if (l_Handle < 0) then
      l_Handle := -l_Handle;
     Atom.IntA[k2_tiHandle] := l_Handle;
    end//Atom.InheritsFrom(k2_idMark)
    else
    if (aLayerHandle = ev_sbtBookMark) AND
       Atom.IsValid then
     l_Handle := 0
    else 
    {$EndIf Nemesis}
     Exit;
     // - пропускаем невалидный Sub
   end;//IsValid
   l_Object := anObject;
(*   if (l_Handle = 0) AND (aLayerHandle = ev_sbtBookMark) then
    if l_Object.InheritsFrom(k2_idLeafPara) then
    begin
     l_Handle := l_Object.IntA[k2_tiHandle];
     if (l_Handle <> 0) then
      Atom.IntA[k2_tiHandle] := l_Handle
     else
     begin
      if not l_Object.QT(InevObject, l_Obj) then
       Assert(false);
      l_Obj := EvFindNumberedPara(l_Obj);
      if l_Obj.IsValid then
      begin
       l_Handle := l_Obj.IntA[k2_tiHandle];
       Atom.IntA[k2_tiHandle] := l_Handle;
       l_Object := l_Obj;
      end;//l_Obj.IsValid
     end;//l_Handle <> 0
    end;//l_Object.InheritsFrom(k2_idLeafPara)*)
   Result := Document.cAtomEx([k2_tiSubs,
                               k2_tiChildren, k2_tiHandle, aLayerHandle,
                               k2_tiChildren, k2_tiHandle, l_Handle], nil);
   if Result.IsValid then
   begin
    // - в обычных условиях эта проверка бессмысленна, но при "переходных" процессах
    //   она оказалась необходимой
    Result.AttrW[k2_tiObject, anOpPack] := l_Object.Box;
    if (l_Handle = 0) AND (aLayerHandle <> ev_sbtBookMark) then
     Result := k2NullTag
    else
    begin
     if (aLayerHandle = ev_sbtMark) OR (aLayerHandle = ev_sbtBookMark) then
     begin
      l_F := Atom.IntA[k2_tiFlags];
      Result.IntA[k2_tiFlags] := l_F;
      {$IfDef Nemesis}
      if (aLayerHandle = ev_sbtMark) then
      begin
       if Atom.QT(InevPara, l_Para) then
       begin
        l_Para := l_Para.Prev;
        if (l_Para <> nil) AND l_Para.IsValid then
         NotifySubReallyAdded(l_Para.IntA[k2_tiHandle],
                              l_Handle, aLayerHandle,
                              cc_EmptyStr,
                              l_F);
       end;//Atom.QT(InevPara, l_Para)
      end;//aLayerHandle = ev_sbtMark
      {$EndIf Nemesis}
     end;//aLayerHandle = ev_sbtMark
    end;//l_Handle = 0
   end;//Result.IsValid
  end;//HasDocument
 end;//aLayerHandle > 0
//#UC END# *47F20BE701DC_47F0870E0034_impl*
end;//TnevDocumentContainer.RealizeSub

procedure TnevDocumentContainer.NotifySubDeleted(const aSubTag: InevTag;
  const aSub: IevSub);
//#UC START# *47F210D6027D_47F0870E0034_var*
//#UC END# *47F210D6027D_47F0870E0034_var*
begin
//#UC START# *47F210D6027D_47F0870E0034_impl*
 if aSubTag.InheritsFrom(k2_idCommentPara) then
  NotifySubReallyDeleted(aSub.ID, aSub.ID, aSub.LayerID)
 else
 if (aSub.LeafPara <> nil) then
  NotifySubReallyDeleted(aSub.LeafPara.IntA[k2_tiHandle], aSub.ID, aSub.LayerID);
 TevDocumentsCache.NotifySubDeleted(Self, aSub);
 TextSource.SubCache.NotifySubDeleted(aSub);
//#UC END# *47F210D6027D_47F0870E0034_impl*
end;//TnevDocumentContainer.NotifySubDeleted

function TnevDocumentContainer.GetGeneratorPrim(const aView: InevView;
  const aGeneratorTarget: IUnknown): Tk2TagGenerator;
//#UC START# *47F217080359_47F0870E0034_var*
var
 l_NeedWrap      : Boolean;
 l_GeneratorWrap : Ik2TagGeneratorWrap;
 l_Point         : InevBasePoint;
 l_F             : InevBasePoint;
 l_Sel           : InevRange;
//#UC END# *47F217080359_47F0870E0034_var*
begin
//#UC START# *47F217080359_47F0870E0034_impl*
 l_NeedWrap := false;
 if (aGeneratorTarget = nil) then
 begin
  {$IfDef evNeedPreAddParas}
  Result := TevPreAddHighLevelDocumentGenerator.CreateWithTarget(Self);
  {$Else evNeedPreAddParas}
  Result := TevHighLevelDocumentGenerator.CreateWithTarget(Self);
  {$EndIf evNeedPreAddParas}
  TevHighLevelDocumentGenerator(Result).OnStartAtom := DoStartAtom;
  TevHighLevelDocumentGenerator(Result).BeforeFinishAtom := DoBeforeFinishAtom;
  TevHighLevelDocumentGenerator(Result).OnFinishAtom := DoFinishAtom;
  TevHighLevelDocumentGenerator(Result).OnCloseStream := DoCloseStream;
  TevHighLevelDocumentGenerator(Result).LoadFlags := [];
  l_NeedWrap := true;
 end//aGeneratorTarget = nil
 else
 begin
  Result := nil;
  try
   if Supports(aGeneratorTarget, InevPoint, l_Point) then
   begin
    try
     l_GeneratorWrap := PartGeneratorClass.Make(aView, l_Point, StartIOOp);
    finally
     l_Point := nil;
    end//try..finally
   end//Supports(aGeneratorTarget, InevPoint, l_Point)
   else
   if Supports(aGeneratorTarget, InevRange, l_Sel) then
   begin
    l_Sel.GetBorderPoints(l_Point, l_F);
    if (l_Point = nil) then
     l_Point := l_Sel.Obj.MakePoint;
    l_GeneratorWrap := PartGeneratorClass.Make(aView, l_Point, StartIOOp);
   end//Supports(aGeneratorTarget, InevRange, l_Sel)
   else
   begin
    // - а к чему эта ветка?
    Supports(aGeneratorTarget, Ik2TagGeneratorWrap, l_GeneratorWrap);
   end;//Supports(aGeneratorTarget, InevRange, l_Sel)
   if (l_GeneratorWrap <> nil) then
    Result := l_GeneratorWrap.Generator.Use;
   l_NeedWrap := (Result Is TevHighLevelDocumentGenerator);
   if l_NeedWrap AND not l3IEQ(Result, aGeneratorTarget) then
   begin
    TevHighLevelDocumentGenerator(Result).BeforeFinishAtom := DoBeforeFinishAtom1;
    TevHighLevelDocumentGenerator(Result).OnFinishAtom := DoFinishAtom1;
    TevHighLevelDocumentGenerator(Result).OnCloseStream := DoCloseStream;
    TevHighLevelDocumentGenerator(Result).LoadFlags := [ev_ldfDocumentReaded];
   end;//l_NeedWrap AND not l3IEQ(Result, aGeneratorTarget)
  finally
   l_GeneratorWrap := nil;
  end;//try..finally
 end;//aGeneratorTarget = nil
 if l_NeedWrap AND (Result <> nil) AND not l3IEQ(Result, aGeneratorTarget) then
 begin
  TevHighLevelDocumentGenerator(Result).OnAddAtom := DoAddAtom;
  Result.Context := StartIOOp(aGeneratorTarget <> nil);
 end;//not l3IEQ(Result, aGeneratorTarget)
//#UC END# *47F217080359_47F0870E0034_impl*
end;//TnevDocumentContainer.GetGeneratorPrim

function TnevDocumentContainer.DoStartAtom(G: Tk2DocumentGenerator;
  var Atom: Tk2StackAtom): Boolean;
//#UC START# *47F2259801DB_47F0870E0034_var*
//#UC END# *47F2259801DB_47F0870E0034_var*
begin
//#UC START# *47F2259801DB_47F0870E0034_impl*
 Result := True;
 if (Atom.Parent = nil) then
 // - это проверка на то, что это не вложенный документ
 // - эта проверка РАНЬШЕ InheritsFrom(k2_idDocument) потому, что она гораздо дешевле
 begin
  if Atom.InheritsFrom(k2_idDocument) then
  begin
   {$IfNDef Nemesis}
   fl_FlagsIteratorCalled := False;
   {$EndIf  Nemesis}
   if (ev_ldfDocumentReaded in TevHighLevelDocumentGenerator(G).LoadFlags) then
   begin
    TevHighLevelDocumentGenerator(G).LoadFlags :=
     TevHighLevelDocumentGenerator(G).LoadFlags - [ev_ldfDocumentReaded];
    MakeNext;
    with G do
    begin
     OnStartAtom := Next.DoStartAtom;
     BeforeFinishAtom := Next.DoBeforeFinishAtom;
     OnFinishAtom := Next.DoFinishAtom;
     OnAddAtom := Next.DoAddAtom;
    end;//with G
    Next.DoStartAtom(G, Atom);
    Exit;
   end//ev_ldfDocumentReaded in TevHighLevelDocumentGenerator(G).LoadFlags
   else
   begin
    TevHighLevelDocumentGenerator(G).LoadFlags :=
     TevHighLevelDocumentGenerator(G).LoadFlags + [ev_ldfDocumentReaded];
    if (pm_GetDocumentInfo <> nil) then
     pm_GetDocumentInfo.ClearStat;
    Document := Atom.Box;
   end;//ev_ldfDocumentReaded in TevHighLevelDocumentGenerator(G).LoadFlags
  end;//Atom.InheritsFrom(k2_idDocument)
 end;//Atom.Parent = nil
//#UC END# *47F2259801DB_47F0870E0034_impl*
end;//TnevDocumentContainer.DoStartAtom

function TnevDocumentContainer.DoFinishAtom(G: Tk2DocumentGenerator;
  var Atom: Tk2StackAtom): Boolean;
//#UC START# *47F225AC0397_47F0870E0034_var*
var
 l_ParaCount : Integer;  
//#UC END# *47F225AC0397_47F0870E0034_var*
begin
//#UC START# *47F225AC0397_47F0870E0034_impl*
 Result := True;
 DoFinishAtom1(G, Atom);
 if not Atom.IsChild then
  Exit;
 if Atom.InheritsFrom(k2_idDocument) AND (Atom.Parent = nil) then
 begin
 // - все - загрузили документ самого верхнего уровня
  //FilterContents
  ResetPreviewCaches(False);
 end//Atom.InheritsFrom(k2_idDocument)
 else
 begin
  Assert(Atom.Parent <> nil);
  Get_Processor.NotifyCompleted(Atom.Parent^.Box, Atom.Box);
  if (G.Context <> nil) then
  begin
   if G.Context.InIOProcess then
   begin
    if (pm_GetDocumentInfo <> nil) then
    begin
     if (TextSource <> nil) then
     begin
      l_ParaCount := pm_GetDocumentInfo.TextParaCount;
      if not AbortedLoad and (l_ParaCount = 1)
        AND Atom.InheritsFrom(k2_idLeafPara) then
       TextSource.MakeCursor;
      if {$IfNDef nsTest}(l_ParaCount = 1) OR{$EndIf nsTest}
         (l_ParaCount = 100) OR
         (l_ParaCount = 200) OR
         (l_ParaCount = 300) then
      begin
       TextSource.ViewArea.Invalidate;
       if {$IfNDef Nemesis}
          {$IfNDef nsTest}
          (l_ParaCount = 1) OR (l_ParaCount = 100) OR
          {$EndIf nsTest}
          {$EndIf Nemesis}
          NeedProcessMessages then
        afw.ProcessMessages;
      end;//l_ParaCount = 100..
     end;//TextSource <> nil
    end;//(pm_GetDocumentInfo <> nil)
   end;//anOpPack.InIOProcess
  end;//OpPack <> nil
 end;//Atom.InheritsFrom(k2_idDocument)
//#UC END# *47F225AC0397_47F0870E0034_impl*
end;//TnevDocumentContainer.DoFinishAtom

function TnevDocumentContainer.DoFinishAtom1(G: Tk2DocumentGenerator;
  var Atom: Tk2StackAtom): Boolean;
//#UC START# *47F225C3005F_47F0870E0034_var*

 {$IfNDef Nemesis}
 function _GetLayerFlags(const Layer: InevTag; Index: Integer): Boolean; 
 begin{_GetLayerFlags}
  Result := True;
  GetSubFlagsIterator(Layer.IntA[k2_tiHandle]);
 end;{_GetLayerFlags}
 {$EndIf  Nemesis}

//#UC END# *47F225C3005F_47F0870E0034_var*
begin
//#UC START# *47F225C3005F_47F0870E0034_impl*
 Result := True;
 if AbortedLoad then Exit;
 if not Atom.IsChild then
  Exit;
 {$IfNDef Nemesis}
 if Atom.InheritsFrom(k2_idDocument) then
 begin
  Document.IntA[k2_tiMaxSubID] := Max(f_MaxSubID, Document.IntA[k2_tiMaxSubID]);
  if not fl_FlagsIteratorCalled then
  begin
   fl_FlagsIteratorCalled := True;
   Atom.Box.Attr[k2_tiSubs].IterateChildrenF(k2L2TIA(@_GetLayerFlags));
  end;//not fl_FlagsIteratorCalled
 end//..k2_idDocument..
 else
 if Atom.InheritsFrom(k2_idDocSubLayer) then
 begin
  fl_FlagsIteratorCalled := True;
  GetSubFlagsIterator(Atom.Box.IntA[k2_tiHandle])
 end//Atom.InheritsFrom(k2_idDocSubLayer)
 else
 if not G.Context.DeleteMapped then
 // - здесь будем вытворять всякие штучки с заменой наборов атрибутов на стили
 begin
  if Atom.InheritsFrom(k2_idTextPara) then
  begin
   if (Atom.Box.IntA[k2_tiStyle] = evd_saNormalTable) AND
      (Atom.Box.IntA[k2_tiJustification] = Ord(ev_itCenter)) then
   begin
    Atom.Box.IntA[k2_tiStyle] := evd_saCenteredTable;
    Atom.Box.Attr[k2_tiJustification] := nil;
   end;//Atom.Inst.IntA[k2_tiStyle] = evd_saNormalTable..
  end;//Atom.InheritsFrom(k2_idTextPara)
 end;//not G.Context.DeleteMapped
 {$EndIf  Nemesis}
//#UC END# *47F225C3005F_47F0870E0034_impl*
end;//TnevDocumentContainer.DoFinishAtom1

procedure TnevDocumentContainer.DoAddAtom(G: Tk2TagGenerator;
  const Atom: Tk2StackAtom;
  Prop: Integer;
  TK: Tk2TypeKind;
  const Source);
//#UC START# *47F225DF02CC_47F0870E0034_var*

 procedure lp_CheckMaxSubID;
 begin
  f_MaxSubID := Max(Integer(Source), f_MaxSubID);
 end;

//#UC END# *47F225DF02CC_47F0870E0034_var*
begin
//#UC START# *47F225DF02CC_47F0870E0034_impl*
 if Prop = k2_tiMaxSubID then
  lp_CheckMaxSubID;
 if (Prop = k2_tiHandle) then
 begin
  if Atom.InheritsFrom(k2_idBlock) then
  begin
   RealizeSub(Atom.Box.IntA[k2_tiLayerID], Atom.Box, Atom.Box,
              G.Context);
   lp_CheckMaxSubID;
  end //if Atom.InheritsFrom(k2_idBlock) then
  else
  if Atom.InheritsFrom(k2_idSubLayer, [k2_idDocSubLayer]) then
   RealizeSubs(Atom.Parent.Parent.Box, Atom.Box, G);
 end;//Prop = k2_tiHandle
//#UC END# *47F225DF02CC_47F0870E0034_impl*
end;//TnevDocumentContainer.DoAddAtom

function TnevDocumentContainer.DoBeforeFinishAtom1(aGenerator: Tk2DocumentGenerator;
  var anAtom: Tk2StackAtom): Boolean;
//#UC START# *47F226170180_47F0870E0034_var*
var
 pParent        : PevStackAtom;
 pTextPara      : PevStackAtom;
 l_LayerHandle  : Integer;
 l_DefaultStyle : Integer;
 l_Start        : InevTag;
 l_Finish       : InevTag;
 l_StartValue   : Integer;
 l_FinishValue  : Integer;
 l_Obj          : InevObject;
//#UC END# *47F226170180_47F0870E0034_var*
begin
//#UC START# *47F226170180_47F0870E0034_impl*
 Result := true;
 if anAtom.InheritsFrom(k2_idPara) then
 begin
  if anAtom.InheritsFrom(k2_idParaList) then
  begin
   if not anAtom.InheritsFrom(k2_idDocument) AND
      (anAtom.Box.ChildrenCount = 0) then
    Result := false;
   if not Result and anAtom.InheritsFrom(k2_idTableCell) and (TevMergeStatus(anAtom.Box.IntA[k2_tiMergeStatus]) = ev_msContinue) then
    Result := True; 
   if Result AND anAtom.InheritsFrom(k2_idCommentPara) AND
      not anAtom.Box.HasSubAtom(k2_tiHandle) then
    RealizeSub(anAtom.Box.IntA[k2_tiLayerID], anAtom.Box, anAtom.Box,
               aGenerator.Context);
  end//anAtom.InheritsFrom(k2_idParaList)
  else
  if anAtom.InheritsFrom(k2_idStyledLeafPara) then
  begin
   if not anAtom.Box.HasSubAtom(k2_tiStyle) then
   begin
    l_DefaultStyle := Get_Processor.DefaultStyle;
    if (l_DefaultStyle <> def_DefaultStyle) then
     aGenerator.AddIntegerAtom(k2_tiStyle, l_DefaultStyle);
   end;//not anAtom.HasSubAtom(k2_tiStyle)
  end;//anAtom.InheritsFrom(k2_idStyledLeafPara)
 end//anAtom.InheritsFrom(k2_idPara)
 else
 if anAtom.InheritsFrom(k2_idSub) then
 begin
  if not anAtom.InheritsFrom(k2_idDocumentSub) AND
     not anAtom.InheritsFrom(k2_idBlock) then
  begin
   pTextPara := anAtom.Parent;
   if not pTextPara.InheritsFrom(k2_idPara) then
   begin
    l_LayerHandle := pTextPara.Box.IntA[k2_tiHandle];
    pTextPara := pTextPara.Parent.Parent;
   end
   else
   if anAtom.InheritsFrom(k2_idBookmark) then
    l_LayerHandle := ev_sbtBookmark
   else
   if anAtom.InheritsFrom(k2_idMark) then
    l_LayerHandle := ev_sbtMark
   else
    l_LayerHandle := ev_sbtSub;
   RealizeSub(l_LayerHandle, anAtom.Box, pTextPara.Box,
              aGenerator.Context);
  end;//not anAtom.InheritsFrom(k2_idDocumentSub)..
  with anAtom.Box.Attr[k2_tiHandle] do
   if IsValid then
    f_MaxSubID := Max(f_MaxSubID, AsLong);
 end//anAtom.InheritsFrom(k2_idSub)
 else
 if anAtom.InheritsFrom(k2_idTextSegment) then
 begin
  l_Start := anAtom.Box.Attr[k2_tiStart];
  l_Finish := anAtom.Box.Attr[k2_tiFinish];
  if l_Start.IsValid then
   l_StartValue := l_Start.AsLong
  else
   l_StartValue := 1;
  if l_Finish.IsValid then
   l_FinishValue := l_Finish.AsLong
  else
   l_FinishValue := High(Integer);
  if (l_StartValue > l_FinishValue) then
   Result := false
  else
  begin
   pParent := anAtom.Parent;
   if (pParent <> nil) then
   begin
    if pParent.InheritsFrom(k2_idTextPara) then
    begin
     Result := true;
     pTextPara := pParent;
    end
    else
    begin
     pTextPara := pParent^.Parent;
     if (pTextPara <> nil) then
     begin
      if pTextPara.InheritsFrom(k2_idTextPara) then
      begin
       if not pTextPara.Box.QT(InevObject, l_Obj) then
        Assert(false);
       if anAtom.InheritsFrom(k2_idHyperlink) then
        evSegments_AddSegment(l_Obj, pParent.Box, ev_slHyperlinks, anAtom.Box, nil)
       else
        evSegments_AddSegment(l_Obj, pParent.Box, ev_slView, anAtom.Box, nil);
       Result := false;
      end//pTextPara.InheritsFrom(k2_idTextPara)
      else
      begin
       pTextPara := pTextPara^.Parent;
       if (pTextPara <> nil) AND not pTextPara.InheritsFrom(k2_idTextPara) then
        pTextPara := nil;
      end;//..k2_idTextPara..
     end;//pTextPara <> nil
    end;//pParent^.InheritsFrom(k2_idTextPara)
   end//pParent <> nil..
   else
    pTextPara := nil;
   if anAtom.InheritsFrom(k2_idHyperlink) then
   begin
    with anAtom.Box.Attr[k2_tiHandle] do
     if IsValid then
      Document.IntA[k2_tiMaxHyperlinkHandle] :=
       Max(Document.IntA[k2_tiMaxHyperlinkHandle], AsLong);
   end;//anAtom.InheritsFrom(k2_idHyperlink)
  end;{l_StartValue > l_FinishValue}
 end;//anAtom.InheritsFrom(k2_idTextSegment)
//#UC END# *47F226170180_47F0870E0034_impl*
end;//TnevDocumentContainer.DoBeforeFinishAtom1

function TnevDocumentContainer.DoBeforeFinishAtom(G: Tk2DocumentGenerator;
  var Atom: Tk2StackAtom): Boolean;
//#UC START# *47F2262B0094_47F0870E0034_var*
var
 l_Doc : InevTag;
//#UC END# *47F2262B0094_47F0870E0034_var*
begin
//#UC START# *47F2262B0094_47F0870E0034_impl*
 Result := DoBeforeFinishAtom1(G, Atom);
 if Atom.InheritsFrom(k2_idDocSubLayer) then
 begin
  if (Atom.Parent <> nil) AND (Atom.Parent.Parent <> nil) then
  begin
   // - учитываем вложенность документов
   l_Doc := Atom.Parent.Parent.Box;
   Assert(l_Doc.InheritsFrom(k2_idDocument));
  end//Atom.Parent <> nil
  else
   l_Doc := Document;
  with l_Doc.rAtomEx([k2_tiSubs,
                    k2_tiChildren, k2_tiHandle, Atom.Box.IntA[k2_tiHandle]]) do
   if IsValid then
   begin
    AssignTag(Atom.Box, k2_amAll - [k2_amNull], G.Context);
    cAtomEx([k2_tiChildren, k2_tiHandle, 0], nil).
     AttrW[k2_tiObject, G.Context] := nil;
    Result := false;
   end;//IsValid
 end//k2_idDocSubLayer
 else
 if (Atom.Parent = nil) AND Atom.InheritsFrom(k2_idDocument) then
 begin
  Modified := false;
  if (TextSource <> nil) then
   TextSource.ViewArea.Invalidate;
 end;//Atom.Parent = nil
//#UC END# *47F2262B0094_47F0870E0034_impl*
end;//TnevDocumentContainer.DoBeforeFinishAtom

procedure TnevDocumentContainer.DoCloseStream(Sender: TObject);
//#UC START# *47F2263D023F_47F0870E0034_var*
//#UC END# *47F2263D023F_47F0870E0034_var*
begin
//#UC START# *47F2263D023F_47F0870E0034_impl*
//#UC END# *47F2263D023F_47F0870E0034_impl*
end;//TnevDocumentContainer.DoCloseStream

function TnevDocumentContainer.StartIOOp(DoLock: Boolean = true): InevOp;
//#UC START# *47F2307B0113_47F0870E0034_var*
//#UC END# *47F2307B0113_47F0870E0034_var*
begin
//#UC START# *47F2307B0113_47F0870E0034_impl*
 Result := StartOp(ev_msgInsertBlock, DoLock);
 if (Result <> nil) then
 begin
  Result.InIOProcess := true;
  Result.SaveUndo := false;
  Result.DeleteMapped := false;
 end;//Result <> nil
//#UC END# *47F2307B0113_47F0870E0034_impl*
end;//TnevDocumentContainer.StartIOOp

procedure TnevDocumentContainer.MakeNext;
//#UC START# *47F234540162_47F0870E0034_var*
type
  RevDocumentContainer = class of TnevDocumentContainer;
var
 l_Next : TnevDocumentContainer;
//#UC END# *47F234540162_47F0870E0034_var*
begin
//#UC START# *47F234540162_47F0870E0034_impl*
 if (Next = nil) then
 begin
  l_Next := RevDocumentContainer(ClassType).Create;
  try
   Next := l_Next;
  finally
   FreeAndNil(l_Next);
  end;//try..finally
 end;//Next = nil
//#UC END# *47F234540162_47F0870E0034_impl*
end;//TnevDocumentContainer.MakeNext

procedure TnevDocumentContainer.RealizeSubs(const Parent: InevTag;
  const Atom: InevTag;
  G: Tk2TagGenerator);
//#UC START# *47F242870034_47F0870E0034_var*
var
 LayerHandle : Integer;

 function DoRealizeSub(const Sub: InevTag; Index: Integer): Boolean; 
 begin//DoRealizeSub
  if (G = nil) then
   RealizeSub(LayerHandle, Sub, Parent)
  else
   RealizeSub(LayerHandle, Sub, Parent, G.Context);
  Result := true;
 end;//DoRealizeSub

//#UC END# *47F242870034_47F0870E0034_var*
begin
//#UC START# *47F242870034_47F0870E0034_impl*
 LayerHandle := Atom.IntA[k2_tiHandle];
 Atom.IterateChildrenF(k2L2TIA(@DoRealizeSub));
//#UC END# *47F242870034_47F0870E0034_impl*
end;//TnevDocumentContainer.RealizeSubs

procedure TnevDocumentContainer.DoGetReader(aFormat: TnevFormat;
  const aPool: IStream;
  out theReader: Tk2CustomReader;
  anInternal: Boolean;
  aCodePage: Integer;
  const aBlock: IUnknown);
//#UC START# *47F25391018B_47F0870E0034_var*
//#UC END# *47F25391018B_47F0870E0034_var*
begin
//#UC START# *47F25391018B_47F0870E0034_impl*
 theReader := nil;
//#UC END# *47F25391018B_47F0870E0034_impl*
end;//TnevDocumentContainer.DoGetReader

class function TnevDocumentContainer.Make: InevDocumentContainer;
var
 l_Inst : TnevDocumentContainer;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnevDocumentContainer.DoGetProcessor: InevProcessor;
//#UC START# *47F2714A0216_47F0870E0034_var*
//#UC END# *47F2714A0216_47F0870E0034_var*
begin
//#UC START# *47F2714A0216_47F0870E0034_impl*
 Result := nil;
//#UC END# *47F2714A0216_47F0870E0034_impl*
end;//TnevDocumentContainer.DoGetProcessor

function TnevDocumentContainer.DoGetDocumentLimits: InevDocumentLimits;
//#UC START# *47F27268004F_47F0870E0034_var*
//#UC END# *47F27268004F_47F0870E0034_var*
begin
//#UC START# *47F27268004F_47F0870E0034_impl*
 Result := nil;
//#UC END# *47F27268004F_47F0870E0034_impl*
end;//TnevDocumentContainer.DoGetDocumentLimits

function TnevDocumentContainer.DoGetDocumentInfo: InevDocumentInfo;
//#UC START# *47F27286016C_47F0870E0034_var*
//#UC END# *47F27286016C_47F0870E0034_var*
begin
//#UC START# *47F27286016C_47F0870E0034_impl*
 Result := nil;
//#UC END# *47F27286016C_47F0870E0034_impl*
end;//TnevDocumentContainer.DoGetDocumentInfo

function TnevDocumentContainer.GetHasProcessor: Boolean;
//#UC START# *47F2729800DD_47F0870E0034_var*
//#UC END# *47F2729800DD_47F0870E0034_var*
begin
//#UC START# *47F2729800DD_47F0870E0034_impl*
 Result := false;
//#UC END# *47F2729800DD_47F0870E0034_impl*
end;//TnevDocumentContainer.GetHasProcessor

function TnevDocumentContainer.DoGetSubEx(anID: Integer;
  aLayerID: Integer): IevSub;
//#UC START# *47F27721012A_47F0870E0034_var*
//#UC END# *47F27721012A_47F0870E0034_var*
begin
//#UC START# *47F27721012A_47F0870E0034_impl*
 if (Document = nil) then
  Result := TevSubImplementation.Make(k2NullTag, Get_Processor, anID, aLayerID)
 else
  Result := TevSubImplementation.Make(Document, Get_Processor, anID, aLayerID);
//#UC END# *47F27721012A_47F0870E0034_impl*
end;//TnevDocumentContainer.DoGetSubEx

procedure TnevDocumentContainer.ResetDocument;
//#UC START# *47F278CB0015_47F0870E0034_var*
//#UC END# *47F278CB0015_47F0870E0034_var*
begin
//#UC START# *47F278CB0015_47F0870E0034_impl*
// На переключении баз очищаем коллекцию отрисованных и сабы
// Чиним К-78938187 ЦК27870
 UnformatAll;
 RemoveFromDocumentsCache;
 if Assigned(f_PreviewFactory) and (f_PreviewFactory.Count > 0) then
 begin
  f_Document := nil;
  Document;
 end//Assigned(f_PreviewFactory)
 else
  Document := nil;
 ResetPreviewCaches(True);
//#UC END# *47F278CB0015_47F0870E0034_impl*
end;//TnevDocumentContainer.ResetDocument

function TnevDocumentContainer.GetIsSame(const aContainer: InevDocumentContainer): Boolean;
//#UC START# *47F279E9037A_47F0870E0034_var*
//#UC END# *47F279E9037A_47F0870E0034_var*
begin
//#UC START# *47F279E9037A_47F0870E0034_impl*
 Result := l3IEQ(Self, aContainer);
//#UC END# *47F279E9037A_47F0870E0034_impl*
end;//TnevDocumentContainer.GetIsSame

function TnevDocumentContainer.GetIsSameText(const aContainer: InevDocumentContainer): Boolean;
//#UC START# *47F279FE02A1_47F0870E0034_var*
//#UC END# *47F279FE02A1_47F0870E0034_var*
begin
//#UC START# *47F279FE02A1_47F0870E0034_impl*
 Result := l3IEQ(Self, aContainer);
//#UC END# *47F279FE02A1_47F0870E0034_impl*
end;//TnevDocumentContainer.GetIsSameText

function TnevDocumentContainer.GetIsSameText(const aTextSource: IUnknown): Boolean;
//#UC START# *47F27A1103B9_47F0870E0034_var*
var
 l_Cont : InevDocumentContainer;
//#UC END# *47F27A1103B9_47F0870E0034_var*
begin
//#UC START# *47F27A1103B9_47F0870E0034_impl*
 Result := l3IEQ(Self, aTextSource);
 if not Result AND Supports(aTextSource, InevDocumentContainer, l_Cont) then
  try
   Result := IsSameText(l_Cont);
  finally
   l_Cont := nil;
  end;//try..finally
//#UC END# *47F27A1103B9_47F0870E0034_impl*
end;//TnevDocumentContainer.GetIsSameText

function TnevDocumentContainer.GetDocument: InevTag;
//#UC START# *47F27DA80172_47F0870E0034_var*
var
 l_Container : InevDocumentContainer;
//#UC END# *47F27DA80172_47F0870E0034_var*
begin
//#UC START# *47F27DA80172_47F0870E0034_impl*
 Result := f_Document;
 if (Result = nil) AND not Loading then
 begin
  Use;
  // - защищаем себя от потери последней ссылки
  try
   l_Container := TevDocumentsCache.GetDocumentLike(Self);
   if (l_Container <> nil) then
   begin
    if ReplaceContainerInOwner(l_Container) then
     Result := l_Container.ExistingDocument;
   end;//l_Container <> nil
  finally
   Free;
  end;//try..finally
 end;//Result = nil
//#UC END# *47F27DA80172_47F0870E0034_impl*
end;//TnevDocumentContainer.GetDocument

function TnevDocumentContainer.GetContentsTree: InevSimpleTree;
//#UC START# *47F2802003C4_47F0870E0034_var*
//#UC END# *47F2802003C4_47F0870E0034_var*
begin
//#UC START# *47F2802003C4_47F0870E0034_impl*
 Result := nil;
//#UC END# *47F2802003C4_47F0870E0034_impl*
end;//TnevDocumentContainer.GetContentsTree

function TnevDocumentContainer.PartGeneratorClass: RevDocumentPartGenerator;
//#UC START# *48033300004D_47F0870E0034_var*
//#UC END# *48033300004D_47F0870E0034_var*
begin
//#UC START# *48033300004D_47F0870E0034_impl*
 Result := TevDocumentPartGenerator;
//#UC END# *48033300004D_47F0870E0034_impl*
end;//TnevDocumentContainer.PartGeneratorClass

function TnevDocumentContainer.NeedsProgressOnSave: Boolean;
//#UC START# *483FA1320271_47F0870E0034_var*
//#UC END# *483FA1320271_47F0870E0034_var*
begin
//#UC START# *483FA1320271_47F0870E0034_impl*
 Result := true;
//#UC END# *483FA1320271_47F0870E0034_impl*
end;//TnevDocumentContainer.NeedsProgressOnSave

function TnevDocumentContainer.GetDocumentType: Integer;
//#UC START# *4A8D226F0164_47F0870E0034_var*
//#UC END# *4A8D226F0164_47F0870E0034_var*
begin
//#UC START# *4A8D226F0164_47F0870E0034_impl*
 Result := k2_idDocument;
//#UC END# *4A8D226F0164_47F0870E0034_impl*
end;//TnevDocumentContainer.GetDocumentType

procedure TnevDocumentContainer.Lock(const aLocker: IUnknown);
//#UC START# *467C0F680174_47F0870E0034_var*
//#UC END# *467C0F680174_47F0870E0034_var*
begin
//#UC START# *467C0F680174_47F0870E0034_impl*
 if (TextSource <> nil) then
  TextSource.Lock.Lock(Self);
//#UC END# *467C0F680174_47F0870E0034_impl*
end;//TnevDocumentContainer.Lock

procedure TnevDocumentContainer.Unlock(const aLocker: IUnknown);
//#UC START# *467C0F76026E_47F0870E0034_var*
//#UC END# *467C0F76026E_47F0870E0034_var*
begin
//#UC START# *467C0F76026E_47F0870E0034_impl*
 if (TextSource <> nil) then
  TextSource.Lock.Unlock(Self);
//#UC END# *467C0F76026E_47F0870E0034_impl*
end;//TnevDocumentContainer.Unlock

procedure TnevDocumentContainer.Notify(const aNotifier: Il3ChangeNotifier;
  aOperation: Integer;
  aIndex: Integer);
//#UC START# *46A4504B03C4_47F0870E0034_var*
//#UC END# *46A4504B03C4_47F0870E0034_var*
begin
//#UC START# *46A4504B03C4_47F0870E0034_impl*
 if (aOperation = ntCountChange) then
  SendTOCCreatedNotify;
//#UC END# *46A4504B03C4_47F0870E0034_impl*
end;//TnevDocumentContainer.Notify

function TnevDocumentContainer.ReadTag(aFormat: TnevFormat;
  const aPool: IStream;
  const aFilters: InevTagGenerator;
  const Block: InevDataObjectPrim2 = nil;
  aFlags: TevdStoreFlags = evDefaultStoreFlags;
  aCodePage: Integer = CP_DefaultValue): Integer;
//#UC START# *47C6AE9F03E2_47F0870E0034_var*
var
 Writer         : Tk2TagGenerator;
 l_Stream       : TStream;
 l_MemPool      : Il3HandleMemoryPool;
 Written        : Integer;
 l_CharCountMul : Integer;
 l_FormatName   : Il3CString;
//#UC END# *47C6AE9F03E2_47F0870E0034_var*
begin
//#UC START# *47C6AE9F03E2_47F0870E0034_impl*
 Result := 0;
 GetWriter(aFormat, evd_sfInternal in aFlags, Writer, l_CharCountMul, l_FormatName,
  aFilters, aCodePage);
 if (Writer <> nil) then
  try
   if (aCodePage = CP_DefaultValue) then
   begin
    if (aFormat = cf_UnicodeText) then
     aCodePage := CP_Unicode
    else
    if (aFormat <> cf_EverestBinForce) then
     aCodePage := CP_ANSI;
   end;//aCodePage = CP_DefaultValue
   if (aFormat = cf_EverestTxt) OR
      (aFormat = cf_EverestBin) OR
      (aFormat = cf_EverestBinForce) OR
      (aFormat = cf_EverestBinForceAndUnpacked) then
   begin
    l3IStream2Stream(aPool, l_Stream);
    try
     Written := l_Stream.Position;
     Result := ReadTagEx(Writer, aPool, Block, aFlags,
                         l_CharCountMul, l_FormatName, aCodePage);
     Inc(Written, Result);
     if (Written > 0) then begin
      if Supports(aPool, Il3HandleMemoryPool, l_MemPool) then
       try
        l_MemPool.AsHandle;
       finally
        l_MemPool := nil;
       end;//try..finally
      Written := l_Stream.Size - Written;
      l_Stream.Seek(-1, soCurrent);
      while (Written > 0) do
       if (aFormat = cf_EverestBinForce) then
        Dec(Written, l_Stream.Write(cc_NullVar, SizeOf(cc_NullVar)))
       else
        Dec(Written, l_Stream.Write(cc_HardSpaceVar, SizeOf(cc_HardSpaceVar)));
     end;//Written > 0
     Exit;
    finally
     FreeAndNil(l_Stream);
    end;//try..finally
   end;//aFormat = cf_EverestTxt..
   Result := ReadTagEx(Writer, aPool, Block, aFlags,
                       l_CharCountMul, l_FormatName, aCodePage);
  finally
   FreeAndNil(Writer);
  end;//try..finally
//#UC END# *47C6AE9F03E2_47F0870E0034_impl*
end;//TnevDocumentContainer.ReadTag

function TnevDocumentContainer.ReadTagEx(const Writer: InevTagGenerator;
  const aPool: IStream = nil;
  const aBlock: InevDataObjectPrim2 = nil;
  aFlags: TevdStoreFlags = evDefaultStoreFlags;
  CharCountMul: Integer = 2;
  const FormatName: Il3CString = nil;
  aCodePage: Integer = CP_DefaultValue): Integer;
//#UC START# *47C6AECD03E4_47F0870E0034_var*
  
var
 l_Chars2Write  : Integer;
 l_ChildrenOnly : Boolean;
 l_WasException : Boolean;
 l_Progress     : Il3Progress;

 procedure ReadBlock;
 var
  l_Block : InevStorable;
 begin//ReadBlock
  {$IfDef nsTest}
  {$IfDef Nemesis}
  Dec(g_IStreamCopyTo_Guard);
  try
  {$EndIf Nemesis}
  {$EndIf nsTest}
   if (l_Progress <> nil) then
    l_Progress.ChangeIO(true);
   try
    if (l_Progress <> nil) then
    begin
     if (FormatName = nil) then
      l_Progress.Start(l_Chars2Write, str_nevmmSaveText.AsCStr)
     else
      l_Progress.Start(l_Chars2Write, l3Fmt(str_nevmmSaveFormattedText.AsCStr,
                                             [FormatName]));
    end;//l_Progress <> nil
    try
     Writer.Start;
     try
      l_WasException := false;
      try
       if (aBlock = nil) then
       begin
        if ([evd_sfChildrenOnly] * aFlags <> []) then
        begin
         Document.QT(InevStorable, l_Block);
         try
          l_Block.Store(nil, Writer, aFlags);
         finally
          l_Block := nil;
         end;{try..finally}
        end//ChildrenOnly..
        else
        begin
         Writer.StartChild(Document.TagType.ID);
         try
          Document.Write(Writer);
         finally
          Writer.Finish;
         end;{try..finally}
        end;//ChildrenOnly..
       end//aBlock = nil
       else
       begin
        if (evd_sfChildrenOnly in aFlags) then
         aBlock.Store(nil, Writer, aFlags)
        else
        if l_ChildrenOnly then
        begin
         Writer.StartChild(Document.TagType.ID);
         try
          aBlock.Store(nil, Writer, aFlags + [evd_sfChildrenOnly])
         finally
          Writer.Finish;
         end;//try..finally
        end//l_ChildrenOnly
        else
         aBlock.Store(nil, Writer, aFlags - [evd_sfChildrenOnly]);
       end;//aBlock = nil
      except
       l_WasException := true;
       raise;
      end;//try..except
     finally
      Writer.Finish(l_WasException);
     end;{try..finally}
    finally
     if (l_Progress <> nil) then
      l_Progress.Finish;
    end;{try..finally}
   finally
    if (l_Progress <> nil) then
     l_Progress.ChangeIO(false);
   end;//try..finally
  {$IfDef nsTest}
  {$IfDef Nemesis}
  finally
   Inc(g_IStreamCopyTo_Guard);
  end;//try..finally
  {$EndIf Nemesis}
  {$EndIf nsTest}
 end;//ReadBlock

var
 l_Filer        : Tl3CustomFiler;
 l_Stream       : TStream;
 l_FilerSource  : Ik2FilerSource;
 l_MemoryPool   : Il3MemoryPool;
 l_B            : TevPair;
 l_ParaCount    : Integer;
 l_TagWrap      : InevTag;
 l_Events       : TnevFilerEvents;
//#UC END# *47C6AECD03E4_47F0870E0034_var*
begin
//#UC START# *47C6AECD03E4_47F0870E0034_impl*
 l_ChildrenOnly := false;
 if (Writer = nil) OR
    (((Document = nil) OR Document.IsNull) AND (aBlock = nil)) then
  Result := 0
 else
 begin
  l_Chars2Write := pm_GetDocumentInfo.BruttoCharCount * CharCountMul;
  if (l_Chars2Write = 0) AND (Document <> nil) then
   l_Chars2Write := pm_GetObj.ToList.LeafShapeCount * 80 * CharCountMul;
  if (aBlock <> nil) then
  begin
   if (Document = nil) then
    l_ParaCount := 0
   else
    l_ParaCount := Document.ChildrenCount;
   if (l_ParaCount > 0) then
   begin
    l_B := aBlock.Borders;
    if (l_B.Len + 1 < l_ParaCount) then
    begin
     {-копируем кусочек текста}
     if Supports(aBlock, InevTag, l_TagWrap) then
      try
       l_ChildrenOnly := l_TagWrap.IsSame(Document);
      finally
       l_TagWrap := nil;
      end//try..finally
     else
      l_ChildrenOnly := true;
     l_Chars2Write := l3MulDiv(l_Chars2Write, (l_B.Len + 1), l_ParaCount);
    end;//l_B.Len + 1 < l_ParaCount
   end;//l_ParaCount > 0
  end;//aBlock <> nil
  if (aPool = nil) then
  begin
   Result := 0;
   if Supports(Writer, Ik2FilerSource, l_FilerSource) then
    try
     //l_OldIndicator := l_FilerSource.Filer.Indicator.Use;
     try
      try
       if NeedsProgressOnSave then
        l_Progress := l_FilerSource.Filer.Indicator
       else
        l_Progress := nil; 
       //l_FilerSource.Filer.Indicator := Indicator;
       ReadBlock;
      finally
       //l_FilerSource.Filer.Indicator := l_OldIndicator;
      end;//try..finally
     finally
      //FreeAndNil(l_OldIndicator);
     end;//try..finally
    finally
     l_FilerSource := nil;
    end//try..finally
   else
    ReadBlock;
  end//aPool = nil
  else
  begin
   l_Filer := Tl3CustomFiler.Create;
   try
    l_Filer.Mode := l3_fmWrite;
    //l_Filer.Indicator := Indicator;
    if (aCodePage = CP_DefaultValue) then
     l_Filer.CodePage := CP_ANSI
    else
     l_Filer.CodePage := aCodePage;
    if Supports(Writer, Ik2FilerSource, l_FilerSource) then
     try
      if NeedsProgressOnSave then
       l_Progress := l_FilerSource.Filer.Indicator
      else
       l_Progress := nil;
      l_FilerSource.Filer := l_Filer;
     finally
      l_FilerSource := nil;
     end;//try..finally
    try
     if Supports(aPool, Il3MemoryPool, l_MemoryPool) then
     begin
      if (l_MemoryPool.Size < l_Chars2Write) then
       l_MemoryPool.Size := l_Chars2Write;
     end//Supports(aPool, Il3MemoryPool, l_MemoryPool)
     else
      l_MemoryPool := nil;
     l3IStream2Stream(aPool, l_Stream);
     try
      Result := l_Stream.Position;
      l_Filer.Stream := l_Stream;
      if (TextSource = nil) then
       ReadBlock
      else
      begin
       TextSource.Events2Filer(l_Filer, l_Events);
       try
        ReadBlock;
       finally
        TextSource.RestoreEvents(l_Filer, l_Events);
       end;//try..finally
      end;//TextSource = nil
      Result := l_Stream.Position - Result;
      if (l_MemoryPool <> nil) then
       l_MemoryPool.Size := Succ(l_Stream.Position);
      if (l_MemoryPool <> nil) OR (aCodePage <> CP_DefaultValue) then
      begin
       // - зачем-то пишем конечный 0
       if (aCodePage = CP_Unicode) then
        l_Stream.Write(cc_NullVar, SizeOf(WideChar))
       else
        l_Stream.Write(cc_NullVar, SizeOf(AnsiChar));
      end;//l_MemoryPool <> nil
     finally
      FreeAndNil(l_Stream);
     end;//try..finally
    finally
     l_MemoryPool := nil;
    end;//try..finally
   finally
    FreeAndNil(l_Filer);
   end;//try..finally
  end;//aPool = nil
 end;//Writer = nil
//#UC END# *47C6AECD03E4_47F0870E0034_impl*
end;//TnevDocumentContainer.ReadTagEx

function TnevDocumentContainer.WriteTag(const aView: InevView;
  aFormat: TnevFormat;
  const aPool: IStream;
  const aBlock: IUnknown = nil;
  aFlags: TevLoadFlags = evDefaultLoadFlags;
  aCodePage: Integer = CP_DefaultValue): Boolean;
//#UC START# *47C6AF76020D_47F0870E0034_var*
var
 l_Reader           : Tk2CustomReader;
(* l_Handle           : THandle;
 l_FileCount        : Integer;
 l_String           : Tl3String;
 l_HandleMemoryPool : Il3HandleMemoryPool;*)
 l_FS               : Ik2FilerSource2; 
//#UC END# *47C6AF76020D_47F0870E0034_var*
begin
//#UC START# *47C6AF76020D_47F0870E0034_impl*
 Result := false;
 GetReader(aFormat,
           aPool,
           l_Reader,
           (ev_lfInternal in aFlags),
           aCodePage,
           aBlock);
 if not (ev_lfInternal in aFlags) then
 begin
(*  if (Reader = nil) AND
     (aFormat = cf_HDrop) AND
     Assigned(f_OnGetFileReader) then
  begin
   if Supports(aPool, Il3HandleMemoryPool, l_HandleMemoryPool) then
    try
     l_Handle := l_HandleMemoryPool.ReleaseHandle;
     l_FileCount := DragQueryFile(l_Handle, $FFFFFFFF, nil, 0);
     if (l_FileCount = 1) then begin
      l_String := Tl3String.Create(Self);
      try
       l_String.Len := DragQueryFile(l_Handle, 0, nil, 0);
       if not l_String.Empty then begin
        DragQueryFile(l_Handle, 0, l_String.St, l_String.StSize);
        f_OnGetFileReader(Self, l_String.AsString, Reader);
        if (Reader <> nil) then
         try
          Result := true;
          WriteTagEx(Reader, nil, aBlock, aFlags, aSubType, aSubHandle);
         finally
          FreeAndNil(Reader);
         end;//try..finally
       end;{not l_String.Empty}
      finally
       FreeAndNil(l_String);
      end;{try..finally}
     end;//l_FileCount = 1
    finally
     l_HandleMemoryPool := nil;
    end;//try..finally
   Exit;
  end;//Reader = nil..*)
 end;//not anInternal
 if (l_Reader <> nil) then
  try
   Result := true;
   try
    WriteTagEx(aView, l_Reader, aBlock, aFlags);
   finally
    if Supports(l_Reader, Ik2FilerSource2, l_FS) then
     try
      with l_FS.Filer do
      begin
       COMStream := nil;
       Close;
      end;//l_FS.Filer
     finally
      l_FS := nil;
     end;//try..finally
   end;//try..finally
  finally
   FreeAndNil(l_Reader);
  end;//try..finally
//#UC END# *47C6AF76020D_47F0870E0034_impl*
end;//TnevDocumentContainer.WriteTag

procedure TnevDocumentContainer.WriteTagEx(const aView: InevView;
  const aReader: InevReader;
  const aBlock: IUnknown = nil;
  aFlags: TevLoadFlags = evDefaultLoadFlags);
//#UC START# *47C6AF9302EC_47F0870E0034_var*
//#UC END# *47C6AF9302EC_47F0870E0034_var*
begin
//#UC START# *47C6AF9302EC_47F0870E0034_impl*
 WriteDataExEx(aView, aReader, aBlock, aFlags);
//#UC END# *47C6AF9302EC_47F0870E0034_impl*
end;//TnevDocumentContainer.WriteTagEx

function TnevDocumentContainer.HasDocument: Boolean;
//#UC START# *47C6B423011E_47F0870E0034_var*
//#UC END# *47C6B423011E_47F0870E0034_var*
begin
//#UC START# *47C6B423011E_47F0870E0034_impl*
 Result := (f_Document <> nil);
//#UC END# *47C6B423011E_47F0870E0034_impl*
end;//TnevDocumentContainer.HasDocument

function TnevDocumentContainer.IsSame(const aContainer: InevDocumentContainer): Boolean;
//#UC START# *47C6B43800FF_47F0870E0034_var*
//#UC END# *47C6B43800FF_47F0870E0034_var*
begin
//#UC START# *47C6B43800FF_47F0870E0034_impl*
 Result := GetIsSame(aContainer);
//#UC END# *47C6B43800FF_47F0870E0034_impl*
end;//TnevDocumentContainer.IsSame

function TnevDocumentContainer.IsSameText(const aTextSource: IUnknown): Boolean;
//#UC START# *47C6B4420339_47F0870E0034_var*
//#UC END# *47C6B4420339_47F0870E0034_var*
begin
//#UC START# *47C6B4420339_47F0870E0034_impl*
 Result := GetIsSameText(aTextSource);
//#UC END# *47C6B4420339_47F0870E0034_impl*
end;//TnevDocumentContainer.IsSameText

function TnevDocumentContainer.IsSameText(const aContainer: InevDocumentContainer): Boolean;
//#UC START# *47C6B44D00C6_47F0870E0034_var*
//#UC END# *47C6B44D00C6_47F0870E0034_var*
begin
//#UC START# *47C6B44D00C6_47F0870E0034_impl*
 Result := GetIsSameText(aContainer);
//#UC END# *47C6B44D00C6_47F0870E0034_impl*
end;//TnevDocumentContainer.IsSameText

function TnevDocumentContainer.ReadFrom(const aStream: IStream): Boolean;
//#UC START# *47C6B4780001_47F0870E0034_var*
//#UC END# *47C6B4780001_47F0870E0034_var*
begin
//#UC START# *47C6B4780001_47F0870E0034_impl*
 WriteTag(nil, cf_EverestBin, aStream);
 Result := HasDocument;
//#UC END# *47C6B4780001_47F0870E0034_impl*
end;//TnevDocumentContainer.ReadFrom

procedure TnevDocumentContainer.WriteTo(const aGenerator: InevTagGenerator);
//#UC START# *47C6B4820006_47F0870E0034_var*
//#UC END# *47C6B4820006_47F0870E0034_var*
begin
//#UC START# *47C6B4820006_47F0870E0034_impl*
 aGenerator.Start;
 try
  with Document do
  begin
   aGenerator.StartChild(TagType.ID);
   try
    Write(aGenerator);
    // - копируем документ из одного контейнера в другой
   finally
    aGenerator.Finish;
   end;//try..finally
  end;//with l_Container.Document
 finally
  aGenerator.Finish;
 end;//try..finally
//#UC END# *47C6B4820006_47F0870E0034_impl*
end;//TnevDocumentContainer.WriteTo

procedure TnevDocumentContainer.LinkTextSource(const aTextSource: InevTextSource);
//#UC START# *47C6B49B0045_47F0870E0034_var*
//#UC END# *47C6B49B0045_47F0870E0034_var*
begin
//#UC START# *47C6B49B0045_47F0870E0034_impl*
 CheckCloseWindow;
 if (aTextSource <> nil) then
 begin
  if (f_TextSource = nil) then
   f_TextSource := TnevTextSourcePool.Make(Self);
  f_TextSource.LinkTextSource(aTextSource As InevTextSourceInternal);
 end;//aTextSource <> nil
//#UC END# *47C6B49B0045_47F0870E0034_impl*
end;//TnevDocumentContainer.LinkTextSource

procedure TnevDocumentContainer.UnlinkTextSource(const aTextSource: InevTextSource);
//#UC START# *47C6B4A501B8_47F0870E0034_var*
//#UC END# *47C6B4A501B8_47F0870E0034_var*
begin
//#UC START# *47C6B4A501B8_47F0870E0034_impl*
 if (f_TextSource <> nil) then
  f_TextSource.UnlinkTextSource(aTextSource As InevTextSourceInternal);
//#UC END# *47C6B4A501B8_47F0870E0034_impl*
end;//TnevDocumentContainer.UnlinkTextSource

function TnevDocumentContainer.HasProcessor: Boolean;
//#UC START# *47C6B4BC0363_47F0870E0034_var*
//#UC END# *47C6B4BC0363_47F0870E0034_var*
begin
//#UC START# *47C6B4BC0363_47F0870E0034_impl*
 Result := GetHasProcessor;
//#UC END# *47C6B4BC0363_47F0870E0034_impl*
end;//TnevDocumentContainer.HasProcessor

procedure TnevDocumentContainer.RemoveFromDocumentsCache;
//#UC START# *47C6B4C300D0_47F0870E0034_var*
//#UC END# *47C6B4C300D0_47F0870E0034_var*
begin
//#UC START# *47C6B4C300D0_47F0870E0034_impl*
 TevDocumentsCache.RemoveDocument(Self);
//#UC END# *47C6B4C300D0_47F0870E0034_impl*
end;//TnevDocumentContainer.RemoveFromDocumentsCache

function TnevDocumentContainer.Internal: IUnknown;
//#UC START# *47C6B4F7003F_47F0870E0034_var*
//#UC END# *47C6B4F7003F_47F0870E0034_var*
begin
//#UC START# *47C6B4F7003F_47F0870E0034_impl*
 Result := InevDocumentContainerInternal(Self);
//#UC END# *47C6B4F7003F_47F0870E0034_impl*
end;//TnevDocumentContainer.Internal

procedure TnevDocumentContainer.GetSubFlagsIterator(aLayer: Integer);
//#UC START# *47C6B50A0326_47F0870E0034_var*
//#UC END# *47C6B50A0326_47F0870E0034_var*
begin
//#UC START# *47C6B50A0326_47F0870E0034_impl*
 if (TextSource <> nil) then
  TextSource.GetSubFlags(aLayer, Self);
//#UC END# *47C6B50A0326_47F0870E0034_impl*
end;//TnevDocumentContainer.GetSubFlagsIterator

function TnevDocumentContainer.Preview(const aKey: TevPreviewCacheKey;
  const aMacroReplacer: IafwHAFMacroReplacer;
  const aRange: InevRange = nil;
  TreatRangeAsSelection: Boolean = True): InevComplexDocumentPreview;
//#UC START# *47C6B6EB019E_47F0870E0034_var*
//#UC END# *47C6B6EB019E_47F0870E0034_var*
begin
//#UC START# *47C6B6EB019E_47F0870E0034_impl*
 if (f_PreviewFactory = nil) then
  f_PreviewFactory := TafwComplexDocumentPreviewFactory.MakeI;
 Result := f_PreviewFactory.Make;
 with Result do
 begin
  if Assigned(aRange) and not TreatRangeAsSelection then
   SetDocument(DocumentPreview(aKey, aMacroReplacer, aRange))
  else
   SetDocument(DocumentPreview(aKey, aMacroReplacer));
  SetInfo(InfoPreview(aKey, aMacroReplacer));
  if Assigned(aRange) and TreatRangeAsSelection then
  begin
   SetSelection(DocumentPreview(aKey, aMacroReplacer, aRange));
   ContentKind := afw_pckSelection;
  end;//Assigned(aRange) and TreatRangeAsSelection
 end;//with Result
//#UC END# *47C6B6EB019E_47F0870E0034_impl*
end;//TnevDocumentContainer.Preview

function TnevDocumentContainer.RealizeSub(aLayerHandle: Integer;
  const Atom: InevTag;
  const anObject: InevTag): InevTag;
//#UC START# *47C6B731004F_47F0870E0034_var*
//#UC END# *47C6B731004F_47F0870E0034_var*
begin
//#UC START# *47C6B731004F_47F0870E0034_impl*
 Result := RealizeSub(aLayerHandle, Atom, anObject, nil);
//#UC END# *47C6B731004F_47F0870E0034_impl*
end;//TnevDocumentContainer.RealizeSub

function TnevDocumentContainer.LinkWaiter(const aWaiter: InevWaiter): Boolean;
//#UC START# *47C6B74202C6_47F0870E0034_var*
//#UC END# *47C6B74202C6_47F0870E0034_var*
begin
//#UC START# *47C6B74202C6_47F0870E0034_impl*
 Result := false;
 if (aWaiter <> nil) then
 begin
  if HasDocument AND aWaiter.TrySelect(Self) then
   Result := true
  else
  begin
   if (f_Waiters = nil) then
    f_Waiters := TnevWaiterList.Make;
   f_Waiters.Add(aWaiter); 
  end;//not aWaiter.TrySelect(Self)
 end;//aWaiter <> nil
//#UC END# *47C6B74202C6_47F0870E0034_impl*
end;//TnevDocumentContainer.LinkWaiter

function TnevDocumentContainer.GetGenerator(const aView: InevView;
  const aGeneratorTarget: IUnknown): InevTagGenerator;
//#UC START# *47C6B74E0271_47F0870E0034_var*
var
 l_Gen : Tk2TagGenerator;
//#UC END# *47C6B74E0271_47F0870E0034_var*
begin
//#UC START# *47C6B74E0271_47F0870E0034_impl*
 l_Gen := GetGeneratorPrim(aView, aGeneratorTarget);
 try
  Result := l_Gen;
 finally
  FreeAndNil(l_Gen);
 end;//try..finally
//#UC END# *47C6B74E0271_47F0870E0034_impl*
end;//TnevDocumentContainer.GetGenerator

function TnevDocumentContainer.pm_GetTextSource: InevTextSource;
//#UC START# *47C6B77C032A_47F0870E0034get_var*
//#UC END# *47C6B77C032A_47F0870E0034get_var*
begin
//#UC START# *47C6B77C032A_47F0870E0034get_impl*
 Result := f_TextSource;
//#UC END# *47C6B77C032A_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetTextSource

function TnevDocumentContainer.Get_Processor: InevProcessor;
//#UC START# *47C6B7890217_47F0870E0034get_var*
//#UC END# *47C6B7890217_47F0870E0034get_var*
begin
//#UC START# *47C6B7890217_47F0870E0034get_impl*
 Result := DoGetProcessor;
//#UC END# *47C6B7890217_47F0870E0034get_impl*
end;//TnevDocumentContainer.Get_Processor

function TnevDocumentContainer.Get_Document: IevDocument;
//#UC START# *47C6B84201CC_47F0870E0034get_var*
//#UC END# *47C6B84201CC_47F0870E0034get_var*
begin
//#UC START# *47C6B84201CC_47F0870E0034get_impl*
 Result := TevDocumentImplementation.Make(Document, Get_Processor);
//#UC END# *47C6B84201CC_47F0870E0034get_impl*
end;//TnevDocumentContainer.Get_Document

function TnevDocumentContainer.pm_GetSubList: InevSubList;
//#UC START# *47C6B8980387_47F0870E0034get_var*
//#UC END# *47C6B8980387_47F0870E0034get_var*
begin
//#UC START# *47C6B8980387_47F0870E0034get_impl*
 Result := Self;
//#UC END# *47C6B8980387_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetSubList

function TnevDocumentContainer.pm_GetDocumentInfo: InevDocumentInfo;
//#UC START# *47C6B8D702EC_47F0870E0034get_var*
//#UC END# *47C6B8D702EC_47F0870E0034get_var*
begin
//#UC START# *47C6B8D702EC_47F0870E0034get_impl*
 Result := DoGetDocumentInfo;
//#UC END# *47C6B8D702EC_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetDocumentInfo

function TnevDocumentContainer.pm_GetDocumentLimits: InevDocumentLimits;
//#UC START# *47C6B8EB03C3_47F0870E0034get_var*
//#UC END# *47C6B8EB03C3_47F0870E0034get_var*
begin
//#UC START# *47C6B8EB03C3_47F0870E0034get_impl*
 Result := DoGetDocumentLimits;
//#UC END# *47C6B8EB03C3_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetDocumentLimits

function TnevDocumentContainer.pm_GetAbortedLoad: Boolean;
//#UC START# *47C6B8FF0332_47F0870E0034get_var*
//#UC END# *47C6B8FF0332_47F0870E0034get_var*
begin
//#UC START# *47C6B8FF0332_47F0870E0034get_impl*
 Result := AbortedLoad;
//#UC END# *47C6B8FF0332_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetAbortedLoad

procedure TnevDocumentContainer.pm_SetAbortedLoad(aValue: Boolean);
//#UC START# *47C6B8FF0332_47F0870E0034set_var*
//#UC END# *47C6B8FF0332_47F0870E0034set_var*
begin
//#UC START# *47C6B8FF0332_47F0870E0034set_impl*
 AbortedLoad := aValue;
//#UC END# *47C6B8FF0332_47F0870E0034set_impl*
end;//TnevDocumentContainer.pm_SetAbortedLoad

function TnevDocumentContainer.pm_GetNeedProcessMessages: Boolean;
//#UC START# *47C6B91202D2_47F0870E0034get_var*
//#UC END# *47C6B91202D2_47F0870E0034get_var*
begin
//#UC START# *47C6B91202D2_47F0870E0034get_impl*
 Result := NeedProcessMessages;
//#UC END# *47C6B91202D2_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetNeedProcessMessages

procedure TnevDocumentContainer.pm_SetNeedProcessMessages(aValue: Boolean);
//#UC START# *47C6B91202D2_47F0870E0034set_var*
//#UC END# *47C6B91202D2_47F0870E0034set_var*
begin
//#UC START# *47C6B91202D2_47F0870E0034set_impl*
 NeedProcessMessages := aValue;
//#UC END# *47C6B91202D2_47F0870E0034set_impl*
end;//TnevDocumentContainer.pm_SetNeedProcessMessages

function TnevDocumentContainer.pm_GetContentsTree: InevSimpleTree;
//#UC START# *47C6B96400A7_47F0870E0034get_var*
//#UC END# *47C6B96400A7_47F0870E0034get_var*
begin
//#UC START# *47C6B96400A7_47F0870E0034get_impl*
 Result := GetContentsTree;
//#UC END# *47C6B96400A7_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetContentsTree

function TnevDocumentContainer.pm_GetExistingDocument: InevTag;
//#UC START# *47C6B97503B2_47F0870E0034get_var*
//#UC END# *47C6B97503B2_47F0870E0034get_var*
begin
//#UC START# *47C6B97503B2_47F0870E0034get_impl*
 Result := f_Document;
//#UC END# *47C6B97503B2_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetExistingDocument

function TnevDocumentContainer.pm_GetSub(anID: Integer): IevSub;
//#UC START# *47C6C87C0275_47F0870E0034get_var*
//#UC END# *47C6C87C0275_47F0870E0034get_var*
begin
//#UC START# *47C6C87C0275_47F0870E0034get_impl*
 Result := pm_GetSubEx(anID, ev_sbtSub);
//#UC END# *47C6C87C0275_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetSub

function TnevDocumentContainer.pm_GetSubEx(anID: Integer; aLayerID: Integer): IevSub;
//#UC START# *47C6C8A7009C_47F0870E0034get_var*
//#UC END# *47C6C8A7009C_47F0870E0034get_var*
begin
//#UC START# *47C6C8A7009C_47F0870E0034get_impl*
 Result := DoGetSubEx(anID, aLayerID);
//#UC END# *47C6C8A7009C_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetSubEx

function TnevDocumentContainer.pm_GetNewSub: IevSub;
//#UC START# *47C6C8F8015D_47F0870E0034get_var*
//#UC END# *47C6C8F8015D_47F0870E0034get_var*
begin
//#UC START# *47C6C8F8015D_47F0870E0034get_impl*
 Result := pm_GetNewSubEx(ev_sbtSub);
//#UC END# *47C6C8F8015D_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetNewSub

function TnevDocumentContainer.pm_GetNewSubEx(aLayerID: Integer): IevSub;
//#UC START# *47C6C92803AD_47F0870E0034get_var*

 function NewID: Integer;
 begin//NewID
  Document.IntA[k2_tiMaxSubID] := Document.IntA[k2_tiMaxSubID] + 1;
  Result := Document.IntA[k2_tiMaxSubID];
 end;//NewID

//#UC END# *47C6C92803AD_47F0870E0034get_var*
begin
//#UC START# *47C6C92803AD_47F0870E0034get_impl*
 Result := pm_GetSubEx(NewID, aLayerID);
//#UC END# *47C6C92803AD_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetNewSubEx

function TnevDocumentContainer.pm_GetBlock(anID: Integer): IevDocumentPart;
//#UC START# *47C6C95F01A8_47F0870E0034get_var*
//#UC END# *47C6C95F01A8_47F0870E0034get_var*
begin
//#UC START# *47C6C95F01A8_47F0870E0034get_impl*
 Result := pm_GetBlockEx(anID, ev_sbtSub);
//#UC END# *47C6C95F01A8_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetBlock

function TnevDocumentContainer.pm_GetBlockEx(anID: Integer; aLayerID: Integer): IevDocumentPart;
//#UC START# *47C6C98400A2_47F0870E0034get_var*
var
 l_Sub : IevSub;
//#UC END# *47C6C98400A2_47F0870E0034get_var*
begin
//#UC START# *47C6C98400A2_47F0870E0034get_impl*
 l_Sub := pm_GetSubEx(anID, aLayerID);
 if (l_Sub = nil) then
  Result := nil
 else 
  try
   l_Sub.QueryInterface(IevDocumentPart, Result);
  finally
   l_Sub := nil;
  end;{try..finally}
//#UC END# *47C6C98400A2_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetBlockEx

function TnevDocumentContainer.Get_InternalDocument: InevTag;
//#UC START# *47F0953E0017_47F0870E0034get_var*
//#UC END# *47F0953E0017_47F0870E0034get_var*
begin
//#UC START# *47F0953E0017_47F0870E0034get_impl*
 Result := pm_GetDocument;
//#UC END# *47F0953E0017_47F0870E0034get_impl*
end;//TnevDocumentContainer.Get_InternalDocument

procedure TnevDocumentContainer.GetReader(aFormat: TnevFormat;
  const aPool: IStream;
  out theReader: Tk2CustomReader;
  anInternal: Boolean = true;
  aCodePage: Integer = CP_DefaultValue;
  const aBlock: IUnknown = nil);
//#UC START# *47F0963802F4_47F0870E0034_var*
var
 l_FS : Ik2FilerSource2;
//#UC END# *47F0963802F4_47F0870E0034_var*
begin
//#UC START# *47F0963802F4_47F0870E0034_impl*
 DoGetReader(aFormat, aPool, theReader, anInternal, aCodePage, aBlock);
 if Supports(theReader, Ik2FilerSource2, l_FS) then
  try
   theReader.Context := StartIOOp(aBlock <> nil);
   with l_FS.Filer do
   begin
    Mode := l3_fmRead;
    COMStream := aPool;
    Open;
   end;//with l_FS.Filer
  finally
   l_FS := nil;
  end;//try..finally
//#UC END# *47F0963802F4_47F0870E0034_impl*
end;//TnevDocumentContainer.GetReader

procedure TnevDocumentContainer.GetWriter(aFormat: TnevFormat;
  anInternal: Boolean;
  out theWriter: Tk2TagGenerator;
  const aFilters: InevTagGenerator;
  aCodePage: Integer = CP_DefaultValue);
//#UC START# *47F096A00083_47F0870E0034_var*
var
 l_DummyCharMul    : Integer;
 l_DummyFormatName : Il3CString;
//#UC END# *47F096A00083_47F0870E0034_var*
begin
//#UC START# *47F096A00083_47F0870E0034_impl*
 GetWriter(aFormat, anInternal, theWriter, l_DummyCharMul, l_DummyFormatName, aFilters, aCodePage);
//#UC END# *47F096A00083_47F0870E0034_impl*
end;//TnevDocumentContainer.GetWriter

function TnevDocumentContainer.pm_GetLoading: Boolean;
//#UC START# *47F3BD430006_47F0870E0034get_var*
//#UC END# *47F3BD430006_47F0870E0034get_var*
begin
//#UC START# *47F3BD430006_47F0870E0034get_impl*
 Result := f_Loading;
//#UC END# *47F3BD430006_47F0870E0034get_impl*
end;//TnevDocumentContainer.pm_GetLoading

procedure TnevDocumentContainer.LinkSubChangeListner(const aSubChangeListner: InevSubChangeListner);
//#UC START# *48EDB29B0123_47F0870E0034_var*
//#UC END# *48EDB29B0123_47F0870E0034_var*
begin
//#UC START# *48EDB29B0123_47F0870E0034_impl*
 f_SubChangeListner := aSubChangeListner;
//#UC END# *48EDB29B0123_47F0870E0034_impl*
end;//TnevDocumentContainer.LinkSubChangeListner

procedure TnevDocumentContainer.DoInvalidateShape(const aShape: InevObject;
  aParts: TnevShapeParts);
//#UC START# *4918253C0297_47F0870E0034_var*
//#UC END# *4918253C0297_47F0870E0034_var*
begin
//#UC START# *4918253C0297_47F0870E0034_impl*
 if (TextSource <> nil) then
  TextSource.ViewArea.InvalidateShape(aShape, aParts);
  // - надо подумать - нужно ли здесь это, а может просто Invalidate,
  //   а может - вообще ничего не нужно
//#UC END# *4918253C0297_47F0870E0034_impl*
end;//TnevDocumentContainer.DoInvalidateShape

function TnevDocumentContainer.GetTagReader: InevTagReader;
//#UC START# *491829480128_47F0870E0034_var*
//#UC END# *491829480128_47F0870E0034_var*
begin
//#UC START# *491829480128_47F0870E0034_impl*
 Result := Self;
//#UC END# *491829480128_47F0870E0034_impl*
end;//TnevDocumentContainer.GetTagReader

function TnevDocumentContainer.GetTagWriter: InevTagWriter;
//#UC START# *491829620101_47F0870E0034_var*
//#UC END# *491829620101_47F0870E0034_var*
begin
//#UC START# *491829620101_47F0870E0034_impl*
 Result := Self;
//#UC END# *491829620101_47F0870E0034_impl*
end;//TnevDocumentContainer.GetTagWriter

function TnevDocumentContainer.DefaultDocumentType: Integer;
//#UC START# *4A8D229200AF_47F0870E0034_var*
//#UC END# *4A8D229200AF_47F0870E0034_var*
begin
//#UC START# *4A8D229200AF_47F0870E0034_impl*
 Result := GetDocumentType;
//#UC END# *4A8D229200AF_47F0870E0034_impl*
end;//TnevDocumentContainer.DefaultDocumentType

procedure TnevDocumentContainer.NotifySubAdded(aParaID: Integer;
  aSubID: Integer;
  aLayerID: Integer;
  const aSubName: Tl3WString;
  aFlags: Integer);
//#UC START# *4D2EFD950259_47F0870E0034_var*
var
 l_Document : InevParaList;
 l_Para     : InevObject;
 l_SubID    : Integer;
 l_ParaID   : Integer;
//#UC END# *4D2EFD950259_47F0870E0034_var*
begin
//#UC START# *4D2EFD950259_47F0870E0034_impl*
 if not Self.Get_Document.Para.QT(InevParaList, l_Document) then
  Exit;
 if not Self.FindObjByID(aParaID, l_Para) then
  Exit;
 if (aParaID = 0) AND (aLayerID = ev_sbtBookmark) AND
    (l_Para.IntA[k2_tiStyle] = ev_saTechComment) then
 begin
  l_Para := evFindNumberedPara(l_Para, true);
  if (l_Para = nil) then
   Exit;
 end;//aParaID = 0
 l_ParaID := l_Para.IntA[k2_tiHandle];
 if (aLayerID = ev_sbtBookmark) then
  l_SubID := l_ParaID
 else
  l_SubID := aSubID;
 with Self.pm_GetSubList.SubEx[l_SubID, aLayerID] do
  if not Exists then
  begin
   // - если такой закладки нету в тексте - иначе рекурсия бесконечная
   SetTo(l_Para);
   if not l3IsNil(aSubName) then
   begin
    Name := aSubName;
    // - копируем имя закладки
    Assert(l3Same(Name, aSubName));
   end;//not l3IsNil(aSubName)
   Flags := aFlags;
   //Assert(Flags = aFlags);
   // - этот Assert раскомментировать нельзя, т.к. там шаманство с установкой
   //   отдельных бит.
   NotifySubReallyAdded(l_ParaID, aSubID, aLayerID, aSubName, aFlags);
  end;//not Exists
//#UC END# *4D2EFD950259_47F0870E0034_impl*
end;//TnevDocumentContainer.NotifySubAdded

function TnevDocumentContainer.GetCommentTextByParaID(aParaID: Integer): Il3CString;
//#UC START# *4D3086B1037F_47F0870E0034_var*
var
 l_Obj  : InevObject;
 l_Para : InevPara;
//#UC END# *4D3086B1037F_47F0870E0034_var*
begin
//#UC START# *4D3086B1037F_47F0870E0034_impl*
 Result := nil;
 if Self.FindObjByID(aParaID, l_Obj) then
  if l_Obj.QT(InevPara, l_Para) then
  begin
   while true do
   begin
    l_Para := EvNextOverallPara(l_Para);
    if (l_Para <> nil) AND l_Para.IsValid then
    begin
     if evInPara(l_Para, k2_idCommentPara) then
     //if l_Para.Owner.InheritsFrom(k2_idCommentPara) then
     begin
      if Supports(l_Para.Attr[k2_tiText].Box, Il3CString, Result) then
       if not l3IsNil(Result) then
        break;
     end//l_Para.Owner.InheritsFrom(k2_idCommentPara)
     else
      break;
    end//l_Para <> nil..
    else
     break;
   end;//while true
  end;//l_Obj.QT(InevPara, l_Para)
//#UC END# *4D3086B1037F_47F0870E0034_impl*
end;//TnevDocumentContainer.GetCommentTextByParaID

procedure TnevDocumentContainer.DeleteCommentByParaID(aParaID: Integer);
//#UC START# *4D36F3960377_47F0870E0034_var*
var
 l_Obj  : InevObject;
 l_Para : InevPara;
//#UC END# *4D36F3960377_47F0870E0034_var*
begin
//#UC START# *4D36F3960377_47F0870E0034_impl*
 if Self.FindObjByID(aParaID, l_Obj) then
  if l_Obj.QT(InevPara, l_Para) then
  begin
   l_Para := EvNextOverallPara(l_Para);
   if (l_Para <> nil) AND l_Para.IsValid then
   begin
    if evInPara(l_Para, k2_idCommentPara) then
    //if l_Para.Owner.InheritsFrom(k2_idCommentPara) then
     l_Para.OwnerPara.Edit.Delete(false, StartOp(ev_msgDeletePara));
   end;//(l_Para <> nil) AND l_Para.IsValid
  end;//l_Obj.QT(InevPara, l_Para)
//#UC END# *4D36F3960377_47F0870E0034_impl*
end;//TnevDocumentContainer.DeleteCommentByParaID

procedure TnevDocumentContainer.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_47F0870E0034_var*
//#UC END# *478CF34E02CE_47F0870E0034_var*
begin
//#UC START# *478CF34E02CE_47F0870E0034_impl*
 Assert(false, 'А нужна ли возможность присвоения контейнеров документа?'); 
 if (Source Is TnevDocumentContainer) then
  f_NeedProcessMessages := TnevDocumentContainer(Source).NeedProcessMessages
 else
  inherited;
//#UC END# *478CF34E02CE_47F0870E0034_impl*
end;//TnevDocumentContainer.Assign

procedure TnevDocumentContainer.Cleanup;
//#UC START# *479731C50290_47F0870E0034_var*
//#UC END# *479731C50290_47F0870E0034_var*
begin
//#UC START# *479731C50290_47F0870E0034_impl*
 f_MaxSubID := 0;
 f_SubChangeListner := nil;
 FreeAndNil(f_InfoPreviewCache);
 FreeAndNil(f_DocumentPreviewCache);
 Next := nil;
 FreeAndNil(f_Waiters);
 f_TextSource := nil;
 f_PreviewFactory := nil;
 FreeAndNil(f_NotFoundParas);
 Clear;
 inherited;
//#UC END# *479731C50290_47F0870E0034_impl*
end;//TnevDocumentContainer.Cleanup

procedure TnevDocumentContainer.InitFields;
//#UC START# *47A042E100E2_47F0870E0034_var*
//#UC END# *47A042E100E2_47F0870E0034_var*
begin
//#UC START# *47A042E100E2_47F0870E0034_impl*
 inherited;
 f_Loading := false;
 f_MaxSubID := 0;
//#UC END# *47A042E100E2_47F0870E0034_impl*
end;//TnevDocumentContainer.InitFields

function TnevDocumentContainer.GetObj: InevObject;
//#UC START# *48185EEB0234_47F0870E0034_var*
//#UC END# *48185EEB0234_47F0870E0034_var*
begin
//#UC START# *48185EEB0234_47F0870E0034_impl*
 Document.QT(InevObject, Result, Get_Processor);
//#UC END# *48185EEB0234_47F0870E0034_impl*
end;//TnevDocumentContainer.GetObj

procedure TnevDocumentContainer.pm_SetModified(aValue: Boolean);
//#UC START# *4918285A0247_47F0870E0034set_var*
//#UC END# *4918285A0247_47F0870E0034set_var*
begin
//#UC START# *4918285A0247_47F0870E0034set_impl*
 if aValue then
  ResetPreviewCaches(False);
 if (Modified <> aValue) then
 begin
  inherited;
  OevModified.ToUndo(StartOp(EM_SetModify));
  CallNotify(Ord(nev_deChangeModified), 0);
 end;//Modified <> aValue
//#UC END# *4918285A0247_47F0870E0034set_impl*
end;//TnevDocumentContainer.pm_SetModified

function TnevDocumentContainer.DoFindObjByID(aParaID: Integer;
  out aPara: InevObject): Boolean;
//#UC START# *491829B003B9_47F0870E0034_var*
var
 l_Index : Integer;
 l_Para  : InevObject;
//#UC END# *491829B003B9_47F0870E0034_var*
begin
//#UC START# *491829B003B9_47F0870E0034_impl*
 if (f_NotFoundParas <> nil) AND
    f_NotFoundParas.FindData(aParaID, l_Index) then
 begin
  Result := false;
  aPara := nev.NullPara;
  Exit;
 end;//f_NotFoundParas <> nil
 l_Para := pm_GetObj;
 if (l_Para <> nil) then
  try
   if (aParaID = 0) then
   begin
    Result := true;
    aPara := l_Para.MakePoint.ToBottomChild(nil).Obj^;
   end
   else
    Result := DoFindParaByID(l_Para, aParaID, aPara);
   if not Result then
   begin
    if (f_NotFoundParas = nil) then
     f_NotFoundParas := Tl3LongintList.MakeSorted;
    f_NotFoundParas.Add(aParaID);
   end;//not Result
  finally
   l_Para := nil;
  end//try..finally
 else
  Result := false;
//#UC END# *491829B003B9_47F0870E0034_impl*
end;//TnevDocumentContainer.DoFindObjByID

function TnevDocumentContainer.GetViewArea: InevViewArea;
//#UC START# *491829EC0312_47F0870E0034_var*
//#UC END# *491829EC0312_47F0870E0034_var*
begin
//#UC START# *491829EC0312_47F0870E0034_impl*
 if (TextSource = nil) then
  Result := nil
 else
  Result := TextSource.ViewArea;
//#UC END# *491829EC0312_47F0870E0034_impl*
end;//TnevDocumentContainer.GetViewArea

procedure TnevDocumentContainer.DoChildAdded(const aList: InevTag;
  const aChild: InevTag;
  anIndex: Integer;
  const anOpPack: InevOp);
//#UC START# *49182BA9012A_47F0870E0034_var*

var
 l_LayerID : Integer;

 function l_GetSubPara: InevTag;
 begin//l_GetSubPara
  Result := Document.rAtomEx([k2_tiSubs,
                            k2_tiChildren, k2_tiHandle, l_LayerID,
                            k2_tiChildren, k2_tiHandle, aChild.IntA[k2_tiHandle],
                            k2_tiObject]);
 end;//l_GetSubPara

var
 l_ChildIsBlock : Boolean;
 l_Para         : InevTag;
//#UC END# *49182BA9012A_47F0870E0034_var*
begin
//#UC START# *49182BA9012A_47F0870E0034_impl*
 if aChild.InheritsFrom(k2_idPara) then
 begin
  if (TextSource <> nil) then
  begin
 {$IFNDEF Nemesis}
(*   if aList.InheritsFrom([k2_idTableCell, k2_idTableRow, k2_idTable]) then
    TextSource.ViewArea.UpdateViewPool(aList);*)
 // - здесь может стоит призадуматься
 {$ENDIF Nemesis}
   TextSource.ViewArea.Changed(nev_cpPara);
  end;//TextSource <> nil
 end;//aChild.InheritsFrom(k2_idPara) then
 if (anOpPack <> nil) then
 begin
  if not anOpPack.InIOProcess then
  begin
   if aChild.InheritsFrom(k2_idLeafPara) then
    ClearSubs
   else
   if aChild.InheritsFrom(k2_idSub) then
   begin
    l_ChildIsBlock := aChild.InheritsFrom(k2_idBlock);
    if l_ChildIsBlock then
    begin
     l_LayerID := aChild.IntA[k2_tiLayerID];
     l_Para := aChild;
     RealizeSub(l_LayerID, aChild, l_Para, anOpPack);
     if f_SubChangeListner <> nil then
      f_SubChangeListner.SubChanged(l_Para, ev_chtAdded);
    end//l_ChildIsBlock
    else
    begin
     l_LayerID := aList.IntA[k2_tiHandle];
     l_Para := l_GetSubPara;
     if not aChild.InheritsFrom(k2_idDocumentSub) and l_Para.IsValid then
      if f_SubChangeListner <> nil then
       f_SubChangeListner.SubChanged(l_Para, ev_chtAdded);
    end;//l_ChildIsBlock
    TevDocumentsCache.NotifySubAdded(Self, l_Para, aChild, l_LayerID);
    if (TextSource <> nil) then
     TextSource.ViewArea.Invalidate;
    if anOpPack.SaveUndo AND
       (
        (l_LayerID = ev_sbtSub)
        {$IfNDef Nemesis}
         OR (l_LayerID = ev_sbtBookmark)
        {$EndIf  Nemesis}
       ) then
     anOpPack.MarkModified(l_Para);
   end;//aChild.InheritsFrom(k2_idSub)
  end;//not anOpPack.InIOProcess
 end;//OpPack <> nil
 CheckWaiters(aList, aChild);
//#UC END# *49182BA9012A_47F0870E0034_impl*
end;//TnevDocumentContainer.DoChildAdded

procedure TnevDocumentContainer.DoChildDeleted(const aList: InevTag;
  const aChild: InevTag;
  anIndex: Integer;
  const anOpPack: InevOp);
//#UC START# *49182BD6003A_47F0870E0034_var*

 procedure DoRemoveSub(const aSub   : InevTag;
                       const aLayer : InevTag);
 var
  l_LayerID : Integer;
 begin//DoRemoveSub
  if aLayer.InheritsFrom(k2_idBlock) then
   l_LayerID := aLayer.IntA[k2_tiLayerID]
  else
   l_LayerID := aLayer.IntA[k2_tiHandle];
  if anOpPack.SaveUndo then
   if (l_LayerID = ev_sbtSub) then
    anOpPack.MarkModified(nil);
  if not aSub.InheritsFrom(k2_idDocumentSub) then
  begin
   if f_SubChangeListner <> nil then
    f_SubChangeListner.SubChanged(aSub, ev_chtDeleted);
   NotifySubDeleted(aSub, pm_GetSubEx(aSub.IntA[k2_tiHandle], l_LayerID));
  end;//not aSub.InheritsFrom(k2_idDocumentSub)
 end;//DoRemoveSub

 procedure DoRemoveLeaf(const aLeaf: InevTag);
 var
  l_SubLayer   : InevTag;
  l_LayerIndex : Integer;
  l_SubIndex   : Integer;
 begin//DoRemoveLeaf
  with aLeaf.Attr[k2_tiSubs] do
  if IsValid then
   begin
    for l_LayerIndex := 0 to Pred(ChildrenCount) do
    begin
     l_SubLayer := Child[l_LayerIndex];
     with l_SubLayer do
      if IsValid then
      begin
       for l_SubIndex := 0 to Pred(ChildrenCount) do
        DoRemoveSub(Child[l_SubIndex], l_SubLayer);
      end;//IsValid
    end;//for l_LayerIndex
   end;//with aLeaf.Attr[k2_tiSubs]
 end;//DoRemoveLeaf

 procedure DoRemoveList(const aList: InevTag);
 var
  l_Index : Integer;
  l_Child : InevTag;
 begin//DoRemoveList
  for l_Index := 0 to Pred(aList.ChildrenCount) do
  begin
   l_Child := aList.Child[l_Index];
   if l_Child.InheritsFrom(k2_idLeafPara) then
    DoRemoveLeaf(l_Child)
   else
   if l_Child.InheritsFrom(k2_idBlock) then
   // http://mdp.garant.ru/pages/viewpage.action?pageId=265410610
   begin
    DoRemoveSub(l_Child, l_Child);
    DoRemoveList(l_Child);
   end//l_Child.InheritsFrom(k2_idParaList)
   else
   if l_Child.InheritsFrom(k2_idParaList) then
    DoRemoveList(l_Child);
  end;//for l_Index
 end;//DoRemoveList

 procedure DoRemoveBlock(const aBlock: InevTag);
 begin//DoRemoveBlock
  DoRemoveSub(aBlock, aBlock);
  DoRemoveList(aBlock);
 end;//DoRemoveBlock

//#UC END# *49182BD6003A_47F0870E0034_var*
begin
//#UC START# *49182BD6003A_47F0870E0034_impl*
 if aChild.InheritsFrom(k2_idPara) then
 begin
  if (TextSource <> nil) then
  begin
 {$IFNDEF Nemesis}
(*   if aList.InheritsFrom([k2_idTableCell, k2_idTableRow, k2_idTable]) then
    TextSource.ViewArea.UpdateViewPool(aList);*)
 // - здесь может стоит призадуматься   
 {$ENDIF Nemesis}
   TextSource.ViewArea.Changed(nev_cpPara);
  end;//TextSource <> nil
 end;//aChild.InheritsFrom(k2_idPara)
 if (anOpPack <> nil) AND not anOpPack.InIOProcess then
 begin
  if aChild.InheritsFrom(k2_idBlock) then
   DoRemoveBlock(aChild)
  else
  if aChild.InheritsFrom(k2_idLeafPara) then
   DoRemoveLeaf(aChild)
  else
  if aChild.InheritsFrom(k2_idSub) then
   DoRemoveSub(aChild, aList)
  else
  if aChild.InheritsFrom(k2_idParaList) then
   DoRemoveList(aChild);
 end;//(anOpPack <> nil) AND not anOpPack.InIOProcess
//#UC END# *49182BD6003A_47F0870E0034_impl*
end;//TnevDocumentContainer.DoChildDeleted

procedure TnevDocumentContainer.UnformatAll;
//#UC START# *49182CD402C9_47F0870E0034_var*
//#UC END# *49182CD402C9_47F0870E0034_var*
begin
//#UC START# *49182CD402C9_47F0870E0034_impl*
 inherited;
 if HasDocument then
 begin
  if (TextSource <> nil) then
   TextSource.ViewArea.Changed(nev_cpView);
  ClearSubs;
  if (TextSource <> nil) then
   with TextSource do
   begin
    SetFlag(ev_uwfCursor);
    SetFlag(ev_uwfScrollCaret);
    ViewArea.Invalidate;
   end;//with TextSource
 end;//HasDocument
//#UC END# *49182CD402C9_47F0870E0034_impl*
end;//TnevDocumentContainer.UnformatAll

function TnevDocumentContainer.GetLock: Il3Lock;
//#UC START# *491843CA02B6_47F0870E0034_var*
//#UC END# *491843CA02B6_47F0870E0034_var*
begin
//#UC START# *491843CA02B6_47F0870E0034_impl*
 Result := Self;
//#UC END# *491843CA02B6_47F0870E0034_impl*
end;//TnevDocumentContainer.GetLock

procedure TnevDocumentContainer.DoUpdatePreview;
//#UC START# *491846A703C6_47F0870E0034_var*
//#UC END# *491846A703C6_47F0870E0034_var*
begin
//#UC START# *491846A703C6_47F0870E0034_impl*
 inherited;
 ResetPreviewCaches(False);
//#UC END# *491846A703C6_47F0870E0034_impl*
end;//TnevDocumentContainer.DoUpdatePreview

procedure TnevDocumentContainer.DoPropChanged(Prop: Tk2Prop;
  const V: TnevValues;
  const anOpPack: InevOp);
//#UC START# *49184A180301_47F0870E0034_var*
//#UC END# *49184A180301_47F0870E0034_var*
begin
//#UC START# *49184A180301_47F0870E0034_impl*
 if (TextSource <> nil) then
  TextSource.PropChanged(Prop, V, anOpPack);
//#UC END# *49184A180301_47F0870E0034_impl*
end;//TnevDocumentContainer.DoPropChanged

function TnevDocumentContainer.GetSubCache: IevSubCache;
//#UC START# *49184AEF0187_47F0870E0034_var*
//#UC END# *49184AEF0187_47F0870E0034_var*
begin
//#UC START# *49184AEF0187_47F0870E0034_impl*
 if (TextSource = nil) then
  Result := nil
 else
  Result := TextSource.SubCache; 
//#UC END# *49184AEF0187_47F0870E0034_impl*
end;//TnevDocumentContainer.GetSubCache

function TnevDocumentContainer.COMQueryInterface(const IID: Tl3GUID;
  out Obj): Tl3HResult;
//#UC START# *4A60B23E00C3_47F0870E0034_var*
//#UC END# *4A60B23E00C3_47F0870E0034_var*
begin
//#UC START# *4A60B23E00C3_47F0870E0034_impl*
 if IID.SomeOf([Il3OpPackMode]) then
 begin
  Assert(false, 'Зачем это?');
  if Supports(Get_Processor, IID.IID, Obj) then
   Result.SetOk
  else
   Result.SetNoInterface;
 end//IID.SomeOf([Il3OpPackMode])
 else
 begin
  Result := inherited COMQueryInterface(IID, Obj);
  if Result.Fail then
  begin
   if Supports(TextSource, IID.IID, Obj) then
    Result.SetOk;
  end;//l3Fail(Result)
 end;//IID.SomeOf([InevRootNode, InevNode])
//#UC END# *4A60B23E00C3_47F0870E0034_impl*
end;//TnevDocumentContainer.COMQueryInterface

function TnevDocumentContainer.DoGetControlImg(const aControl: TnevControlInfo;
  var theImageInfo: TnevControlImageInfo): Boolean;
//#UC START# *4E5E386A0119_47F0870E0034_var*
//#UC END# *4E5E386A0119_47F0870E0034_var*
begin
//#UC START# *4E5E386A0119_47F0870E0034_impl*
 if (f_TextSource = nil) then
  Result := inherited DoGetControlImg(aControl, theImageInfo)
 else
  Result := f_TextSource.GetControlImg(aControl, theImageInfo);
//#UC END# *4E5E386A0119_47F0870E0034_impl*
end;//TnevDocumentContainer.DoGetControlImg

procedure TnevDocumentContainer.ClearFields;
 {-}
begin
 Document := nil;
 f_TextSource := nil;
 inherited;
end;//TnevDocumentContainer.ClearFields

{iterator} function TnevDocumentContainer.Iterate(anAction: InevSubList_Iterate_Action;
  const aBlock: IUnknown = nil;
  const aMessage: Il3CString = nil): Integer;
//#UC START# *4BB07BFC00F8_47F0870E0034_var*
var
 l_First    : Integer;
 l_Progress : Il3Progress;

 function _DoSub(const aSub: InevTag; anIndex: Integer): Boolean;
 var
  l_Sub    : IevSub;
  l_Exists : Boolean;
 begin//_DoSub
  if (l_Progress <> nil) then
   l_Progress.Progress(anIndex);
  l_First := -1;
  with aSub.Attr[k2_tiHandle] do
   if IsValid then begin
    l_Sub := pm_GetSub(AsLong);
    try
     l_Exists := l_Sub.Exists;
     Result := anAction(l_Sub, 0);
     if Result AND (l_Exists AND not l_Sub.Exists) then begin
      l_First := anIndex;
      Result := false;
     end;//Result..
    finally
     l_Sub := nil;
    end;//try..finally
   end else
    Result := true;
 end;//_DoSub

var
 l_Break  : Boolean;
 l_Action : InevRangePrim_Iterate_Action;

 function _DoBlock(const aBlock: InevRange; aBlockIndex: Integer): Boolean;

  function _DoSub(const aSub: InevTag; aSubIndex: Integer): Boolean;
  begin//_DoSub
   Result := anAction(pm_GetSub(aSub.IntA[k2_tiHandle]), aSubIndex);
   if not Result then
    l_Break := true;
  end;//_DoSub

 var
  l_Tag    : InevTag;
  l_Start  : InevBasePoint;
  l_Finish : InevBasePoint;
 begin//_DoBlock
  if l_Break then
   Result := false
  else
  begin
   Result := true;
   l_Tag := aBlock.Obj^;
   if l_Tag.InheritsFrom(k2_idBlock) then
   begin
    // обрабатываем сам блок
    aBlock.GetBorderPoints(l_Start, l_Finish);
    if (l_Start = nil) OR (l_Start.Position <= 1) then
     Result := anAction(pm_GetSub(l_Tag.IntA[k2_tiHandle]), 0);
   end;//l_Tag.InheritsFrom(k2_idBlock)
   if Result then
   begin
    if l_Tag.InheritsFrom(k2_idParaList) then
     aBlock.Iterate(l_Action)
    else
     with l_Tag.rAtomEx([k2_tiSubs, k2_tiChildren, k2_tiHandle, ev_sbtSub]) do
      if IsValid then
       IterateChildrenF(k2L2TIA(@_DoSub));
   end;//Result
   if l_Break then
    Result := false;
   if not Result then
    l_Break := true;
  end;//l_Break
 end;//_DoBlock

var
 l_Range  : IevRange;
 l_Block  : InevRange;
 l_Start  : InevBasePoint;
 l_Finish : InevBasePoint;
//#UC END# *4BB07BFC00F8_47F0870E0034_var*
begin
//#UC START# *4BB07BFC00F8_47F0870E0034_impl*
 if (TextSource = nil) then
  l_Progress := nil
 else
  l_Progress := TextSource.Progress;
 if (aBlock = nil) then
 begin
  l_First := 0;
  with Document.rAtomEx([k2_tiSubs, k2_tiChildren, k2_tiHandle, ev_sbtSub]) do
  begin
   if (l_Progress <> nil) then
    l_Progress.Start(ChildrenCount, aMessage);
   try
    while (l_First >= 0) do
    begin
     if IterateChildrenF(k2L2TIA(@_DoSub), l_First) < 0 then
      break;
    end;//while (l_First >= 0)
   finally
    if (l_Progress <> nil) then
     l_Progress.Finish;
   end;//try..finally
  end;//Document.rAtomEx([k2_tiSubs, k2_tiChildren, k2_tiHandle, ev_sbtSub])
 end//aBlock = nil
 else
 begin
  if Supports(aBlock, IevRange, l_Range) then
   try
    l_Block := l_Range.GetBlock;
    try
     if l_Block.Obj.InheritsFrom(k2_idDocument) then
     begin
      l_Block.GetBorderPoints(l_Start, l_Finish);
      if (l_Start = nil) OR l_Start.AtStart then
       if not anAction(pm_GetSub(0), 0) then
        Exit;
     end;//l_Block.Target.InheritsFrom(k2_idDocument)
     l_Break := false;
     l_Action := evL2TSA(@_DoBlock);
     try
      l_Block.Iterate(l_Action{, l_Progress, aMessage});
    finally
      evFreeTSA(l_Action);
     end;//try..finally
    finally
     l_Block := nil;
    end;//try..finally
   finally
    l_Range := nil;
   end;//try..finally
 end;//aBlock = nil
//#UC END# *4BB07BFC00F8_47F0870E0034_impl*
end;//TnevDocumentContainer.Iterate

{iterator} function TnevDocumentContainer.IterateF(anAction: InevSubList_Iterate_Action;
  const aBlock: IUnknown = nil;
  const aMessage: Il3CString = nil): Integer;
var
 Hack : Pointer absolute anAction;
begin
 try
  Result := Iterate(anAction, aBlock, aMessage);
 finally
  l3FreeLocalStub(Hack);
 end;//try..finally
end;

end.