unit eeSubPanel;
{* ��������� ��� ������� ������ �����. }

{ ���������� "�������"    }
{ �����: ����� �.�. �     }
{ ������: ev - }
{ �����: 28.09.1999 10:18 }
{ $Id: eeSubPanel.pas,v 1.2 2011/02/09 13:16:59 lulin Exp $ }

// $Log: eeSubPanel.pas,v $
// Revision 1.2  2011/02/09 13:16:59  lulin
// {RequestLink:228688624}.
//
// Revision 1.1  2010/09/02 12:56:42  lulin
// {RequestLink:197496539}.
//
// Revision 1.13  2007/12/04 12:47:34  lulin
// - ������������� ����� � HEAD.
//
// Revision 1.12.24.3  2007/01/31 13:28:13  lulin
// - ������� �����.
//
// Revision 1.12.24.2  2006/04/14 13:40:16  lulin
// - ��������� ����������� ����������.
//
// Revision 1.12.24.1  2005/12/14 11:08:04  lulin
// - cleanup.
//
// Revision 1.12  2004/07/20 10:39:31  demon
// - new: ����� ������� �� TeeSubPanel - OnClickSub
//
// Revision 1.11  2003/09/23 08:00:34  law
// - new prop: TeeSubPanel.OnMouseOverSub.
//
// Revision 1.10  2003/09/05 13:40:30  law
// - new: ����������� ����� TeeSubDescriptors.
//
// Revision 1.9  2003/07/07 18:16:36  demon
// - bug fix: � TeeSubPanel �� ������������� �������� PopupMenu.
//
// Revision 1.8  2003/05/30 11:47:38  law
// - bug fix: ����� �� ���������� ��������� eeUseDLL ��� ����� �������� ee.dll.
//
// Revision 1.7  2003/05/29 18:30:16  law
// - bug fix: ������������� ������� ��������� �� ������� �����.
//
// Revision 1.6  2003/05/28 16:15:21  law
// - change: ������� ee.dll.
//
// Revision 1.5  2003/02/28 16:31:43  law
// - �������� help.
//
// Revision 1.4  2002/11/14 08:54:54  law
// - new behavior: TeeCustomSubPanel ������ ��������� �� ������� ����.
//
// Revision 1.3  2002/11/13 16:16:51  law
// - new class: TeeSubPanel.
//
// Revision 1.2  2002/11/13 15:22:49  law
// - new class: TeeSubPanel.
//
// Revision 1.1  2002/11/13 12:54:21  law
// - change: ������ ������ ��� ��������� ������ Sub'��.
//
// Revision 1.3  2000/12/15 15:10:33  law
// - ��������� ��������� Log.
//

{$Include eeDefine.inc }

interface

uses
  Classes,

  Controls,

  eeInterfaces,
  eeBaseTypes,
  eeSubPanelExport
  ;

type
  TeeCustomSubPanel = class(TeeSubPanelExport)
   {* ��������� ��� ������� ������ �����. }
    private
    // property methods
      function  pm_GetSubPanel: IeeSubPanel;
        {-}
    public
    // public properties
      property SubPanel: IeeSubPanel
        read pm_GetSubPanel;
        {* - ������ Sub'��. }
  end;//TeeCustomSubPanel

  TeeSubPanel = class(TeeCustomSubPanel)
   {* ��������� ��� ������� ������ �����. ��� ��������� �������������. }
    public
    // public properties
      property Color;
        {-}
    published
    // published properties
      property Align;
        {-}
      property TabOrder;
        {-}
      property PopupMenu;
        {-}
      property SubDescriptors;
        {-}
    published
    // published events
      property OnMouseOverSub;
        {-}
      property OnClickSub;
        {-}
  end;//TeeSubPanel

implementation

function TeeCustomSubPanel.pm_GetSubPanel: IeeSubPanel;
  {-}
begin
 Result := Self;
end;

end.

