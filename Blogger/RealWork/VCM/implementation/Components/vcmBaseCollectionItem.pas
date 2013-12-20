unit vcmBaseCollectionItem;
{* Базовый класс для элементов коллекций. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmBaseCollectionItem - }
{ Начат: 11.03.2003 12:32 }
{ $Id: vcmBaseCollectionItem.pas,v 1.20 2013/04/25 14:22:38 lulin Exp $ }

// $Log: vcmBaseCollectionItem.pas,v $
// Revision 1.20  2013/04/25 14:22:38  lulin
// - портируем.
//
// Revision 1.19  2011/12/08 16:30:03  lulin
// {RequestLink:273590436}
// - чистка кода.
//
// Revision 1.18  2011/05/18 10:42:35  lulin
// {RequestLink:266412246}.
//
// Revision 1.17  2011/03/16 13:26:12  lulin
// - вычищаем мусорок.
//
// Revision 1.16  2006/12/10 17:26:54  lulin
// - cleanup.
//
// Revision 1.15  2006/12/10 17:05:15  lulin
// - cleanup.
//
// Revision 1.14  2006/03/15 12:27:21  lulin
// - cleanup.
//
// Revision 1.13  2005/10/31 15:23:57  lopatkin
// bugfix: не было проверки на наличие коллекции;
//
// Revision 1.12  2005/10/06 08:33:24  mmorozov
// new: для доселе безымянных элементов коллекции имена теперь генерятся автоматически "FormName_UserTypeName";
//
// Revision 1.11  2005/07/14 16:02:48  lulin
// - new behavior: в run-time получаем ID операции по ее имени из информации, содержащейся в MenuManager'е.
//
// Revision 1.10  2004/09/22 06:12:34  lulin
// - оптимизация - методу TvcmBaseCollection.FindItemByID придана память о последнем найденном элементе.
//
// Revision 1.9  2004/09/13 08:56:10  lulin
// - new behavior: TvcmPrimCollectionItem теперь может кешироваться и распределяться в пуле объектов.
//
// Revision 1.8  2004/06/10 14:23:58  mmorozov
// - заглушки для комментариев;
//
// Revision 1.7  2004/03/22 14:27:58  mmorozov
// new: сортируем сущности при изменении TvcmBaseCollectionItem.Caption;
//
// Revision 1.6  2003/11/25 12:50:59  law
// - bug fix: поборолся-таки с неправильным сохранением Hint'ов в StdRes.
//
// Revision 1.5  2003/11/19 12:56:52  law
// - new behavior: отобразил свойства операций на формах на централизованное хранилище (Caption, ImageIndex, GroupID, _Category, OperationType).
//
// Revision 1.4  2003/11/19 11:38:24  law
// - new behavior: регистрируем все сущности и операции в MenuManager'е для дальнейшей централизации редактирования. Само редактирование пока не доделано.
//
// Revision 1.3  2003/11/18 19:35:54  law
// - new: начал делать общий репозиторий модулей, сущностей и операций в MenuManager'е. Чтобы все можно было править из одного места.
//
// Revision 1.2  2003/04/03 09:26:17  law
// - new behavior: сделал возможность подписки на события.
//
// Revision 1.1  2003/04/01 12:54:43  law
// - переименовываем MVC в VCM.
//
// Revision 1.6  2003/03/21 11:32:11  law
// - change: добавлены редакторы свойства Caption.
//
// Revision 1.5  2003/03/20 17:26:38  law
// - change: сделаны более удобочитаемые пути к сущностям и операциям.
//
// Revision 1.4  2003/03/20 16:42:57  law
// - change: всем объектам кроме Name добавлено свойство Caption.
//
// Revision 1.3  2003/03/11 15:34:30  law
// - new behavior: сделаны обработчики операций.
//
// Revision 1.2  2003/03/11 10:30:18  law
// - new class: _Tl3StringMap.
//
// Revision 1.1  2003/03/11 09:38:16  law
// - new class: TvcmBaseCollectionItem.
//

{$Include vcmDefine.inc }

interface

uses
  Classes,

  vcmPrimCollectionItem
  ;

type
  TvcmBaseCollectionItem = class(TvcmPrimCollectionItem)
   {* Базовый класс для элементов коллекций. }
    private
    // property fields
      f_Name    : AnsiString;
      f_Caption : AnsiString;
    protected
    // property methods
      function  pm_GetName: AnsiString;
        virtual;
        {-}
      procedure SetCaptionFromName(const aName: AnsiString);
        virtual;
        {-}
      procedure pm_SetName(const aName: AnsiString);
        virtual;
        {-}
      function  pm_GetCaption: AnsiString;
        virtual;
        {-}
      procedure pm_SetCaption(const aName: AnsiString);
        virtual;
        {-}
      procedure DoSetCaption(const aName: AnsiString);
        {-}
    protected
    // internal methods
      function CaptionStored: Boolean;
        virtual;
        {-}
      function NameStored: Boolean;
        virtual;
        {-}
      function GetDisplayName: String;
        override;
        {-}
      procedure ChangeName(const anOld, aNew: AnsiString);
        virtual;
        {* - вызывается при изменении имени. Для перекрытия в потомках. }
      procedure NameChanged;
        virtual;
        {-}
      procedure ChangeCaption(const anOld, aNew: AnsiString);
        virtual;
        {* - вызывается при изменении пользовательского имени. Для перекрытия в потомках. }
      procedure CaptionChanged;
        virtual;
        {-}
      procedure BeforeAddToCache;
        override;
        {-}
    public
    // public methods
      function  MakeID(const aName: AnsiString): Integer;
        virtual;
        {-}
      function GetID: Integer;
        virtual;
        {-}
      function GetNamePath: String;
        override;
        {-}
      procedure Assign(P: TPersistent);
        override;
        {-}
    published
    // published properties
      property Name: AnsiString
        read pm_GetName
        write pm_SetName;
        {* - имя. }
      property Caption: AnsiString
        read pm_GetCaption
        write pm_SetCaption
        stored CaptionStored;
        {* - пользовательское имя. }
  end;//TvcmBaseCollectionItem

implementation

uses
  vcmBaseCollection,
  RTLConsts,
  SysUtils
  ;

// start class TvcmBaseCollectionItem

function TvcmBaseCollectionItem.MakeID(const aName: AnsiString): Integer;
  //virtual;
  {-}
begin
 Assert(false, 'Данная коллекция не поддерживает поиска элемента по идентификатору');
 Result := -1;
end;

function TvcmBaseCollectionItem.GetID: Integer;
  //virtual;
  {-}
begin
 Assert(false, 'Данная коллекция не поддерживает поиска элемента по идентификатору');
 Result := -1;
end;

function TvcmBaseCollectionItem.GetNamePath: String;
  //override;
  {-}
var
 l_Owner : TPersistent;
begin
 if (Name = '') then
  Result := inherited GetNamePath
 else
 begin
  Result := Name;
  if (Collection <> nil) then
  begin
   l_Owner := Collection.Owner;
   if (l_Owner Is TvcmBaseCollectionItem) then
    Result := TvcmBaseCollectionItem(l_Owner).Name + '.' + Result
   else
   if (l_Owner Is TComponent) then
    Result := TComponent(l_Owner).Name + '.' + Result
   else
    Result := Collection.GetNamePath + '.' + Result;
  end;//Collection <> nil
 end;//Name = ''
end;
  
procedure TvcmBaseCollectionItem.Assign(P: TPersistent);
  //override;
  {-}
begin
 if (P Is TvcmBaseCollectionItem) then
 begin
  Name := TvcmBaseCollectionItem(P).Name;
  Caption := TvcmBaseCollectionItem(P).Caption;
 end//P Is TvcmBaseCollectionItem
 else
  inherited;
end;

function TvcmBaseCollectionItem.pm_GetName: AnsiString;
  {-}
begin
 Result := f_Name;
end;

procedure TvcmBaseCollectionItem.SetCaptionFromName(const aName: AnsiString);
  //virtual;
  {-}
begin
 if (Name = Caption) then
  Caption := aName;
end;

procedure TvcmBaseCollectionItem.pm_SetName(const aName: AnsiString);
  {-}
begin
 if (f_Name <> aName) then
 begin
  {$IfDef DesignTimeLibrary}
  if (aName <> '') and not IsValidIdent(aName) then
    raise EComponentError.CreateResFmt(@SInvalidName, [aName]);
  {$EndIf DesignTimeLibrary}
  ChangeName(f_Name, aName);
  SetCaptionFromName(aName);
  f_Name := aName;
  NameChanged;
 end;//f_Name <> aName
end;

function TvcmBaseCollectionItem.pm_GetCaption: AnsiString;
  {-}
begin
 Result := f_Caption;
end;

procedure TvcmBaseCollectionItem.pm_SetCaption(const aName: AnsiString);
  {-}
begin
 if (Caption <> aName) then
  DoSetCaption(aName);
end;

procedure TvcmBaseCollectionItem.DoSetCaption(const aName: AnsiString);
  {-}
begin
 ChangeCaption(Caption, aName);
 f_Caption := aName;
 CaptionChanged;
end;

function TvcmBaseCollectionItem.NameStored: Boolean;
  // virtual;
  {-}
begin
 Result := True;
end;

function TvcmBaseCollectionItem.CaptionStored: Boolean;
  {-}
begin
 Result := (Caption <> Name);
end;

function TvcmBaseCollectionItem.GetDisplayName: String;
  //override;
  {-}
begin
 Result := Caption;
end;

procedure TvcmBaseCollectionItem.ChangeName(const anOld, aNew: AnsiString);
  //virtual;
  {* - вызывается при изменении имени. Для перекрытия в потомках. }
begin
end;

procedure TvcmBaseCollectionItem.NameChanged;
  //virtual;
  {-}
begin
end;

procedure TvcmBaseCollectionItem.ChangeCaption(const anOld, aNew: AnsiString);
  //virtual;
  {* - вызывается при изменении пользовательского имени. Для перекрытия в потомках. }
begin
end;

procedure TvcmBaseCollectionItem.CaptionChanged;
  //virtual;
  {-}
begin
 if Assigned(Collection) then
  TvcmBaseCollection(Collection).CaptionChanged(Self);
end;

procedure TvcmBaseCollectionItem.BeforeAddToCache;
  //override;
  {-}
begin
 inherited;
 f_Name := '';
 f_Caption := '';
end;
  
end.

