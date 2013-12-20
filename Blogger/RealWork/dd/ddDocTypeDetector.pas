unit ddDocTypeDetector;

{ $Id: ddDocTypeDetector.pas,v 1.38 2013/04/11 16:46:27 lulin Exp $ }

// $Log: ddDocTypeDetector.pas,v $
// Revision 1.38  2013/04/11 16:46:27  lulin
// - ���������� ��� XE3.
//
// Revision 1.37  2012/10/02 08:05:21  narry
// ����������
//
// Revision 1.36  2011/12/06 07:04:05  narry
// ���������� ��� ��������� MDP
//
// Revision 1.35  2010/07/26 14:42:55  narry
// �228690182. ��� ��������� �� ������������ DocType
//
// Revision 1.34  2010/07/26 14:27:25  narry
// �228690171
//
// Revision 1.33  2010/07/09 11:51:19  narry
// - �172985568
//
// Revision 1.32  2010/03/10 13:57:24  narry
// - �� ����������
//
// Revision 1.31  2010/01/26 13:06:34  narry
// - �� ������������ ������ �������
//
// Revision 1.30  2009/03/04 16:25:56  lulin
// - <K>: 137470629. Bug fix: �� ��������� ����������.
//
// Revision 1.29  2008/09/23 12:17:48  fireton
// - ������/������� ������ ��������� ����
//
// Revision 1.28  2008/05/08 14:04:08  fireton
// - ������� �������� � ������� �� �����
//
// Revision 1.27  2008/03/04 11:45:06  narry
// - ����������
//
// Revision 1.26  2007/08/09 18:05:21  lulin
// - ����������� �� ��������� ������������� �����������, �.�. ������������� ����� ���� ���������� ������� ��������.
//
// Revision 1.25  2007/08/09 17:17:05  lulin
// - bug fix: �� ��������� ����������.
//
// Revision 1.24  2007/08/09 11:19:17  lulin
// - cleanup.
//
// Revision 1.23  2007/04/25 09:30:55  fireton
// - ����������� DT. ��� ���� ��������� � DT_Types, � ��������� - � DT_Const
//
// Revision 1.22  2006/04/12 09:41:49  narry
// - ���������: �������������� �������� SaveFirstAtom � RewriteAtoms
//
// Revision 1.21  2005/11/02 16:36:27  narry
// - �����������: �������� ��� ������ �������
//
// Revision 1.20  2005/10/18 09:06:45  lulin
// - ����������, �� ��� �� ��������������� � ����� � ��������� �������.
//
// Revision 1.19  2005/07/14 15:47:41  narry
// - update
//
// Revision 1.18  2005/04/28 12:58:28  narry
// - update
//
// Revision 1.17  2005/04/18 12:49:15  narry
// - bug fix: �� ����������� ��������� ������ ��� ���������� ��� ���������
//
// Revision 1.16  2005/03/28 11:32:17  lulin
// - ���������� ��������� � "����������" ������.
//
// Revision 1.15  2005/03/24 18:39:24  lulin
// - remove object: Tk2AtomR.
//
// Revision 1.14  2005/03/21 17:02:26  lulin
// - ���������� ���������� ��� ��������� ��������.
//
// Revision 1.13  2005/03/21 10:04:55  lulin
// - new interface: _Ik2Type.
//
// Revision 1.12  2005/03/18 16:11:27  lulin
// - remove method: Tk2AtomR.Write.
//
// Revision 1.11  2005/02/24 15:24:49  narry
// - update
//
// Revision 1.10  2005/02/18 12:00:57  narry
// - update: ��������� ���������
//
// Revision 1.9  2004/09/21 12:21:04  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.8  2004/06/29 14:26:45  law
// - ����������� �� ������ Tk2AtomR._Set.
//
// Revision 1.7  2004/05/14 16:58:35  law
// - new units: k2TagTerminator, k2TagFilter.
//

interface

uses
  l3Types,

  k2Types,
  k2TagGen,
  k2TagTerminator,
  k2Interfaces,
  k2DocumentBuffer,

  ddHeaderFilter,

  dt_Types                                      
  , evdBufferedFilter;

type
  TNewDocumentEvent = procedure (Sender: TObject;
                                 TopicNo: Longint;
                                 FilerType: Byte;
                                 MainGroup: ShortString) of object;
 TddExportDocTypes = set of TDocType;
 TddDocTypeDetector = class(TevdBufferedFilter)
 private
  f_AccGroup: AnsiString;
  f_DocType: Integer;
  f_ExportTypes: TddExportDocTypes;
  f_OnStartDocument: TNewDocumentEvent;
  function ValidDocType: Boolean;
 protected
        {* - �������, ������������ ��� �����, ��� ������� ����� ����������� �����������.}
  function NeedFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer): Boolean; override;
    // internal methods
  function NeedStartBuffering(aID : Integer): Boolean; override;
 public
    // public methods
  constructor Create(anOwner: Tk2TagGeneratorOwner = nil); override;
      {-}
  procedure AddAtomEx(AtomIndex: Long; const Value: Tk2Variant); override;
        {-}
  procedure StartChild(TypeID: Long); override;
  property DocType: Integer read f_DocType;
  property ExportTypes: TddExportDocTypes read f_ExportTypes write f_ExportTypes;
      {-}
  property OnStartDocument: TNewDocumentEvent read f_OnStartDocument write f_OnStartDocument;
 end;

const
 dtOnlyDocs = [dtNone, dtText, dtShortCut, dtObject];
 dtAll      = [dtNone, dtText, dtRelText, dtShortCut, dtObject, dtDictEntry, dtAnnotation, dtFlash];

implementation

uses
  l3Base,

  k2Tags,
  k2Base,

  Document_Const,
  TextPara_Const,
  Block_Const,
  Table_Const,
  BitmapPara_Const,
  SectionBreak_const,
  PageBreak_Const,
  DictRec_Const,
  AnnoTopic_Const
  , Math;

// start class TevdBufferedFilter

constructor TddDocTypeDetector.Create(anOwner: Tk2TagGeneratorOwner = nil);
begin
 inherited;
 f_ExportTypes:= dtAll;
end;

procedure TddDocTypeDetector.AddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
begin
 if CurrentType.InheritsFrom(k2_idDocument) then
  if AtomIndex = k2_tiType then
   f_DocType:= Value.AsInteger;
 inherited
end;

function TddDocTypeDetector.NeedFlushBuffer(const aLeaf: Ik2Tag; aTagId: Integer): Boolean;
var
 l_AC, l_DN: Ik2Tag;
 l_ExtTopicNo: Integer;
 i: Integer;
 l_Type: Byte;
begin
 //if ValidDocType then
  if Assigned(f_OnStartDocument) then
  begin
   if aTagID = -k2_idAnnotopic then
   begin
    l_Type:= 2;
    f_DocType:= Ord(dtAnnotation);
   end
   else
    if aLeaf.IntA[k2_tiType] = Ord(dtRelText) then
     l_Type:= 1
    else
     l_Type:= 0;
   l_ExtTopicNo:= aLeaf.IntA[k2_tiExternalHandle];
   l_AC:= aLeaf.Attr[k2_tiAccGroups];
   if l_AC.IsValid and (l_AC.ChildrenCount > 0) then
    f_AccGroup:= l_AC.Child[0].StrA[k2_tiShortName]
   else
   if aLeaf.Attr[k2_tiGroups].IsValid and (aLeaf.Attr[k2_tiGroups].ChildrenCount > 0) then
    f_AccGroup:= aLeaf.Attr[k2_tiGroups].Child[0].StrA[k2_tiShortName]
   else
   if l_Type <> 1 then
    f_AccGroup:= 'UNKNOWN';
   //if ValidDocType then
    f_OnStartDocument(Self,
                      IfThen(ValidDocType, l_ExtTopicNo, -l_ExtTopicNo),
                      l_Type, f_AccGroup);
  end; // Assigned(f_OnStartDocument)
 Result:= ValidDocType;//TDocType(aLeaf.IntA[k2_tiType]) in ExportTypes;
end;

function TddDocTypeDetector.NeedStartBuffering(aID : Integer): Boolean;
var
 l_Type: Tk2Type;
begin
 Result:= False;
 if aID < 0 then
 begin
  l_Type := TypeTable[-aID];
  Result := l_Type.InheritsFrom(k2_idDocument);
 end;
end;

procedure TddDocTypeDetector.StartChild(TypeID: Long);
var
 l_Type: Tk2Type;
begin
 l_Type := TypeTable[TypeID];
 if l_Type.InheritsFrom(k2_idDocument) then
  f_DocType:= Ord(dtNone);
 if not l_Type.InheritsFrom(k2_idDocument) and (SkipLevel = 2) and
   l_Type.InheritsFrom([k2_idTextPara, k2_idBlock, k2_idTable, k2_idBitmapPara, k2_idSectionBreak, k2_idPageBreak]) and
   ValidDocType then
    StopBufferingAndFlush(False, TopObject[0], False);
 inherited;
end;

function TddDocTypeDetector.ValidDocType: Boolean;
begin
 Result := TdocType(f_DocType) in ExportTypes;
end;

end.
