unit evdNativeUnpackedWriter;
{* �������� ����� � ������� evd. }

{ ���������� "�������"    }
{ �����: ����� �.�. �     }
{ ������: evEvdWrt - ��������� ������� � ������� evd }
{ �����: 05.10.1999 13:00 }
{ $Id: evdNativeUnpackedWriter.pas,v 1.3 2013/04/04 11:21:18 lulin Exp $ }

// $Log: evdNativeUnpackedWriter.pas,v $
// Revision 1.3  2013/04/04 11:21:18  lulin
// - ���������.
//
// Revision 1.2  2012/07/12 18:33:16  lulin
// {RequestLink:237994598}
//
// Revision 1.1  2011/12/19 17:36:03  lulin
// {RequestLink:282693895}
// - ������ ����.
//
// Revision 1.55  2011/07/07 19:53:56  lulin
// {RequestLink:228688745}.
//
// Revision 1.54  2010/06/22 12:50:12  lulin
// {RequestLink:219122682}.
// - bug fix: ���� �������� � ������ ����������� �������������.
//
// Revision 1.53  2010/06/18 14:14:48  lulin
// {RequestLink:182452717}.
// - ������ ������ ����������� ������. ������ ������ �������� � ����� 20. 0-� - ��� ����������, 1-� - ��� F1.
//
// Revision 1.52  2010/06/15 12:46:37  lulin
// {RequestLink:159355611}.
// - ���������� �������������� ������� ������ ���������� �����.
//
// Revision 1.50  2010/06/10 11:35:31  lulin
// {RequestLink:159355611}.
//
// Revision 1.49  2009/07/06 16:38:17  lulin
// - �������� ��������.
//
// Revision 1.48  2009/07/03 16:24:09  lulin
// - ��� � �������� �� ����������� � ��������.
//
// Revision 1.47  2009/03/18 14:59:52  lulin
// - ������ ����������� ������, ���� �� ����� ������ ��������� ����������.
//
// Revision 1.46  2009/03/04 13:33:09  lulin
// - <K>: 137470629. ���������� �������������� ����� � ������ � ������� �� �� ����� �������.
//
// Revision 1.45  2009/02/27 07:14:56  lulin
// - <K>: 137465982. �26.
//
// Revision 1.44  2009/01/16 12:12:50  lulin
// - bug fix: �� ������ ��� ������ ���������� ��������� EVD.
//
// Revision 1.43  2008/06/19 12:55:26  lulin
// - ������������� ���������.
//
// Revision 1.42  2008/02/20 17:23:05  lulin
// - �������� ������.
//
// Revision 1.41  2008/02/19 18:48:17  lulin
// - ������� �������� ������.
//
// Revision 1.40  2008/02/19 11:05:55  lulin
// - ����������� ������ ������������ ������ � ������� ��������.
//
// Revision 1.39  2008/02/13 16:03:10  lulin
// - ������ ������� ������ ������ ������.
//
// Revision 1.38  2008/02/07 19:13:13  lulin
// - ����������� �� ������� ������������� ������� ������� �������.
//
// Revision 1.37  2008/02/06 11:44:39  lulin
// - ������ ����� �������� � ��������� ����.
//
// Revision 1.36  2008/02/05 18:20:38  lulin
// - ������� �������� �������� �����.
//
// Revision 1.35  2008/02/05 17:39:35  lulin
// - ����������� �� ��������� ������������ �������.
//
// Revision 1.34  2008/02/05 16:13:12  lulin
// - ��������� ������� ������ �� ������� ��������.
//
// Revision 1.33  2008/02/05 12:49:20  lulin
// - �������� ������� �������.
//
// Revision 1.32  2008/02/01 15:14:50  lulin
// - ����������� �� �������� ��������������� �������.
//
// Revision 1.31  2007/09/25 13:55:42  lulin
// - bug fix: �� ���������� ��� ������� (Lite).
//
// Revision 1.30  2007/08/29 17:05:04  lulin
// - ���������� �������� ���������, ���� ��� ��������.
//
// Revision 1.29  2007/08/29 15:04:50  lulin
// - ���������� �� ������� ������� ��������� �������.
//
// Revision 1.28  2007/08/29 14:52:33  lulin
// - �� ����� ���������� � ��������� �������.
//
// Revision 1.27  2007/08/29 14:27:02  lulin
// - ������ EVD-���� - ������ �����, ����� ����.
//
// Revision 1.26  2007/08/29 12:54:46  lulin
// - cleanup.
//
// Revision 1.25  2007/08/29 12:46:19  lulin
// - cleanup.
//
// Revision 1.24  2007/08/29 12:37:08  lulin
// - ���� ������ �������� � ���������� �����.
//
// Revision 1.23  2007/08/29 12:00:33  lulin
// - ��������� ��������� �� ��� �����.
//
// Revision 1.22  2007/08/10 19:17:24  lulin
// - cleanup.
//
// Revision 1.21  2007/08/09 18:05:28  lulin
// - ����������� �� ��������� ������������� �����������, �.�. ������������� ����� ���� ���������� ������� ��������.
//
// Revision 1.20  2007/08/09 16:14:25  lulin
// - ��������� ��� ���������� �����.
//
// Revision 1.19  2007/08/09 16:12:06  lulin
// - bug fix: �� ���������� ����������.
//
// Revision 1.18  2007/08/09 14:55:25  lulin
// - ����������� �� ��������� ������������� �����������.
//
// Revision 1.17  2007/08/09 13:01:44  lulin
// - ��������� �������� �� �������� ������ � ������������� �������� ����������.
//
// Revision 1.16  2007/08/09 11:19:25  lulin
// - cleanup.
//
// Revision 1.15  2007/08/09 09:17:53  lulin
// - cleanup.
//
// Revision 1.14  2006/12/01 17:08:06  lulin
// - ���������� � �������� ������ ��������.
//
// Revision 1.13  2006/12/01 17:00:52  lulin
// - bug fix: ��������� ���������� Unicode-������.
//
// Revision 1.12  2006/12/01 16:45:17  lulin
// - cleanup.
//
// Revision 1.11  2006/12/01 16:37:38  lulin
// - cleanup.
//
// Revision 1.10  2006/11/25 16:50:30  lulin
// - ������� ������,������ ����� ����������� �����.
//
// Revision 1.9  2006/11/24 19:21:17  lulin
// - ��������� ���������� Unicode ������.
//
// Revision 1.8  2006/02/07 15:16:31  lulin
// - ������� �������� ��� ����� (���� ��������).
//
// Revision 1.7  2005/11/08 14:11:28  lulin
// - new behavior: ��� ��������� ��������� �������� ��������������� ������ � �����.
//
// Revision 1.6  2005/11/08 13:51:15  lulin
// - cleanup.
//
// Revision 1.5  2005/11/08 13:46:55  lulin
// - cleanup.
//
// Revision 1.3  2005/11/08 13:39:09  lulin
// - bug fix: ������ ��� ������� �������� �������������� �������.
//
// Revision 1.2  2005/10/28 12:48:17  lulin
// - bug fix: �� ������ ������������ �������� � EVD.
//
// Revision 1.1  2005/07/21 13:00:42  lulin
// - �������� ������� EVD �������� � ����� EVD.
//
// Revision 1.65.4.4  2005/07/21 10:20:04  lulin
// - ������ TextSource �� ����� ��� ��������� Reader'�, � ��� ��� ����� ��������� ���������.
//
// Revision 1.65.4.3  2005/06/23 13:08:24  lulin
// - ���� � ��������� ������� �������� � ����� EVD.
//
// Revision 1.65.4.2  2005/06/23 12:55:33  lulin
// - ���� � ����������� �������� � ����� EVD.
//
// Revision 1.65.4.1  2005/05/18 12:42:46  lulin
// - ����� ����� �����.
//
// Revision 1.64.2.2  2005/05/18 12:32:08  lulin
// - ��������� ��� ��������� ����� � HEAD.
//
// Revision 1.64.2.1  2005/04/28 09:18:29  lulin
// - ��������� � ������ B_Tag_Box.
//
// Revision 1.64.4.1  2005/04/22 10:40:27  lulin
// - cleanup: ������ �������� ���������.
//
// Revision 1.65  2005/04/28 15:03:37  lulin
// - ��������� ����� B_Tag_Box � HEAD.
//
// Revision 1.64.4.1  2005/04/22 10:40:27  lulin
// - cleanup: ������ �������� ���������.
//
// Revision 1.64  2005/03/25 17:09:01  lulin
// - ����������� �� ������ Tk2AtomW.sLong.
//
// Revision 1.63  2005/03/25 12:12:14  lulin
// - ���������� _Ik2Type ������ Tk2Type.
//
// Revision 1.62  2005/03/22 17:03:04  lulin
// - �������� �������� ������. ���� ����������������� �������� - �� � �������� �� 1 ��� ������.
//
// Revision 1.61  2005/03/22 10:38:01  lulin
// - cleanup.
//
// Revision 1.60  2005/03/22 09:05:56  narry
// - bug fix: AV
//
// Revision 1.59  2005/03/21 13:42:58  lulin
// - ������ �������� ������.
//
// Revision 1.58  2005/03/21 10:04:49  lulin
// - new interface: _Ik2Type.
//
// Revision 1.57  2004/09/21 12:55:40  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.56  2004/06/10 09:32:09  law
// - bug fix: ����������� ������������ ��������� � �������� ���� � ����������������� ���������.
//
// Revision 1.55  2004/06/02 15:12:07  law
// - ������������ Make ���������� � _Tl3PVList �� _Tl3PtrRecList.
//
// Revision 1.54  2004/05/14 18:06:41  law
// - change:  ������, ��������� � ���������� evd ���������� � TevCustomFileGenerator �� TevCustomEvdWriter.
//
// Revision 1.53  2004/05/14 16:22:57  law
// - remove class: TevTextObjectGenerator.
// - remove class: TevTextObjectParser.
//
// Revision 1.52  2004/05/14 16:07:56  law
// - new units: evFileGenerator, evPlainTextGenerator.
//
// Revision 1.51  2004/05/14 15:16:52  law
// - remove unit: evTypesE.
//
// Revision 1.50  2004/05/14 14:48:47  law
// - ���������� �������� � ��������.
//
// Revision 1.49  2004/05/14 14:08:49  law
// - change: TevVariant ������������ � Tk2Variant � �������� � k2Types.
//
// Revision 1.48  2003/10/21 16:57:23  law
// - new behavior: TevCustomEVDWriter - �� �������� _Flush ��� Undo (����� ��� ������ ����� ���� ���������� ����������� ����).
//
// Revision 1.47  2003/10/20 11:07:43  law
// - bug fix: ��� ������������ EVD-����� (��� ������ ���������) ���������� ��� ���� ����������� ������������� � ������.
//
// Revision 1.46  2003/10/20 09:43:07  law
// - bug fix: ��� ������������ ������� ������� � ������ �� ��������� ��������� %binary.
//
// Revision 1.45  2003/10/15 13:11:13  law
// - bug fix: ���������� ���������� ������������� � ���� �����.
//
// Revision 1.44  2003/10/15 08:29:20  law
// - bug fix: ���������� ���������� ������������� � ���� �����.
//
// Revision 1.43  2003/10/14 13:11:53  law
// - new method: IeeGenerator._AddRawData.
//
// Revision 1.42  2003/10/14 12:48:30  law
// - new prop: TevCustomEvdWriter.SkipTopBrackets.
//
// Revision 1.41  2003/10/14 12:15:59  law
// - new prop: TevCustomEvdWriter.NeedOutHeader.
//
// Revision 1.40  2003/10/14 12:02:08  law
// - bug fix: ��� ������ � evd ��� ���� ������ ��������� %binary.
//
// Revision 1.39  2003/06/23 11:09:44  law
// - bug fix: �� ����������� ����� � ������� EVD-Binary.
//
// Revision 1.38  2003/04/25 10:46:23  law
// - bug fix: ������ ���� ��-�������� �������� ������.
//
// Revision 1.37  2002/09/23 12:18:19  law
// - new prop: Tk2ChildrenProperty._DefaultChildType.
//
// Revision 1.36  2002/09/18 09:33:26  law
// - new behavior: ��� ������ � evd-binary �������� ��� ��������� ���� �� ���������.
//
// Revision 1.35  2002/09/18 09:02:46  law
// - new behavior: ��� ������ � evd-����� �������� ��� ���� ��������� ���� �� ���������.
//
// Revision 1.34  2002/09/18 07:08:02  law
// - new units: k2StackGenerator, k2Ver.
// - new behavior: Tk2CustomReader ������ ����������� �� Tk2CustomStackGenerator � �������������� ��������� ��� ���������.
//
// Revision 1.33  2002/09/18 06:03:32  law
// - cleanup: ������ �������� IsDefault.
//
// Revision 1.32  2002/01/29 16:18:49  law
// - bug fix: Range Check Error ��� ����������� ������� �����.
//
// Revision 1.31  2002/01/05 11:00:43  law
// - some cosmetics.
//
// Revision 1.30  2001/10/23 15:21:31  law
// - new proc: TevCustomEvdWriter._OutBinary.
//
// Revision 1.29  2001/10/19 16:20:22  law
// - new unit: evEvdWriter.
//
// Revision 1.28  2001/09/11 10:11:08  law
// - change method: �������� �������� �� ���������.
//
// Revision 1.27  2001/08/31 08:50:07  law
// - cleanup: ������ ���� � ��������������������.
//
// Revision 1.26  2001/05/31 09:23:40  law
// - cleanup: ������ ������ �� ������ ������� ����� �����.
//
// Revision 1.25  2001/05/31 08:30:33  law
// - cleanup: ������ ������ ���������.
// - comments: ��������� ����������� ��� xHelpGen.
//
// Revision 1.24  2001/04/18 13:56:35  law
// - bug fix: AV ��� ������ TevTextObjectParser.
//
// Revision 1.23  2001/04/18 13:25:23  law
// - comments: ��������� ����������� ��� xHelpGen.
//
// Revision 1.22  2001/03/27 13:59:43  law
// - bug fix: ����������� ���������� ������� �������.
//
// Revision 1.21  2001/03/14 13:24:54  law
// - some cleaup and tuning.
//
// Revision 1.20  2001/03/13 13:20:39  law
// - some tuning & comments.
//
// Revision 1.19  2001/01/24 14:53:43  law
// - ������� ����� ���������� ���������� ���� ������
//
// Revision 1.18  2000/12/19 15:52:40  law
// - ������ �������� ��������� ����������.
//
// Revision 1.17  2000/12/15 15:10:35  law
// - ��������� ��������� Log.
//

{$Include evdDefine.inc }

interface

{$Undef evdPack}

uses
  Classes,
  
  l3Types,
  l3Base,
  l3StringList,

  k2Interfaces,
  k2Types,
  k2Base,
  k2TagGen,
  k2FileGenerator,

  evdConst
  ;

type
  TevdNativeUnpackedWriter = class(Tk2CustomFileGenerator)
   {* �������� ����� � ������� evd. }
    private
    {property fields}
      f_OutEndComment : Bool;
      {$IfDef evdNeedEverestTxt}
      f_Binary        : Bool;
      {$EndIf evdNeedEverestTxt}
      f_FontNames     : Tl3StringList;
      f_WasBinary     : Boolean;
      f_NeedOutHeader : Boolean;
      f_SkipTopBrackets : Boolean;
      f_SmallHeader     : Boolean;
    protected
    // property methods
      function  pm_GetIndent: Long;
        virtual;
        {-}
    protected
    // internal methods
      {$IfDef evdNeedEverestTxt}   
      procedure DoIndent;
        {-}
      procedure CloseLevel(NeedUndo: Bool);
        {-}
      procedure OutPropertyName(const aProp: Tk2Base; ID: Long);
        {-}
      {$EndIf evdNeedEverestTxt}
      procedure OutObject(AtomIndex: Long; O: Tl3PrimString);
        {-}
      procedure WriteStream(aStream: TStream);
        {-}
{      procedure OutPropPath(PI: PPropInfo);
        {-}
      procedure CloseStream(NeedUndo: Bool);
        override;
        {-���������� ���� ��� � ����� ���������}
      procedure CloseStructure(NeedUndo: Bool);
        override;
        {-���������� �� ������������� ������}
      function  GetKeyWord(anID: Long): string;
        {-}
      procedure OutKeyWord(anID: Long);
        {-}
      procedure Cleanup;
        override;
        {-}  
      procedure DoStartChild(TypeID: Long);
        virtual;
        {-}
      procedure DoCloseStructure(NeedUndo: Bool);
        virtual;
        {-}
      procedure WriteStartChild(TypeID: Long);
        {-}
      procedure WriteAtom(AtomIndex: Long; const Value: Tk2Variant);
        {-}
      procedure OutBinary(WithPrefix: Bool = true);
        {-}
      procedure OutEndBinary;
        {-}  
      function  WriteTypeID(ID: TevTypeID): Long;
        {-}
      function  WriteOrd(V: sInt32): Long;
        {-}
      function  WriteTransparent: Long;
        {-}
      function  WriteString(S : Tl3PrimString): Long;
        {-}
    public
    // public methods
      constructor Create(anOwner: Tk2TagGeneratorOwner = nil);
        override;
        {- P - ����� ��������� ���� ����� ������� Self}
      procedure StartTag(TagID: Long);
        override;
        {-}
      procedure StartChild(TypeID: Long);
        override;
        {-}
      procedure AddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
        override;
        {-}
      procedure AfterStreamOpened;
        override;
        {-}
      procedure OutHeader;
        virtual;
        {-}  
    public
    // public properties
      property WasBinary: Boolean
        read f_WasBinary
        write f_WasBinary;
        {-}
      property Indent: Long
        read pm_GetIndent;
        {* - ������� ������� �����������. }
      property OutEndComment : Bool
        read f_OutEndComment
        write f_OutEndComment
        default false;
        {-}
      {$IfDef evdNeedEverestTxt}
      property Binary: Bool
        read f_Binary
        write f_Binary
        default false;
        {* - ������ � �������� �������? }
      {$EndIf evdNeedEverestTxt}  
      property NeedOutHeader: Boolean
        read f_NeedOutHeader
        write f_NeedOutHeader;
        {-}
      property SkipTopBrackets: Boolean
        read f_SkipTopBrackets
        write f_SkipTopBrackets;
        {-}
      property SmallHeader: Boolean
        read f_SmallHeader
        write f_SmallHeader;
        {-}  
  end;{TevdNativeUnpackedWriter}

implementation

uses
  SysUtils,
  TypInfo,

  l3Chars,
  l3Interfaces,
  l3String,

  k2Tags,
  k2Const,
  k2Except,

  evdVer,
  evdKW,
  {.$IfDef evdNeedEverestTxt}
  evdTxtConst,
  {.$EndIf evdNeedEverestTxt}

  Document_Const,
  FontName_Const
  ;

// start class TevdNativeUnpackedWriter 

constructor TevdNativeUnpackedWriter.Create(anOwner: Tk2TagGeneratorOwner = nil);
  {override;}
begin
 inherited;
 f_OutEndComment := false;
 KeyWords := EvdKeyWords;
 NeedOutHeader := true;
end;

procedure TevdNativeUnpackedWriter.Cleanup;
  //override;
  {-}
begin
 l3Free(f_FontNames);
 inherited;
end;

function TevdNativeUnpackedWriter.pm_GetIndent: Long;
  {-}
begin
 Result := Types.Hi;
end;

{$IfDef evdNeedEverestTxt}
procedure TevdNativeUnpackedWriter.DoIndent;
  {-}
begin
 OutString(ev_psFixLen('', Indent, #32));
end;

procedure TevdNativeUnpackedWriter.CloseLevel(NeedUndo: Bool);
  {-}
begin
 DoIndent;
 if NeedUndo then OutString(evRollbackPrefix);
 OutString(evdCloseBracket);
 if OutEndComment then
 begin
  OutString(' //');
  OutString(TopObject[0]);
 end;//OutEndComment
 OutEOL;
end;

procedure TevdNativeUnpackedWriter.OutPropertyName(const aProp: Tk2Base; ID: Long);
  {-}
var
 TT : Tk2TypePrim;
begin
 if (aProp = nil) then
 begin
  if (ID >= 0) then
   OutString(Format('<%d>', [ID]))
  else
   OutString(Format(': <%d>', [-ID]));
 end//aProp = nil
 else
 begin
  if (ID < 0) then
  begin
   OutString(':');
   TT := TopType[1];
   if (TT <> nil) then
    if (TT.DefaultChildTypeID = aProp.TagType.ID) then
     Exit;
   OutString(cc_HardSpace);
   OutString(aProp);
  end//ID < 0
  else
   OutString(aProp);
 end;//ID < 0
end;
{$EndIf evdNeedEverestTxt}

procedure TevdNativeUnpackedWriter.OutBinary(WithPrefix: Bool = true);
  {-}
begin{OutBinary}
 if not f_WasBinary then
 begin
  f_WasBinary := true;
  Exit;
  if WithPrefix then
   OutString(evDirectivePrefix);
  {$IfDef evdPack}
  OutKeyWord(evd_kwPBinary);
  {$Else  evdPack}
  OutKeyWord(evd_kwBinary);
  {$EndIf evdPack}
  OutEOL;
 end;//not f_WasBinary
end;{OutBinary}

procedure TevdNativeUnpackedWriter.OutEndBinary;
  {-}
begin
 if NeedOutHeader AND not SmallHeader then
 begin
  f_WasBinary := false;
  OutString(evDirectivePrefix + GetKeyWord(evd_kwEndBinary));
 end;//NeedOutHeader
end;
  
function TevdNativeUnpackedWriter.WriteOrd(V: sInt32): Long;
  {-}
begin
 if (V >= 0) then begin
  if (V <= High(uInt8)) then begin
   Result := WriteTypeID(ev_idUInt8);
   Inc(Result, WriteBuf(@V, SizeOf(uInt8)));
  end else if (V <= High(uInt16)) then begin
   Result := WriteTypeID(ev_idUInt16);
   Inc(Result, WriteBuf(@V, SizeOf(uInt16)));
  end else begin
   Result := WriteTypeID(ev_idUInt32);
   Inc(Result, WriteBuf(@V, SizeOf(uInt32)));
  end;
 end else begin
  if (V >= Low(sInt8)) then begin
   Result := WriteTypeID(ev_idSInt8);
   Inc(Result, WriteBuf(@V, SizeOf(sInt8)));
  end else if (V >= High(sInt16)) then begin
   Result := WriteTypeID(ev_idSInt16);
   Inc(Result, WriteBuf(@V, SizeOf(sInt16)));
  end else begin
   Result := WriteTypeID(ev_idSInt32);
   Inc(Result, WriteBuf(@V, SizeOf(sInt32)));
  end;
 end;
end;

function TevdNativeUnpackedWriter.WriteTransparent: Long;
  {-}
begin
 Result := WriteTypeID(ev_idTransparent);
end;

function TevdNativeUnpackedWriter.WriteString(S : Tl3PrimString): Long;
  {-}
var
 l_S : Tl3WString;
 l_CharSize : Long;
begin
 l_S := S.AsWStr;
 if (l_S.SCodePage = CP_ANSI) OR (l_S.SCodePage = CP_RussianWin) then
  Result := 0
 else
 begin
  {$IfDef evdPack}
  if (l_S.SCodePage >= 0) AND (l_S.SCodePage <= High(Byte)) then
  begin
   Result := WriteTypeID(ev_idShortCodePage);
   Inc(Result, WriteByte(l_S.SCodePage));
  end
  else
  begin
   Result := WriteTypeID(ev_idCodePage);
   Inc(Result, WriteLong(l_S.SCodePage));
  end;//_CodePage >= 0..
  {$Else  evdPack}
   Result := WriteTypeID(ev_idCodePage);
   Inc(Result, WriteLong(l_S.SCodePage));
  {$EndIf evdPack}
 end;{l_S.SCodePage <> CP_ANSI}
 if (l_S.SCodePage = CP_Unicode) then
  l_CharSize := SizeOf(WideChar)
 else
  l_CharSize := SizeOf(AnsiChar);
 if (l_S.SLen <= High(uInt8)) AND (l_CharSize = SizeOf(AnsiChar)) then
 begin
  Inc(Result, WriteTypeID(ev_idString8));
  Inc(Result, WriteByte(l_S.SLen));
  Inc(Result, WriteBuf(l_S.S, l_S.SLen));
 end//l_S.SLen <= High(uInt8)) AND (l_CharSize = SizeOf(AnsiChar)
 else
 begin
  if (l_S.SLen <= High(uInt16)) then
  begin
   Inc(Result, WriteTypeID(ev_idString16));
   Inc(Result, WriteWord(l_S.SLen));
  end//l_S.SLen <= High(uInt16)
  else
  begin
   Inc(Result, WriteTypeID(ev_idString32));
   Inc(Result, WriteLong(l_S.SLen));
  end;//l_S.SLen <= High(uInt16)
  Inc(Result, WriteBuf(l_S.S, l_S.SLen * l_CharSize));
 end;//SLen <= High(uInt8)
end;

function TevdNativeUnpackedWriter.WriteTypeID(ID: TevTypeID): Long;
  {-}
begin
 Result := WriteBuf(@ID, SizeOf(ID));
end;

procedure TevdNativeUnpackedWriter.OutHeader;
  {-}
var
 Title : String;
begin
 if NeedOutHeader then
 begin
  if (Filer.Pos = 0) then
  begin
   f_WasBinary := false;
   if not SmallHeader then
   begin
    Title := l3System.AppTitle;
    if not IsValidIdent(Title) then
     Title := cc_SingleQuote + Title + cc_SingleQuote;
    OutString(evDirectivePrefix);
    OutKeyWord(evd_kwProducer);
    OutString(cc_HardSpace + Title + cc_HardSpace);
    OutKeyWord(evd_kwDate);
    OutString(cc_HardSpace + cc_SingleQuote + DateToStr(Date) + cc_SingleQuote);
    OutEOL;
    Assert(evFormatCurVersionS <> '');
    OutString(evDirectivePrefix +
               GetKeyWord(evd_kwFormat)   + cc_HardSpace +
               GetKeyWord(evd_kwVersion)  + cc_HardSpace +
               evFormatCurVersionS        + cc_HardSpace);
    OutString(GetKeyWord(evd_kwRevision) + cc_HardSpace +
               GetKeyWord(evd_kwDate)     + cc_HardSpace +
               cc_SingleQuote + evEVDCurRevisionDate + cc_SingleQuote + cc_HardSpace);
   end;//not SmallHeader
   {$IfDef evdNeedEverestTxt}
   if Binary then
    OutBinary(SmallHeader)
   else
    OutEOL;
   {$Else  evdNeedEverestTxt}
   OutBinary(SmallHeader)
   {$EndIf evdNeedEverestTxt}
  end//Filer.Pos = 0
  else
  begin
   {$IfDef evdNeedEverestTxt}
   if Binary then
   {$EndIf evdNeedEverestTxt}
    OutBinary;
  end;//Filer.Pos = 0
 end;//NeedOutHeader
end;

procedure TevdNativeUnpackedWriter.AfterStreamOpened;
  {override;}
  {-}
begin
 if Filer.Opened then OutHeader;
end;

procedure TevdNativeUnpackedWriter.CloseStream(NeedUndo: Bool);
  {override;}
  {-���������� ���� ��� � ����� ���������}
begin
 if (f_FontNames <> nil) then f_FontNames.Clear;
 {$IfDef evdNeedEverestTxt}
 if Binary then
 {$EndIf evdNeedEverestTxt}
  OutEndBinary;
 inherited;
end;

procedure TevdNativeUnpackedWriter.CloseStructure(NeedUndo: Bool);
  {override;}
  {-���������� �� ������������� ������}
begin
 DoCloseStructure(NeedUndo);
 inherited;
end;

procedure TevdNativeUnpackedWriter.DoCloseStructure(NeedUndo: Bool);
  //virtual;
  {-}
begin
 {$IfDef evdNeedEverestTxt}
 if Binary then
 begin
 {$EndIf evdNeedEverestTxt}
  if (Indent <> 0) OR not SkipTopBrackets then
  begin
   {$IfDef evdPack}
   if NeedUndo then
    WriteByte(evd_pack_idRollback)
   else
    WriteByte(evd_pack_idFinish);
   {$Else evdPack}
   if NeedUndo then
    WriteWord(unpack_idRollback)
   else
    WriteWord(unpack_idFinish);
   {$EndIf evdPack}
  end;//Indent <> 0
  if (Indent = 0) OR CurrentType.InheritsFrom(k2_idDocument) then
  begin
   if not NeedUndo then
    Filer.Flush
   else
    Filer.Rollback;
   if (f_FontNames <> nil) then
    f_FontNames.Clear;
    // - ������� ������� ������� � ����� ������ ���������
  end;//Indent = 0..
 {$IfDef evdNeedEverestTxt}
 end//Binary
 else
 begin
  if (Indent <> 0) OR not SkipTopBrackets then
   CloseLevel(NeedUndo);
  if (Indent = 0) OR CurrentType.InheritsFrom(k2_idDocument) then
  begin
   if not NeedUndo then
    Filer.Flush
   else
    Filer.Rollback;
  end;//Indent = 0
 end;//Binary
 {$EndIf evdNeedEverestTxt}
end;

function TevdNativeUnpackedWriter.GetKeyWord(anID: Long): string;
  {-}
begin
 Result := KeyWords.DRByID[anID].AsString;
end;

procedure TevdNativeUnpackedWriter.OutKeyWord(anID: Long);
  {-}
begin
 OutString(GetKeyWord(anID));
end;

procedure TevdNativeUnpackedWriter.StartTag(TagID: Long);
  {override;}
  {-}
begin
 inherited;
 if (Indent = 0) AND SkipTopBrackets then
  Exit;
 if (Indent = 0) then OutHeader;
 {$IfDef evdNeedEverestTxt}
 if Binary then
 begin
 {$EndIf evdNeedEverestTxt}
  {$IfDef evdPack}
  WriteByte(TagID)
  {$Else  evdPack}
  WriteWord(TagID)
  {$EndIf evdPack};
  WriteTypeID(ev_idAtom);
 {$IfDef evdNeedEverestTxt}
 end//Binary
 else
 begin
  DoIndent;
  OutPropertyName(TopObject[0], TagID);
  OutString(' = ');
  OutString(evdOpenBracket);
  OutEOL;
 end;//Binary
 {$EndIf evdNeedEverestTxt}
end;

procedure TevdNativeUnpackedWriter.StartChild(TypeID: Long);
  {override;}
  {-}
begin
 inherited;
 DoStartChild(TypeID);
end;

procedure TevdNativeUnpackedWriter.DoStartChild(TypeID: Long);
  //virtual;
  {-}
begin
 WriteStartChild(TypeID);
end;

procedure TevdNativeUnpackedWriter.WriteStartChild(TypeID: Long);
  {-}
var
 TT : Tk2TypePrim;
begin
 if (Indent = 0) AND SkipTopBrackets then
  Exit;
 if (Indent = 0) then OutHeader;
 {$IfDef evdNeedEverestTxt}
 if Binary then
 begin
 {$EndIf evdNeedEverestTxt}
  TT := TopType[1];
  if (TT <> nil) then
  begin
   if (TT.DefaultChildTypeID = TypeID) then
   begin
    {$IfDef evdPack}
    WriteByte(evd_pack_idDefaultChild);
    {$Else  evdPack}
    WriteWord(unpack_idDefaultChild);
    {$EndIf evdPack}
    Exit;
   end;//l_Prop <> nil..
  end;//TT <> nil
  {$IfDef evdPack}
  WriteByte(TypeID);
  {$Else  evdPack}
  WriteWord(TypeID);
  {$EndIf evdPack}
  WriteTypeID(ev_idChild);
 {$IfDef evdNeedEverestTxt}
 end//Binary
 else
 begin
  DoIndent;
  OutPropertyName(TopObject[0], -TypeID);
  OutString(' = ');
  OutString(evdOpenBracket);
  OutEOL;
 end;//Binary
 {$EndIf evdNeedEverestTxt}
end;

procedure TevdNativeUnpackedWriter.OutObject(AtomIndex: Long; O: Tl3PrimString);
  {-}
var
 l_Index    : Long;
 l_Prop     : Tk2CustomPropertyPrim;
 l_AT       : Tk2TypePrim;
 l_Tag      : Ik2Tag;
 {$IfDef evdNeedEverestTxt}
 l_Open     : Boolean;
 l_C        : PAnsiChar;
 l_WC       : PWideChar;
 l_W        : Integer;
 {$EndIf evdNeedEverestTxt}
 l_S        : Tl3WString;
begin
 {$IfDef evdNeedEverestTxt}
 if Binary then
 begin
 {$EndIf evdNeedEverestTxt}
  l_Prop := CurrentType.Prop[AtomIndex];
  if (l_Prop = nil) then
   l_AT := nil
  else
   l_AT := Tk2TypePrim(l_Prop.AtomType);
  if (l_AT <> nil) AND l_AT.InheritsFrom(k2_idFontName) then
  begin
   if (f_FontNames <> nil) AND f_FontNames.FindData(O, l_Index) then
   begin
    WriteTypeID(ev_idFontID);
    WriteOrd(l_Index);
   end//f_FontNames <> nil
   else
   begin
    if (f_FontNames = nil) then f_FontNames := Tl3StringList.Make;
    f_FontNames.Add(O);
    WriteTypeID(ev_idFontName);
    WriteString(O)
   end;//f_FontNames <> nil..
  end//..k2_idFontName..
  else
  begin
   if (l_AT <> nil) then
   begin
    Case Tk2Type(l_AT).AtomType^.Kind of
     tkInteger,
     tkEnumeration:
     begin
      try
       l_Tag := Tk2Type(l_AT).StrToTag(l3PCharLen2String(O.AsWStr));
       if l_Tag.IsValid then
       begin
        WriteOrd(l_Tag.AsLong);
        Exit;
       end;//l_Tag.IsValid
      except
       on EConvertError do ;
       on Ek2ConversionError do ;
      end;//try..except
     end;//tkInteger..
    end;//Case l_Prop.AtomType.TypeInfo^.Kind
   end;//l_Prop <> nil
   WriteString(O);
  end;//l_Prop <> nil 
 {$IfDef evdNeedEverestTxt}
 end//Binary
 else
 begin
  if (O = nil) then
  begin
   OutString(cc_SingleQuote);
   OutString(cc_SingleQuote);
  end//O = nil
  else
  begin
   l_S := O.AsWStr;
   if (l_S.SCodePage = CP_Unicode) then
   begin
    l_Open := false;
    l_WC := PWideChar(l_S.S);
    if (l_WC = nil) then
    begin
     OutString(cc_SingleQuote);
     OutString(cc_SingleQuote);
    end//l_WC = nil
    else
    begin
     for l_Index := 0 to Pred(l_S.SLen) do
     begin
      l_W := Integer(l_WC[l_Index]);
      if (l_W < 32) OR (l_W > 127) then
      begin
       if l_Open then
       begin
        OutString(cc_SingleQuote);
        l_Open := false;
       end;//l_Open
       OutString('#'+IntToStr(l_W));
      end//l_W < 32..
      else
      begin
       if not l_Open then
       begin
        OutString(cc_SingleQuote);
        l_Open := true;
       end;//l_Open
       OutString(Char(l_W));
      end;//l_W < 32..
     end;//for l_Index
     if l_Open then
      OutString(cc_SingleQuote);
    end;//l_WC = nil
   end//l_S.SCodePage = CP_Unicode
   else
   begin
    OutString(cc_SingleQuote);
    l_C := l_S.S;
    if (l_C <> nil) then
    begin
     for l_Index := 0 to Pred(l_S.SLen) do
     begin
      if (l_C[l_Index] in [#0..#31, cc_SingleQuote, #60]) then
       OutString('<' + IntToStr(Ord(l_C[l_Index])) + '>')
      else
       OutString(l_C[l_Index]);
     end;//for l_Index
    end;//l_C <> nil
    OutString(cc_SingleQuote);
    if (l_C <> nil) AND (l_S.SCodePage <> CP_ANSI) AND (l_S.SCodePage <> CP_RussianWin) then
     OutString(cc_Comma + cc_HardSpace + IntToStr(l_S.SCodePage));
   end;//l_CodePage = CP_Unicode
  end;//O = nil
 end;//Binary
 {$EndIf evdNeedEverestTxt}
end;

procedure TevdNativeUnpackedWriter.WriteStream(aStream: TStream);
  {-}
var
 StreamSize : Long;
begin
 {$IfDef evdNeedEverestTxt}
 if Binary then begin
 {$EndIf evdNeedEverestTxt}
  aStream.Seek(0, soBeginning);
  StreamSize := aStream.Size;
  WriteByte(Ord(ev_idStream));
  WriteLong(StreamSize);
  Filer.Stream.CopyFrom(aStream, StreamSize);
 {$IfDef evdNeedEverestTxt}
 end;{Binary}
 {$EndIf evdNeedEverestTxt}
end;

procedure TevdNativeUnpackedWriter.AddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
  {override;}
  {-}
begin
 WriteAtom(AtomIndex, Value);
end;

procedure TevdNativeUnpackedWriter.WriteAtom(AtomIndex: Long; const Value: Tk2Variant);
  {-}
var
 l_AT   : Tk2TypePrim;
 l_Prop : Tk2CustomPropertyPrim;
begin
 {$IfDef evdNeedEverestTxt}
 if Binary then
 begin
 {$EndIf evdNeedEverestTxt}
  if (AtomIndex = k2_tiChildren) then
   {$IfDef evdPack}
   AtomIndex := evd_pack_idChildren
   {$Else  evdPack}
   AtomIndex := unpack_idChildren
   {$EndIf evdPack};
  with Value do
   Case Kind of
    k2_vkString :
    begin
     if not AsString.Empty then
     begin
      {$IfDef evdPack}
      WriteByte(AtomIndex);
      {$Else  evdPack}
      WriteWord(AtomIndex);
      {$EndIf evdPack}
      OutObject(AtomIndex, AsString);
     end;//not AsString.Empty
    end;//ev_tkString
    else
    begin
     {$IfDef evdPack}
     WriteByte(AtomIndex);
     {$Else  evdPack}
     WriteWord(AtomIndex);
     {$EndIf evdPack}
     Case Kind of
      k2_vkInteger:
       WriteOrd(AsInteger);
      k2_vkTransparent:
       WriteTransparent;
      k2_vkStream:
       WriteStream(AsStream);
      else
       inherited AddAtomEx(AtomIndex, Value);
     end;//Case Kind
    end;//else
   end;//Case Kind
 {$IfDef evdNeedEverestTxt}
 end//Binary
 else
 begin
  if (Value.Kind = k2_vkStream) then
  begin
   OutString(evDirectivePrefix);
   {$IfDef evdPack}
   OutKeyWord(evd_kwPBinary);
   {$Else  evdPack}
   OutKeyWord(evd_kwBinary);
   {$EndIf evdPack}
   OutEOL;
   Binary := true;
   try
    AddAtomEx(AtomIndex, Value);
   finally
    Binary := false;
    OutEndBinary;
   end;{try..finally}
  end//Value.Kind = k2_vkStream
  else
  begin
   OutString(cc_HardSpace);
   DoIndent;
   OutPropertyName(FindProperty(AtomIndex), AtomIndex);
   OutString(' = ');
   Case Value.Kind of
    k2_vkInteger:
    begin
     l_Prop := CurrentType.Prop[AtomIndex];
     if (l_Prop = nil) then
      OutString(IntToStr(Value.AsInteger))
     else
     begin
      l_AT := Tk2TypePrim(l_Prop.AtomType);
      Case Tk2Type(l_AT).AtomType^.Kind of
       tkInteger,
       tkEnumeration:
        OutString(Tk2Type(l_AT).IntToTag(Value.AsInteger).AsString);
       else
        OutString(IntToStr(Value.AsInteger))
      end;//Case l_AT.AtomType^.Kind
     end;//l_Prop = nil
    end;//ev_tkInteger
    k2_vkString:
     OutObject(AtomIndex, Value.AsString);
    k2_vkTransparent:
     OutString(evTransparentToken);
    else
     inherited AddAtomEx(AtomIndex, Value);
   end;//Case TK
   OutEOL;
  end;//Value.Kind = k2_vkStream
 end;//Binary
 {$EndIf evdNeedEverestTxt}
end;

end.

