unit vcmBaseCollection;

{ ���������� "vcm"        }
{ �����: ����� �.�. �     }
{ ������: vcmBaseCollection - }
{ �����: 25.07.2003 14:38 }
{ $Id: vcmBaseCollection.pas,v 1.40 2013/07/01 08:35:39 lulin Exp $ }

// $Log: vcmBaseCollection.pas,v $
// Revision 1.40  2013/07/01 08:35:39  lulin
// - �������� �������� ��� �������� (���� ��������).
//
// Revision 1.39  2011/05/19 17:04:32  lulin
// {RequestLink:266418093}.
//
// Revision 1.38  2009/02/20 16:45:38  lulin
// - <K>: 136941122.
//
// Revision 1.37  2008/02/14 19:32:31  lulin
// - �������� ����� ������ � ���������.
//
// Revision 1.36  2008/02/14 14:12:14  lulin
// - <K>: 83920106.
//
// Revision 1.35  2008/02/07 08:37:44  lulin
// - ������� �������� ������� �� ������������ ������.
//
// Revision 1.34  2008/01/30 20:31:40  lulin
// - ���������������� � �������� ������������� �������-�������� �� ������.
//
// Revision 1.33  2008/01/25 12:06:50  lulin
// - �������������� ����� � �������.
//
// Revision 1.32  2008/01/25 11:32:05  lulin
// - �������������� ����� � �������.
//
// Revision 1.31  2007/08/13 17:23:30  lulin
// - cleanup.
//
// Revision 1.30  2007/02/13 16:36:45  lulin
// - ���������� ����� ������� ������� ���������.
//
// Revision 1.29  2007/01/18 10:49:32  lulin
// - �������� ������ ��������� ������ �� ���������.
//
// Revision 1.28  2006/11/03 11:00:31  lulin
// - ��������� � ������ 6.4.
//
// Revision 1.27.6.1  2006/10/17 07:37:05  lulin
// - ������� ��������� ��������� � ���������� ��������������� ��� ����� ���������.
//
// Revision 1.27  2006/04/14 13:40:21  lulin
// - ��������� ����������� ����������.
//
// Revision 1.26  2006/04/14 12:11:16  lulin
// - ����� � �������� ���� ����� ���������� ��������.
//
// Revision 1.25  2006/04/14 11:53:05  lulin
// - ��������� ��������� � ���������� _Unknown_ � ���� ����.
//
// Revision 1.24  2006/03/23 13:31:00  lulin
// - cleanup.
//
// Revision 1.23  2006/03/13 12:29:36  lulin
// - ������ ���� �������� �������� ��������� �� ������ ����.
//
// Revision 1.22  2005/04/01 15:18:06  mmorozov
// new: ������������� _l3Compare;
//
// Revision 1.21  2004/11/24 12:35:55  lulin
// - new behavior: ����������� �������� �� ��������� ������ ������������� � ���������.
//
// Revision 1.20  2004/09/22 06:49:55  lulin
// - ������ ������ ���������� ����� ����� Is.
//
// Revision 1.19  2004/09/22 06:12:34  lulin
// - ����������� - ������ TvcmBaseCollection.FindItemByID ������� ������ � ��������� ��������� ��������.
//
// Revision 1.18  2004/09/22 05:55:24  lulin
// - ����������� - ������ TvcmBaseCollection.FindItemByName ������� ������ � ��������� ��������� ��������.
//
// Revision 1.17  2004/09/15 15:35:47  lulin
// - ����� TvcmBaseCollection ������ ����������.
//
// Revision 1.16  2004/09/15 14:38:23  lulin
// - TvcmBaseCollection ��������� �� "������" l3Unknown.
//
// Revision 1.15  2004/09/13 07:33:02  lulin
// - new behavior: Tl3InterfacedComponent ������ ����� ������������ ���� ������ � ���� ��������.
//
// Revision 1.14  2004/09/11 11:55:47  lulin
// - cleanup: ����������� �� ������� ������������� ������������.
//
// Revision 1.13  2004/09/08 11:22:42  lulin
// - new define: _l3NoTrace.
// - new define: l3TraceObjects.
//
// Revision 1.12  2004/08/30 10:32:35  demon
// - fix: ��� ���������� ����� _Sorted ��������� ������ ��� True
//
// Revision 1.11  2004/07/16 04:12:29  mmorozov
// change: ��� ���������� ��������� ��������� ���� Caption � ��������� ����������, �� ���������� �� Name;
//
// Revision 1.10  2004/07/06 16:20:04  mmorozov
// new behaviour: ��� ��������� �������� TvcmBaseCollectionItem.Caption ������ ���������� ������ �������������� ���������;
//
// Revision 1.9  2004/04/13 05:53:03  mmorozov
// - ���������� ����;
//
// Revision 1.8  2004/04/09 14:15:41  law
// - new behavior: ������ �������� �� ��������� TvcmBaseCollection.
//
// Revision 1.7  2004/03/23 15:20:50  mmorozov
// - ������� �� ������������ ����������;
//
// Revision 1.6  2004/03/23 15:03:59  mmorozov
// bugfix;
//
// Revision 1.5  2004/03/22 14:28:53  mmorozov
// new: ����������;
//
// Revision 1.4  2004/02/26 12:09:24  nikitin75
// + ����������� shortcut'� � runtime;
//
// Revision 1.3  2003/11/19 11:38:24  law
// - new behavior: ������������ ��� �������� � �������� � MenuManager'� ��� ���������� ������������� ��������������. ���� �������������� ���� �� ��������.
//
// Revision 1.2  2003/11/19 07:33:25  law
// - new method: TvcmBaseCollection.FindItemByName.
//
// Revision 1.1  2003/07/25 10:45:43  law
// - new unit: vcmBaseCollection.
//

{$Include vcmDefine.inc }

interface

uses
  Windows,
  
  Classes,

  vcmExternalInterfaces,
  vcmInterfaces,
  vcmPrimCollectionItem,
  vcmBaseCollectionItem
  ;

type
  _l3Unknown_Parent_ = TOwnedCollection;
  {$Define _UnknownNeedsQI}
  {$IfNDef vcmNeedL3}
   {$Define _UnknownNotNeedL3}
  {$EndIf  vcmNeedL3}
  {$Include l3Unknown.imp.pas}
  TvcmBaseCollection = class(_l3Unknown_)
    private
    // property fields
      f_Sorted    : Boolean;
    protected
    // internal fields  
      f_FoundItem : TvcmPrimCollectionItem;
    protected
    // property methods
      function  GetItem(Index : Integer): TvcmBaseCollectionItem;
        {-}
      procedure SetItem(Index : Integer;
                        Value : TvcmBaseCollectionItem);
        {-}
      procedure SetSorted(const Value: Boolean);
        {-}
    protected
    // internal methods
      procedure Sort;
        {-}
      procedure Notify(anItem   : TCollectionItem;
                       anAction : TCollectionNotification);
        override;
        {-}
      class function IsCacheable: Boolean;
        override;
        {-}
      procedure BeforeAddToCache;
        override;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(anOwner: TPersistent);
        reintroduce;
        virtual;
        {* - ������� ���������. }
      class function GetItemClass: TCollectionItemClass;
        virtual;
        {-}
      function  FindItemByName(const aName: String): TvcmBaseCollectionItem;
        {-}
      function  CheckItemByName(const aName: String): TvcmBaseCollectionItem;
        {-}
      function  FindItemByCaption(const aName: String): TvcmBaseCollectionItem;
        {-}
      function  FindItemByID(const anID: TvcmControlID): TvcmBaseCollectionItem;
        {-}
      procedure CaptionChanged(aItem : TvcmBaseCollectionItem);
        {-}
    // properties
      property Sorted : Boolean
        read f_Sorted
        write SetSorted;
      property Items[Index: Integer]: TvcmBaseCollectionItem
        read GetItem
        write SetItem;
  end;//TvcmBaseCollection
  
  RvcmBaseCollection = class of TvcmBaseCollection;

implementation

uses
  SysUtils

  {$IfDef vcmNeedL3}
  ,
  l3Interfaces,
  l3Base,
  l3String
  {$EndIf vcmNeedL3}
  ;
  
{$Include l3Unknown.imp.pas}

type
  THackCollection = class(TPersistent)
  private
    FItemClass: TCollectionItemClass;
    FItems: TList;
    FUpdateCount: Integer;
  end;//THackCollection

  THackOwnedCollection = class(TCollection)
  private
    FOwner: TPersistent;
  end;//THackOwnedCollection
  
// start class TvcmBaseCollection

constructor TvcmBaseCollection.Create(anOwner: TPersistent);
  //reintroduce;
  //virtual;
  {* - ������� ���������. }
begin
 inherited Create(anOwner, GetItemClass);
end;

procedure TvcmBaseCollection.Cleanup;
  //override;
  {-}
begin
 f_FoundItem := nil;
 f_Sorted := false;
 inherited;
end;

procedure TvcmBaseCollection.BeforeAddToCache;
  //override;
  {-}
begin
 inherited;
 THackCollection(Self).FUpdateCount := 0;
 THackOwnedCollection(Self).FOwner := nil;
end;

class function TvcmBaseCollection.IsCacheable: Boolean;
  //override;
  {-}
begin
 {$IfDef XE}
 Result := false;
 {$Else  XE}
 Result := true;
 {$EndIf XE}
end;

class function TvcmBaseCollection.GetItemClass: TCollectionItemClass;
  //virtual;
  {-}
begin
 Result := TvcmBaseCollectionItem;
end;

function TvcmBaseCollection.FindItemByName(const aName: String): TvcmBaseCollectionItem;
  {-}
var
 l_Item  : TvcmBaseCollectionItem;
 l_Index : Integer;
begin
 Result := nil;
 if (f_FoundItem Is TvcmBaseCollectionItem) AND
    ANSISameText(TvcmBaseCollectionItem(f_FoundItem).Name, aName) then
  Result := TvcmBaseCollectionItem(f_FoundItem)
 else
 for l_Index := 0 to Pred(Count) do
 begin
  l_Item := Items[l_Index];
  if ANSISameText(TvcmBaseCollectionItem(l_Item).Name, aName) then
  begin
   Result := TvcmBaseCollectionItem(l_Item);
   f_FoundItem := Result;
   break;
  end;//l_Item Is TevBaseCollectionItem
 end;//for l_Item
end;

function TvcmBaseCollection.CheckItemByName(const aName: String): TvcmBaseCollectionItem;
  {-}
begin
 Result := FindItemByName(aName);
 if (Result = nil) then
 begin
  Result := TvcmBaseCollectionItem(Add);
  Result.Name := aName;
 end;//Result = nil
end;
  
function TvcmBaseCollection.FindItemByCaption(const aName: String): TvcmBaseCollectionItem;
  {-}
var
 l_Item  : TvcmBaseCollectionItem;
 l_Index : Integer;
begin
 Result := nil;
 if (f_FoundItem Is TvcmBaseCollectionItem) AND
    ANSISameText(TvcmBaseCollectionItem(f_FoundItem).Caption, aName) then
  Result := TvcmBaseCollectionItem(f_FoundItem)
 else
 for l_Index := 0 to Pred(Count) do
 begin
  l_Item := Items[l_Index];
  if ANSISameText(TvcmBaseCollectionItem(l_Item).Caption, aName) then
  begin
   Result := TvcmBaseCollectionItem(l_Item);
   f_FoundItem := Result;
   break;
  end;//l_Item Is TevBaseCollectionItem
 end;//for l_Item
end;

function TvcmBaseCollection.FindItemByID(const anID: TvcmControlID): TvcmBaseCollectionItem;
  //virtual;
  {-}
var
 l_Item  : TvcmBaseCollectionItem;
 l_Index : Integer;
begin
 Result := nil;
 if (f_FoundItem Is TvcmBaseCollectionItem) AND
    (TvcmBaseCollectionItem(f_FoundItem).GetID = anID) then
  Result := TvcmBaseCollectionItem(f_FoundItem)
 else 
 for l_Index := 0 to Pred(Count) do
 begin
  l_Item := Items[l_Index];
  if (l_Item.GetID = anID) then
  begin
   Result := l_Item;
   f_FoundItem := Result;
   break;
  end;//l_Item Is TevBaseCollectionItem
 end;//for l_Item
end;

procedure TvcmBaseCollection.Sort;
  {-}
var
 I, J : Integer;

  function lCompareItems(const aItem1, aItem2 : String) : Integer;
  var
   lItem : TvcmBaseCollectionItem;
  begin
  {$IfDef vcmNeedL3}
  Result := l3Compare(l3PCharLen(aItem1), l3PCharLen(aItem2));
  {$Else vcmNeedL3}
   Result := AnsiCompareStr(aItem1, aItem2);
  {$EndIf vcmNeedL3}
   if (Result < 0) then
   begin
    lItem := Items[I];
    Items[J].Index := I;
    lItem.Index := J;
   end;
  end;

begin
 for I := Pred(Count) downto 0 do
  for J := Pred(Count) downto 0 do
   if lCompareItems(Items[J].Caption, Items[I].Caption) = 0 then
    // Caption ����������, ��������� �� Name
    lCompareItems(Items[J].Name, Items[I].Name);
end;

procedure TvcmBaseCollection.Notify(anItem   : TCollectionItem;
                                    anAction : TCollectionNotification);
  //override;
  {-}
begin
 if (anAction in [cnExtracting, cnDeleting]) AND (anItem = f_FoundItem) then
  f_FoundItem := nil;
 inherited;
end;
  
procedure TvcmBaseCollection.SetSorted(const Value: Boolean);
  {-}
begin
 if Value <> f_Sorted then
 begin
  f_Sorted := Value;
  if f_Sorted then
   Sort;
 end;
end;

procedure TvcmBaseCollection.CaptionChanged(aItem: TvcmBaseCollectionItem);
  {-}
begin
 if f_Sorted then
  Sort;
end;

function TvcmBaseCollection.GetItem(Index : Integer) : TvcmBaseCollectionItem;
begin
 Result := TvcmBaseCollectionItem(inherited GetItem(Index));
end;

procedure TvcmBaseCollection.SetItem(Index : Integer;
                                     Value : TvcmBaseCollectionItem);
begin
 inherited SetItem(Index, Value);
end;

end.

