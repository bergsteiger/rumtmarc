unit vcmPrimCollectionItem;

{ ���������� "vcm"        }
{ �����: ����� �.�. �     }
{ ������: vcmPrimCollectionItem - }
{ �����: 03.04.2003 12:16 }
{ $Id: vcmPrimCollectionItem.pas,v 1.25 2011/07/29 15:08:37 lulin Exp $ }

// $Log: vcmPrimCollectionItem.pas,v $
// Revision 1.25  2011/07/29 15:08:37  lulin
// {RequestLink:209585097}.
//
// Revision 1.24  2008/02/14 19:32:31  lulin
// - �������� ����� ������ � ���������.
//
// Revision 1.23  2008/02/14 14:12:14  lulin
// - <K>: 83920106.
//
// Revision 1.22  2008/02/07 08:37:44  lulin
// - ������� �������� ������� �� ������������ ������.
//
// Revision 1.21  2008/01/30 20:31:40  lulin
// - ���������������� � �������� ������������� �������-�������� �� ������.
//
// Revision 1.20  2008/01/25 12:06:50  lulin
// - �������������� ����� � �������.
//
// Revision 1.19  2008/01/25 11:32:05  lulin
// - �������������� ����� � �������.
//
// Revision 1.18  2007/08/13 17:23:30  lulin
// - cleanup.
//
// Revision 1.17  2007/01/18 10:49:32  lulin
// - �������� ������ ��������� ������ �� ���������.
//
// Revision 1.16  2006/04/14 13:40:21  lulin
// - ��������� ����������� ����������.
//
// Revision 1.15  2006/04/14 12:11:16  lulin
// - ����� � �������� ���� ����� ���������� ��������.
//
// Revision 1.14  2006/04/14 11:53:05  lulin
// - ��������� ��������� � ���������� _Unknown_ � ���� ����.
//
// Revision 1.13  2004/09/15 10:16:48  lulin
// - Tl3InterfacedComponent ��������� �� "������" l3Unknown.
//
// Revision 1.12  2004/09/15 09:51:43  lulin
// - ������� ���������� IUnknown �� "���������" ����������.
//
// Revision 1.11  2004/09/13 09:25:33  lulin
// - bug fix.
//
// Revision 1.10  2004/09/13 09:08:33  lulin
// - bug fix: �� �������������� VCM.
//
// Revision 1.9  2004/09/13 08:56:10  lulin
// - new behavior: TvcmPrimCollectionItem ������ ����� ������������ � �������������� � ���� ��������.
//
// Revision 1.8  2004/09/13 07:33:02  lulin
// - new behavior: Tl3InterfacedComponent ������ ����� ������������ ���� ������ � ���� ��������.
//
// Revision 1.7  2004/09/11 11:55:47  lulin
// - cleanup: ����������� �� ������� ������������� ������������.
//
// Revision 1.6  2004/09/08 11:22:43  lulin
// - new define: _l3NoTrace.
// - new define: l3TraceObjects.
//
// Revision 1.5  2004/04/09 14:25:12  law
// - new behavior: ������ �������� �� ��������� TvcmPrimCollectionItem.
//
// Revision 1.4  2003/11/30 11:39:41  law
// - new behavior: �������������� ���� ���������������� ��������.
//
// Revision 1.3  2003/11/18 19:35:54  law
// - new: ����� ������ ����� ����������� �������, ��������� � �������� � MenuManager'�. ����� ��� ����� ���� ������� �� ������ �����.
//
// Revision 1.2  2003/04/03 15:43:54  law
// - change: �� TvcmMainForm ������� ����� TvcmDispatcher.
//
// Revision 1.1  2003/04/03 09:26:18  law
// - new behavior: ������ ����������� �������� �� �������.
//

{$Include vcmDefine.inc }

interface

uses
  Windows,
  
  Classes,
  
  vcmInterfaces
  ;

type
  _l3Unknown_Parent_ = TCollectionItem;
  {$Define _UnknownNeedsQI}
  {$IfNDef vcmNeedL3}
   {$Define _UnknownNotNeedL3}
  {$EndIf  vcmNeedL3}
  {$Include l3Unknown.imp.pas}
  TvcmPrimCollectionItem = class(_l3Unknown_)
    protected
    // property methods
      function pm_GetDispatcher: IvcmDispatcher;
        {-}
    protected
    // internal methods
      class function IsCacheable: Boolean;
        override;
        {-}
    public
    // public properties
      property Dispatcher: IvcmDispatcher
        read pm_GetDispatcher;
        {-}
  end;//TvcmPrimCollectionItem

implementation

uses
  SysUtils,
  Forms,

  {$IfDef vcmNeedL3}
  l3Interfaces,
  l3Base,
  {$EndIf vcmNeedL3}

  vcmBase
  ;

{$Include l3Unknown.imp.pas}

// start class TvcmPrimCollectionItem

class function TvcmPrimCollectionItem.IsCacheable: Boolean;
  //override;
  {-}
begin
 Result := true;
end;

function TvcmPrimCollectionItem.pm_GetDispatcher: IvcmDispatcher;
  {-}
begin
 {$If Declared(vcmDispatcher)}
 Result := vcmDispatcher;
 {$Else}
 Result := nil;
 {$IfEnd}
end;

end.

