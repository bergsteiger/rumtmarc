unit UnderControl_Form;

// $Id: UnderControl_Form.pas,v 1.10 2012/07/24 18:26:32 lulin Exp $

// $Log: UnderControl_Form.pas,v $
// Revision 1.10  2012/07/24 18:26:32  lulin
// - ������ ����.
//
// Revision 1.9  2012/04/28 10:38:55  lulin
// {RequestLink:361404275}
//
// Revision 1.8  2012/04/13 14:35:30  lulin
// {RequestLink:237994598}
//
// Revision 1.7  2012/03/23 13:04:09  lulin
// - ���������� ���������.
//
// Revision 1.6  2011/11/16 17:36:03  lulin
// {RequestLink:232098711}
//
// Revision 1.5  2011/09/23 16:38:26  lulin
// {RequestLink:217681331}.
//
// Revision 1.4  2011/09/23 10:57:15  lulin
// {RequestLink:287219493}.
//
// Revision 1.3  2011/06/23 15:31:45  lulin
// {RequestLink:254944102}.
//
// Revision 1.2  2011/05/13 11:57:58  lulin
// - ������ ������������.
//
// Revision 1.1  2010/10/29 14:33:21  lulin
// {RequestLink:236722335}.
// - �������� ��������� "��������� �� ��������".
//
// Revision 1.19  2010/09/01 14:35:00  lulin
// {RequestLink:197496539}.
//
// Revision 1.18  2010/09/01 14:03:03  lulin
// {RequestLink:197496539}.
//
// Revision 1.17  2010/08/31 14:43:04  lulin
// {RequestLink:224134305}.
//
// Revision 1.16  2010/05/27 13:47:18  oman
// - new: {RequestLink:210436818}
//
// Revision 1.15  2010/04/22 09:27:14  oman
// - new: {RequestLink:204933350}
//
// Revision 1.14  2010/04/16 08:41:08  oman
// - new: {RequestLink:203131454}
//
// Revision 1.13  2010/03/09 13:07:36  oman
// - new: ��������� ������ ������ ��� ������������� {RequestLink:190251273}
//
// Revision 1.12  2010/02/27 09:31:06  oman
// - new: {RequestLink:190251273}
//
// Revision 1.11  2009/12/09 13:13:21  lulin
// {RequestLink:124453871}.
//
// Revision 1.10  2009/11/18 13:06:23  lulin
// - ���������� ������� ��������� ��������.
//
// Revision 1.9  2009/11/12 14:32:52  lulin
// - ������� ����������� ������ ������ ����������.
//
// Revision 1.8  2009/11/10 12:29:37  lulin
// - �������� �������� �������������� ���������� ��������.
//
// Revision 1.7  2009/11/05 15:00:08  lulin
// - ��������� �������� � ����������� ���������� ��������.
//
// Revision 1.6  2009/10/20 07:01:55  oman
// - fix: {RequestLink:167349350}
//
// Revision 1.5  2009/10/16 17:01:00  lulin
// {RequestLink:159360578}. �52.
//
// Revision 1.4  2009/09/30 16:18:58  lulin
// {RequestLink:159360578}. �44.
//
// Revision 1.3  2009/09/30 15:39:15  lulin
// - ������ ����.
//
// Revision 1.2  2009/09/28 14:34:09  lulin
// - ����� ������� ������ ������� �� ����� �������� �� �������.
//
// Revision 1.1  2009/09/25 15:01:04  lulin
// - �������� ������� ������ ����� �� ������.
//
// Revision 1.112  2009/09/07 12:26:54  lulin
// - ������� ������� ��� �������� �������.
//
// Revision 1.111  2009/09/02 11:49:16  lulin
// {RequestLink:159360578}. �20.
//
// Revision 1.110  2009/08/07 14:59:17  lulin
// - ��������� �������� ��������� �������� � ��������� �� ��������.
//
// Revision 1.109  2009/07/31 17:30:00  lulin
// - ������� �����.
//
// Revision 1.108  2009/02/20 18:50:42  lulin
// - <K>: 136941122. ������� �������� ���������� ��� ������� ��������� ��������.
//
// Revision 1.107  2009/02/20 13:44:08  lulin
// - <K>: 136941122.
//
// Revision 1.106  2009/02/10 19:03:26  lulin
// - <K>: 133891247. �������� �������� ���������� ������.
//
// Revision 1.105  2009/02/10 15:43:32  lulin
// - <K>: 133891247. �������� ���������� �����������.
//
// Revision 1.104  2009/02/09 15:18:23  lulin
// - <K>: 133891247. ��������� ���������� �����.
//
// Revision 1.103  2009/02/09 13:21:17  lulin
// - <K>: 133891247.
//
// Revision 1.102  2009/01/21 19:18:09  lulin
// - <K>: 135602528.
//
// Revision 1.101  2008/12/08 09:33:01  lulin
// - <K>: 128292941.
//
// Revision 1.100  2008/08/26 13:43:09  oman
// - fix: ������� ���������� �����
//
// Revision 1.99  2008/07/18 17:15:31  mmorozov
// - bugfix:  �� ����� �������� ��� ��������� �� ������� "�� ��������"  (K<99647730>);
//
// Revision 1.98  2008/05/06 09:08:32  lulin
// - ��������� � ������ <K>: 89850787.
//
// Revision 1.97  2008/04/22 12:22:37  mmorozov
// - bugfix: �������� �������� ��� ���������� (CQ: OIT5-28925);
//
// Revision 1.96  2008/04/21 10:53:43  mmorozov
// - new: ��� ���������� ��������� ���� ���������� ������������ �������� ��� ���� ������� ��� ���������: ��������� | ���������.
//
// Revision 1.95  2008/04/02 11:43:03  mmorozov
// - ����� ����� ���������������� ������ (������� ����� ������);
//
// Revision 1.94  2008/01/10 07:23:37  oman
// ������� �� ����� �������
//
// Revision 1.92.4.3  2007/12/26 12:43:29  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.92.4.2  2007/11/23 10:41:17  oman
// cleanup
//
// Revision 1.92.4.1  2007/11/22 13:20:42  oman
// ������������ �� ����� �������
//
// Revision 1.93  2007/12/25 11:32:23  mmorozov
// - new: �������� �� ���������� ������ ���������� (CQ: OIT5-27823);
//
// Revision 1.92  2007/09/25 03:58:31  mmorozov
// - new behaviour: ��� ������\��������� �������� ���������� �������� ��� �������� ���� vcm_otDate, vcm_otCombo, vcm_otEditCombo ���������� �������� ���������� _SelectedString, ������ Caption. ��� ����� Caption ��� ���� ����� �������� ���� ���������� (� ������ ������ CQ: OIT5-26741);
//
// Revision 1.91  2007/07/13 12:32:54  oman
// - fix: ������� �������� "�������� ���"/"���������� ���" (cq25605)
//
// Revision 1.90  2007/06/28 14:56:19  lulin
// - cleanup.
//
// Revision 1.89  2007/05/17 12:40:10  lulin
// - ������� �������� �� ������������.
//
// Revision 1.88  2007/04/05 10:22:34  lulin
// - ����������� �� ������ �������������� �����.
//
// Revision 1.87  2007/03/16 13:58:27  lulin
// - ��������� �� ����������� ������� �������������� �����.
//
// Revision 1.86  2007/02/27 10:32:36  lulin
// - cleanup.
//
// Revision 1.85  2007/02/16 16:31:30  lulin
// - ����������� �� ������������ ���������� ����.
//
// Revision 1.84  2007/02/13 12:08:51  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.83  2007/02/13 09:37:47  lulin
// - cleanup.
//
// Revision 1.82  2007/02/13 09:33:45  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.81  2007/02/12 19:35:55  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.80  2007/02/12 16:39:04  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.79  2007/02/09 13:58:32  lulin
// - ��� ���������� � ������ �� �������� ������ � ���������� � ������� �������.
//
// Revision 1.78  2007/02/07 19:13:32  lulin
// - ��������� ���� �� ������ � ����������.
//
// Revision 1.77  2007/02/07 15:14:18  mmorozov
// - change: TbsListAdditionalDataSource -> _TbsListSynchroForm;
//
// Revision 1.76  2007/01/23 15:27:02  lulin
// - bug fix: ��������� ������ ������ �� ������������� �����.
//
// Revision 1.75  2007/01/20 15:30:21  lulin
// - ��������� ��������� �������� ��� ���������� � ��� ������������.
//
// Revision 1.74  2007/01/17 14:02:55  lulin
// - �������� ��������� ��������������� ��������� � ������ ��������.
//
// Revision 1.73  2007/01/16 14:13:13  lulin
// - ����������� �� ���������������� ��������� - ��������� ��������.
//
// Revision 1.72  2007/01/15 19:22:39  lulin
// - ��������� �� ���������� �������� ������ - �� ��������� ������ ��������. ������� �������� �������� �������������� �� ������ ���������� � �������.
//
// Revision 1.71  2007/01/10 13:58:50  lulin
// - �� ��������� �� ������� ��������� � �������� � ���������� ��������.
//
// Revision 1.70  2007/01/10 11:57:59  lulin
// - cleanup.
//
// Revision 1.69  2006/12/20 13:34:08  lulin
// - ������ �������� ������.
//
// Revision 1.68  2006/12/05 14:15:40  lulin
// - ������� �������� � ���������� ����������.
//
// Revision 1.67  2006/12/05 13:49:45  lulin
// - ������� �������� � ���������� ����������.
//
// Revision 1.66  2006/05/25 11:44:16  demon
// - fix: �������� �� �������� �� �������� "������" �� �������� ����������
//
// Revision 1.65  2006/05/12 07:20:03  oman
// - new beh: ����� � ������ ������� "�� ���������" (cq19991)
//
// Revision 1.64  2006/04/19 13:34:25  oman
// - new beh: ������������� StdStr � _StdRes
//
// Revision 1.63  2006/04/18 08:47:27  mmorozov
// - warning fix;
//
// Revision 1.62  2006/04/17 10:54:17  mmorozov
// - ��������� ��������� � ��������� ����� ������ ������������;
// - ��������� ���� ��������������;
//
// Revision 1.61  2006/04/17 09:37:11  oman
// warning fix
//
// Revision 1.60  2006/03/31 07:42:07  lulin
// - ������� ��� ����������, ���������� � Execte ��������.
//
// Revision 1.59  2006/03/30 15:31:21  lulin
// - ������� ��� ���������� � _OnTest.
//
// Revision 1.58  2006/03/30 14:01:37  lulin
// - �������� ������������� ��������� �� ��� - � ����������� � ��� - ��� ����, ����� � ����� ��������� �� ������.
//
// Revision 1.57  2006/03/20 12:43:19  oman
// - new beh: ������� � _OnTest �� _OnGetState ��� ��������
//
// Revision 1.56  2006/03/20 12:30:44  oman
// - new beh: ������������� ��� ��������� ��������� � ��� ����� (StdStr, DebugStr � SystemStr)
//
// Revision 1.55  2006/03/17 13:51:19  oman
// - change: ����������� �� %s � ����������, ������� ��������� �� � ��������
//
// Revision 1.54  2006/01/10 14:12:02  mmorozov
// - bugfix: ���������� ������ ��� ������ ������� ������� � ��������� (CQ: 00019007);
//
// Revision 1.53  2005/12/20 14:36:53  mmorozov
// - bugfix: ��� �������� ��������� ����� ����� ��������� �� �������� �� �������� �������, �������������� �� ��������, ������ ���������� �� ������ ������ (cq: 00018776);
// - bugfix: �� ������ ��������� "������������� ���������� ������ ������� ��� �������� ���������";
//
// Revision 1.52  2005/10/11 16:24:20  demon
// - fix: �� ���������� ������ ���������� ���������� �� ��������
//
// Revision 1.51  2005/09/02 15:22:25  demon
// - new behavior: ������������� �������� ������ ���������� ���������� �� ��������
//
// Revision 1.50  2005/06/28 12:59:27  demon
// - fix: ����� ���������� �� ������������������ ������ ���������� �� ��������.
//
// Revision 1.49  2005/06/14 12:57:39  mmorozov
// new behaviour: ���������� ��������� �� �������� ���������� ������ �������;
//
// Revision 1.48  2005/05/27 14:46:25  lulin
// - ������� ������� �������� � ���������� L3.
//
// Revision 1.47  2005/04/01 09:21:57  demon
// - fix: ���������� ��������� ������
//
// Revision 1.46  2005/03/05 11:31:44  am
// change: ������� TeeTreeView �� TnscTreeView
//
// Revision 1.45  2005/01/18 14:49:34  am
// new: ��������� ��������� ������
//
// Revision 1.44  2005/01/13 14:59:04  demon
// - fix: �� ��������� ������� _OnTest ��� ������� ������ ���������� �� ��������.
//
// Revision 1.43  2004/12/27 15:45:53  demon
// - new behavior: �������� "������� ��������" ���������� ��� ���������������
//
// Revision 1.42  2004/12/23 11:15:09  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.41  2004/11/18 17:31:58  lulin
// - new interface: IvcmParamsPrim.
//
// Revision 1.40  2004/11/15 15:49:52  mmorozov
// new: �������� ������ ������� ������� �� ���� �������� ����� ������������ ������ ���� ���� ���� �� ���� ���������� ������;
// new: ������������� ��� ������ �������� ������ ������� ������� �� ���� ��������;
//
// Revision 1.39  2004/10/20 16:50:46  fireton
// - ���������� ������
//
// Revision 1.38  2004/10/14 16:23:25  demon
// - new behavior: �������� �������� �������� ����� ���������� � nsOpenUtils
//
// Revision 1.37  2004/10/08 17:03:41  demon
// - fix: ��� �� ���������� ���� � ���������
//
// Revision 1.36  2004/10/07 14:20:28  lulin
// - new: ������ � _IvcmParams ����� ����������� ������ �������� _DoneStatus - ��� ����������. �� ������ ����� "��-�������" ������������ ShortCut'� ��� ����������� �������� (CQ OIT5-10123).
//
// Revision 1.35  2004/10/06 13:46:09  am
// change: �������������� ��� ������ ��������� � ��������
//
// Revision 1.34  2004/10/04 09:04:16  demon
// - new behavior: ������� ���� � �������� "�������" �� �������� �� ��������.
//
// Revision 1.33  2004/09/17 14:28:51  lulin
// - ����� ������ ������ �������������.
//
// Revision 1.32  2004/09/17 12:59:00  lulin
// - ��� ��� ���� �������� ������� � _TStrings �� IvcmStrings.
//
// Revision 1.31  2004/09/17 11:25:46  lulin
// - �������� vcm_opStrings ������������ � _vcm_opItems, � ��� ������� ��� � _IvcmHolder �� IvcmStrings (!).
//
// Revision 1.30  2004/09/16 12:38:48  demon
// - new behavior: ���� �� ���� �������� �� ����� �� �������� - ������� �������-��������...
//
// Revision 1.29  2004/09/15 14:11:32  lulin
// - ������� _TStringList �� _TvcmStringList.
//
// Revision 1.28  2004/09/14 12:54:56  fireton
// - change: �������������� "�� �������" -> "�� ���� ���������"
//
// Revision 1.27  2004/09/10 13:58:13  demon
// - fix: ������� ���������� ���������
//
// Revision 1.26  2004/07/12 16:36:05  demon
// - fix: ������� �������� ������ ��� ���������� ��������� �� �������� ��������� � ������.
//
// Revision 1.25  2004/06/25 11:38:50  demon
// - fix: ��������� ���������� ��� ������ ������� "�������" � ���������� ���������� ����������
//
// Revision 1.24  2004/06/01 08:25:45  demon
// - new behavior: �������� �������� ������������ �������� � ����� ������� ��������� � VT
//
// Revision 1.23  2004/05/26 16:59:44  law
// - new behavior: TvtCustomOutliner ������ ����� ������ ��� ���������� Il3SimpleTree � Il3Tree, � �� ��� ������ _Tl3Tree.
//
// Revision 1.22  2004/05/24 11:02:56  demon
// - new behavior: ��������� ������ �� �������� - CS_DELETED
//
// Revision 1.21  2004/04/01 07:13:56  mmorozov
// new: ���������� � ������� ��� ���������� ����������� ����� ��������� _TvcmEntityForm (_XSetActiveInParent, _SetInactiveInParent, _IsActiveInParent);
//
// Revision 1.20  2004/03/26 18:53:35  demon
// - new: ��������� � ���, ��� ��������� �� �������� �� ����������.
//
// Revision 1.19  2004/03/23 12:16:17  demon
// - fix: �� �������� �������� �� �������� �� �������� "�� ��������"
//
// Revision 1.18  2004/03/09 15:07:25  mmorozov
// new: ���������� ��������� "��������� �� ��������";
//
// Revision 1.17  2004/03/04 16:37:32  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.16  2004/03/04 15:39:43  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.15  2004/03/03 18:05:08  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.14  2004/02/19 08:28:37  demon
// - fix warnings
//
// Revision 1.13  2004/02/13 09:47:36  demon
// - fix: ��� ��������� ������ ���������� �� �������� ��������� �� ���������� ����� � �������.
//
// Revision 1.12  2004/02/12 14:18:53  demon
// - fix: �� �������� �������� ������� �� ������ "�� ��������"
//
// Revision 1.11  2004/02/11 13:52:36  demon
// - syntax fix
// - logic fix: � ����� � ����������� ����������� �������
// - new: �������� �������� ������ "�������" ���� ��������
// - new: ����� ����� � ������� ������ "�� ��������"
//
// Revision 1.10  2004/02/09 10:03:56  demon
// - fix: ���������� ��������� ������ GetControlledObjects
//
// Revision 1.9  2004/02/05 12:46:44  demon
// - new: ����������� �������� ������� ��������
//
// Revision 1.8  2004/02/05 10:29:20  demon
// - new: ����������� �������� "�������� ������ "�������"
//
// Revision 1.7  2004/02/05 09:30:59  demon
// - new: ����������� �������� "����� � ��������"
//
// Revision 1.6  2004/02/05 08:44:36  demon
// - new: ����������� �������� ���������� �������� "�� ���������"
//
// Revision 1.5  2004/02/05 07:07:51  demon
// - new behavior: ����������� ������ ������ � ������ "�� ��������" � ����������� �� �������.
//
// Revision 1.4  2004/02/04 14:25:08  demon
// - new behavior: ����������� �������� "�������� �� ��������" � "��������� ������ �������� �� ��������"
//
// Revision 1.3  2004/02/04 13:31:48  demon
// - new behavior: �������� ������ � _IQuery ���������� �� ������ search\nsQuery � ������ nsQueryUtils
//
// Revision 1.2  2004/02/03 14:02:54  demon
// - add: �������� �������� ��� ��� (��� ����������)
//
// Revision 1.1  2004/02/02 08:50:03  demon
// - new: ����� ��� ����������� ���������� �� ��������
//

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,

  afwInputControl,
  afwInterfaces,

  l3InternalInterfaces,
  l3TreeInterfaces,
  l3Interfaces,
  l3Tree,
  afwControl,

  eeTreeViewExport,
  eeInterfaces,
  eeTreeView,

  vtLister,
  vtOutliner,
  vtOutlinerWithQuickSearch,
  vtOutlinerWithDragDrop,

  vcmInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmBaseEntities,
  vcmComponent,

  OvcBase,

  ImgList,


  nscTreeView,
  nsFolderNodes,
  afwControlPrim, afwBaseControl, l3InterfacedComponent,

  vcmExternalInterfaces,

  L10nInterfaces,

  FoldersDomainInterfaces,

  PrimUnderControlOptions_Form
  ;

type
  TenUnderControl = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    UnderControlList: TnscTreeView;

    procedure vcmEntityFormInit;

    function  UnderControlListGetItemImage(Sender: TObject; Index: Integer;
                                          var aImages: TCustomImageList): Integer;
    procedure UnderControlListMakeTreeSource(out theTree: Il3SimpleTree);
    procedure UnderControlListActionElement(Sender: TObject; Index: Integer);
    function  UnderControlListGetItemIconHint(Sender: TObject; Index: Integer): Il3CString;
    procedure SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
    procedure UnderControlListCurrentChanged(Sender: TObject; aNewCurrent,
                                             aOldCurrent: Integer);
    procedure UnderControlListSelectChanged(Sender: TObject;
                                            Index: Integer; var SelectedState: Integer);
    procedure UnderControlListGetItemFont(Sender: TObject; Index: Integer;
      const aFont: Il3Font);
    procedure vcmEntityFormGetStatus(aSender: TObject;
      out theStatus: TafwStatusInfo);
    procedure enTreeopExpandAllTest(const aParams: IvcmTestParamsPrim);
    procedure enTreeopCollapseAllTest(const aParams: IvcmTestParamsPrim);
    function UnderControlListGetItemTextHint(Sender: TObject;
      Index: Integer): Il3CString;
   private
   // internal methods
    procedure StatusParamsShow;
      {-}
   protected
   // methods
    procedure Cleanup;
     override;
  end;

implementation

{$R *.DFM}

uses
  l3InterfacesMisc,
  l3String,

  vcmStringList,
  vcmForm,

  eeTreeMisc,

  DataAdapter,

  StdRes,
  FoldersRes,

  bsTypes,
  bsUtils,

  nsTypes,
  nsFolders,
  nsOpenUtils,
  nsValueMapsIDs,
  nsValueMaps,
  nsFolderFilterInfo,
  nsUtils,

  BaseTreeSupportUnit,
  DynamicTreeUnit,
  BaseTypesUnit,
  DynamicDocListUnit,
  FoldersUnit,
  UnderControlUnit,
  IOUnit,

  deListSet,
  OfficeLike_Usual_Controls,
  ControlStatusUtils,

  nsQuestionsWithChoices
  ;

procedure TenUnderControl.vcmEntityFormInit;
begin
 UnderControlList.Images := nsFoldersRes.FoldersItemImages;
 UpdateRoot;
 if (UserFoldersTree.ControlledObj <> nil) then
  UserFoldersTree.ControlledObj.As_Il3ChangeNotifier.Subscribe(InsUnderControlRootListener(Self));
 UnderControlList.VJustify := vt_vjTop;
end;

function TenUnderControl.UnderControlListGetItemImage(Sender: TObject;
                                                      Index: Integer;
                                                      var aImages: TCustomImageList): Integer;
var
 l_CurNode        : IeeNode;
 l_ControlledNode : InsUnderControlNode;
 l_Status         : Integer;
const
 cImageMap : array [TItemStatus] of Integer = (
  UCDocument_Abolished, // IS_ABOLISHED // ������� ����
  UCDocument_Active, // IS_ACTIVE // �����������
  UCDocument_Preactive, // IS_PREACTIVE // �� ������� � ����
  UCDocument_Unknown // IS_UNKNOWN // �����������
 );

begin
 l_CurNode := UnderControlList.TreeView.GetNode(Index);
 try
  if l3BQueryInterface(l_CurNode, InsUnderControlNode, l_ControlledNode) then
   try
    l_Status := l_ControlledNode.Status;
    if l_Status and CS_DELETED = CS_DELETED then
     Result := UCStatus_DeletedIcon
    else
    if l_Status and CS_ACTIVE = CS_ACTIVE then
     Result := UCStatus_ActiveIcon
    else
    if l_Status and CS_CHANGED = CS_CHANGED then
     Result := UCStatus_ChangedIcon
    else
    if l_Status and CS_ABOLISHED = CS_ABOLISHED then
     Result := UCStatus_AbolishedIcon
    else
    if l_Status and CS_REGISTERED = CS_REGISTERED then
     Result := UCStatus_RegistredMUIcon
    else
    if l_Status and CS_NOT_REGISTERED = CS_NOT_REGISTERED then
     Result := UCStatus_NotRegistredMUIcon
    else
     Result := cImageMap[l_ControlledNode.DocumentStatus];
   finally
    l_ControlledNode := nil;
   end
  else
  begin
   aImages := dmStdRes.ImageList;
   Result := 115; // (i) - ����������
  end;
 finally
  l_CurNode := nil;
 end;
end;

procedure TenUnderControl.UnderControlListMakeTreeSource(out theTree: Il3SimpleTree);
begin
 theTree := TnsUnderControlTree.Make;
end;

procedure TenUnderControl.UnderControlListActionElement(Sender: TObject; Index: Integer);
begin
 if CanCompareEditions(UnderControlList.GetNode(Index), True) then
  case MessageDlg(str_ChangedDocumentOnControl) of
   -1: OpenControllableElement(self.as_IvcmEntityForm, UnderControlList.GetNode(Index));
   -2: CompareEditions(UnderControlList.GetNode(Index));
  end
 else
  OpenControllableElement(self.as_IvcmEntityForm, UnderControlList.GetNode(Index));
end;

function TenUnderControl.UnderControlListGetItemIconHint(Sender: TObject; Index: Integer): Il3CString;
var
 l_CurNode       : IeeNode;
 l_ControlledNode : InsUnderControlNode;
begin
 l_CurNode := UnderControlList.TreeView.GetNode(Index);
 try
  if l3BQueryInterface(l_CurNode, InsUnderControlNode, l_ControlledNode) then
   try
    Result := bsControlStatusHint(l_ControlledNode.Status, true);
   finally
    l_ControlledNode := nil;
   end//try..finally
  else
   Result := nil;
 finally
  l_CurNode := nil;
 end;//try..finally
end;

procedure TenUnderControl.SwitcheropSetActiveExecute(const aParams: IvcmExecuteParams);
begin
 SetActiveInParent;
end;

procedure TenUnderControl.UnderControlListCurrentChanged(Sender: TObject;
  aNewCurrent, aOldCurrent: Integer);
begin
 StatusParamsShow;
end;

procedure TenUnderControl.StatusParamsShow;
begin
 if Dispatcher <> nil then
  Dispatcher.UpdateStatus;
end;

procedure TenUnderControl.UnderControlListSelectChanged(Sender: TObject;
  Index: Integer; var SelectedState: Integer);
begin
 StatusParamsShow;
end;

procedure TenUnderControl.UnderControlListGetItemFont(Sender: TObject;
  Index: Integer; const aFont: Il3Font);
var
 l_CurNode        : IeeNode;
 l_ControlledNode : InsUnderControlNode;
begin
 l_CurNode := UnderControlList.TreeView.GetNode(Index);
 try
  if Supports(l_CurNode, InsUnderControlNode, l_ControlledNode) then
  try
   if LongWord(l_ControlledNode.Status) <> CS_NONE then
    aFont.Style := [fsBold];
  finally
   l_ControlledNode := nil;
  end;
 finally
  l_CurNode := nil;
 end;
end;

procedure TenUnderControl.Cleanup;
begin
 if FoldersReaded then
  if (UserFoldersTree.ControlledObj <> nil) then
   UserFoldersTree.ControlledObj.As_Il3ChangeNotifier.Unsubscribe(InsUnderControlRootListener(Self));
 inherited;
end;

procedure TenUnderControl.vcmEntityFormGetStatus(aSender: TObject;
  out theStatus: TafwStatusInfo);
var
 l_Node: InsUnderControlNode;
begin
 if Length(theStatus.rStrings) <> 1 then
  SetLength(theStatus.rStrings, 1);
 theStatus.rStrings[0] := nil;

 if (UnderControlList.TreeView.Tree.Root <> nil) and
    not ((UnderControlList.TreeView.Tree.Root.AllChildrenCount = 1) and
         not Supports(UnderControlList.TreeView.Tree.Root.ChildNode, InsUnderControlNode, l_Node)) then
  with UnderControlList.TreeView.Tree.Root do
  begin
   if UnderControlList.TreeView.Current >= 0 then
    theStatus.rStrings[0] := vcmFmt(str_ucsStatusWithSelected, [UnderControlList.TreeView.Current + 1, AllChildrenCount, UnderControlList.TreeView.Tree.SelectedCount])
   else
    theStatus.rStrings[0] := vcmFmt(str_ucsStatusWithOutSelected, [AllChildrenCount, UnderControlList.TreeView.Tree.SelectedCount]);
  end;
end;

procedure TenUnderControl.enTreeopExpandAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := False;
end;

procedure TenUnderControl.enTreeopCollapseAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := False;
end;

function TenUnderControl.UnderControlListGetItemTextHint(Sender: TObject;
  Index: Integer): Il3CString;
var
 l_eeNode  : IeeNode;
 l_Control : IControllable;
 l_Hint: IString;
begin
 Result := nil;
 if (Index >= 0) then
 begin
  l_eeNode := UnderControlList.TreeView.GetNode(Index);
  try
   if Supports(l_eeNode, IControllable, l_Control) then
   begin
    l_Control.GetName(l_Hint);
    Result := nsCStr(l_Hint);
    if l3Same(Result, l_eeNode.Text) then
     Result := nil;
   end;
  finally
   l_eeNode := nil;
  end;//try..finally
 end;//Index >= 0
end;

end.
