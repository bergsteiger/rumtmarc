unit evToolPanel;
{* ���������� �������� ������ ��� ���������������� �������. }

{ ���������� "�������"  }
{ �����: ����� �.�. �   }
{ ������: evToolPanel - }
{ �����: 26.05.99 15:30 }
{ $Id: evToolPanel.pas,v 1.17 2013/01/22 15:52:05 kostitsin Exp $ }

// $Log: evToolPanel.pas,v $
// Revision 1.17  2013/01/22 15:52:05  kostitsin
// [$424399029]
//
// Revision 1.16  2007/12/24 15:25:22  lulin
// - ������� �������� �����.
//
// Revision 1.15  2007/12/04 12:47:06  lulin
// - ������������� ����� � HEAD.
//
// Revision 1.13.8.1  2005/10/06 09:17:50  lulin
// - ������� ����� ������� �������� � ����� ���������� �����.
//
// Revision 1.13  2005/02/22 12:27:39  lulin
// - ����������� ������ � Tl3Point � Tl3Rect.
//
// Revision 1.12  2004/09/16 11:30:50  lulin
// - ����� ������� ������� � ������������ ��������� ����������.
//
// Revision 1.11  2003/05/28 13:13:35  law
// - change: �������� ������ evEdWnd � evSubPanel, ��� ��� ����� ������������ ����� ������������ ������ ������ Sub'��.
//
// Revision 1.10  2003/05/26 16:38:35  law
// - new method: IevToolWindow.Invalidate.
//
// Revision 1.9  2002/07/09 12:02:22  law
// - rename unit: evUnits -> l3Units.
//
// Revision 1.8  2002/01/08 13:54:14  law
// - rename type: TevOrientation -> Tl3Orientation.
//
// Revision 1.7  2001/02/26 14:06:13  law
// - �������� �����������.
//
// Revision 1.6  2000/12/15 15:10:38  law
// - ��������� ��������� Log.
//

{$Include evDefine.inc }

interface

uses
  l3Interfaces,
  l3Units,
  
  evVisualInterfaces,
  
  vtPanel
  ;

type
  TevCustomToolPanel = class(TvtCustomPanel, IevToolWindow)
   {* - ������� ����� ��� ���������������� �������. }
    private
    {property fields}
      f_Orientation : Tl3Orientation1;
    protected
    {property methods}
      function  pm_GetVisible: Boolean;
      procedure pm_SetVisible(aValue: Boolean);
        {-}
      procedure pm_SetOrientation(Value: Tl3Orientation1);
        {-}
    protected
    {internal methods}
      procedure OrientationChanged;
        virtual;
        {* - ����������� �� ��������� ����������. }
    public
    {public methods}
      procedure Scroll(iD: Tl3Inch);
        virtual;
        {-}
    public
    //public properties    
      property Orientation: Tl3Orientation1
        read f_Orientation
        write pm_SetOrientation
        default ev_orHorizontal;
        {* - ���������� ������. }
  end;{TevCustomToolPanel}

implementation

uses
  Controls
  ;

procedure TevCustomToolPanel.Scroll(iD: Tl3Inch);
  {virtual;}
  {-}
begin
end;

function TevCustomToolPanel.pm_GetVisible: Boolean;
  {-}
begin
 Result := Visible;
end;

procedure TevCustomToolPanel.pm_SetVisible(aValue: Boolean);
begin
 Visible := aValue;
end;

procedure TevCustomToolPanel.pm_SetOrientation(Value: Tl3Orientation1);
  {-}
begin
 if (f_Orientation <> Value) then begin
  f_Orientation := Value;
  Case Orientation of
   ev_orHorizontal : Align := alTop;
   ev_orVertical   : Align := alLeft;
  end;{Case Orientation}
  OrientationChanged;
 end;{f_Delta <> Value}
end;

procedure TevCustomToolPanel.OrientationChanged;
  {virtual;}
  {-}
begin
 Invalidate;
end;

end.
