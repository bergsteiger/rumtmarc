unit vcmBaseEntitiesCollection;
{* Коллекция сущностей. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmBaseEntitiesCollection - }
{ Начат: 19.11.2003 10:36 }
{ $Id: vcmBaseEntitiesCollection.pas,v 1.43 2013/07/01 12:28:52 morozov Exp $ }

// $Log: vcmBaseEntitiesCollection.pas,v $
// Revision 1.43  2013/07/01 12:28:52  morozov
// {RequestLink:382416588}
//
// Revision 1.42  2012/08/07 17:07:16  lulin
// {RequestLink:372998156}
//
// Revision 1.41  2012/08/07 15:15:12  lulin
// {RequestLink:358352265}
//
// Revision 1.40  2012/08/07 14:37:42  lulin
// {RequestLink:358352265}
//
// Revision 1.39  2012/04/13 18:22:34  lulin
// {RequestLink:237994598}
//
// Revision 1.38  2011/01/24 16:51:02  lulin
// {RequestLink:236719144}.
// - исправления насчёт отвалившихся GetState.
//
// Revision 1.37  2011/01/24 16:11:50  lulin
// {RequestLink:236719144}.
//
// Revision 1.36  2011/01/19 15:05:10  lulin
// {RequestLink:248195582}.
// - сделано удаление комментариев из списка комментариев.
//
// Revision 1.35  2010/07/16 16:07:06  lulin
// {RequestLink:197496539}.
//
// Revision 1.34  2010/07/15 15:55:05  lulin
// {RequestLink:197496539}.
//
// Revision 1.33  2009/10/23 12:46:05  lulin
// {RequestLink:167353056}. Пляски с бубном вокруг тулбаров.
//
// Revision 1.32  2009/10/12 11:27:15  lulin
// - коммитим после падения CVS.
//
// Revision 1.32  2009/10/08 12:46:44  lulin
// - чистка кода.
//
// Revision 1.31  2009/08/28 17:15:47  lulin
// - начинаем публикацию и описание внутренних операций.
//
// Revision 1.30  2009/02/11 15:19:45  lulin
// - чистка кода.
//
// Revision 1.29  2009/02/04 15:33:55  lulin
// - исправляем ошибку ненахождения методов. http://mdp.garant.ru/pages/viewpage.action?pageId=136260278&focusedCommentId=136260289#comment-136260289
//
// Revision 1.28  2008/12/25 13:04:37  lulin
// - <K>: 133891241.
//
// Revision 1.27  2008/03/19 14:23:44  lulin
// - cleanup.
//
// Revision 1.26  2008/01/31 18:53:33  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.25  2007/08/07 17:33:54  lulin
// - публикуем сущность, даже если контрол не задан.
//
// Revision 1.24  2007/02/27 14:14:49  lulin
// - для привязывания сущности к контролу используем ее идентификатор, а не имя.
//
// Revision 1.23  2007/02/27 12:08:52  lulin
// - cleanup.
//
// Revision 1.22  2006/03/16 11:30:21  lulin
// - cleanup.
//
// Revision 1.21  2006/03/16 11:28:51  lulin
// - вычищены имена сущностей и операций - перешли на их идентификаторы.
//
// Revision 1.20  2006/01/20 11:33:06  mmorozov
// 1. Нельзя было на панель инструментов положить неколько операций из разных сущностей с одинаковыми именами;
// 2. Если в панели инструментов встречаются операции с одинаковыми названиями, то им автоматически добавляется суффикс в виде названия сущности;
// 3. Появилась возможность указать, что контекстные операции сущности должны показываться в отдельном пункте меню;
// 3.
//
// Revision 1.19  2005/06/27 07:16:17  mmorozov
// change: сигнатура _LinkControl (TvcmBaseEntitiesCollection);
// change: в методе _LinkControl не происходит работа с интерфейсом IvcmSettingsSource;
//
// Revision 1.18  2005/06/23 16:00:44  mmorozov
// change: сигнатура _LinkControl;
//
// Revision 1.17  2005/01/27 13:43:28  lulin
// - bug fix: не все контролы отвязывались от операций (CQ OIT5-11924).
//
// Revision 1.16  2005/01/27 10:13:04  lulin
// - new behavior: отвязываем от сущностей все вложенные компоненты.
//
// Revision 1.15  2004/12/23 13:45:38  am
// new: _UnlinkControlFromEntity - метод, парный _LinkControlToEntity
//
// Revision 1.14  2004/12/17 12:43:20  mmorozov
// new: в _LinkControl устанавливаем компоненту IvcmSettings, если он поддерживает IvcmSettingsSource;
//
// Revision 1.13  2004/11/25 11:06:02  lulin
// - new method: IvcmOperationsPublisher._PublishEntity.
//
// Revision 1.12  2004/11/25 10:44:11  lulin
// - rename type: _TvcmExecuteEvent -> TvcmControlExecuteEvent.
// - rename type: _TvcmTestEvent -> TvcmControlTestEvent.
// - new type: TvcmControlGetTargetEvent.
//
// Revision 1.11  2004/11/24 12:35:55  lulin
// - new behavior: обработчики операций от контролов теперь привязываются к операциям.
//
// Revision 1.10  2004/11/22 16:23:10  lulin
// - new behavior: вчерне сделал механизм вытаскивания операций из контролов, пока эти операции никуда не попадают.
//
// Revision 1.9  2004/11/17 18:56:05  lulin
// - new method: TvcmBaseEntitiesCollection._UnlinkControl.
//
// Revision 1.8  2004/09/27 16:26:25  lulin
// - new behavior: в редакторе свойств для сущностей и операций показываем дополнительные параметры.
//
// Revision 1.7  2004/09/22 06:12:34  lulin
// - оптимизация - методу TvcmBaseCollection.FindItemByID придана память о последнем найденном элементе.
//
// Revision 1.6  2004/09/22 05:41:24  lulin
// - оптимизация - убраны код и данные, не используемые в Run-Time.
//
// Revision 1.5  2004/06/02 10:20:43  law
// - удален конструктор Tl3VList.MakeIUnknown - пользуйтесь _Tl3InterfaceList.Make.
//
// Revision 1.4  2004/05/18 14:50:58  law
// - new method: TvcmBaseEntitiesCollection.GetOp.
//
// Revision 1.3  2004/02/26 12:09:24  nikitin75
// + присваиваем shortcut'ы в runtime;
//
// Revision 1.2  2003/11/24 17:35:21  law
// - new method: TvcmCustomEntities._RegisterInRep.
//
// Revision 1.1  2003/11/19 11:38:24  law
// - new behavior: регистрируем все сущности и операции в MenuManager'е для дальнейшей централизации редактирования. Само редактирование пока не доделано.
//

{$Include vcmDefine.inc }

interface

uses
  Classes,

  vcmBase,
  vcmInterfaces,
  vcmExternalInterfaces,
  vcmBaseCollection,
  vcmBaseCollectionItem,
  vcmBaseEntitiesCollectionItem,
  vcmBaseOperationsCollectionItem
  ;

type
  TvcmBaseEntitiesCollection = class(TvcmBaseCollection, IvcmOperationsPublisher)
   {* Коллекция сущностей. }
    public
    // interface methods
      // IvcmOperationsPublisher
      procedure PublishEntity(const anEntity : TvcmString;
                              aGetTarget     : TvcmControlGetTargetEvent);
        {* - опубликовать сущность. }
      function  PublishFormEntity(const anEntity : TvcmString;
                                  aGetTarget     : TvcmGetTargetEvent): TvcmBaseEntitiesCollectionItem;
        {* - опубликовать сущность. }
      procedure  GroupItemsInContextMenu(const anEntity : TvcmString);
        {-}
      procedure  ToolbarAtBottom(const anEntity : TvcmString);
        {-}
      procedure ContextMenuWeight(const anEntity : TvcmString;
                                  aWeight        : Integer); overload;
        {* - установить вес сущности в контекстном меню }
      procedure ContextMenuWeight(const anEntity    : TvcmString;
                                  const anOperation : TvcmString;
                                  aWeight           : Integer;
                                  aNoPrefix         : Boolean = False); overload;
        {* - установить вес операции в контекстном меню }
      procedure PublishOp(const anEntity    : TvcmString;
                          const anOperation : TvcmString;
                          anExecute         : TvcmControlExecuteEvent = nil;
                          aTest             : TvcmControlTestEvent = nil;
                          aGetState         : TvcmControlGetStateEvent = nil;
                          aNoPrefix         : Boolean = false);
        {* - опубликовать операцию. }
      procedure PublishOpWithResult(const anEntity    : TvcmString;
                          const anOperation : TvcmString;
                          anExecute         : TvcmExecuteEvent;
                          aTest             : TvcmControlTestEvent;
                          aGetState         : TvcmControlGetStateEvent;
                          aNoPrefix         : Boolean = false);
        {* - опубликовать операцию. }
      function  GetOperationByName(const anEntity    : TvcmString;
                                   const anOperation : TvcmString;
                                   aNoPrefix         : Boolean = false): TvcmBaseOperationsCollectionItem;
        {-}
      procedure ShowInContextMenu(const anEntity    : TvcmString;
                                  const anOperation : TvcmString;
                                  aValue            : Boolean;
                                  aNoPrefix         : Boolean = false);
        {-}
      procedure ShowInToolbar(const anEntity    : TvcmString;
                                  const anOperation : TvcmString;
                                  aValue            : Boolean;
                                  aNoPrefix         : Boolean = false);
        {-}
    public
    // internal methods
      function  CheckEntityForControl(const anEntity : TvcmString): TvcmBaseEntitiesCollectionItem;
        {-}
    protected
    // internal methods
      function  GetAttrCount: Integer;
        override;
        {-}
      function GetAttr(Index: Integer): string;
        override;
        {-}
      function GetItemAttr(Index, ItemIndex: Integer): string;
        override;
        {-}
    public
    // public methods
      class function GetItemClass: TCollectionItemClass;
        override;
        {-}
      procedure GetEntitiesDef(aList : TvcmInterfaceList);
        {* - возвращает список описателей сущностей. }
      procedure LinkControl(aControl : TComponent);
        {-}
      procedure UnlinkControl(aControl: TComponent);
        {-}
      procedure RegisterInRep;
        {-}
      function IsItemCaptionUnique(const aItem: TvcmBaseCollectionItem): Boolean;
        {* - поиск операции по названию. }
  end;//TvcmBaseEntitiesCollection

implementation

uses
  SysUtils,
  
  vcmEntities,
  vcmUserControls
  ;

// start class TvcmBaseEntitiesCollection

procedure TvcmBaseEntitiesCollection.PublishEntity(const anEntity : TvcmString;
                                                   aGetTarget     : TvcmControlGetTargetEvent);
  {* - опубликовать сущность. }
var
 l_M       : TMethod absolute aGetTarget;  
 l_Control : TComponent;
 l_En      : TvcmBaseEntitiesCollectionItem;
begin
 l_En := CheckEntityForControl(anEntity);
 l_Control := TComponent(l_M.Data);
 if (l_Control <> nil) then
  l_En.PublishEntity(l_Control, aGetTarget);
end;

function TvcmBaseEntitiesCollection.PublishFormEntity(const anEntity : TvcmString;
                            aGetTarget     : TvcmGetTargetEvent): TvcmBaseEntitiesCollectionItem;
  {* - опубликовать сущность. }
begin
 Result := CheckEntityForControl(anEntity);
 if Assigned(aGetTarget) then
  Result.PublishFormEntity(aGetTarget);
end;

procedure TvcmBaseEntitiesCollection.GroupItemsInContextMenu(const anEntity : TvcmString);
  {-}
begin
 with CheckEntityForControl(anEntity) do
  Options := Options + [vcm_enoGroupItemsInContextMenu];
end;

procedure TvcmBaseEntitiesCollection.ToolbarAtBottom(const anEntity : TvcmString);
  {-}
begin
 CheckEntityForControl(anEntity).ToolbarPos := vcm_tbpBottom;
end;

procedure TvcmBaseEntitiesCollection.PublishOp(const anEntity    : TvcmString;
                                               const anOperation : TvcmString;
                                               anExecute         : TvcmControlExecuteEvent = nil;
                                               aTest             : TvcmControlTestEvent = nil;
                                               aGetState         : TvcmControlGetStateEvent = nil;
                                               aNoPrefix         : Boolean = false);
  {* - опубликовать операцию. }
var
 l_Execute : TMethod absolute anExecute;
 l_Test    : TMethod absolute aTest;
 l_GetState : TMethod absolute aGetState;
 l_Control : TComponent;
 l_Op      : String;
 l_En      : TvcmBaseEntitiesCollectionItem;
begin
 l_Control := TComponent(l_Execute.Data);
 if (l_Control = nil) then
  l_Control := TComponent(l_Test.Data);
 if (l_Control = nil) then
  l_Control := TComponent(l_GetState.Data);
 l_En := CheckEntityForControl(anEntity);
(* if (l_Control <> nil) then
 begin*)
  if aNoPrefix then
   l_Op := anOperation
  else
   l_Op := 'op' + anOperation;
  l_En.PublishOp(l_Control, l_Op, anExecute, aTest, aGetState);
(* end;//l_Control <> nil*)
end;

procedure TvcmBaseEntitiesCollection.PublishOpWithResult(const anEntity    : TvcmString;
                                               const anOperation : TvcmString;
                                               anExecute         : TvcmExecuteEvent;
                                               aTest             : TvcmControlTestEvent;
                                               aGetState         : TvcmControlGetStateEvent;
                                               aNoPrefix         : Boolean = false);
  //overload;
  {* - опубликовать операцию. }
var
 l_Execute : TMethod absolute anExecute;
 l_Test    : TMethod absolute aTest;
 l_Control : TComponent;
 l_Op      : String;
 l_En      : TvcmBaseEntitiesCollectionItem;
begin
 l_Control := TComponent(l_Execute.Data);
 if (l_Control = nil) then
  l_Control := TComponent(l_Test.Data);
 l_En := CheckEntityForControl(anEntity);
 if (l_Control <> nil) then
 begin
  if aNoPrefix then
   l_Op := anOperation
  else
   l_Op := 'op' + anOperation;
  l_En.PublishOp(l_Control, l_Op, anExecute, aTest, aGetState);
 end;//l_Control <> nil
end;

function TvcmBaseEntitiesCollection.CheckEntityForControl(const anEntity : TvcmString): TvcmBaseEntitiesCollectionItem;
  {-}
var
 l_En : String;
begin
 l_En := 'en' + anEntity;
 Result := FindItemByName(l_En) As TvcmBaseEntitiesCollectionItem;
 if (Result = nil) then
 begin
  Result := Add As TvcmBaseEntitiesCollectionItem;
  Result.Name := l_En;
 end;//l_EnI = nil
end;

function TvcmBaseEntitiesCollection.GetOperationByName(const anEntity    : TvcmString;
                             const anOperation : TvcmString;
                             aNoPrefix         : Boolean = false): TvcmBaseOperationsCollectionItem;
  {-}
var
 l_Op : String;
begin
 if aNoPrefix then
  l_Op := anOperation
 else
  l_Op := 'op' + anOperation;
 Result := CheckEntityForControl(anEntity).Operations.FindItemByName(l_Op) As TvcmBaseOperationsCollectionItem;
end;

procedure TvcmBaseEntitiesCollection.ShowInContextMenu(const anEntity    : TvcmString;
                                                       const anOperation : TvcmString;
                                                       aValue            : Boolean;
                                                       aNoPrefix         : Boolean = false);
  {-}
var
 l_Op : TvcmOperationOptions;  
begin
 with GetOperationByName(anEntity, anOperation, aNoPrefix) do
 begin
  l_Op := Options;
  if aValue then
   Include(l_Op, vcm_ooShowInContextMenu)
  else
  begin
   Exclude(l_Op, vcm_ooShowInContextMenu);
   if (l_Op = []) then
    Include(l_Op, vcm_ooShowInChildMenu);
  end;//aValue
  Options := l_Op;
 end;//GetOperationByName(anEntity, anOperation, aNoPrefix)
end;

procedure TvcmBaseEntitiesCollection.ShowInToolbar(const anEntity    : TvcmString;
                                                       const anOperation : TvcmString;
                                                       aValue            : Boolean;
                                                       aNoPrefix         : Boolean = false);
  {-}
var
 l_Op : TvcmOperationOptions;  
begin
 with GetOperationByName(anEntity, anOperation, aNoPrefix) do
 begin
  l_Op := Options;
  if aValue then
   Include(l_Op, vcm_ooShowInChildToolbar)
  else
  begin
   Exclude(l_Op, vcm_ooShowInChildToolbar);
   if (l_Op = []) then
    Include(l_Op, vcm_ooShowInChildMenu);
  end;//aValue
  Options := l_Op;
 end;//GetOperationByName(anEntity, anOperation, aNoPrefix)
end;

function TvcmBaseEntitiesCollection.GetAttrCount: Integer;
  //override;
  {-}
begin
 Result := inherited GetAttrCount + 2;
end;

function TvcmBaseEntitiesCollection.GetAttr(Index: Integer): string;
  //override;
  {-}
var
 l_C : Integer;
begin
 l_C := inherited GetAttrCount;
 if (Index >= l_C) then
 begin
  Case Index - l_C of
   0 : Result := 'Caption';
   1 : Result := 'Name';
  end;//Case Index - l_C
 end//Index >= l_C
 else
  Result := inherited GetAttr(Index);
end;

function TvcmBaseEntitiesCollection.GetItemAttr(Index, ItemIndex: Integer): string;
  //override;
  {-}
var
 l_C : Integer;
begin
 l_C := inherited GetAttrCount;
 if (Index > l_C) then
 begin
  Case Index - l_C of
   1 : Result := TvcmBaseEntitiesCollectionItem(Items[ItemIndex]).Name;
  end;//Case Index - l_C
 end//Index > l_C
 else
  Result := inherited GetItemAttr(Index, ItemIndex);
end;

class function TvcmBaseEntitiesCollection.GetItemClass: TCollectionItemClass;
  //override;
  {-}
begin
 Result := TvcmBaseEntitiesCollectionItem;
end;

procedure TvcmBaseEntitiesCollection.GetEntitiesDef(aList : TvcmInterfaceList);
  {* - возвращает список описателей сущностей. }
var
 l_Index : Integer;
begin
 for l_Index := 0 to Pred(Count) do
  aList.Add(TvcmBaseEntitiesCollectionItem(Items[l_Index]).EntityDef);
end;

procedure TvcmBaseEntitiesCollection.LinkControl(aControl : TComponent);
  {-}
var
 l_Provider : IvcmOperationsProvider;
begin
 if (aControl <> nil) then
 begin
  // Зарегистрируем операции
  if Supports(aControl, IvcmOperationsProvider, l_Provider) then
   try
    l_Provider.ProvideOps(Self);
   finally
    l_Provider := nil;
   end;//try..finally
 end;//aControl <> nil
end;

procedure TvcmBaseEntitiesCollection.UnlinkControl(aControl: TComponent);
  {-}
var
 l_Index : Integer;
 l_Item  : TvcmBaseEntitiesCollectionItem;
begin
 if (aControl <> nil) then
 begin
  for l_Index := 0 to Pred(Count) do
  begin
   l_Item := TvcmBaseEntitiesCollectionItem(Items[l_Index]);
   l_Item.SupportedBy[aControl] := false;
  end;//for l_Index
 end;//aControl <> nil
end;

procedure TvcmBaseEntitiesCollection.RegisterInRep;
  {-}
var
 l_Index : Integer;
begin
 for l_Index := 0 to Pred(Count) do
  TvcmBaseEntitiesCollectionItem(Items[l_Index]).RegisterInRep;
end;

function TvcmBaseEntitiesCollection.IsItemCaptionUnique(const aItem: TvcmBaseCollectionItem): Boolean;
  {* - поиск операции по названию. }
var
 l_Index: Integer;
begin
 Result := True;
 // Только для сущностей форм
 if Owner is TvcmEntities then
  for l_Index := 0 to Pred(Count) do
   with TvcmBaseEntitiesCollectionItem(Items[l_Index]) do
    if not IsItemCaptionUnique(aItem) then
    begin
     Result := False;
     Break;
    end;//if IsItemCaptionUnique(aCaption) then
end;//IsItemCaptionUnique

procedure TvcmBaseEntitiesCollection.ContextMenuWeight(
  const anEntity: TvcmString; aWeight: Integer);
  {* - установить вес в контекстном меню}
var
 l_EntitiesCollectionItem: TvcmBaseEntitiesCollectionItem;
begin
 l_EntitiesCollectionItem := CheckEntityForControl(anEntity);
 if (l_EntitiesCollectionItem <> nil) then
  l_EntitiesCollectionItem.ContextMenuWeight := aWeight;
end;

procedure TvcmBaseEntitiesCollection.ContextMenuWeight(const anEntity    : TvcmString;
                            const anOperation : TvcmString;
                            aWeight           : Integer;
                            aNoPrefix         : Boolean = False);
var
 l_EntitiesCollectionItem: TvcmBaseEntitiesCollectionItem;
 l_OperationsCollectionItem: TvcmBaseOperationsCollectionItem;
begin
 l_EntitiesCollectionItem := CheckEntityForControl(anEntity);
 if (l_EntitiesCollectionItem <> nil) then
 begin
  l_OperationsCollectionItem := GetOperationByName(anEntity, anOperation, aNoPrefix);
  if (l_OperationsCollectionItem <> nil) then
   l_OperationsCollectionItem.ContextMenuWeight := aWeight;
 end;
end;

end.

