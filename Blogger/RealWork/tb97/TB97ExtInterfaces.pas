unit TB97ExtInterfaces;

{-----------------------------------------------------------------------------
 ��������:   TB97ExtInterfaces
 �����:      ������� �.�.
 ����������: ���������� ������������ �������� ������������, ������������;
 ������:----------------------------------------------------------------------
   $Id: TB97ExtInterfaces.pas,v 1.5 2007/04/20 12:04:44 lulin Exp $
 �������:---------------------------------------------------------------------
   $Log: TB97ExtInterfaces.pas,v $
   Revision 1.5  2007/04/20 12:04:44  lulin
   - bug fix: ��� �������� �� ������� ����� ������ �� ���������� � ��������� ����� (CQ OIT5-24967).

   Revision 1.4  2007/04/19 11:10:29  lulin
   - ���� ����� ������� ������ ������ ��������� � ��� ������, �� �� �������� �� ����� (CQ OIT5-25091).

   Revision 1.3  2007/04/18 08:56:33  lulin
   - cleanup.

   Revision 1.2  2005/05/31 14:41:50  mmorozov
   change: comment;

   Revision 1.1  2005/05/31 14:41:20  mmorozov
   new: ���������� ������������ �������� ������������, ������������;

------------------------------------------------------------------------------}

{$WEAKPACKAGEUNIT ON}

interface

type
  ITB97Ctrl = interface(IUnknown)
  {* - ��������� �������������� �� ������������� ������������ ������������ ��
       toolbar-�. }
  ['{2B1FDB0C-D8F7-45D4-9C9A-50D8533FE42F}']
  // property methods
    function pm_GetFullWidth : Integer;
      {-}
    function pm_GetIsSizeable : Boolean;
      {-}
    function pm_GetMinWidth : Integer;
      {-}
  // public methods
    procedure DoFitToWidth(aWidth: Integer);
      {-}
    procedure DoUnFitToWidth(aWidth: Integer);
      {-}
    procedure Expand;
      {-}
  // public properties
    property FullWidth : Integer
      read pm_GetFullWidth;
      {* - ������� ������ ����������, ��� ���������� � ���������� �����������. }
    property IsSizeable : Boolean
      read pm_GetIsSizeable;
      {* - ��������� ����� �������� �������. }
    property MinWidth : Integer
      read pm_GetMinWidth;
      {* - ����������� ������ �� �������� ����� ��������� ���������. }
  end;//ITB97Ctrl

implementation

end.