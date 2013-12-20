unit vcmBaseOperationsCollection;
{* Коллекция операций. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmBaseOperationsCollection - }
{ Начат: 19.11.2003 13:15 }
{ $Id: vcmBaseOperationsCollection.pas,v 1.27 2011/07/29 15:08:37 lulin Exp $ }

// $Log: vcmBaseOperationsCollection.pas,v $
// Revision 1.27  2011/07/29 15:08:37  lulin
// {RequestLink:209585097}.
//
// Revision 1.26  2009/11/12 18:07:34  lulin
// - убираем ненужные возвращаемые значения.
//
// Revision 1.25  2009/10/12 11:27:15  lulin
// - коммитим после падения CVS.
//
// Revision 1.25  2009/10/08 12:46:44  lulin
// - чистка кода.
//
// Revision 1.24  2009/09/17 09:47:24  lulin
// - операции модуля публикуем в run-time, а не в формах.
//
// Revision 1.23  2009/08/28 17:15:47  lulin
// - начинаем публикацию и описание внутренних операций.
//
// Revision 1.22  2009/08/06 13:27:16  lulin
// {RequestLink:129240934}. №26.
//
// Revision 1.21  2009/08/04 08:35:42  lulin
// - поправлен комментарий.
//
// Revision 1.20  2009/08/03 18:12:37  lulin
// - публикуем операции.
//
// Revision 1.19  2009/02/20 15:19:00  lulin
// - <K>: 136941122.
//
// Revision 1.18  2009/02/11 15:19:45  lulin
// - чистка кода.
//
// Revision 1.17  2009/02/04 15:33:55  lulin
// - исправляем ошибку ненахождения методов. http://mdp.garant.ru/pages/viewpage.action?pageId=136260278&focusedCommentId=136260289#comment-136260289
//
// Revision 1.16  2007/01/20 17:35:45  lulin
// - разрешаем вызывать операции только по заранее известным идентификаторам.
//
// Revision 1.15  2005/02/02 12:53:55  am
// change: правки, связанные с переделками TvcmBaseOperationCollectionItem._Handled()
//
// Revision 1.14  2005/01/27 13:43:28  lulin
// - bug fix: не все контролы отвязывались от операций (CQ OIT5-11924).
//
// Revision 1.13  2005/01/21 11:24:10  lulin
// - переименовал метод, чтобы название более соответствовало смыслу.
//
// Revision 1.12  2005/01/21 11:10:05  lulin
// - new behavior: не сохраняем операции, привязанные только к контролам.
//
// Revision 1.11  2004/11/25 10:44:11  lulin
// - rename type: _TvcmExecuteEvent -> TvcmControlExecuteEvent.
// - rename type: _TvcmTestEvent -> TvcmControlTestEvent.
// - new type: TvcmControlGetTargetEvent.
//
// Revision 1.10  2004/11/25 09:08:31  lulin
// - new behavior: - по-умолчанию показываем операции контролов только в контекстном меню.
//
// Revision 1.9  2004/11/24 12:35:55  lulin
// - new behavior: обработчики операций от контролов теперь привязываются к операциям.
//
// Revision 1.8  2004/11/18 16:29:55  lulin
// - отвязываем библиотеки от VCM без использования inc'ов.
//
// Revision 1.7  2004/09/27 16:26:25  lulin
// - new behavior: в редакторе свойств для сущностей и операций показываем дополнительные параметры.
//
// Revision 1.6  2004/09/22 06:12:34  lulin
// - оптимизация - методу TvcmBaseCollection.FindItemByID придана память о последнем найденном элементе.
//
// Revision 1.5  2004/09/22 05:41:24  lulin
// - оптимизация - убраны код и данные, не используемые в Run-Time.
//
// Revision 1.4  2004/09/10 14:04:04  lulin
// - оптимизация - кешируем EntityDef и передаем ссылку на EntityItem, а не на кучу параметров.
//
// Revision 1.3  2004/02/26 12:09:24  nikitin75
// + присваиваем shortcut'ы в runtime;
//
// Revision 1.2  2003/11/24 17:35:21  law
// - new method: TvcmCustomEntities._RegisterInRep.
//
// Revision 1.1  2003/11/19 11:38:25  law
// - new behavior: регистрируем все сущности и операции в MenuManager'е для дальнейшей централизации редактирования. Само редактирование пока не доделано.
//

{$Include vcmDefine.inc }

interface

{$IfNDef NoVCM}
uses
  Classes,

  Menus,

  vcmUserControls,
  vcmInterfaces,
  vcmExternalInterfaces,
  vcmBase,
  vcmBaseCollection,
  vcmBaseCollectionItem
  ;

type
  TvcmBaseOperationsCollection = class(TvcmBaseCollection)
   {* Коллекция операций. }
    protected
    // internal methods
      function GetAttrCount: Integer;
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
      function  NeedToBeStored: Boolean;
        {-}
      class function GetItemClass: TCollectionItemClass;
        override;
        {-}
      procedure Operation(aControl            : TComponent;
                         const aTarget       : IUnknown;
                         const anOperationID : TvcmControlID;
                         aMode               : TvcmOperationMode;
                         const aParams       : IvcmParams);
        {* - выполняет операцию сущности. }
      procedure GetOperations(anOperations: TvcmInterfaceList);
        {* - возвращает список описателей операций. }
      procedure RegisterInRep;
        {-}
      procedure PublishOp(const aControl    : TComponent;
                          const anOperation : TvcmString;
                          anExecute         : TvcmControlExecuteEvent;
                          aTest             : TvcmControlTestEvent;
                          aGetState         : TvcmControlGetStateEvent);
        {* - опубликовать операцию. }
      procedure PublishOpWithResult(const aControl    : TComponent;
                          const anOperation : TvcmString;
                          anExecute         : TvcmExecuteEvent;
                          aTest             : TvcmControlTestEvent;
                          aGetState         : TvcmControlGetStateEvent);
        {* - опубликовать операцию. }
      procedure UnlinkControl(aControl : TComponent);
        {* - отвязать контрол. }
  end;//TvcmBaseOperationsCollection
{$EndIf NoVCM}  

implementation

{$IfNDef NoVCM}
uses
  TypInfo,
  
  SysUtils,

  vcmBaseOperationsCollectionItem,
  vcmOperationsCollectionItem,

  vcmBaseMenuManager,
  vcmModule
  ;

// start class TvcmBaseOperationsCollection

function TvcmBaseOperationsCollection.GetAttrCount: Integer;
  //override;
  {-}
begin
 Result := inherited GetAttrCount + 4;
end;

function TvcmBaseOperationsCollection.GetAttr(Index: Integer): string;
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
   1 : Result := 'Type';
   2 : Result := 'Name';
   3 : Result := 'ShortCut';
  end;//Case Index - l_C
 end//Index >= l_C
 else
  Result := inherited GetAttr(Index);
end;

function TvcmBaseOperationsCollection.GetItemAttr(Index, ItemIndex: Integer): string;
  //override;
  {-}
var
 l_C : Integer;
begin
 l_C := inherited GetAttrCount;
 if (Index > l_C) then
 begin
  Case Index - l_C of
   1 : Result := GetEnumName(TypeInfo(TvcmOperationType), Ord(TvcmBaseOperationsCollectionItem(Items[ItemIndex]).OperationType));
   2 : Result := TvcmBaseOperationsCollectionItem(Items[ItemIndex]).Name;
   3 : Result := ShortCutToText(TvcmBaseOperationsCollectionItem(Items[ItemIndex]).ShortCut);
  end;//Case Index - l_C
 end//Index > l_C
 else
  Result := inherited GetItemAttr(Index, ItemIndex);
end;

function TvcmBaseOperationsCollection.NeedToBeStored: Boolean;
  {-}
var
 l_Index : Integer;
begin
 Result := false;
 for l_Index := 0 to Pred(Count) do
  with TvcmBaseOperationsCollectionItem(Items[l_Index]) do
   if not (Handled([vcm_htControl]) and not Handled([vcm_htGlobal, vcm_htContext])) OR SomePropStored then
   begin
    Result := true;
    break;
   end;//..HandledOnlyByControl..
end;

class function TvcmBaseOperationsCollection.GetItemClass: TCollectionItemClass;
  //override;
  {-}
begin
 Result := TvcmBaseOperationsCollectionItem;
end;

procedure TvcmBaseOperationsCollection.Operation(aControl            : TComponent;
                                                const aTarget       : IUnknown;
                                                const anOperationID : TvcmControlID;
                                                aMode               : TvcmOperationMode;
                                                const aParams       : IvcmParams);
  {* - выполняет операцию сущности. }
var
 l_Item : TvcmBaseOperationsCollectionItem;
begin
 l_Item := TvcmBaseOperationsCollectionItem(FindItemByID(anOperationID));
 if (l_Item <> nil) then
  l_Item.Operation(aControl, aTarget, aMode, aParams, false);
end;

procedure TvcmBaseOperationsCollection.GetOperations(anOperations: TvcmInterfaceList);
  {* - возвращает список описателей операций. }
var
 l_Index : Integer;
begin
 if (anOperations <> nil) then
 begin
  for l_Index := 0 to Pred(Count) do
   anOperations.Add(TvcmBaseOperationsCollectionItem(Items[l_Index]).OperationDef);
 end;//anOperations <> nil
end;

procedure TvcmBaseOperationsCollection.RegisterInRep;
  {-}
var
 l_Index : Integer;
 l_Item  : TvcmBaseOperationsCollectionItem;
begin
 for l_Index := 0 to Pred(Count) do
 begin
  l_Item := TvcmBaseOperationsCollectionItem(Items[l_Index]);
  if (l_Item Is TvcmOperationsCollectionItem) then
   TvcmOperationsCollectionItem(l_Item).Register;
 end;//for l_Index
end;

procedure TvcmBaseOperationsCollection.PublishOp(const aControl    : TComponent;
                                                 const anOperation : TvcmString;
                                                 anExecute         : TvcmControlExecuteEvent;
                                                 aTest             : TvcmControlTestEvent;
                                                 aGetState         : TvcmControlGetStateEvent);
  {* - опубликовать операцию. }
var
 l_Item : TvcmBaseOperationsCollectionItem;
begin
 l_Item := FindItemByName(anOperation) As TvcmBaseOperationsCollectionItem;
 if (l_Item = nil) then
 begin
  l_Item := Add As TvcmBaseOperationsCollectionItem;
  l_Item.Name := anOperation;
  l_Item.Options := [vcm_ooShowInContextMenu];
  // - по-умолчанию показываем операции только в контекстном меню
  if (aControl Is TvcmModule) then
   l_Item.Options := l_Item.Options + [vcm_ooShowInMainToolbar];
 end;//l_Item = nil
 l_Item.PublishOp(aControl, anExecute, aTest, aGetState);
end;

procedure TvcmBaseOperationsCollection.PublishOpWithResult(const aControl    : TComponent;
                    const anOperation : TvcmString;
                    anExecute         : TvcmExecuteEvent;
                    aTest             : TvcmControlTestEvent;
                    aGetState         : TvcmControlGetStateEvent);
  //overload;
  {* - опубликовать операцию. }
var
 l_Item : TvcmBaseOperationsCollectionItem;
begin
 l_Item := FindItemByName(anOperation) As TvcmBaseOperationsCollectionItem;
 if (l_Item = nil) then
 begin
  l_Item := Add As TvcmBaseOperationsCollectionItem;
  l_Item.Name := anOperation;
  l_Item.Options := [vcm_ooShowInContextMenu];
  // - по-умолчанию показываем операции только в контекстном меню
 end;//l_Item = nil
 l_Item.PublishOp(aControl, anExecute, aTest, aGetState);
end;

procedure TvcmBaseOperationsCollection.UnlinkControl(aControl : TComponent);
  {* - отвязать контрол. }
var
 l_Index : Integer;
begin
 for l_Index := 0 to Pred(Count) do
  TvcmBaseOperationsCollectionItem(Items[l_Index]).UnlinkControl(aControl);
end;
{$EndIf NoVCM}

end.

