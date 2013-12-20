unit vtInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VT$Rem"
// ������: "w:/common/components/gui/Garant/VT/vtInterfaces.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::VT$Rem::vtInterfaces
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  Graphics,
  ImgList
  ;

type
 IvtFlashImageList = interface(IUnknown)
   ['{D0EB2AAD-4D5B-44F4-8A99-D20950095AA0}']
   procedure Draw(Canvas: TCanvas;
    X: Integer;
    Y: Integer;
    Index: TImageIndex;
    Enabled: Boolean = True;
    HalfTransparent: Boolean = True);
 end;//IvtFlashImageList

implementation

end.