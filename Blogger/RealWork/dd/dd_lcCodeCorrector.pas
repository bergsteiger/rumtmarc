unit dd_lcCodeCorrector;
{ ������� ������ ��� ���������� ������� }

{ $Id: dd_lcCodeCorrector.pas,v 1.6 2013/04/11 16:46:29 lulin Exp $ }

// $Log: dd_lcCodeCorrector.pas,v $
// Revision 1.6  2013/04/11 16:46:29  lulin
// - ���������� ��� XE3.
//
// Revision 1.5  2011/10/20 12:27:40  narry
// �� ���������� ����������� ��� (294596306)
//
// Revision 1.4  2011/09/13 05:33:39  narry
// ������������ ������ ���������� ���������� (265410470)
//
// Revision 1.3  2011/06/09 11:56:23  narry
// �������� ���������� ��� ��� ������� �� ������� (268340187)
//
// Revision 1.2  2011/06/07 14:13:50  narry
// � �������������� ��� � ���������� ����������� ����� ������������� (268350079)
//
// Revision 1.1  2011/04/11 13:20:11  narry
// ������� CODE ��� ���������� ������� ������������ ���� (259893042)
//


interface

uses ddHeaderFilter, k2Interfaces;

type
 Tdd_lcCodeCorrector = class(TddHeaderFilter)
 private
 protected
  procedure AddNumber(aNumbers: Ik2Tag; const aNumber: AnsiString; aDate: Integer);
 end;

implementation

uses
 NumAndDate_Const, k2Tags, dt_types, SysUtils, dd_lcUtils;

procedure Tdd_lcCodeCorrector.AddNumber(aNumbers: Ik2Tag; const aNumber: AnsiString; aDate: Integer);
var
 l_INumber: Ik2Tag;
begin
 if (aNumber <> '') and (aDate <> 0) then
 begin
  l_INumber:= k2_typNumANDDate.MakeTag;
  l_INumber.IntW[k2_tiType, nil]:= Ord(dnPublish);
  l_INumber.StrW[k2_tiNumber, nil]:= aNumber;
  l_INumber.IntW[k2_tiStart, nil]:= aDate;
  aNumbers.AddChild(l_INumber);
 end; // (aNumber <> '') and (aDate <> 0)
end; // AddNumber

end.
