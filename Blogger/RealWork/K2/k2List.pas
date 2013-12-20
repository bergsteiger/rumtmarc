unit k2List;

{ ���������� "K-2"    }
{ �����: ����� �.�. � }
{ ������: k2List - }
{ �����: 22.02.99 19:26 }
{ $Id: k2List.pas,v 1.102 2011/07/11 17:48:11 lulin Exp $ }

// $Log: k2List.pas,v $
// Revision 1.102  2011/07/11 17:48:11  lulin
// {RequestLink:228688745}.
//
// Revision 1.101  2010/01/11 13:17:28  lulin
// {RequestLink:175967380}. ������ �����������.
//
// Revision 1.100  2009/07/21 18:23:16  lulin
// - ���������������� � ���������� �������������� ����� ��� ������ ���������.
//
// Revision 1.99  2009/07/20 16:44:07  lulin
// - ������� �� ��������� ��������� ���������� �������� ���� ����������� ����, ������ ����� "������" ��� ������ ��� ���� ���� ��� ������.
//
// Revision 1.98  2009/07/17 13:47:23  lulin
// - bug fix: ����������� ������������ �������� �������� �����.
//
// Revision 1.97  2009/07/16 12:58:18  lulin
// - ���������������� � ����������� ������� ���������� � �������.
//
// Revision 1.95  2009/07/15 16:15:28  lulin
// - ����������� �� ������ �������������.
//
// Revision 1.94  2009/07/15 15:12:25  lulin
// - ������� �������� �������� ������� ����������.
//
// Revision 1.93  2009/07/15 12:34:45  lulin
// - ������ ����� ���������� �� ������ ��������.
//
// Revision 1.92  2009/07/07 16:54:42  lulin
// - ��������� ����� ������� �������� ������.
//
// Revision 1.91  2009/07/07 08:58:27  lulin
// - �������� ��������.
//
// Revision 1.90  2009/07/03 16:24:13  lulin
// - ��� � �������� �� ����������� � ��������.
//
// Revision 1.89  2009/04/07 15:11:49  lulin
// [$140837386]. �13. ������ ����.
//
// Revision 1.88  2009/03/25 10:34:14  lulin
// - ������ ����.
//
// Revision 1.87  2009/03/04 17:20:04  lulin
// - <K>: 137470629. ����������� �� ��������� ������������� ����������.
//
// Revision 1.86  2009/02/26 17:28:41  lulin
// - <K>: 137465982. �20.
//
// Revision 1.85  2009/02/26 10:21:28  lulin
// - <K>: 137465982. �1
//
// Revision 1.84  2009/02/25 15:55:44  lulin
// - <K>: 90441983. ��������� �� ������.
//
// Revision 1.83  2009/02/25 12:44:16  lulin
// - <K>: 90441983. ������ ���� ��� �������� �� ������.
//
// Revision 1.82  2008/09/16 11:51:55  lulin
// - ��������� TnevParaList �� ������.
//
// Revision 1.81  2008/04/15 08:25:46  dinishev
// ��������������� ������ ��������
//
// Revision 1.80  2008/03/20 09:48:38  lulin
// - cleanup.
//
// Revision 1.79  2008/02/21 15:12:36  lulin
// - �������� ������������.
//
// Revision 1.78  2008/02/21 13:48:21  lulin
// - cleanup.
//
// Revision 1.77  2008/02/18 19:32:04  lulin
// - ����������� �����.
//
// Revision 1.76  2008/02/14 19:32:38  lulin
// - �������� ����� ������ � ���������.
//
// Revision 1.75  2008/02/14 09:40:42  lulin
// - ����� �������� �����.
//
// Revision 1.74  2008/02/13 16:03:12  lulin
// - ������ ������� ������ ������ ������.
//
// Revision 1.73  2008/02/13 12:26:20  lulin
// - <TDN>: 72.
//
// Revision 1.72  2008/02/11 14:22:43  lulin
// - bug fix: ����������� ������ ������ � ������ �����.
//
// Revision 1.71  2008/02/08 19:52:43  lulin
// - ���������� ������� �������.
//
// Revision 1.70  2008/02/08 17:59:19  lulin
// - ������ ���� � ������� ������ ��� ����, � �� ��� �������.
//
// Revision 1.69  2008/02/08 17:06:20  lulin
// - ����� _Tk2TagObject �������� �� ������.
//
// Revision 1.68  2008/02/07 16:19:20  lulin
// - ������� ������� � ������������� � ����������� �������.
//
// Revision 1.67  2008/02/06 15:37:08  lulin
// - ������� �������� ������� �� ������������ ������.
//
// Revision 1.66  2008/02/05 09:58:09  lulin
// - �������� ������� ������� � ��������� ����� � ��������� �� �� ������.
//
// Revision 1.65  2008/01/30 14:25:17  lulin
// - bug fix: �������������������� ����������.
//
// Revision 1.64  2007/09/14 13:26:19  lulin
// - ��������� � ������ B_Tag_Clean.
//
// Revision 1.63.2.5  2007/09/12 18:37:48  lulin
// - � ���������� ������ �������� �����.
//
// Revision 1.63.2.4  2007/09/12 18:03:17  lulin
// - ����� �������� ������������� �����.
//
// Revision 1.63.2.3  2007/09/12 17:32:28  lulin
// - ������ �������� ��������� ���� �������� ������.
//
// Revision 1.63.2.2  2007/09/12 17:27:51  lulin
// - ���������� ������ ������ ����������.
//
// Revision 1.63.2.1  2007/09/12 16:14:12  lulin
// - ����� �������� �������� ��-���������.
//
// Revision 1.63  2007/09/06 09:37:45  lulin
// - ������������� ��������.
//
// Revision 1.62  2007/09/05 18:08:17  lulin
// - ������� ��������� �������.
//
// Revision 1.61  2007/09/05 13:38:52  lulin
// - bug fix: �� ��������������� ������ (CQ OIT5-26613).
//
// Revision 1.60  2007/09/04 18:41:31  lulin
// - ����� �������� ��������.
//
// Revision 1.59  2007/09/04 18:06:22  lulin
// - cleanup.
//
// Revision 1.58  2007/09/04 17:44:55  lulin
// - cleanup.
//
// Revision 1.57  2007/09/04 17:27:43  lulin
// - ����� �������� ��������.
//
// Revision 1.56  2007/09/04 14:24:59  lulin
// - ����� �������� ��������.
//
// Revision 1.55  2007/09/03 10:46:48  lulin
// - ��������� ����� ����������.
//
// Revision 1.54  2007/08/31 16:06:30  lulin
// - cleanup.
//
// Revision 1.53  2007/08/21 12:43:31  lulin
// - ����������� �� �������������� �����������.
//
// Revision 1.52  2007/03/19 11:42:06  voba
// - new realization function  _ExpandSize
//
// Revision 1.51  2006/07/21 11:40:31  lulin
// - ��� ������ ������ �� ������������ - ����� �� ���������� ����������� �������.
//
// Revision 1.50  2006/07/21 11:36:39  lulin
// - ��� ������ ������ �� ������������ - ����� �� ���������� ����������� �������.
//
// Revision 1.49  2006/04/25 07:26:25  lulin
// - ����������� ������ � ����������� ������� � ������� � ���.
// - ����� �����, ��� �������� ������� �������������� �������.
//
// Revision 1.48  2006/04/11 16:35:37  lulin
// - ������������ ��� ������ ��������� ����� (�� ������ ���� ��� ����� ������� � �������� 20% ������������������).
//
// Revision 1.47  2006/01/18 08:54:36  lulin
// - ��������� �� ���� ������ ��������� ������������� ���������, ��� �������������� �� � �����.
//
// Revision 1.46  2006/01/17 15:10:41  lulin
// - ������� ����� ��������� �������� ����.
//
// Revision 1.45  2006/01/16 16:41:44  lulin
// - ������� ����������� �������� �� �������� ��� ������� ������� (������-�� �� ������������������ �� ��������).
//
// Revision 1.44  2005/12/13 15:38:33  fireton
// - bug fix: �� ���������� ������ ��� ������ �������
//
// Revision 1.43  2005/11/03 16:33:49  lulin
// - optimization: ��� ������������������ ��������� ��������� ������ �������������� ���������.
//
// Revision 1.42  2005/11/02 13:47:42  lulin
// - bug fix: ������, ����������� � ����������� �� ������ ������ ����������� ���� �������� (CQ OIT5-17402).
//
// Revision 1.41  2005/04/28 15:04:09  lulin
// - ��������� ����� B_Tag_Box � HEAD.
//
// Revision 1.40.2.10  2005/04/25 15:25:33  lulin
// - �� ������������� ������, ���� �������� ������� �� ����������.
//
// Revision 1.40.2.9  2005/04/25 12:31:51  lulin
// - ������� _Tk2List �� "�����������".
//
// Revision 1.40.2.8  2005/04/23 16:07:35  lulin
// - ������ ��������� ��������� Ik2TagBox.
//
// Revision 1.40.2.7  2005/04/23 13:32:20  lulin
// - new define: k2BoxIsList.
//
// Revision 1.40.2.6  2005/04/23 12:44:13  lulin
// - cleanup.
//
// Revision 1.40.2.5  2005/04/22 12:14:29  lulin
// - remove interface: Ik2PropertyBag.
//
// Revision 1.40.2.4  2005/04/22 09:04:37  lulin
// - cleanup: ������ �������� ���������.
//
// Revision 1.40.2.3  2005/04/21 17:28:16  lulin
// - cleanup.
//
// Revision 1.40.2.2  2005/04/21 16:30:20  lulin
// - ��������� �� ������ ���������� �������.
//
// Revision 1.40.2.1  2005/04/21 14:47:02  lulin
// - ����������� �� ������� ��� ������ - ������ ������� ����������� �������� ���� ��������� ��������� Ik2Tag.
//
// Revision 1.40  2005/04/21 06:53:43  lulin
// - ������� ��������� ���������� � ������.
//
// Revision 1.39  2005/04/21 06:42:31  lulin
// - cleanup.
//
// Revision 1.38  2005/04/21 06:33:32  lulin
// - ������ ������ � �������.
//
// Revision 1.37  2005/04/21 05:36:05  lulin
// - cleanup.
//
// Revision 1.36  2005/04/21 05:27:04  lulin
// - � �������� ��������� ��������� � ���������� - ����� ������� ������/������� ����.
//
// Revision 1.35  2005/04/21 05:11:48  lulin
// - ���������� Box (���� ��-�� ���������� �������������� ���� � ������� - �� �������� ����� ������ ����).
//
// Revision 1.34  2005/04/20 17:40:57  lulin
// - ��������� �� �������������� ���������� Ik2TagBoxQT.
//
// Revision 1.33  2005/04/20 16:31:20  lulin
// - �������� ������ ��� ���������� ���������� ����.
//
// Revision 1.32  2005/04/20 16:09:46  lulin
// - ���������� ������.
//
// Revision 1.31  2005/04/20 15:16:46  lulin
// - new method: Ik2TagBox.rLong.
//
// Revision 1.30  2005/04/20 13:38:45  lulin
// - new method: Ik2TagBox.InheritsFrom.
//
// Revision 1.29  2005/04/16 13:17:13  lulin
// - �� ����� �������� ����� �� ���, ��� ����� �����.
//
// Revision 1.28  2005/04/16 12:38:22  lulin
// - �� ����� �������� ����� �� ���, ��� ����� �����.
//
// Revision 1.27  2005/04/16 12:31:48  lulin
// - �� ����� �������� ����� �� ���, ��� ����� �����.
//
// Revision 1.26  2005/04/15 08:59:57  lulin
// - ������ ������ ������ �� ���, � �� ���������� ���.
//
// Revision 1.25.2.1  2005/04/15 08:21:38  lulin
// - ������ ������ ������ �� ���, � �� ���������� ���.
//
// Revision 1.25  2005/04/04 17:07:06  lulin
// - new methods: InevShape._ParentToClient, _ClientToParent.
//
// Revision 1.24  2005/03/24 12:08:21  lulin
// - remove method: Ik2TagBox.Tag.
// - new method: Ik2TagBox._Target.
//
// Revision 1.23  2005/03/23 15:29:20  lulin
// - �������� �� ��������� ������ ���� �������� ���������� ���, � �� �����-�� ���������.
//
// Revision 1.22  2005/03/22 09:53:03  lulin
// - ������ �������� �������������� ����� Tk2AtomR � Ik2Tag.
//
// Revision 1.21  2005/03/19 16:40:04  lulin
// - �������� �������� ������.
//
// Revision 1.20  2004/06/01 13:48:16  law
// - ���������� _Tl3LongintList.
//
// Revision 1.19  2004/06/01 09:07:17  law
// - change: ����� _Tk2Layer ����������� �� Tl3CObjectRefList.
//
// Revision 1.18  2004/05/31 11:01:59  law
// - new method: Ik2PropertyBag.SetMaskEx.
//
// Revision 1.17  2004/05/31 10:26:01  law
// - _Tk2Layer ������ ����������.
//
// Revision 1.16  2004/04/12 14:59:27  law
// - remove prop: Ik2PropertyBag.Empty.
//
// Revision 1.15  2003/12/17 16:36:14  law
// - some optimization.
//
// Revision 1.14  2002/11/20 16:18:45  voba
// - bug fix: ���������� ���������� ��������.
//
// Revision 1.13  2002/11/20 13:49:59  law
// - stub: �������� ��� ����������� ������� ����������� Sub'��. �� �������� ���� ������.
//
// Revision 1.12  2002/11/20 13:14:34  law
// - bug fix: ����������� ������ _Handle �� _Tk2Layer ��� �������� �������.
//
// Revision 1.11  2002/11/19 15:09:11  law
// - new behavior: ������������ �������� AssignTransparent.
//
// Revision 1.10  2002/01/29 16:18:49  law
// - bug fix: Range Check Error ��� ����������� ������� �����.
//
// Revision 1.9  2001/02/28 13:15:03  law
// - �������� ��������� Ik2PropertyBag.
//
// Revision 1.8  2001/02/20 10:23:52  law
// - some tuning
//
// Revision 1.7  2000/12/15 15:18:58  law
// - ��������� ��������� Log.
//

{$Include k2Define.inc }

interface

uses
  Classes,
  
  l3Types,
  l3Interfaces,
  l3IID,
  l3Base,
  l3Except,
  l3Const,
  l3CObjectRefList,
  
  k2InternalInterfaces,
  k2BaseTypes,
  k2Interfaces,
  k2Base,
  k2BaseStruct,
  k2TagList
  ;

type
  _k2Tag_Parent_ = Tk2TagList;
  {$Define k2TagIsList}
  {$Define k2TagComplexAssign}
  // - !!! http://mdp.garant.ru/pages/viewpage.action?pageId=228688745&focusedCommentId=273590280#comment-273590280 !!!
  {$Include k2Tag.imp.pas}
  Tk2List = class(_k2Tag_)
    protected
   function ExpandSize(aTargetSize: Integer): Integer; override;
    public
    // public methods
      constructor Create(aTagType: Tk2Type);
        reintroduce;
        {-}
  end;//Tk2List

implementation

uses
  TypInfo,

  SysUtils,

  l3String,
  l3Stream,
  l3Dict,

  k2Const,
  k2Tags,
  k2Except,
  k2Strings,
  k2Facade
  ;

type _Instance_R_ = Tk2List;

{$Include k2Tag.imp.pas}

// start class Tk2List

constructor Tk2List.Create(aTagType: Tk2Type);
  //reintroduce;
  {-}
var
 l_Prop : Tk2ArrayProperty;
begin
 f_TagType := aTagType;
 inherited Create;
 l_Prop := TagType.ArrayProp[k2_tiChildren];
 if (l_Prop.SortIndex = k2_tiSelfID) then
  Sorted := false
 else
 begin
  SortIndex := l_Prop.SortIndex;
  Duplicates := l_Prop.Duplicates;
 end;//l_Prop.SortIndex = k2_tiSelfID
end;

function Tk2List.ExpandSize(aTargetSize: Integer): Integer;
begin
 if aTargetSize = 0 then
  Result := Succ(Capacity)
 else
  Result := aTargetSize;
end;//Tk2List.ExpandSize

end.

