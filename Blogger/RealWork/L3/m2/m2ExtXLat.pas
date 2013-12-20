unit m2ExtXLat;

{ ���������� "M2"     }
{ �����: ����� �.�. � }
{ ������: m2ExtXLat -  }
{ �����: 03.07.2002 15:23 }
{ $Id: m2ExtXLat.pas,v 1.4 2013/04/08 14:50:48 lulin Exp $ }

// $Log: m2ExtXLat.pas,v $
// Revision 1.4  2013/04/08 14:50:48  lulin
// - ���������.
//
// Revision 1.3  2012/11/01 09:43:06  lulin
// - ����� ����� � �������.
//
// Revision 1.2  2012/11/01 07:45:22  lulin
// - ������ ����������� ����������� �������� �������� �������.
//
// Revision 1.1  2008/02/22 17:10:08  lulin
// - ���������� ���������.
//
// Revision 1.1  2007/12/07 11:51:04  lulin
// - �������.
//
// Revision 1.1  2002/07/03 11:48:08  law
// - new unit: m2ExtXLat.
//

{$I l3Define.inc }

interface

uses
  Windows,
  
  m2XltLib
  ;

var
  m2GarantNum : Tm2XLTTable08;

implementation

procedure m2InitGarantNum;
var
 i : Integer;
 c : Char;
begin
 for i := Low(m2GarantNum) to High(m2GarantNum) do begin
  Case Char(i) of
   'l' : c := '1';
   else begin
    c := Char(CharUpper(PAnsiChar(i)));
    Case c of
     '�': c := 'A';
     '�': c := 'B';
     '�': c := 'C';
     '�': c := 'E';
     '�': c := 'H';
     '�': c := 'K';
     '�': c := 'M';
     '�': c := 'P';
     '�': c := 'T';
     '�': c := 'X';
     '�': c := '0';
     '�': c := '3';
     '�': c := 'Y';

     'I': c := '1';
     'O': c := '0';
    end;//Case c
   end;//else 
  end;//Case Char(i)
  m2GarantNum[i] := Byte(c);
 end;//for i
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\m2\m2ExtXLat.pas initialization enter'); {$EndIf}
 m2InitGarantNum;

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\m2\m2ExtXLat.pas initialization leave'); {$EndIf}
end.

