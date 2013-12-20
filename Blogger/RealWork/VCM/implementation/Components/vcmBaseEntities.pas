unit vcmBaseEntities;
{* Компонент для определения списка сущностей. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmBaseEntities - }
{ Начат: 19.11.2003 11:15 }
{ $Id: vcmBaseEntities.pas,v 1.23 2012/04/13 18:22:34 lulin Exp $ }

// $Log: vcmBaseEntities.pas,v $
// Revision 1.23  2012/04/13 18:22:34  lulin
// {RequestLink:237994598}
//
// Revision 1.22  2010/07/15 11:40:33  lulin
// {RequestLink:207389954}.
//
// Revision 1.21  2010/05/04 10:16:14  lulin
// {RequestLink:207389954}.
// - bug fix: падали при запуске приложения, т.к. операции контролов публиковались позже _ExcludeUserTypes.
//
// Revision 1.20  2009/10/23 12:46:05  lulin
// {RequestLink:167353056}. Пляски с бубном вокруг тулбаров.
//
// Revision 1.19  2009/10/14 18:39:48  lulin
// {RequestLink:166855347}.
//
// Revision 1.18  2009/10/12 11:27:15  lulin
// - коммитим после падения CVS.
//
// Revision 1.18  2009/10/08 12:46:44  lulin
// - чистка кода.
//
// Revision 1.17  2008/03/19 14:23:44  lulin
// - cleanup.
//
// Revision 1.16  2008/01/31 18:53:33  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.15  2007/08/07 15:16:24  lulin
// - cleanup.
//
// Revision 1.14  2006/03/24 12:11:28  lulin
// - cleanup: не пишем пустые коллекции.
//
// Revision 1.13  2006/03/24 09:44:54  lulin
// - cleanup: не пишем пустые коллекции.
//
// Revision 1.12  2005/06/27 07:17:03  mmorozov
// change: сигнатура метода _LinkControl (TvcmBaseEntities);
//
// Revision 1.11  2005/06/23 16:00:44  mmorozov
// change: сигнатура _LinkControl;
//
// Revision 1.10  2005/02/01 16:56:57  lulin
// - bug fix: для Help'а не выливались операции, привязанные только к контролам.
//
// Revision 1.9  2005/01/27 13:43:28  lulin
// - bug fix: не все контролы отвязывались от операций (CQ OIT5-11924).
//
// Revision 1.8  2004/12/17 12:42:21  mmorozov
// change: метод _LinkControls принимает IvcmSettings;
//
// Revision 1.7  2004/11/24 14:54:15  lulin
// - bug fix: регистрируем операции из контролов в правильном месте - чтобы они появлялись в Design-Time.
//
// Revision 1.6  2004/11/22 16:23:10  lulin
// - new behavior: вчерне сделал механизм вытаскивания операций из контролов, пока эти операции никуда не попадают.
//
// Revision 1.5  2004/11/17 18:56:05  lulin
// - new method: TvcmBaseEntitiesCollection._UnlinkControl.
//
// Revision 1.4  2004/09/22 15:50:10  lulin
// - cleanup.
//
// Revision 1.3  2004/09/11 12:29:09  lulin
// - cleanup: избавляемся от прямого использования деструкторов.
// - new unit: vcmComponent.
//
// Revision 1.2  2004/06/02 10:20:43  law
// - удален конструктор Tl3VList.MakeIUnknown - пользуйтесь _Tl3InterfaceList.Make.
//
// Revision 1.1  2003/11/19 11:38:24  law
// - new behavior: регистрируем все сущности и операции в MenuManager'е для дальнейшей централизации редактирования. Само редактирование пока не доделано.
//

{$Include vcmDefine.inc }

interface

uses
  Classes,

  vcmInterfaces,
  vcmExternalInterfaces,
  vcmBase,
  vcmComponent,
  vcmBaseCollection,
  vcmBaseEntitiesCollection,
  vcmBaseEntitiesCollectionItem,
  vcmBaseOperationsCollectionItem
  ;

type
  TvcmBaseEntities = class(TvcmComponent)
   {* Компонент для определения списка сущностей. }
    private
    // internal fields
      f_Linked   : Boolean;
      f_Entities : TvcmBaseEntitiesCollection;
    protected
    // property methods
      function  pm_GetEntities: TvcmBaseEntitiesCollection;
      procedure pm_SetEntities(aValue: TvcmBaseEntitiesCollection);
      function  EntitiesStored: Boolean;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      class function GetEntitiesCollectionClass: RvcmBaseCollection;
        virtual;
        {-}
      constructor Create(anOwner: TComponent);
        override;
        {-}
      procedure Notification(AComponent: TComponent; Operation: TOperation);
        override;
        {-}
      function  GetItemByName(const aName: String): TvcmBaseEntitiesCollectionItem;
        {-}
      procedure LinkControls;
        {-}
      procedure UnlinkControls;
        {-}
      procedure GetEntitiesDef(aList : TvcmInterfaceList);
        {* - возвращает список описателей сущностей. }
      function  GetOperationByName(const anEntity    : TvcmString;
                                   const anOperation : TvcmString): TvcmBaseOperationsCollectionItem;
        {-}
      procedure SetTargetGetter(const anEntity : TvcmString;
                                anEvent : TvcmGetTargetEvent);
        {-}
      procedure MakeSupportedByControl(const anEntity : TvcmString;
                                       aControl : TComponent);
        {-}
    public
    // public properties
      property Entities: TvcmBaseEntitiesCollection
        read pm_GetEntities
        write pm_SetEntities
        stored EntitiesStored;
        {* - коллекция сущностей. }
  end;//TvcmBaseEntities

implementation

uses
  SysUtils,

  Forms
  ;

// start class TvcmBaseEntities

constructor TvcmBaseEntities.Create(anOwner: TComponent);
  //override;
  {-}
begin
 inherited;
 f_Entities := TvcmBaseEntitiesCollection(GetEntitiesCollectionClass.Create(Self));
end;

class function TvcmBaseEntities.GetEntitiesCollectionClass: RvcmBaseCollection;
  //virtual;
  {-}
begin
 Result := TvcmBaseEntitiesCollection;
end;

procedure TvcmBaseEntities.Cleanup;
  //override;
  {-}
begin
 f_Linked := false;
 FreeAndNil(f_Entities);
 inherited;
end;

procedure TvcmBaseEntities.Notification(AComponent: TComponent; Operation: TOperation);
  //override;
  {-}
begin
 if not (csDestroying in ComponentState) then
 begin
  if (f_Entities <> nil) AND f_Linked then
  begin
   if (Operation = opRemove) then
     f_Entities.UnlinkControl(aComponent)
   else
   if (Operation = opInsert) AND (aComponent.Owner = Owner) then
     f_Entities.LinkControl(aComponent);
  end;//f_Entities
 end;//not (csDestroying in ComponentState)
 inherited;
end;

function TvcmBaseEntities.GetItemByName(const aName: String): TvcmBaseEntitiesCollectionItem;
  {-}
begin
 Result := Entities.FindItemByName(aName) As TvcmBaseEntitiesCollectionItem;
end;

function TvcmBaseEntities.pm_GetEntities: TvcmBaseEntitiesCollection;
  {-}
begin
 Result := f_Entities;
end;

procedure TvcmBaseEntities.pm_SetEntities(aValue: TvcmBaseEntitiesCollection);
  {-}
begin
 f_Entities.Assign(aValue);
end;

function TvcmBaseEntities.EntitiesStored: Boolean;
  {-}
begin
 Result := (f_Entities <> nil) AND (f_Entities.Count > 0);
end;
  
procedure TvcmBaseEntities.LinkControls;
  {-}
var
 l_Index : Integer;
begin
 if not f_Linked AND (Owner <> nil) then
 begin
  {$IfNDef vcmExportHelp}
  if not (Owner Is TCustomForm) OR (Owner.Owner <> nil) OR
     (csDesigning in ComponentState) then
  {$EndIf  vcmExportHelp}
  begin
   f_Linked := true;
   for l_Index := 0 to Pred(Owner.ComponentCount) do
    f_Entities.LinkControl(Owner.Components[l_Index]);
  end;//not (Owner Is TCustomForm)..
 end;//not f_Linked
end;

procedure TvcmBaseEntities.UnlinkControls;
  {-}
var
 l_Index : Integer;
begin
 if f_Linked AND (Owner <> nil) then
 begin
  if not (Owner Is TCustomForm) OR (Owner.Owner <> nil) OR
     (csDesigning in ComponentState) then
  begin
   f_Linked := false;
   for l_Index := 0 to Pred(Owner.ComponentCount) do
    f_Entities.UnlinkControl(Owner.Components[l_Index]);
  end;//not (Owner Is TCustomForm)..
 end;//not f_Linked
end;

procedure TvcmBaseEntities.GetEntitiesDef(aList : TvcmInterfaceList);
  {* - возвращает список описателей сущностей. }
begin
 LinkControls;
 Entities.GetEntitiesDef(aList);
end;

function TvcmBaseEntities.GetOperationByName(const anEntity    : TvcmString;
                             const anOperation : TvcmString): TvcmBaseOperationsCollectionItem;
  {-}
begin
 Result := Entities.GetOperationByName(anEntity, anOperation);
end;

procedure TvcmBaseEntities.SetTargetGetter(const anEntity : TvcmString;
                                           anEvent : TvcmGetTargetEvent);
  {-}
begin
 Entities.CheckEntityForControl(anEntity).OnGetTarget := anEvent;
end;

procedure TvcmBaseEntities.MakeSupportedByControl(const anEntity : TvcmString;
                                 aControl : TComponent);
  {-}
begin
 Entities.CheckEntityForControl(anEntity).SupportedBy[aControl] := true;
end;

end.

