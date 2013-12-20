unit evNotifiedProcessor;

{ ���������� "�������"    }
{ �����: ����� �.�.       }
{ ������: evNotifiedProcessor - }
{ �����: 01.12.2005 06:21 }
{ $Id: evNotifiedProcessor.pas,v 1.14 2009/07/23 17:28:50 lulin Exp $ }

// $Log: evNotifiedProcessor.pas,v $
// Revision 1.14  2009/07/23 17:28:50  lulin
// - ������� �������� ������ ����������.
// - ������ ������������ � SomeDataContainer.
//
// Revision 1.13  2009/07/23 13:42:11  lulin
// - ��������� ��������� �������� ���� ���� ����.
//
// Revision 1.12  2009/07/22 12:29:50  lulin
// - �������� �������������� ��������� ��������� �����.
//
// Revision 1.11  2009/07/21 18:23:09  lulin
// - ���������������� � ���������� �������������� ����� ��� ������ ���������.
//
// Revision 1.10  2009/07/06 13:32:06  lulin
// - ������������ �� ����������� � ��������.
//
// Revision 1.9  2009/03/04 13:32:46  lulin
// - <K>: 137470629. ���������� �������������� ����� � ������ � ������� �� �� ����� �������.
//
// Revision 1.8  2008/11/10 15:42:50  lulin
// - <K>: 114459503. ������ � ������ � ��������� ��������� �������� ������� �������� ��������.
//
// Revision 1.7  2008/07/02 12:32:21  lulin
// - <K>: 91848911.
//
// Revision 1.6  2008/05/16 14:01:10  lulin
// - ��������� �� ������.
//
// Revision 1.5  2008/04/02 14:22:01  lulin
// - cleanup.
//
// Revision 1.4  2008/01/24 07:58:23  dinishev
// Bug fix: �������� �������� ����� ��������� ����� � ������� ������
//
// Revision 1.3  2007/12/25 12:55:52  lulin
// - ������ �������� ������.
//
// Revision 1.2  2007/12/05 12:35:06  lulin
// - ������� �������� ���, ������������ ������� ����� � Head'�.
//
// Revision 1.1  2007/12/04 13:04:55  lulin
// - ���������� ��� �������� � ����������� ��������.
//
// Revision 1.16  2007/09/04 18:06:16  lulin
// - cleanup.
//
// Revision 1.15  2007/09/03 11:39:29  lulin
// - bug fix: �� ���������� ����������.
//
// Revision 1.14  2007/09/03 10:46:41  lulin
// - ��������� ����� ����������.
//
// Revision 1.13  2007/08/02 16:08:46  lulin
// - bug fix: �� ��������� �������.
//
// Revision 1.12  2006/11/03 10:59:46  lulin
// - ��������� � ������ 6.4.
//
// Revision 1.11.4.2  2006/10/26 12:03:53  lulin
// - �������� �������� ����.
//
// Revision 1.11.4.1  2006/10/23 09:59:22  lulin
// - ������� ������ ������ � ���������� �����.
//
// Revision 1.11  2006/08/02 10:51:48  lulin
// - ��������� � ������ � ������� ������� �� �����������.
//
// Revision 1.10.16.1  2006/07/28 14:11:11  lulin
// - ������ ������� ������������������ ���������.
//
// Revision 1.10  2006/01/27 09:40:57  lulin
// - bug fix: ��� �������/�������� ���������� �� ������������������� �������.
//
// Revision 1.9  2006/01/11 12:39:42  lulin
// - bug fix: ��� ���������� _Preview ����������� ��������� ����� ����������.
//
// Revision 1.8  2005/12/15 08:06:24  lulin
// - new behavior: ��� �������/�������� ����������� ������������� � ������������� �������� ���������� (CQ OIT5-18640).
//
// Revision 1.7  2005/12/05 12:41:48  lulin
// - bug fix: ��� ������ �� ������ ����������� ��������� ������ ���������.
//
// Revision 1.6  2005/12/02 22:38:05  lulin
// - ����������� � ���������� ���������� � �������� �������� ������ ���������� ����� ���������, � �� ����� ����������� ���������.
//
// Revision 1.5  2005/12/02 22:03:43  lulin
// - ������ ���������� �������� ���������� ������ ����� ������� �������, � �� ���������� ��������.
//
// Revision 1.4  2005/12/02 20:04:01  lulin
// - bug fix: ����������� �������� ��������� ������� Undo-�����.
//
// Revision 1.3  2005/12/02 18:23:24  lulin
// - �������� ������������ �� ��������/���������� ��������� ����������� ��������� ���������� �� ���������.
//
// Revision 1.2  2005/12/01 11:55:16  lulin
// - ����������� �� ��������� ������� ����� ���� ��������� �� ������� Processor -> DocumentContainer.
//
// Revision 1.1  2005/12/01 05:27:39  lulin
// - ����������� �� ��������� �������� ���� ��������� �� ������� Processor -> DocumentContainer -> TextSource.
//

{$Include evDefine.inc }

interface

uses
  l3Interfaces,
  
  k2Interfaces,
  
  evOpProc,

  nevTools,

  k2Base,
  k2BaseStruct
  ;

type
  TevNotifiedProcessor = class(TevCustomUndoProcessor)
    protected
    // internal methods
   procedure NotifyPropChanged(aProp: Tk2CustomPropertyPrim;
    const aValues;
    const anOp: Ik2Op); override;
      procedure PropChanged(Prop     : Tk2CustomPropertyPrim;
                            const V        : Tk2Values;
                            const anOpPack : Ik2Op);
        {-}
      procedure ChildAdded(const aList    : Ik2Tag;
                           aProp    : Tk2ArrayProperty;
                           const aChild   : Ik2Tag;
                           anIndex        : Integer;
                           const anOpPack : InevOp);
        virtual;
        {-}
      procedure ChildDeleted(const aList    : Ik2Tag;
                             aProp    : Tk2ArrayProperty;
                             const aChild   : Ik2Tag;
                             anIndex        : Integer;
                             const anOpPack : InevOp);
        {-}
      procedure NotifyInsert(const aList    : IUnknown;
                             aProp    : TObject;
                             const aChild   : IUnknown;
                             anIndex        : Integer;
                             const anOpPack : InevOp);
        override;
        {-}
      procedure NotifyDelete(const aList    : IUnknown;
                             aProp    : TObject;
                             const aChild   : IUnknown;
                             anIndex        : Integer;
                             const anOpPack : InevOp);
        override;
        {-}
  end;//TevNotifiedProcessor

implementation

uses
  l3Types,
  l3Tree_TLB,
  
  k2Tags,
  k2PropertyOperation,
  k2ChildOperation,

  nevBase,
  evBseOp,

  ParaList_Const,
  SegmentsLayer_Const,
  Block_Const
  ;

// start class TevNotifiedProcessor

procedure TevNotifiedProcessor.NotifyPropChanged(aProp: Tk2CustomPropertyPrim;
 const aValues;
 const anOp: Ik2Op);
begin
 PropChanged(aProp, Tk2Values(aValues), anOp);
end;

procedure TevNotifiedProcessor.PropChanged(Prop     : Tk2CustomPropertyPrim;
                                           const V        : Tk2Values;
                                           const anOpPack : Ik2Op);
  {-}
var
 l_Pack     : InevOp;
 l_OldValue : Ik2Tag;
begin
 l_Pack := anOpPack;
 if (l_Pack = nil) then
  l_Pack := StartOp;
 if (l_Pack <> nil) then
 try
  if l_Pack.SaveUndo then
  begin
   l_OldValue := V.rOld;
   if (l_OldValue = nil) OR l_OldValue.IsNull then
   begin
    if (V.rNew <> nil) and not V.IsNull then
     Ok2AddProp.ToUndo(l_Pack, V.rTag^, Prop, l_OldValue, V.rNew^);
   end//l_OldValue.IsNull
   else
   begin
    if (V.rNew = nil) or V.IsNull then
     Ok2DelProp.ToUndo(l_Pack, V.rTag^, Prop, l_OldValue, V.rNew^)
    else
     Ok2ModifyProp.ToUndo(l_Pack, V.rTag^, Prop, l_OldValue, V.rNew^);
   end;//l_OldValue.IsNull
  end;//l_Pack.SaveUndo
  if not l_Pack.InIOProcess AND (Document <> nil) then
   Document.PropChanged(Tk2Prop(Prop), V, l_Pack);
 finally
  l_Pack := nil;
 end;//try..finally
end;

procedure TevNotifiedProcessor.ChildAdded(const aList    : Ik2Tag;
                                          aProp    : Tk2ArrayProperty;
                                          const aChild   : Ik2Tag;
                                          anIndex        : Integer;
                                          const anOpPack : InevOp);
  {-}
var
 l_IsList : Boolean;
 //l_Para   : InevPara;
begin
 if (anOpPack <> nil) then
 begin
  if not anOpPack.InIOProcess then
  begin
   l_IsList := aList.InheritsFrom(k2_idParaList);
   if anOpPack.SaveUndo then
   begin
    if l_IsList then
     OevInsertPara.ToUndo(anOpPack, aList, Succ(anIndex), aChild)
    else
     Ok2AddChild.ToUndo(anOpPack, aList, aProp, aChild, anIndex);
   end;//anOpPack.SaveUndo
   if l_IsList then
   begin
    ParaOp(aList, aChild, l3_opInsert);
(*    if aList.QT(InevPara, l_Para, Self) then
     try
      l_Para.Shape.Unformat;
      if l_Para.InheritsFrom(k2_idTableCell) then
       with l_Para.OwnerPara do
       begin
        Shape.Unformat;
        OwnerPara.Shape.Unformat;
       end;//l_Para.OwnerPara
     finally
      l_Para := nil;
     end//try..finally
    else
     Assert(false);*) // <stub>
    if (Document <> nil) then
     Document.ViewArea.Invalidate;
   end//aList.InheritsFrom(k2_idParaList)
   else
    if aList.InheritsFrom(k2_idSegmentsLayer) then
    begin
     if (Document <> nil) then
      Document.ViewArea.Changed(nev_cpView);
   end;//if aList.InheritsFrom(k2_idSegmentsLayer) then
  end;//not anOpPack.InIOProcess
 end;//(anOpPack <> nil)
 if (Document <> nil) then
  Document.ChildAdded(aList, aProp, aChild, anIndex, anOpPack);
end;

procedure TevNotifiedProcessor.ChildDeleted(const aList    : Ik2Tag;
                                            aProp    : Tk2ArrayProperty;
                                            const aChild   : Ik2Tag;
                                            anIndex        : Integer;
                                            const anOpPack : InevOp);
  {-}
var
 l_IsList      : Boolean;
 l_AnchorIndex : IevAnchorIndex;
 //l_Para        : InevPara;
begin
 if (anOpPack <> nil) then
 begin
  if not anOpPack.InIOProcess then
  begin
   if (anIndex >= 0) then
   //- �������� ���������� ���������� � Undo ����� ������� �� ������ ������
   begin
    l_IsList := aList.InheritsFrom(k2_idParaList);
    if anOpPack.SaveUndo then
    begin
     if l_IsList then
      OevDeletePara.ToUndo(anOpPack, aList, Succ(anIndex), aChild)
     else
      Ok2DeleteChild.ToUndo(anOpPack, aList, aProp, aChild, anIndex);
    end;//anOpPack.SaveUndo
    if l_IsList then
    begin
     ParaOp(aList, aChild, l3_opDelete);
     if aChild.InheritsFrom(k2_idBlock) then
     begin
      if aList.QT(IevAnchorIndex, l_AnchorIndex, Self) then
       try
        l_AnchorIndex.Delete(aChild.IntA[k2_tiLayerID], aChild.IntA[k2_tiHandle]);
       finally
        l_AnchorIndex := nil;
       end;//try..finally
     end;//aChild.InheritsFrom(k2_idBlock)
(*     if aList.QT(InevPara, l_Para, Self) then
      try
       l_Para.Shape.Unformat;
       if l_Para.InheritsFrom(k2_idTableCell) then
        with l_Para.OwnerPara do
        begin
         Shape.Unformat;
         OwnerPara.Shape.Unformat;
        end;//l_Para.OwnerPara
      finally
       l_Para := nil;
      end//try..finally
     else
      Assert(false);*) // <stub>
     if (Document <> nil) then
     begin
      with Document do
      begin
       SubCache.ClearSubs;
       ViewArea.Invalidate;
      end;//with Document
     end;//Document <> nil
    end//l_IsList
    else
     if aList.InheritsFrom(k2_idSegmentsLayer) then
     begin
      if (Document <> nil) then
       Document.ViewArea.Changed(nev_cpView);
    end;//if aList.InheritsFrom(k2_idSegmentsLayer) then
   end;//anIndex >= 0
  end;//not anOpPack.InIOProcess
  if (Document <> nil) then
   Document.ChildDeleted(aList, aProp, aChild, anIndex, anOpPack);
 end;//OpPack <> nil
end;

procedure TevNotifiedProcessor.NotifyInsert(const aList    : IUnknown;
                                            aProp    : TObject;
                                            const aChild   : IUnknown;
                                            anIndex        : Integer;
                                            const anOpPack : InevOp);
  //override;
  {-}
begin
 inherited;
 {$IfOpt D+}
 ChildAdded(aList As Ik2Tag, aProp As Tk2ArrayProperty, aChild As Ik2Tag, anIndex, anOpPack);
 {$Else}
 ChildAdded(Ik2Tag(aList), Tk2ArrayProperty(aProp), Ik2Tag(aChild), anIndex, anOpPack);
 {$EndIf}
end;

procedure TevNotifiedProcessor.NotifyDelete(const aList    : IUnknown;
                                            aProp    : TObject;
                                            const aChild   : IUnknown;
                                            anIndex        : Integer;
                                            const anOpPack : InevOp);
  //override;
  {-}
begin
 inherited;
 {$IfOpt D+}
 ChildDeleted(aList As Ik2Tag, aProp As Tk2ArrayProperty, aChild As Ik2Tag, anIndex, anOpPack);
 {$Else}
 ChildDeleted(Ik2Tag(aList), Tk2ArrayProperty(aProp), Ik2Tag(aChild), anIndex, anOpPack);
 {$EndIf}
end;

end.

