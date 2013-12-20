unit eeInterfacesEx;

{ ���������� "�������"    }
{ �����: ����� �.�. �     }
{ ������: eeInterfacesEx - }
{ �����: 11.02.2003 15:46 }
{ $Id: eeInterfacesEx.pas,v 1.3 2012/10/29 16:57:11 lulin Exp $ }

// $Log: eeInterfacesEx.pas,v $
// Revision 1.3  2012/10/29 16:57:11  lulin
// - �������� ��������� ����� ���������.
//
// Revision 1.2  2011/10/04 10:56:45  lulin
// {RequestLink:289933577}.
//
// Revision 1.1  2010/04/21 16:52:40  lulin
// {RequestLink:144575972}.
// - ��������� � ���������� ����� ��� ���������� ������.
//
// Revision 1.1  2009/09/14 11:28:08  lulin
// - ������� ���� � ��� ������������� �������.
//
// Revision 1.11  2009/07/23 13:42:13  lulin
// - ��������� ��������� �������� ���� ���� ����.
//
// Revision 1.10  2008/04/09 17:57:10  lulin
// - ������� ��� � ������ <K>: 89096854.
//
// Revision 1.9  2007/12/04 12:47:33  lulin
// - ������������� ����� � HEAD.
//
// Revision 1.7.4.5  2005/12/05 05:48:59  lulin
// - ��������� ������������ ��������� � ������� ����������.
//
// Revision 1.7.4.4  2005/11/09 15:28:27  lulin
// - ������� ���������� ���������� � ���������� ������.
//
// Revision 1.7.4.3  2005/06/14 14:51:53  lulin
// - new interface: _InevSelection.
// - remove interface: IevSelection.
//
// Revision 1.7.4.2  2005/06/02 15:48:34  lulin
// - cleanup.
//
// Revision 1.7.4.1  2005/05/18 12:42:49  lulin
// - ����� ����� �����.
//
// Revision 1.6.4.2  2005/05/18 12:32:12  lulin
// - ��������� ��� ��������� ����� � HEAD.
//
// Revision 1.6.4.1  2005/04/28 09:18:32  lulin
// - ��������� � ������ B_Tag_Box.
//
// Revision 1.6.10.1  2005/04/23 16:07:28  lulin
// - ������ ��������� ��������� Ik2TagBox.
//
// Revision 1.7  2005/04/28 15:03:40  lulin
// - ��������� ����� B_Tag_Box � HEAD.
//
// Revision 1.6.10.1  2005/04/23 16:07:28  lulin
// - ������ ��������� ��������� Ik2TagBox.
//
// Revision 1.6  2005/01/28 15:35:02  lulin
// - bug fix: ��� ������� ������ ����� �������� ����� HotSpot'� � ��������� - �������������� �� ��������� ������� ������ �� �������� � ��� AV.
//
// Revision 1.5  2004/11/11 17:35:24  lulin
// - new behavior: ��� ����� � ������������ ������� ���������� ���������� � ��������� ���������� �� �����.
//
// Revision 1.4  2004/03/03 12:45:07  law
// - new param default value: IeeSubList.Add(anID: Integer = ee_SubAutoID).
//
// Revision 1.3  2003/09/11 14:20:23  law
// - new method: IeePara.Delete.
//
// Revision 1.2  2003/07/21 15:55:25  law
// - bug fix: ��������� ������ ������� AV ��� �������� �� ������ �� ����������� ��������� (������� ��� ���� ������ ������, ������� ��������� ��� �����������).
//
// Revision 1.1  2003/02/11 14:20:20  law
// - change: ��������� ������ �� ������� ����� - ������� ����������� ��������� � ������� �����.
//

{$Include evDefine.inc }

interface

uses
  Classes,

  l3Interfaces,

  k2Interfaces,
  
  evInternalInterfaces,

  nevTools,

  eeInterfaces
  ;

type
  IeeTool = Il3Tool;

  IeeToolOwner = Il3ToolOwner;

  IeeDocumentEx = interface(IeeDocument)
    ['{CF86DB7C-DD43-45DC-AB6E-FBA261ADB264}']
    // property methods
      function  Get_Block(anID: Integer): IevDocumentPart;
        {-}
      function  Get_BlockEx(anID, aLayerID: Integer): IevDocumentPart;
        {-}
      function  Get_Sub(anID: Integer): IevSub;
        {-}
      function  Get_SubEx(anID, aLayerID: Integer): IevSub;
        {-}
      function  Get_NewSub: IevSub;
        {-}
      function  Get_NewSubEx(aLayerID: Integer): IevSub;
        {-}
      function  Get_Selection: InevSelection;
        {-}
      function  Get_EntryPoint: Ik2Tag;
        {-}
      function  Get_Processor: InevProcessor;
        {-}
    // public properties
      property Block[anID: Integer]: IevDocumentPart
        read Get_Block;
        {-}
      property BlockEx[anID, aLayerID: Integer]: IevDocumentPart
        read Get_BlockEx;
        {-}
      property Sub[anID: Integer]: IevSub
        read Get_Sub;
        {-}
      property SubEx[anID, aLayerID: Integer]: IevSub
        read Get_SubEx;
        {-}
      property Selection: InevSelection
        read Get_Selection;
        {-}
      property EntryPoint: Ik2Tag
        read Get_EntryPoint;
        {-}
      property Processor: InevProcessor
        read Get_Processor;
        {-}
      property NewSub: IevSub
        read Get_NewSub;
        {-}
      property NewSubEx[aLayerID: Integer]: IevSub
        read Get_NewSubEx;
        {-}
  end;//IeeDocumentEx

implementation

end.

