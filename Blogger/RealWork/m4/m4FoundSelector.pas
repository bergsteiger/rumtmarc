unit m4FoundSelector;
{* ������ ��� ��������� ��������� ����. }

{ ���������� "M4"         }
{ �����: ����� �.�. �     }
{ ������: m4FoundSelector - }
{ �����: 19.04.2002 18:37 }
{ $Id: m4FoundSelector.pas,v 1.20 2011/05/18 12:10:36 lulin Exp $ }

// $Log: m4FoundSelector.pas,v $
// Revision 1.20  2011/05/18 12:10:36  lulin
// {RequestLink:266409354}.
//
// Revision 1.19  2009/04/07 16:40:58  lulin
// [$140837386]. �13. �� ��������� ����������.
//
// Revision 1.18  2009/03/19 16:28:32  lulin
// [$139443095].
//
// Revision 1.17  2009/03/05 17:24:00  lulin
// - <K>: 137470629. ��� ����� ���� ���������� ������ �� ����.
//
// Revision 1.16  2009/03/04 16:26:08  lulin
// - <K>: 137470629. Bug fix: �� ��������� ����������.
//
// Revision 1.15  2008/06/25 14:48:01  lulin
// - ������� ����������� ������������ ��������������� �������� ��� �����.
//
// Revision 1.14  2008/06/23 13:00:40  voba
// - bug fix : �� ���������������
//
// Revision 1.13  2008/02/21 10:55:17  lulin
// - �������� ������������.
//
// Revision 1.12  2007/09/17 07:47:21  lulin
// - bug fix: �� ��������� ����������.
//
// Revision 1.11  2005/04/28 15:04:16  lulin
// - ��������� ����� B_Tag_Box � HEAD.
//
// Revision 1.10  2005/04/26 08:48:06  voba
// no message
//
// Revision 1.9.2.1  2005/04/26 08:45:06  voba
// - syncronize
//
// Revision 1.9.2.2  2005/04/28 10:26:39  lulin
// - ��������� � ������ B_Tag_Box.
//
// Revision 1.9.2.1  2005/04/26 08:45:06  voba
// - syncronize
//
// Revision 1.9  2005/04/19 15:41:56  lulin
// - ��������� �� "����������" ProcessMessages.
//
// Revision 1.8  2005/03/28 11:32:30  lulin
// - ���������� ��������� � "����������" ������.
//
// Revision 1.7  2005/03/25 17:09:19  lulin
// - ����������� �� ������ Tk2AtomW.sLong.
//
// Revision 1.6  2005/03/16 19:21:56  lulin
// - ��������� � Ik2Tag.
//
// Revision 1.5  2005/03/14 06:43:53  lulin
// - �� Tk2AtomR ��������� � Ik2Tag.
//
// Revision 1.4  2005/03/04 15:49:12  lulin
// - �������� ��������� Tk2Type.New.
//
// Revision 1.3  2004/11/10 09:18:54  voba
// no message
//
// Revision 1.2  2004/09/21 11:22:31  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.1  2004/09/02 07:15:22  law
// - cleanup.
//
// Revision 1.8  2004/06/17 15:59:06  law
// - �������� Empty ������������� � ������ _Tl3Base �� ����� _Tl3SomeDataContainer.
//
// Revision 1.7  2003/12/02 08:22:39  voba
// -code clean
//
// Revision 1.6  2002/07/12 13:05:41  law
// - cleanup.
//
// Revision 1.5  2002/05/15 09:45:46  voba
// - bug fix: ������� ������ ����������.
//
// Revision 1.4  2002/04/23 09:11:30  voba
// - bug fix: "List index out of bounds" ��� �������� ��������� ����.
//
// Revision 1.3  2002/04/23 06:18:31  voba
// - bug fix: "List index out of bounds" ��� �������� ��������� ����.
//
// Revision 1.2  2002/04/19 16:23:27  law
// - new behavior: ������� �������� ���� ���������.
//
// Revision 1.1  2002/04/19 15:41:08  law
// - new unit: m4FoundSelector.
//

{$Include m4Define.inc}

interface

uses
  l3Types,
  l3Base,
  l3ProtoObject,

  k2Interfaces,

  m3DocumentAddress,

  m4DocumentAddress
  ;

type
  Tm4FoundSelector = class(Tl3ProtoObject)
   {* ������ ��� ��������� ��������� ����. }
    private
    // internal fields
      f_Addresses        : Tm4Addresses;
      f_CurrentAddressID : Long;
      f_CurrentPara      : Long;
    private
    // internal "local" fields
      f_Text             : Tl3PCharLen;
      f_CurrentWord      : Long;
      f_CurrentAddress   : Tm3DocumentAddress;
      f_Para             : Ik2Tag;
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
      function DoWord(const aWord : Tl3PCharLen;
                      IsLast      : Bool): Bool;
        {-}  
    public
    // public methods
      constructor Create(aDocID: Long; anAddresses: Tm4Addresses);
        reintroduce;
        {-}
      procedure SelectAtom(const anAtom : Ik2Tag; aProp  : Integer);
        {-}
  end;//Tm4FoundSelector

implementation

uses
  l3String,
  
  k2Tags,

  evdTypes,
  evdStyles,
  evTextParaTools,

  nevTools,

  TextSegment_Const
  ;

// start class Tm4FoundSelector

constructor Tm4FoundSelector.Create(aDocID: Long; anAddresses: Tm4Addresses);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_Addresses := anAddresses.CreateDocumentAddresses(aDocID);
end;

procedure Tm4FoundSelector.Cleanup;
  //override;
  {-}
begin
 l3Free(f_Addresses);
 inherited;
end;

function Tm4FoundSelector.DoWord(const aWord : Tl3PCharLen;
                                 IsLast      : Bool): Bool;
  {-}
var
 l_Delta   : Long;
 l_Segment : Ik2Tag;
 l_BegPos  : Long;
 l_Para    : InevTextPara;
begin
 Result := true;
 while true do begin
  l_Delta := (f_CurrentWord - f_CurrentAddress.rWord);
  if (l_Delta = 0) then begin
   // - ����� ����� - ���� ��� �������
   l_Segment := k2_typTextSegment.MakeTag;
   try
    with l_Segment do begin
     l_BegPos := Succ(aWord.S - f_Text.S);
     IntA[k2_tiStart] := l_BegPos;
     IntA[k2_tiFinish] := Pred(l_BegPos + aWord.SLen);
     IntA[k2_tiStyle] := ev_saFoundWords;
    end;//with l_Segment
    if not f_Para.QT(InevTextPara, l_Para) then
     Assert(false);
    evTextParaAddSegment(l_Para, ev_slFoundWords, l_Segment);
   finally
    l_Segment := nil;
   end;//try..finally
   break; // - �� ������ ����� �� ����� !!!
  end else if (l_Delta < 0) then
   break; // - ����� ��� �� �������� ����� - �� ���� ��������� ����
  Inc(f_CurrentAddressID);
  if (f_CurrentAddressID >= f_Addresses.Count) then begin
   Result := false;
   break;
  end;//f_CurrentAddressID >= f_Addresses.Count
  f_CurrentAddress := f_Addresses[f_CurrentAddressID];
  if (f_CurrentAddress.rPara > f_CurrentPara) then begin
   // - ��� ��� �� ��� �������� - ���� ����������
   Result := false;
   break; 
  end;//f_CurrentAddress.rPara > f_CurrentPara
 end;//while true
 Inc(f_CurrentWord); // - ��������� ��������
end;

procedure Tm4FoundSelector.SelectAtom(const anAtom : Ik2Tag;
                                            aProp  : Integer);
  {-}
var
 l_Delta : Long;
 l_Text  : Tl3CustomString;
begin
 if (f_Addresses <> nil) then begin
  if (f_CurrentAddressID < f_Addresses.Count) then begin
   // - �� ��������� ��� ������?
   if (aProp = k2_tiText) then begin
    with anAtom.Attr[k2_tiText] do
     if not IsValid then
      Exit
     else
      l_Text := (AsObject As Tl3CustomString);
    if l_Text.Empty then
     Exit;
    while (f_CurrentAddressID < f_Addresses.Count) do begin
     f_CurrentAddress := f_Addresses[f_CurrentAddressID];
     l_Delta := (f_CurrentPara - f_CurrentAddress.rPara);
     if (l_Delta = 0) then begin
      // - ����� �������� - ���� ��� �������
      f_CurrentWord := 0;
      f_Para := anAtom;
      f_Text := l_Text.AsPCharLen;
      l3ParseWords(f_Text, DoWord);
      break; // - �� ������ ����� �� ����� !!!
     end else if (l_Delta < 0) then
      break; // - ����� ��� �� �������� ��������� - �� ���� ��������� ����
     Inc(f_CurrentAddressID);
    end;//while true
    Inc(f_CurrentPara);
   end;//aProp = k2_tiText
  end;//f_CurrentAddress < f_Addresses.Count
 end;//f_Addresses <> nil
end;
  
end.

