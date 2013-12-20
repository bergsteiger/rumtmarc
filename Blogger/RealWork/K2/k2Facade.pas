unit k2Facade;
{* ���������� ���������� K2, ��������������� ��� ���������������� ������� � ��������� �����. }

{ ���������� "K-2"        }
{ �����: ����� �.�. �     }
{ ������: k2Facade -      }
{ �����: 01.04.2005 17:36 }
{ $Id: k2Facade.pas,v 1.27 2013/04/09 17:40:13 lulin Exp $ }

// $Log: k2Facade.pas,v $
// Revision 1.27  2013/04/09 17:40:13  lulin
// - �������� ���������� ��� XE.
//
// Revision 1.26  2012/10/26 17:42:53  lulin
// - �������� ��������� ����� ���������.
//
// Revision 1.25  2009/07/06 15:46:29  lulin
// - ������������ �� ����������� � ��������.
//
// Revision 1.24  2009/07/06 15:36:19  lulin
// - ������������ �� ����������� � ��������.
//
// Revision 1.23  2009/04/14 18:12:01  lulin
// [$143396720]. ���������������� ������.
//
// Revision 1.22  2009/03/24 18:45:04  lulin
// - ��������� �������� �� ����, �.�. ������ ������� �������� ������� - [$140282354].
//
// Revision 1.21  2009/03/05 16:20:42  lulin
// - <K>: 137470629. ������ �������� ������ �� ��� �� ��������������.
//
// Revision 1.20  2008/06/18 08:49:52  lulin
// - ������������ �������������� ���������� � ��������� �������� �����.
//
// Revision 1.19  2008/06/10 14:38:40  lulin
// - ������ ������ �� ���� � ����� ������� �����.
//
// Revision 1.18  2008/03/20 09:48:38  lulin
// - cleanup.
//
// Revision 1.17  2008/02/07 14:44:43  lulin
// - ����� _Tl3LongintList �������� � ����������� ������.
//
// Revision 1.16  2007/12/24 15:25:30  lulin
// - ������� �������� �����.
//
// Revision 1.15  2006/01/30 09:49:49  lulin
// - ����� �������� ��������.
//
// Revision 1.14  2006/01/18 16:37:06  lulin
// - �� ����� ����������� ��� ����� ��� ID.
//
// Revision 1.13  2006/01/18 16:31:47  lulin
// - cleanup.
//
// Revision 1.12  2006/01/18 16:12:15  lulin
// - �� ������������ Listner'�� ��� ����� ��� ID.
//
// Revision 1.11  2005/06/30 16:38:22  lulin
// - ��������� ����������� ��������� �����, ��� ������� � ���������� � ������ ����������� � � ���� ����� � ���������� ��� �������� ���������.
//
// Revision 1.10  2005/04/28 15:04:09  lulin
// - ��������� ����� B_Tag_Box � HEAD.
//
// Revision 1.9.2.3  2005/04/23 16:07:35  lulin
// - ������ ��������� ��������� Ik2TagBox.
//
// Revision 1.9.2.2  2005/04/22 11:04:30  lulin
// - bug fix: ���� ������ ��� ������������ ������.
//
// Revision 1.9.2.1  2005/04/21 14:47:02  lulin
// - ����������� �� ������� ��� ������ - ������ ������� ����������� �������� ���� ��������� ��������� Ik2Tag.
//
// Revision 1.9  2005/04/15 08:59:57  lulin
// - ������ ������ ������ �� ���, � �� ���������� ���.
//
// CVS XXX
// Revision 1.8  2005/04/12 09:53:09  lulin
// - ��������� � ������ - � �������� �������� List Index Out Of Bounds.
//
// Revision 1.7.2.1  2005/04/08 12:00:38  lulin
// - _Processor ���� ������������ ����������.
//
// Revision 1.7  2005/04/05 16:07:07  lulin
// - new behavior: ������ ���������� ����� ����������� �������� ����������� �� ��������� ���������.
//
// Revision 1.6  2005/04/04 06:44:07  lulin
// - � ����� � ���������� ��������� ������� � ������ ���������� K-2, ������� ���������� "��������" ��������� � ���������/������������ ������� �����.
//
// Revision 1.5  2005/04/01 16:58:43  lulin
// - ������� ������������ ���� ���������� ���������.
//
// Revision 1.4  2005/04/01 16:56:00  lulin
// - new behavior: ������ ��� �����������, �������� � ������ ������ ����������, �������� ��������� � �������� ������������ � ������.
//
// Revision 1.3  2005/04/01 16:18:42  lulin
// - new behavior: ������ ��������� ���� �������� ��������� � ���, ��� ������� ����� ������ �����������.
//
// Revision 1.2  2005/04/01 14:35:25  lulin
// - ��������� �� �������� �������� � ������� ���������.
//
// Revision 1.1  2005/04/01 13:53:43  lulin
// - new unit: k2Facade.
//

{$Include k2Define.inc }

interface

uses
  k2Interfaces,
  k2Base
  ;

type
  Tk2Sender = TObject;
  Tk2 = class
    public
    // public methods
      class procedure SignalEvent(const aSender : Tk2Sender;
                                  const anID    : Tk2EventID;
                                  const aTag    : Ik2Tag = nil;
                                  const anOp    : Ik2Op = nil;
                                  aPoint        : Integer = 0;
                                  aLen          : Integer = 0;
                                  aTotal        : Integer = High(Integer));
        virtual;
        {* - ��������� ��������� ���� ���������������� �����. }
      class procedure AddListner(const aListner: Ik2TagListner);
        overload;
        {* - ��������� ������, ��������� ������� ����������. }
      class procedure RemoveListner(const aListner: Ik2TagListner);
        overload;
        {* - ������� ������, ��������� ������� ����������. }
      class procedure AddListner(const aListner: Ik2Listner);
        overload;
        {* - ��������� ������, ��������� ������� ����������. }
      class procedure RemoveListner(const aListner: Ik2Listner);
        overload;
        {* - ������� ������, ��������� ������� ����������. }
      class function  TypeTable: Tk2TypeTable;
        {* - ����������� ������� �����. }
  end;//Tk2
  Rk2 = class of Tk2;

var
 k2 : Rk2 = Tk2;

implementation

uses
  SysUtils,

  l3Types,
  l3IID,
  l3Base,
  l3LongintList,

  k2Tags,
  k2TagTool
  ;

// start class Tk2

const
  ev_iidCursor : Tl3IID = (IID: 0);
    {* - ������ �������. }
var
 g_Listners : array [Tk2EffTypeID] of Tl3LongintList;
 g_GlobalListners : Tl3LongintList;

class procedure Tk2.SignalEvent(const aSender : Tk2Sender;
                                const anID    : Tk2EventID;
                                const aTag    : Ik2Tag = nil;
                                const anOp    : Ik2Op = nil;
                                aPoint        : Integer = 0;
                                aLen          : Integer = 0;
                                aTotal        : Integer = High(Integer));
  //virtual;                          
  {* - ��������� ��������� ���� ���������������� �����. }
  
var
 l_Event       : Tk2Event;
 l_EventInited : Boolean;

  procedure CheckEvent;
  begin
   if not l_EventInited then
   begin
    //l_Event.Sender := aSender;
    l_Event.ID := anID;
    l_Event.Point := aPoint;
    l_Event.Len := aLen;
    l_Event.Total := aTotal;
    l_EventInited := true;
   end;//not l_EventInited
  end;

  procedure CallOld;

   function _ModifyCursor(PLC: PObject; Index: Long): Bool;
   begin//_ModifyCursor
    Result := true;
    CheckEvent;
    Ik2TagListner(Tk2TagPointer(PLC^)).Fire(l_Event, anOp);
   end;//_ModifyCursor

  var
   l_CursorCache : Ik2OldCursorCache;
   l_IA          : Tl3IteratorAction;
  begin//CallOld
   if aTag.QT(Ik2OldCursorCache, l_CursorCache, nil) then
    try
     l_IA := l3L2IA(@_ModifyCursor);
     try
      l_CursorCache.Iterate(aTag, l_IA);
     finally
      l3FreeIA(l_IA);
     end;//try..finally
    finally
     l_CursorCache := nil;
    end;//try..finally
  end;//CallOld

  procedure CallOldGlobal;

   function _ModifyCursor(PLC: PObject; Index: Long): Bool;
   begin//_ModifyCursor
    Result := true;
    CheckEvent;
    Ik2TagListner(Tk2TagPointer(PLC^)).Fire(l_Event, anOp);
   end;//_ModifyCursor

  var
   l_IA    : Tl3IteratorAction;
   l_Index : Tk2EffTypeID;
   l_Type  : Tk2Type;
  begin//CallOldGlobal
   l_IA := l3L2IA(@_ModifyCursor);
   try
    for l_Index := Low(Tk2EffTypeID) to High(Tk2EffTypeID) do
    begin
     l_Type := Tk2TypeTable(aSender)[Ord(l_Index)];
     if (l_Type <> nil) AND (l_Type.InterfaceFactory <> nil) then
      l_Type.InterfaceFactory.IterateCursors(l_IA);
    end;//for l_Index
   finally
    l3FreeIA(l_IA);
   end;//try..finally
  end;//CallOldGlobal

  function CallListner(pListner: PIUnknown; Index: Long): Bool;
  begin//CallListner
   Result := true;
   CheckEvent;
   if (pListner^ = nil) then
   begin
    l3System.Msg2Log(IntToStr(Index));
    Exit;
   end;
   Assert(pListner^ <> nil);
   Ik2TagListner(pListner^).Fire(l_Event, anOp);
  end;//CallListner

  function CallGlobalListner(pListner: PIUnknown; Index: Long): Bool;
  begin//CallGlobalListner
   Result := true;
   CheckEvent;
   Ik2Listner(pListner^).Fire(l_Event, anOp);
  end;//CallGlobalListner

  function CallTagListner(pListner: PIUnknown; Index: Long): Bool;
  begin//CallTagListner
   Result := true;
   if (pListner^ <> nil) AND
      not (anID in Ik2TagListner(pListner^).ExcludeEvents) AND
      (Ik2TagListner(pListner^).IsSame(aTag)) then
   begin
    CheckEvent;
    Ik2TagListner(pListner^).Fire(l_Event, anOp);
   end;//not (anID in Ik2TagListner(pListner^).ExcludeEvents)..
  end;//CallTagListner

var
 l_Type  : Tk2TypeID;
 l_Index : Tk2EffTypeID;
begin
 l_EventInited := false;
 if (aTag <> nil) then
 begin
  if (anID = k2_eidAttrChanged) then
   Exit;
  l_Type := Tk2TypeID(aTag.TagType.ID);
  if (l_Type >= Low(Tk2EffTypeID)) AND (l_Type <= High(Tk2EffTypeID)) then
  begin
   if (anID <> k2_eidAttrChanged) then
    CallOld;
   if (g_Listners[l_Type] <> nil) then
    g_Listners[l_Type].IterateAllF(l3L2IA(@CallTagListner));
  end;//l_Type >= Low(Tk2EffTypeID)..
 end//aTag <> nil
 else
 begin
  Case anID of
   k2_eidTypeTableWillBeDestroyed :
   begin
    if (aSender <> nil) then
    begin
     CallOldGlobal;
     for l_Index := Low(Tk2EffTypeID) to High(Tk2EffTypeID) do
      if (g_Listners[l_Index] <> nil) then
       g_Listners[l_Index].IterateAllF(l3L2IA(@CallListner));
     if (g_GlobalListners <> nil) then
      g_GlobalListners.IterateAllF(l3L2IA(@CallGlobalListner));
     for l_Index := Low(Tk2EffTypeID) to High(Tk2EffTypeID) do
      FreeAndNil(g_Listners[l_Index]);
     FreeAndNil(g_GlobalListners);
    end;//aSender <> nil
   end;//k2_eidTypeTableWillBeDestroyed
  end;//Case anID
 end;//aTag <> nil
end;

class procedure Tk2.AddListner(const aListner: Ik2TagListner);
  {-}
var
 l_T : Tk2TypePrim;
 l_Type : Tk2TypeID;
 l_Index : Integer;
begin
 if (aListner <> nil) then
 begin
  l_T := aListner.TagType;
  if (l_T = nil) then
   Exit;
  l_Type := Tk2TypeID(l_T.ID);
  if (l_Type >= Low(Tk2EffTypeID)) AND (l_Type <= High(Tk2EffTypeID)) then
  begin
   if (g_Listners[l_Type] = nil) then
    g_Listners[l_Type] := Tl3LongintList.MakeSorted;
   try
    assert(g_Listners[l_Type].IndexOf(0) < 0);
   except
    l3System.Msg2Log(IntToStr(g_Listners[l_Type].Count));
   end;
   if (g_Listners[l_Type].Count = 780) then
    l_Index := g_Listners[l_Type].Add(Integer(aListner))
   else
    l_Index := g_Listners[l_Type].Add(Integer(aListner));
   try
    assert(g_Listners[l_Type].IndexOf(0) < 0);
   except
    l3System.Msg2Log(IntToStr(g_Listners[l_Type].Count));
   end;
  end;//l_Type >= Low(Tk2EffTypeID)..
 end;//aListner <> nil
end;

class procedure Tk2.RemoveListner(const aListner: Ik2TagListner);
  {-}
var
 l_T : Tk2TypePrim;
 l_Type : Tk2TypeID;
 l_Index : Integer;
begin
 if (aListner <> nil) then
 begin
  l_T := aListner.TagType;
  if (l_T = nil) then
   Exit;
  l_Type := Tk2TypeID(l_T.ID);
  if (l_Type >= Low(Tk2EffTypeID)) AND (l_Type <= High(Tk2EffTypeID)) then
  begin
   if (g_Listners[l_Type] <> nil) then
   begin
    try
     assert((g_Listners[l_Type].Count <= 3) OR (g_Listners[l_Type][3] <> 0));
     assert((g_Listners[l_Type].Count <= 2) OR (g_Listners[l_Type][2] <> 0));
     assert((g_Listners[l_Type].Count <= 1) OR (g_Listners[l_Type][1] <> 0));
     assert((g_Listners[l_Type].Count = 0) OR (g_Listners[l_Type].First <> 0));
     assert(g_Listners[l_Type].IndexOf(0) < 0);
    except
     l3System.Msg2Log(IntToStr(g_Listners[l_Type].Count));
    end;
    l_Index := g_Listners[l_Type].Remove(Integer(aListner));
    try
     assert((g_Listners[l_Type].Count <= 2) OR (g_Listners[l_Type][2] <> 0));
     assert((g_Listners[l_Type].Count <= 1) OR (g_Listners[l_Type][1] <> 0));
     assert((g_Listners[l_Type].Count = 0) OR (g_Listners[l_Type].First <> 0));
     assert(g_Listners[l_Type].IndexOf(0) < 0);
    except
     l3System.Msg2Log(IntToStr(l_Index));
     l3System.Msg2Log(IntToStr(g_Listners[l_Type].Count));
    end;
   end;//g_Listners[l_Type] <> nil
  end;//l_Type >= Low(Tk2EffTypeID)..
 end;//aListner <> nil
end;

class procedure Tk2.AddListner(const aListner: Ik2Listner);
  //overload;
  {-}
begin
 Assert(aListner <> nil);
 if (g_GlobalListners = nil) then
  g_GlobalListners := Tl3LongintList.MakeSorted;
 g_GlobalListners.Add(Integer(aListner));
end;

class procedure Tk2.RemoveListner(const aListner: Ik2Listner);
  //overload;
  {-}
begin
 Assert(aListner <> nil);
 if (g_GlobalListners <> nil) then
  g_GlobalListners.Remove(Integer(aListner));
end;

class function Tk2.TypeTable: Tk2TypeTable;
  //virtual;
  {-}
begin
 Result := Tk2TypeTable.GetInstance;
end;

end.

