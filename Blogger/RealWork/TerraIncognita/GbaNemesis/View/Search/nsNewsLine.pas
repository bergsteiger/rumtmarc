unit nsNewsLine;

// $Id: nsNewsLine.pas,v 1.4 2013/04/24 09:35:57 lulin Exp $

// $Log: nsNewsLine.pas,v $
// Revision 1.4  2013/04/24 09:35:57  lulin
// - ���������.
//
// Revision 1.3  2011/11/16 13:26:15  gensnet
// http://mdp.garant.ru/pages/viewpage.action?pageId=288010012
// �� InsNewsLine ������� Get_IsNewsLineDefined � IsNewsLineDefined
//
// Revision 1.2  2011/10/26 14:18:24  lulin
// {RequestLink:294597335}
//
// Revision 1.1  2010/09/08 17:09:47  lulin
// {RequestLink:197496539}.
//
// Revision 1.42  2009/07/20 12:49:05  lulin
// - ���������� �������� F1 ����� - {RequestLink:141264340}. �7, 32, 33.
//
// Revision 1.41  2009/04/29 07:20:13  oman
// - new: ��������� ������� - [$145097386]
//
// Revision 1.40  2009/04/28 14:45:47  oman
// - new: ������� ���� �������� ������ - [$145097386]
//
// Revision 1.39  2009/04/28 14:22:19  oman
// - new: ������������ �� ������ - [$145097386]
//
// Revision 1.38  2009/04/28 13:04:55  oman
// - new: ������� ��� - [$145097386]
//
// Revision 1.37  2009/02/20 12:25:15  lulin
// - <K>: 136941122.
//
// Revision 1.36  2009/02/10 14:43:25  lulin
// - <K>: 133891247. ��������� ���������� ������.
//
// Revision 1.35  2008/12/29 16:41:04  lulin
// - <K>: 134316705.
//
// Revision 1.34  2008/04/03 08:06:38  oman
// - fix: �������� ����������� �������� ����������� � ������������ ��� (cq28766)
//
// Revision 1.33  2008/03/26 14:29:03  lulin
// - <K>: 88080898.
//
// Revision 1.32  2008/03/26 11:37:16  lulin
// - �������� � ������ <K>: 88080898.
//
// Revision 1.31  2008/03/26 11:12:52  lulin
// - �������� � ������ <K>: 88080898.
//
// Revision 1.30  2008/01/10 07:23:08  oman
// ������� �� ����� �������
//
// Revision 1.29  2007/12/19 10:59:40  mmorozov
// - ������������� �� ����������� ������ ���������� (CQ: OIT5-27823);
//
// Revision 1.28  2007/12/10 12:51:07  mmorozov
// - new: ��������� ������ publisher\subscriber ��� �������������� ��������, ������ �������� (������������ ������������), ��������� ������� ������������ (� ������ CQ: OIT5-27823);
//
// Revision 1.27  2007/08/10 05:57:57  oman
// - fix: ����������, ��� � ������� ���������� ������������� _PChar
//  (cq25680)
//
// Revision 1.26  2007/04/05 11:16:50  lulin
// - cleanup.
//
// Revision 1.25  2007/02/16 17:17:33  lulin
// - ����������� �� ������������ ���������� ����.
//
// Revision 1.24  2007/02/13 12:52:05  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.23  2007/02/13 12:08:59  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.22  2007/02/09 14:03:22  lulin
// - ��� ���������� � ������ �� �������� ������ � ���������� � ������� �������.
//
// Revision 1.21  2007/02/05 09:40:12  lulin
// - ��� ������� ���������� � ����.
//
// Revision 1.20  2006/11/15 15:59:24  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.19.20.1  2006/11/15 15:55:24  oman
// - fix: ���� ����������� ��������� �����, � ����� ���������, ��
//  ������ ��������� ����� ��� ������������ �� ��������� => AV
//  (cq23647)
//
// Revision 1.19  2005/10/25 12:41:52  demon
// - new behavior: ������� ��������� ����������� �� ������-��������
// - new behavior: ���������� ���������� ENotFound �� ������ GetVisibleDelta
//
// Revision 1.18  2005/09/09 13:50:50  demon
// - new behavior: ��������� ��� ������������� ��������� ����� "�����"
//
// Revision 1.17  2005/09/09 11:37:54  demon
// - fix: ��� ������������ ��������� ����� ������ ��������� GetEntity
//
// Revision 1.16  2005/08/05 13:29:34  mmorozov
// - ������������� Monitoring.IsExists;
//
// Revision 1.15  2005/06/30 07:48:26  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.14  2005/04/06 10:17:13  am
// bugfix: ��� �������� TnsNewsLine ������ ���������� _CurrentThemeIndex � 0 (���� �� ���� ���� ���� ������)
//
// Revision 1.13  2005/03/30 14:12:16  demon
// - fix: �� ������������ ������ (� �����) �������� �������� �� ��������� �����
//
// Revision 1.12  2005/03/17 09:03:35  am
// new: ResetData
// change: �������� ������� � ���� ����
// change: �������� ����, ���������� �� ��������, �� ����������
//
// Revision 1.11  2005/03/16 13:20:28  am
// change: ������������� �� ��, ��� �� �������� ����� �������� ����� ����, �� ����������� ��������
//
// Revision 1.10  2005/03/16 10:26:20  am
// change: "���������" ���� �������
//
// Revision 1.9  2005/03/15 14:34:16  am
// change: ��� �������� ���������� ������� ���� � �������� 0
// bugfix: �������� �������
// change: �������� _CurrentThemeNode ����� ������� � ���������
//
// Revision 1.8  2005/03/06 13:43:13  demon
// - fix: AV ��� �������� ����� "��� ��������� �����"
//
// Revision 1.7  2005/03/04 15:06:34  demon
// - fix: ��������� �������� �� Root = nil, ��� �������� ����� � ������ ��������� ��������
//
// Revision 1.6  2005/03/03 12:18:14  demon
// - new behavior: ��������� ���������� ���� �������, ������� �������� (���� �� ���������)
//
// Revision 1.5  2005/03/02 14:17:13  demon
// - new behavior: ������ �������� ��������� ������ �� �������� �������
//
// Revision 1.4  2005/02/28 15:57:00  demon
// - new behavior: ���������� � �������� �������� �������� � ��������� (���� ���������� �������� �� ���������� �����������)
//
// Revision 1.3  2005/02/25 15:16:53  demon
// - new behavior: �������� ���������� ������ ������ ��� "��� ��������� �����", ������ �� �� �� ���������� �������� (���� �� ��������, �.�. ����������� ���)
//
// Revision 1.2  2005/02/24 16:34:47  demon
// - new behavior: ���������� �������� ���� ������������ �� "���� ��������� �����"
//
// Revision 1.1  2005/02/22 16:26:02  demon
// - new unit: ������ ��� ������ � ������� �������
//

{$Include nsDefine.inc }

interface

// <no_string>

uses
  l3Interfaces,
  l3Base,
  l3TreeInterfaces,

  afwInterfaces,

  vcmExternalInterfaces,
  vcmInterfaces,
  vcmStringList,

  DocumentUnit,
  DynamicTreeUnit,

  PrimeInterfaces,
  nsNewsLineSubscribersList
  ;

type
  _afwApplicationDataUpdate_Parent_ = Tl3Base;
  {$Include afwApplicationDataUpdate.imp.pas}
  TnsNewsLine = class(_afwApplicationDataUpdate_, InsNewsLine)
   private
    f_Root,
    f_CurrentTheme       : INodeBase;
    f_CurrentThemeIndex  : Integer;
    f_ThemeCount         : Integer;
    f_ThemeList          : IvcmStrings;
    f_Subscribers        : TnsNewsLineSubscribersList;

    {interface InsNewsLine}
    function  pm_getThemeList: IvcmStrings;
    function  pm_getCurrentTheme: Il3CString;
    procedure pm_setCurrentTheme(const aValue: Il3CString);
    procedure SaveThemeToSettings;
    procedure LoadThemeFromSettings;
    function MakeCurrentThemeTreeStruct: Il3SimpleTree;
    function ExtractAutoreferat(const aNode: Il3SimpleNode): IDocument;

    function  pm_getCurrentThemeNode: INodeBase;

    procedure SetCurrentThemeIndex(anIndex: Integer);

    procedure LoadThemeList;

    property CurrentThemeNode: INodeBase read pm_getCurrentThemeNode;

    procedure Subscribe(const aNotifier: InsNewsLineNotifier);
    procedure UnSubscribe(const aNotifier: InsNewsLineNotifier);
   private
    procedure NotifySubscribers;
   protected
    procedure FinishDataUpdate;
      override;
      {* �������� �� ��������� ���������� }
   public
    procedure Cleanup; override;
     {-}
    constructor Create;
     reintroduce;
     {-}
    class function Make: InsNewsLine;
     reintroduce;
     {-}
  end;//TnsNewsLine

function nsNewsLineTree: InsNewsLine;

implementation

uses
  SysUtils,

  l3String,

  afwFacade,

  vcmBase,

  BaseTypesUnit,
  IOUnit,

  DataAdapter,

  nsConst,
  nsTypes,
  nsTreeStruct,
  nsSettings
  ;

var
 g_nsNewsLine : InsNewsLine = nil;

{$Include afwApplicationDataUpdate.imp.pas}

function nsNewsLineTree: InsNewsLine;
begin
 if (g_nsNewsLine = nil) then
  g_nsNewsLine := TnsNewsLine.Make;
 Result := g_nsNewsLine;
end;//nsNewsLineTree

{start class TnsNewsLine}

procedure TnsNewsLine.Cleanup;
 // override;
 {-}
begin
 f_Root := nil;
 f_CurrentTheme := nil;
 f_ThemeList := nil;
 f_CurrentThemeIndex := -1;
 vcmFree(f_Subscribers);
 inherited;
end;

function TnsNewsLine.pm_getCurrentThemeNode: INodeBase;
begin
 if (f_CurrentTheme = nil) and
    (f_CurrentThemeIndex >= 0) then
 begin
  try
   f_Root.GetByVisibleIndex(f_CurrentThemeIndex + 1, f_CurrentTheme);
  except
   on EStorageLocked do
   // http://mdp.garant.ru/pages/viewpage.action?pageId=294597335
   begin
    f_CurrentTheme := nil;
    Result := nil;
    Exit;
   end;//EStorageLocked
  end;//try..except 
  f_CurrentTheme.SetFlag(FM_OPEN, True);
 end;//f_CurrentTheme = nil
 Result := f_CurrentTheme;
end;

procedure TnsNewsLine.SetCurrentThemeIndex(anIndex: Integer);
begin
 if (anIndex >= 0) and
    (f_CurrentThemeIndex <> anIndex) then
 begin
  f_CurrentThemeIndex := anIndex;
  if f_CurrentTheme <> nil then
   f_CurrentTheme.SetFlag(FM_OPEN, False);
  f_CurrentTheme := nil;
 end;//anIndex >= 0
end;

procedure TnsNewsLine.LoadThemeList;
var
 I       : Integer;
 l_Theme : INodeBase;
 l_Name  : IString;
begin
 if (f_Root <> nil) then
 begin
  f_ThemeCount := f_Root.GetChildCount;
  if (f_ThemeCount > 0) then
   f_CurrentThemeIndex := 0;
   for I := 0 to Pred(f_ThemeCount) do
   begin
    try
     f_Root.GetByVisibleIndex(I + 1, l_Theme);
    except
     on EStorageLocked do
     // http://mdp.garant.ru/pages/viewpage.action?pageId=294597335
     begin
      f_ThemeCount := 0;
      f_ThemeList.Clear;
      Exit;
     end;//EStorageLocked
    end;//try..except
    try
     l_Theme.GetCaption(l_Name);
     try
      f_ThemeList.Add(nsCStr(l_Name));
     finally
      l_Name := nil;
     end;//try..finally
    finally
     l_Theme := nil;
    end;//try..finally
   end;//for I
 end;//f_Root <> nil
end;

constructor TnsNewsLine.Create;
 // reintroduce;
begin
 inherited Create;
 f_CurrentThemeIndex := -1;
 defDataAdapter.Monitoring.GetNewsLineRoot(f_Root);
 f_ThemeList := TvcmStringList.Make;
 LoadThemeList;
end;

class function TnsNewsLine.Make: InsNewsLine;
 // reintroduce;
 {-}
var
 l_NewsLine: TnsNewsLine;
begin
 l_NewsLine := Create;
 try
  Result := l_NewsLine;
 finally
  l3Free(l_NewsLine);
 end;//try..finally
end;

function TnsNewsLine.pm_getThemeList: IvcmStrings;
begin
 Result := f_ThemeList;
end;

function TnsNewsLine.pm_getCurrentTheme: Il3CString;
begin
 if (f_CurrentThemeIndex >= 0) and
    (f_CurrentThemeIndex < f_ThemeList.Count) then
  Result := f_ThemeList.ItemC[f_CurrentThemeIndex]
 else
  Result := nil;
end;

procedure TnsNewsLine.pm_setCurrentTheme(const aValue: Il3CString);
begin
 SetCurrentThemeIndex(f_ThemeList.IndexOf(aValue));
end;

procedure TnsNewsLine.SaveThemeToSettings;
begin
 if (f_Root <> nil) and (CurrentThemeNode <> nil) then
  CurrentThemeNode.SaveInSetting(nsAStr(pi_Monitorings_Active_Theme));
end;

procedure TnsNewsLine.LoadThemeFromSettings;
var
 l_Setting: ISettingEntity;
 l_Theme: INodeBase;
 l_Index: LongInt;
begin
 if (f_Root <> nil) then
 begin
  try
   f_Root.LoadFromSetting(nsAStr(pi_Monitorings_Active_Theme), l_Setting);
  except
   on EStorageLocked do
   // http://mdp.garant.ru/pages/viewpage.action?pageId=294597335
   begin
    f_Root := nil;
    Exit;
   end;//try..except
  end;//try..except
  if Supports(l_Setting, INodeBase, l_Theme) and
     (l_Theme.GetLevel = 1) then
  begin
   try
    l_Index := f_Root.GetVisibleDelta(l_Theme);
   except
    on ENotFound do
     l_Index := -1; // ������ �� �����, ������ -1
   end;//try..except
   if (l_Index > 0) then
   begin
    SetCurrentThemeIndex(l_Index - 1);
    exit;
   end;//l_Index > 0
  end;//Supports(l_Setting, INodeBase, l_Theme)

  if f_Root.GetChildCount > 0 then
   // ��� ������� ���� �������� "��� �����������"
   SetCurrentThemeIndex(0)
  else
   SetCurrentThemeIndex(-1);
 end;//f_Root <> nil
end;

procedure TnsNewsLine.FinishDataUpdate;
begin
 f_Root := nil;
 f_CurrentTheme := nil;
 f_ThemeList.Clear;
 f_CurrentThemeIndex := -1;
 defDataAdapter.Monitoring.GetNewsLineRoot(f_Root);
 LoadThemeList;
 NotifySubscribers;
end;

procedure TnsNewsLine.Subscribe(const aNotifier: InsNewsLineNotifier);
begin
 if f_Subscribers = nil then
  f_Subscribers := TnsNewsLineSubscribersList.Make;
 f_Subscribers.Add(aNotifier);
end;

procedure TnsNewsLine.UnSubscribe(const aNotifier: InsNewsLineNotifier);
begin
 Assert(Assigned(f_Subscribers));
 f_Subscribers.Remove(aNotifier);
end;

procedure TnsNewsLine.NotifySubscribers;
var
 l_IDX: Integer;
begin
 if Assigned(f_Subscribers) then
  for l_IDX := 0 to f_Subscribers.Count - 1 do
   f_Subscribers.Items[l_IDX].DataChanged;
end;

function TnsNewsLine.MakeCurrentThemeTreeStruct: Il3SimpleTree;
begin
 if nsNewsLineTree.ThemeList.Count > 0 then
  Result := TnsTreeStruct.Make(CurrentThemeNode, False)
 else
  Result := nil;
end;

function TnsNewsLine.ExtractAutoreferat(
  const aNode: Il3SimpleNode): IDocument;
var
 l_Node: INodeBase;
 l_Entity: IEntityBase;
begin
 Result := nil;
 if Supports(aNode, INodeBase, l_Node) then
 begin
  l_Node.GetEntity(l_Entity);
  Supports(l_Entity, IDocument, Result);
 end;
end;

initialization

finalization
 g_nsNewsLine := nil;
end.
