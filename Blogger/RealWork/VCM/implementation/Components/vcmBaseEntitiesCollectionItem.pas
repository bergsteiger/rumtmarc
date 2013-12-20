unit vcmBaseEntitiesCollectionItem;
{* Элемент коллекции сущностей. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmBaseEntitiesCollectionItem - }
{ Начат: 19.11.2003 10:37 }
{ $Id: vcmBaseEntitiesCollectionItem.pas,v 1.53 2013/07/01 12:28:52 morozov Exp $ }

// $Log: vcmBaseEntitiesCollectionItem.pas,v $
// Revision 1.53  2013/07/01 12:28:52  morozov
// {RequestLink:382416588}
//
// Revision 1.52  2013/04/25 14:22:38  lulin
// - портируем.
//
// Revision 1.51  2012/04/13 19:00:43  lulin
// {RequestLink:237994598}
//
// Revision 1.50  2012/04/13 18:22:34  lulin
// {RequestLink:237994598}
//
// Revision 1.49  2011/12/08 16:30:03  lulin
// {RequestLink:273590436}
// - чистка кода.
//
// Revision 1.48  2011/07/29 15:08:37  lulin
// {RequestLink:209585097}.
//
// Revision 1.47  2011/01/24 16:11:50  lulin
// {RequestLink:236719144}.
//
// Revision 1.46  2009/11/12 18:07:34  lulin
// - убираем ненужные возвращаемые значения.
//
// Revision 1.45  2009/10/12 11:27:15  lulin
// - коммитим после падения CVS.
//
// Revision 1.45  2009/10/08 12:46:44  lulin
// - чистка кода.
//
// Revision 1.44  2009/09/17 09:47:24  lulin
// - операции модуля публикуем в run-time, а не в формах.
//
// Revision 1.43  2009/08/28 17:15:47  lulin
// - начинаем публикацию и описание внутренних операций.
//
// Revision 1.42  2009/02/20 15:19:00  lulin
// - <K>: 136941122.
//
// Revision 1.41  2009/02/20 13:44:19  lulin
// - <K>: 136941122.
//
// Revision 1.40  2009/02/12 17:09:15  lulin
// - <K>: 135604584. Выделен модуль с внутренними константами.
//
// Revision 1.39  2009/02/11 15:19:45  lulin
// - чистка кода.
//
// Revision 1.38  2009/02/04 15:33:55  lulin
// - исправляем ошибку ненахождения методов. http://mdp.garant.ru/pages/viewpage.action?pageId=136260278&focusedCommentId=136260289#comment-136260289
//
// Revision 1.37  2007/08/08 08:17:22  lulin
// - по-другому подкладываем отбаботчики от формы - чтобы не было коллизий с обработчиками ит контролов.
//
// Revision 1.36  2007/06/26 09:42:36  mmorozov
// - hint fix;
//
// Revision 1.35  2007/01/26 15:34:42  lulin
// - выделяем сущности с ТОЛЬКО внутренними операциями.
//
// Revision 1.34  2007/01/26 15:09:03  lulin
// - cleanup.
//
// Revision 1.33  2006/03/24 09:44:54  lulin
// - cleanup: не пишем пустые коллекции.
//
// Revision 1.32  2006/03/15 14:37:32  lulin
// - bug fix: писались не все сущности.
//
// Revision 1.31  2006/03/14 10:10:29  lulin
// - bug fix: не очищались провисшие ссылки - в результате была вероятность AV.
//
// Revision 1.30  2006/03/13 11:59:19  lulin
// - очищаем закешированные значения - чтобы взять актуальные названия элементов.
//
// Revision 1.29  2006/01/24 11:56:13  mmorozov
// - bugfix: в cleanup не чистились Options в результате забирали из кеша со старым значением;
//
// Revision 1.28  2006/01/20 11:33:06  mmorozov
// 1. Нельзя было на панель инструментов положить неколько операций из разных сущностей с одинаковыми именами;
// 2. Если в панели инструментов встречаются операции с одинаковыми названиями, то им автоматически добавляется суффикс в виде названия сущности;
// 3. Появилась возможность указать, что контекстные операции сущности должны показываться в отдельном пункте меню;
// 3.
//
// Revision 1.27  2005/07/14 16:39:45  lulin
// - new behavior: в run-time получаем ID сущности и модуля по их имени из информации, содержащейся в MenuManager'е.
//
// Revision 1.26  2005/01/27 13:43:28  lulin
// - bug fix: не все контролы отвязывались от операций (CQ OIT5-11924).
//
// Revision 1.25  2005/01/21 11:10:05  lulin
// - new behavior: не сохраняем операции, привязанные только к контролам.
//
// Revision 1.24  2005/01/20 15:43:26  lulin
// - new behavior: рисуем * перед сущностями с внутренними операциями и ! перед сущностями без операций.
//
// Revision 1.23  2004/11/25 11:59:01  lulin
// - new behavior: теперь контролы имеют возможность публиковать свои методы GetTarget.
//
// Revision 1.22  2004/11/25 11:28:29  lulin
// - new unit: vcmTargetedControlsCollection.
// - new unit: vcmTargetedControlsCollectionItem.
//
// Revision 1.21  2004/11/25 11:06:02  lulin
// - new method: IvcmOperationsPublisher._PublishEntity.
//
// Revision 1.20  2004/11/25 10:44:11  lulin
// - rename type: _TvcmExecuteEvent -> TvcmControlExecuteEvent.
// - rename type: _TvcmTestEvent -> TvcmControlTestEvent.
// - new type: TvcmControlGetTargetEvent.
//
// Revision 1.19  2004/11/24 12:35:55  lulin
// - new behavior: обработчики операций от контролов теперь привязываются к операциям.
//
// Revision 1.18  2004/09/22 15:50:10  lulin
// - cleanup.
//
// Revision 1.17  2004/09/22 06:12:34  lulin
// - оптимизация - методу TvcmBaseCollection.FindItemByID придана память о последнем найденном элементе.
//
// Revision 1.16  2004/09/22 05:41:24  lulin
// - оптимизация - убраны код и данные, не используемые в Run-Time.
//
// Revision 1.15  2004/09/21 16:23:31  mmorozov
// new: возвращает интерфейс IvcmIdentifiedUserFriendlyControl;
//
// Revision 1.14  2004/09/13 09:25:32  lulin
// - bug fix.
//
// Revision 1.13  2004/09/11 11:55:47  lulin
// - cleanup: избавляемся от прямого использования деструкторов.
//
// Revision 1.12  2004/09/10 16:47:15  lulin
// - оптимизация - удалось избежать повторного пересоздания OpDef.
//
// Revision 1.11  2004/09/10 16:21:46  lulin
// - оптимизация - кешируем OpDef и передаем ссылку на OperationItem, а не на кучу параметров.
//
// Revision 1.10  2004/09/10 14:04:04  lulin
// - оптимизация - кешируем EntityDef и передаем ссылку на EntityItem, а не на кучу параметров.
//
// Revision 1.9  2004/02/27 19:22:16  law
// - bug fix: поправлена обработка ShortCut'ов для операций модулей.
// - bug fix: поправдена ДВОЙНАЯ обработка ShortCut'ов в случае редактора.
//
// Revision 1.8  2004/02/04 11:23:51  am
// change: property _ToolbarPos имеет теперь default vcm_tbpTop
//
// Revision 1.7  2004/02/02 13:30:26  am
// new: более одного тулбара у формы
//
// Revision 1.6  2004/01/29 15:13:23  law
// - bug fix: EntityFormDef брался от "неправильной" формы.
//
// Revision 1.5  2004/01/22 18:56:11  law
// - remove props: IvcmEntityDef.OwnerID, OwnerCaption.
// - new prop: IvcmEntityDef.OwnerDef.
//
// Revision 1.4  2004/01/22 17:31:20  law
// - new props: IvcmEntityDef.OnwerID, OnwerCaption.
//
// Revision 1.3  2003/11/30 12:12:29  law
// - cleanup: из централизованного хранилища убрано свойство Controls.
//
// Revision 1.2  2003/11/24 17:35:21  law
// - new method: TvcmCustomEntities._RegisterInRep.
//
// Revision 1.1  2003/11/19 11:38:24  law
// - new behavior: регистрируем все сущности и операции в MenuManager'е для дальнейшей централизации редактирования. Само редактирование пока не доделано.
//

{$Include vcmDefine.inc }

interface

{$IfNDef NoVCM}
uses
  Classes,

  vcmUserControls,
  vcmInterfaces,
  vcmExternalInterfaces,
  vcmBase,

  vcmBaseCollectionItem,
  vcmBaseCollection,
  vcmBaseOperationsCollection,
  vcmControlsCollection,
  vcmRepositoryEx,
  vcmTargetedControlsCollection
  ;

type
  TvcmGetTargetEvent = function (aControl      : TComponent;
                                 aX, aY        : Integer;
                                 out theTarget : IUnknown): Boolean of object;

  TvcmBaseEntitiesCollectionItem = class(TvcmBaseCollectionItem)
   {* Элемент коллекции сущностей. }
    protected
    // property fields
      f_EntityID    : Integer;
    private
    // property fields
      {$IfDef DesignTimeLibrary}
      //f_CategoryID  : Integer;
      {$EndIf DesignTimeLibrary}
      //f_Category    : AnsiString;
      f_Operations  : TvcmBaseOperationsCollection;
      f_Controls    : TvcmTargetedControlsCollection;
      f_OnGetTarget : TvcmGetTargetEvent;
      f_ToolbarPos  : TvcmToolbarPos;
      f_EntityDef   : IvcmEntityDef;
      f_Options     : TvcmEntityOperationsOptions;
      f_ContextMenuWeight : Integer;
    protected
    // property methods
      function  pm_GetOperations: TvcmBaseOperationsCollection;
      procedure pm_SetOperations(aValue: TvcmBaseOperationsCollection);
      function  OperationsStored: Boolean;
        virtual;
        {-}
      function  pm_GetControls: TvcmTargetedControlsCollection;
      procedure pm_SetControls(aValue: TvcmTargetedControlsCollection);
        {-}
      function  ControlsStored: Boolean;
        {-}
(*      procedure pm_SetCategory(const aValue: AnsiString);
        {-}*)
      function  pm_GetEntityDef: IvcmEntityDef;
        virtual;
        {-}
      function  pm_GetSupportedBy(aControl: TComponent): Boolean;
      procedure pm_SetSupportedBy(aControl: TComponent; aValue : Boolean);
        {-}
      function pm_GetContextMenuWeight: Integer;
      procedure pm_SetContextMenuWeight(aValue: Integer);
    protected
    // internal methods
      function  IDRep: TvcmRep;
        virtual;
        {-}
      procedure ChangeName(const anOld, aNew: AnsiString);
        override;
        {* - вызывается при изменении имени. }
      procedure ChangeCaption(const anOld, aNew: AnsiString);
        override;
        {* - вызывается при изменении пользовательского имени. }
      procedure Cleanup;
        override;
        {-}
      procedure BeforeAddToCache;
        override;
        {-}
    public
    // public methods
      constructor Create(Collection: TCollection);
        override;
        {-}
      function  MakeID(const aName: AnsiString): Integer;
        override;
        {-}
      class function GetOperationsCollectionClass: RvcmBaseCollection;
        virtual;
        {-}
      procedure Assign(P: TPersistent);
        override;
        {-}
      function GetID: Integer;
        override;
        {-}
      function GetEntityForControl(aControl : TComponent;
                                   aX, aY   : Integer): IvcmEntity;
        {-}
      procedure Operation(aControl            : TComponent;
                         const aTarget       : IUnknown;
                         const anOperationID : TvcmControlID;
                         aMode               : TvcmOperationMode;
                         const aParams       : IvcmParams);
        {* - выполняет операцию сущности. }
      function  IsFormItem: Boolean;
        {-}
      function  SupportedExBy(aControl: TComponent): Integer;
        {-}
      function  QueryInterface(const IID: TGUID; out Obj): HResult;
        override;
        {-}
      {$IfDef DesignTimeLibrary}
      function  HasInternalOperations: Boolean;
        {-}
      function  HasOnlyInternalOperations: Boolean;
        {-}
      {$EndIf  DesignTimeLibrary}
      procedure RegisterInRep;
        {-}
      procedure PublishEntity(const aControl : TComponent;
                              aGetTarget     : TvcmControlGetTargetEvent);
        {* - опубликовать сущность. }
      procedure PublishFormEntity(aGetTarget     : TvcmGetTargetEvent);
        {* - опубликовать сущность. }
      procedure PublishOp(const aControl    : TComponent;
                          const anOperation : TvcmString;
                          anExecute         : TvcmControlExecuteEvent;
                          aTest             : TvcmControlTestEvent;
                          aGetState         : TvcmControlGetStateEvent);
        overload;
        {* - опубликовать операцию. }
      procedure PublishOp(const aControl    : TComponent;
                          const anOperation : TvcmString;
                          anExecute         : TvcmExecuteEvent;
                          aTest             : TvcmControlTestEvent;
                          aGetState         : TvcmControlGetStateEvent);
        overload;
        {* - опубликовать операцию. }
      function IsItemCaptionUnique(const aItem: TvcmBaseCollectionItem): Boolean;
        {* - поиск операции по названию. }
    public
    // public properties
      property EntityID: Integer
        read f_EntityID;
        {* - идентификатор сущности. }
(*      {$IfDef DesignTimeLibrary}
      property CategoryID: Integer
        read f_CategoryID;
        {* - идентификатор категории сущности. }
      {$EndIf DesignTimeLibrary}*)  
      property EntityDef: IvcmEntityDef
        read pm_GetEntityDef;
        {* - описатель сущности. }
      property SupportedBy[aControl: TComponent]: Boolean
        read pm_GetSupportedBy
        write pm_SetSupportedBy;
        {-}
      property Controls: TvcmTargetedControlsCollection
        read pm_GetControls
        write pm_SetControls
        stored ControlsStored;
        {* - операции сущности. }
      property Options: TvcmEntityOperationsOptions
        read f_Options
        write f_Options
        default [];
        {-}
{      property Category: AnsiString
        read f_Category
        write pm_SetCategory;}
        {* - категория сущности. }
      property OnGetTarget : TvcmGetTargetEvent
        read f_OnGetTarget
        write f_OnGetTarget;
        {-}
      property ContextMenuWeight : Integer
        read pm_GetContextMenuWeight
        write pm_SetContextMenuWeight;
        {-}
    published
    // published properties
      property Operations: TvcmBaseOperationsCollection
        read pm_GetOperations
        write pm_SetOperations
        stored OperationsStored;
        {* - операции сущности. }
      property ToolbarPos: TvcmToolbarPos
        read f_ToolbarPos
        write f_ToolbarPos
        default vcm_tbpTop;
        {-}
  end;//TvcmBaseEntitiesCollectionItem
{$EndIf NoVCM}

implementation

{$IfNDef NoVCM}
uses
  SysUtils,
  Forms,

  vcmBaseEntityDef,
  vcmBaseOperationsCollectionItem,
  vcmOperationableIdentifiedUserFriendly,
  vcmControlsCollectionItem,
  vcmEntitiesCollectionItemEntity,
  vcmForm,
  vcmInternalConst
  ;

// start class TvcmBaseEntitiesCollectionItem

constructor TvcmBaseEntitiesCollectionItem.Create(Collection: TCollection);
  //override;
  {-}
begin
 inherited;
 f_ContextMenuWeight := 0;
 f_Operations := TvcmBaseOperationsCollection(GetOperationsCollectionClass.Create(Self));
 f_Controls := TvcmTargetedControlsCollection.Create(Self);
 f_ToolbarPos := vcm_tbpTop;
end;

procedure TvcmBaseEntitiesCollectionItem.Cleanup;
  //override;
  {-}
var
 l_OpHolder : IvcmOperationsHolder;
begin
 f_Options := [];
 if Supports(f_EntityDef, IvcmOperationsHolder, l_OpHolder) then
  try
   l_OpHolder.ClearOps;
  finally
   l_OpHolder := nil;
  end;//try..finally
 f_EntityDef := nil;
 FreeAndNil(f_Operations);
 FreeAndNil(f_Controls);
 // - это надо ПОЗЖЕ операций !!!
 inherited;
end;

procedure TvcmBaseEntitiesCollectionItem.BeforeAddToCache;
  //override;
  {-}
begin
 inherited;
 f_EntityID := 0;
 {$IfDef DesignTimeLibrary}
 //f_CategoryID := 0;
 {$EndIf DesignTimeLibrary}
 //f_Category := '';
 f_OnGetTarget := nil;
end;

class function TvcmBaseEntitiesCollectionItem.GetOperationsCollectionClass: RvcmBaseCollection;
  //virtual;
  {-}
begin
 Result := TvcmBaseOperationsCollection;
end;
  
procedure TvcmBaseEntitiesCollectionItem.Assign(P: TPersistent);
  //override;
  {-}
begin
 inherited;
 if (P Is TvcmBaseEntitiesCollectionItem) then begin
  Operations := TvcmBaseEntitiesCollectionItem(P).Operations;
  Controls := TvcmBaseEntitiesCollectionItem(P).Controls;
 end;//P Is TvcmBaseEntitiesCollectionItem
end;

function TvcmBaseEntitiesCollectionItem.SupportedExBy(aControl: TComponent): Integer;
  {-}
var
 l_Index  : Integer;
begin
 Result := -1;
 with Controls do
  for l_Index := 0 to Pred(Count) do begin
   with TvcmControlsCollectionItem(Items[l_Index]) do
    if (Control = aControl) then begin
     Result := l_Index;
     break;
    end;//Control = aControl
  end;//for l_Index
end;

function TvcmBaseEntitiesCollectionItem.QueryInterface(const IID: TGUID; out Obj): HResult;
  //override;
  {-}
begin
 if IsEqualGUID(IID, IvcmUserFriendlyControl) then
 begin
  Result := S_Ok;
  IvcmUserFriendlyControl(Obj) := EntityDef;
 end
 else
 if IsEqualGUID(IID, IvcmIdentifiedUserFriendlyControl) then
 begin
  Result := S_Ok;
  IvcmIdentifiedUserFriendlyControl(Obj) := EntityDef;
 end
 else
 if IsEqualGUID(IID, IvcmEntityDef) then
 begin
  Result := S_Ok;
  IvcmEntityDef(Obj) := EntityDef;
 end
 else
  Result := inherited QueryInterface(IID, Obj);
end;

procedure TvcmBaseEntitiesCollectionItem.RegisterInRep;
  {-}
begin
 if (Operations <> nil) then
  Operations.RegisterInRep;
end;

{$IfDef DesignTimeLibrary}
function  TvcmBaseEntitiesCollectionItem.HasInternalOperations: Boolean;
  {-}
var
 l_Index : Integer;
begin
 Result := false;
 if (Operations <> nil) then
  for l_Index := 0 to Pred(Operations.Count) do
   if (TvcmBaseOperationsCollectionItem(Operations.Items[l_Index]).OperationType in
      vcm_InternalOperations) then
   begin
    Result := true;
    break;
   end;//..vcm_InternalOperations..
end;

function  TvcmBaseEntitiesCollectionItem.HasOnlyInternalOperations: Boolean;
  {-}
var
 l_Index : Integer;
begin
 Result := true;
 if (Operations <> nil) then
  for l_Index := 0 to Pred(Operations.Count) do
   if not (TvcmBaseOperationsCollectionItem(Operations.Items[l_Index]).OperationType in
      vcm_InternalOperations) then
   begin
    Result := false;
    break;
   end;//..vcm_InternalOperations..
end;
{$EndIf DesignTimeLibrary}

procedure TvcmBaseEntitiesCollectionItem.PublishEntity(const aControl : TComponent;
                                                       aGetTarget     : TvcmControlGetTargetEvent);
  {* - опубликовать сущность. }
begin
 SupportedBy[aControl] := true;
 Controls.PublishEntity(aControl, aGetTarget);
end;

procedure TvcmBaseEntitiesCollectionItem.PublishFormEntity(aGetTarget     : TvcmGetTargetEvent);
  {* - опубликовать сущность. }
begin
 OnGetTarget := aGetTarget;
end;

function TvcmBaseEntitiesCollectionItem.IsItemCaptionUnique(const aItem: TvcmBaseCollectionItem): Boolean;
  {* - поиск операции по названию. }
var
 l_Index : Integer;
begin
 Result := True;
 for l_Index := 0 to Pred(f_Operations.Count) do
  if (aItem <> f_Operations.Items[l_Index]) and
   (f_Operations.Items[l_Index].Caption = aItem.Caption) then
  begin
   Result := False;
   Break;
  end;//if f_Operations.Items[l_Index].
end;//IsUniqueOperationb

procedure TvcmBaseEntitiesCollectionItem.PublishOp(const aControl    : TComponent;
                                                   const anOperation : TvcmString;
                                                   anExecute         : TvcmControlExecuteEvent;
                                                   aTest             : TvcmControlTestEvent;
                                                   aGetState         : TvcmControlGetStateEvent);
  {* - опубликовать операцию. }
begin
 if (aControl <> nil) then
  if not (aControl Is TvcmForm) then
   SupportedBy[aControl] := true;
 f_Operations.PublishOp(aControl, anOperation, anExecute, aTest, aGetState);
end;

procedure TvcmBaseEntitiesCollectionItem.PublishOp(const aControl    : TComponent;
                                                   const anOperation : TvcmString;
                                                   anExecute         : TvcmExecuteEvent;
                                                   aTest             : TvcmControlTestEvent;
                                                   aGetState         : TvcmControlGetStateEvent);
  //overload;
  {* - опубликовать операцию. }
begin
 if not (aControl Is TvcmForm) then
  SupportedBy[aControl] := true;
 f_Operations.PublishOpWithResult(aControl, anOperation, anExecute, aTest, aGetState);
end;

function TvcmBaseEntitiesCollectionItem.pm_GetSupportedBy(aControl: TComponent): Boolean;
  {-}
begin
 with Controls do
  if (Controls.Count = 0) AND (aControl = nil) then
   Result := true
  else
   Result := (SupportedExBy(aControl) >= 0);
end;

procedure TvcmBaseEntitiesCollectionItem.pm_SetSupportedBy(aControl: TComponent; aValue : Boolean);
  {-}
var
 l_Index : Integer;  
begin
 l_Index := SupportedExBy(aControl);
 if (aValue) then
 begin
  if (l_Index < 0) then
   TvcmControlsCollectionItem(Controls.Add).Control := aControl;
 end//aValue
 else
 begin
  if (Operations <> nil) then
   Operations.UnlinkControl(aControl);
  if (l_Index >= 0) then
   Controls.Delete(l_Index);
 end;//aValue
end;

function TvcmBaseEntitiesCollectionItem.pm_GetContextMenuWeight: Integer;
begin
 Result := f_ContextMenuWeight;
end;

procedure TvcmBaseEntitiesCollectionItem.pm_SetContextMenuWeight(aValue: Integer);
begin
 f_ContextMenuWeight := aValue;
end;


function TvcmBaseEntitiesCollectionItem.GetID: Integer;
  //override;
  {-}
begin
 Result := EntityID;
end;

function TvcmBaseEntitiesCollectionItem.GetEntityForControl(aControl : TComponent;
                                                        aX, aY   : Integer): IvcmEntity;
  {-}

var
 l_Target : IUnknown;

 function _MakeEntity: IvcmEntity;
 var
  l_Entity : TvcmEntitiesCollectionItemEntity;
 begin//_MakeEntity
  if (l_Target = nil) then
   l_Entity := TvcmEntitiesCollectionItemEntity.Create(aControl, Self)
  else
   l_Entity := TvcmEntitiesCollectionItemTargetedEntity.Create(aControl, Self, l_Target);
  try
   Result := l_Entity;
  finally
   vcmFree(l_Entity);
  end;//try..finally
 end;//_MakeEntity

begin
 Result := nil;
 if SupportedBy[aControl] then
 begin
  if ((aX <> High(aX)) OR (aY <> High(aY))) then
  begin
   if (Controls <> nil) AND
      Controls.GetTargetForControl(aControl, Point(aX, aY), l_Target) then
   begin
    if (l_Target <> nil) then
     Result := _MakeEntity;
    Exit;
   end
   else   
   if Assigned(f_OnGetTarget) then
   begin
    if f_OnGetTarget(aControl, aX, aY, l_Target) then
    begin
     if (l_Target <> nil) then
      Result := _MakeEntity;
     Exit;
    end;//f_OnGetTarget
   end;//Assigned(f_OnGetTarget)
  end;//aX <> High(aX)
  Result := _MakeEntity;
 end;//SupportedBy(aControl)
end;

procedure TvcmBaseEntitiesCollectionItem.Operation(aControl            : TComponent;
                                              const aTarget       : IUnknown;
                                              const anOperationID : TvcmControlID;
                                              aMode               : TvcmOperationMode;
                                              const aParams       : IvcmParams);
  {* - выполняет операцию сущности. }
begin
 if (Operations <> nil) then
  Operations.Operation(aControl, aTarget, anOperationID, aMode, aParams); 
end;

function TvcmBaseEntitiesCollectionItem.IsFormItem: Boolean;
  {-}
begin
 Result := Controls.LinkedToForm;
end;

function TvcmBaseEntitiesCollectionItem.pm_GetOperations: TvcmBaseOperationsCollection;
  {-}
begin
 Result := f_Operations;
end;

procedure TvcmBaseEntitiesCollectionItem.pm_SetOperations(aValue: TvcmBaseOperationsCollection);
  {-}
begin
 f_Operations.Assign(aValue);
end;

function TvcmBaseEntitiesCollectionItem.OperationsStored: Boolean;
  //virtual;
  {-}
begin
 Result := (Operations <> nil) AND (Operations.Count > 0);
end;

function TvcmBaseEntitiesCollectionItem.pm_GetControls: TvcmTargetedControlsCollection;
  {-}
begin
 Result := f_Controls;
end;

procedure TvcmBaseEntitiesCollectionItem.pm_SetControls(aValue: TvcmTargetedControlsCollection);
  {-}
begin
 f_Controls.Assign(aValue);
end;

function TvcmBaseEntitiesCollectionItem.ControlsStored: Boolean;
  {-}
begin
 Result := (f_Controls <> nil) AND (f_Controls.Count > 0);
end;

(*procedure TvcmBaseEntitiesCollectionItem.pm_SetCategory(const aValue: AnsiString);
  {-}
begin
 if (f_Category <> aValue) then begin
  f_Category := aValue;
  {$IfDef DesignTimeLibrary}
  f_CategoryID := vcmGetID(vcm_repEntityCategory, aValue);
  {$EndIf DesignTimeLibrary}
 end;//f_Category <> aValue
end;*)

function TvcmBaseEntitiesCollectionItem.pm_GetEntityDef: IvcmEntityDef;
  {-}
begin
 if (f_EntityDef = nil) then
  f_EntityDef := TvcmBaseEntityDef.Make(Self);
 Result := f_EntityDef;
end;

function TvcmBaseEntitiesCollectionItem.IDRep: TvcmRep;
  //virtual;
  {-}
begin
 Result := vcm_repEntity;
end;

function TvcmBaseEntitiesCollectionItem.MakeID(const aName: AnsiString): Integer;
  //override;
  {-}
begin
 Result := vcmGetID(IDRep, aName);
end;

procedure TvcmBaseEntitiesCollectionItem.ChangeName(const anOld, aNew: AnsiString);
  //override;
  {* - вызывается при изменении имени. Для перекрытия в потомках. }
begin
 inherited;
 f_EntityID := MakeID(aNew);
end;

procedure TvcmBaseEntitiesCollectionItem.ChangeCaption(const anOld, aNew: AnsiString);
  //override;
  {* - вызывается при изменении пользовательского имени. }
begin
 inherited;
 {$IfDef DesignTimeLibrary}
 vcmGetID(vcm_repEntityCaption, aNew);
 {$EndIf DesignTimeLibrary}
end;
{$EndIf NoVCM}

end.

