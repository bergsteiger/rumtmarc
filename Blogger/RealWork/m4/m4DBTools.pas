unit m4DBTools;

(*
//
// module:  mgpkgtls.pas
// author:  Mickael P. Golovin
//
// $Id: m4DBTools.pas,v 1.9 2010/09/24 12:11:42 voba Exp $
//
*)

// $Log: m4DBTools.pas,v $
// Revision 1.9  2010/09/24 12:11:42  voba
// - k : 235046326
//
// Revision 1.8  2010/04/21 12:34:42  voba
// [K:204931155]
//
// Revision 1.7  2009/11/16 15:45:34  voba
// - bug fix
//
// Revision 1.6  2009/09/28 08:52:13  voba
// - ����������� �� ������� ����������� ����
//
// Revision 1.5  2009/04/28 06:38:05  voba
// - ������ ���������������� ������ ��  l3LingLib
//
// Revision 1.4  2008/07/15 12:48:22  voba
// - refact. �������������� ������� � TDictionary
//
// Revision 1.3  2007/08/21 08:58:56  fireton
// - ����������� ������� ��������� ��������� ���������
//
// Revision 1.2  2007/04/25 09:31:01  fireton
// - ����������� DT. ��� ���� ��������� � DT_Types, � ��������� - � DT_Const
//
// Revision 1.1  2004/09/02 07:15:22  law
// - cleanup.
//
// Revision 1.1  2004/08/30 15:14:51  law
// - new unit: m4DBTools.
//
// Revision 1.3  2004/08/30 14:44:12  law
// - new method: Im4DB.ParsePhraseF.
//
// Revision 1.2  2004/08/27 15:13:41  voba
// - merge with B_New_Text_Base
//
// Revision 1.1.2.1  2004/08/25 16:36:35  law
// - ���������� ������������ �� ������� ������������� ������� ���������.
//
// Revision 1.13.2.1  2004/08/25 16:12:01  law
// - ���������� ������������ �� ������� ������������� ������� ���������.
//
// Revision 1.13  2004/08/24 17:03:14  voba
// - use GlobalHtServer.TextBase
//
// Revision 1.12  2004/05/18 09:46:26  step
// change: GlobalFamPaths[] --> GlobalHtServer.FamilyTbl.FamilyPath()
//
// Revision 1.11  2003/12/01 17:10:23  law
// - cleanup.
//
// Revision 1.10  2003/12/01 17:02:10  law
// - buf fix: ����������� ������ (����� ��������� ���������).
//
// Revision 1.9  2003/12/01 16:48:14  law
// - buf fix: ����������� ������ (����� ��������� ���������).
//

{$I m4Define.inc}

interface

uses
  l3Types,
  DT_Dict
  ;

function m4GenShortName(aStr  : Tl3PCharLen;
                        aPrepType   : longbool;
                        aDictSrv    : TDictionaryServer): string;


implementation

uses
  l3LingLib,
  l3DateSt,
  l3String,
  l3Chars,
  m4DictTypes,
  m4DictScanner,
  m4PhraseParser,

  DT_Types,
  dt_AttrSchema;


function m4GenShortName(aStr  : Tl3PCharLen;
                        aPrepType   : longbool;
                        aDictSrv    : TDictionaryServer): string;

var
 lTypeStr   : string;
 lSourceStr : string;
 lDateStr   : string;
 lNumStr    : string;
 lIdx       : Integer;

function lFoundDictItem(aDictItemID : Tm4DictItemAddr; aSegment : Tm4Segment) : boolean;
begin
 Result := True;
 case aDictItemID.rDictionaryID of
  cDateDictID :
   if lDateStr = '' then
    lDateStr := ' �� ' + l3DateToStr(aDictItemID.rID, 'dd.mm.yyyy');

  cNumDictID :
   if lNumStr = '' then
    lNumStr := ' '#185' ' + l3Str(l3PcharLen(aStr.S + aSegment.rOffs, aSegment.rLen, aStr.SCodePage));

  cTextDictID : ;

  else
  begin
   case TDLType(aDictItemID.rDictionaryID) of
    dlSources:
     if Length(lSourceStr) = 0 then // ������ ������
     try
      lSourceStr := ' ' + mlmaRusDeclensionStr(aDictSrv.Dict[dlSources].GetShortName(aDictItemID.rID), rdRodit);
     except
      // ������� ������ ��������� ����� �������� ������� (��������� ��� ������������� ��������� ���������)
      // ������ ���� ���������� �������������� ��������������, �� ���� ������� (����� "����� ����������" �� ������ ����������)
     end;//try..except
    dlTypes:
     if Length(lTypeStr) = 0 then // ������ ������
     try
      if aPrepType then
       lTypeStr := mlmaRusDeclensionStr(aDictSrv.Dict[dlTypes].GetShortName(aDictItemID.rID), rdPredl)
      else
       lTypeStr := aDictSrv.Dict[dlTypes].GetShortName(aDictItemID.rID);
     except
      // ������� ������ ��������� ����� �������� ������� (��������� ��� ������������� ��������� ���������)
      // ������ ���� ���������� �������������� ��������������, �� ���� ������� (����� "����� ����������" �� ������ ����������)
     end;//try..except
   end; // case TDLType(aDictItemID.rDictionaryID) of
  end;
 end; //case aDictItemID.rDictionaryID do
end; //function lFoundDictItem

var
 lFDIProcStub : Tm4FoundDictItemProc;

begin
 lIdx := l3CharSetPresentEx(aStr, cc_LQuotes);
 if lIdx >= 0 then
  aStr.SLen := lIdx;

 // ����������, ������ ������
 lFDIProcStub := L2FoundDictItemProc(@lFoundDictItem);
 try
  DoParsePhrase(aStr, aDictSrv.DictScanner, lFDIProcStub);
 finally
  FreeFoundDictItemProc(lFDIProcStub);
 end;

 Result := lTypeStr + lSourceStr + lDateStr + lNumStr;
end;

end.
