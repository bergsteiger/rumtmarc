
{ ���������� "L3 (Low Level Library)" }
{ �����: ����� �.�. �                 }
{ ������: l3IterMode.inc -            }
{ �����: 20.06.2003 17:19 }
{ $Id: l3IterMode.inc,v 1.5 2007/12/26 11:14:21 lulin Exp $ }

// $Log: l3IterMode.inc,v $
// Revision 1.5  2007/12/26 11:14:21  lulin
// - cleanup.
//
// Revision 1.4  2006/12/22 12:11:16  lulin
// - cleanup.
//
// Revision 1.3  2003/12/27 16:39:05  law
// - new behavior: �� ���������� ������ ��� ������� ����.
//
// Revision 1.2  2003/07/28 08:46:21  demon
// - comment fix.
//
// Revision 1.1  2003/06/20 13:23:51  law
// - new file: l3IterMode.inc.
//

{$Include l3Define.inc }

const
  {IterMode const}
  imExpandOnly    = $01;
   {* - ���������� ������ �������� ���� }
  imCheckResult   = $02;
   {* - ��������� ���������, ������������ �������������� �������� (��. Tl3NodeAction) }
  imOneLevel      = $04;
   {* - ��������� ������ ���� ������� }
  imParentNeed    = $08;
   {* - �������� RootSubNode � ������ ������������ }
  imNoSubRoot     = $10;
   {* - RootSubNode - ����� ������, �� �� ������, ��� �� ������������ ���� ������������� �� ��� �� ������, ��� � RootSubNode � ���� ���� }
  imChildsBefore  = $20;
   {* - ��������� ��� �������� ���� ����� �� ���������, �.�. ���� ������������ ������ }
  imNoChilds      = $40;
   {* - �� ���������� �������� ����, ������������ �� ���������� ����������}
  imNoHidden      = $80;
   {* - �� ���������� ���������, �������������� ������ ����������� Tl3Tree}

