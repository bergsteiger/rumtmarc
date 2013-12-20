unit SelectedAttributes_Form;

// $Id: SelectedAttributes_Form.pas,v 1.7 2011/11/16 17:35:53 lulin Exp $

// $Log: SelectedAttributes_Form.pas,v $
// Revision 1.7  2011/11/16 17:35:53  lulin
// {RequestLink:232098711}
//
// Revision 1.6  2011/05/13 11:57:33  lulin
// - ������ ������������.
//
// Revision 1.5  2010/11/01 17:20:13  lulin
// {RequestLink:237994238}.
// - ������� ������ �� "������".
// - ������, ����� ���������� ������ �������.
//
// Revision 1.4  2010/11/01 13:20:48  lulin
// {RequestLink:237994238}.
//
// Revision 1.3  2010/09/08 16:28:38  lulin
// {RequestLink:197496539}.
//
// Revision 1.2  2010/09/08 15:57:43  lulin
// {RequestLink:197496539}.
//
// Revision 1.127  2009/12/07 19:09:44  lulin
// - ������ �������� ������.
//
// Revision 1.126  2009/12/02 17:21:43  lulin
// {RequestLink:172984885}.
//
// Revision 1.125  2009/11/18 13:06:09  lulin
// - ���������� ������� ��������� ��������.
//
// Revision 1.124  2009/11/12 14:32:37  lulin
// - ������� ����������� ������ ������ ����������.
//
// Revision 1.123  2009/11/10 12:29:23  lulin
// - �������� �������� �������������� ���������� ��������.
//
// Revision 1.122  2009/11/06 13:06:29  lulin
// - ��������� �� ������ �������� ���������� ����� ���� Data.
//
// Revision 1.121  2009/11/05 18:26:44  lulin
// - ��������� �� ���������� ������� ����������.
//
// Revision 1.120  2009/10/26 14:11:55  oman
// - fix: {RequestLink:124944765}
//
// Revision 1.119  2009/08/26 08:15:25  lulin
// - ���������� ����� ��������, ����� ����� ���� ������.
// - bug fix: �� ���������� �����������.
//
// Revision 1.118  2009/02/10 19:04:03  lulin
// - <K>: 133891247. �������� �������� ���������� ������.
//
// Revision 1.117  2009/02/09 19:17:30  lulin
// - <K>: 133891247. �������� ���������� ������.
//
// Revision 1.116  2009/01/30 13:51:36  lulin
// - ������ ����.
//
// Revision 1.115  2009/01/27 12:41:08  lulin
// - <K>: 136251752.
//
// Revision 1.114  2009/01/27 08:31:37  lulin
// - <K>: 135607658.
//
// Revision 1.113  2008/12/25 12:20:18  lulin
// - <K>: 121153186.
//
// Revision 1.112  2008/12/24 19:49:52  lulin
// - <K>: 121153186.
//
// Revision 1.111  2008/11/19 14:41:13  lulin
// - <K>: 124453996.
//
// Revision 1.110  2008/10/30 15:09:22  lulin
// - <K>: 121159648.
//
// Revision 1.109  2008/10/24 14:56:39  lulin
// - ������ ����.
//
// Revision 1.108  2008/01/10 07:23:08  oman
// ������� �� ����� �������
//
// Revision 1.107  2007/12/25 23:54:33  lulin
// - ������ l3Tree_TLB ��������� ��������� �� ������.
//
// Revision 1.105.4.2  2007/12/21 09:45:43  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.105.4.1  2007/11/22 13:20:25  oman
// ������������ �� ����� �������
//
// Revision 1.106  2007/12/21 07:12:12  mmorozov
// - new: �������� �� ����������� �� ���������� ������ (CQ: OIT5-27823);
//
// Revision 1.105  2007/03/29 13:18:57  oman
// ���������� ���� ��������� ������������ ������� ��� ���������
//
// Revision 1.104  2007/03/27 11:59:11  oman
// ����������� �� ���������������� ���������� ��������
// ��������� ��� ��������� �� ����������� ������
//
// Revision 1.103  2007/02/02 12:25:44  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.102  2007/02/02 08:39:24  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.101  2007/01/17 14:03:08  lulin
// - �������� ��������� ��������������� ��������� � ������ ��������.
//
// Revision 1.100  2007/01/12 13:55:53  oman
// - fix: ���� �������� "��������" � "����������" ��� �������� (cq24116)
//
// Revision 1.99  2006/12/20 13:34:22  lulin
// - ������ �������� ������.
//
// Revision 1.98  2006/12/05 14:16:03  lulin
// - ������� �������� � ���������� ����������.
//
// Revision 1.97  2006/12/05 13:50:03  lulin
// - ������� �������� � ���������� ����������.
//
// Revision 1.96  2006/11/03 09:46:21  oman
// Merge with B_NEMESIS_6_4_0
//
// Revision 1.95.2.2  2006/10/13 06:24:51  lulin
// - cleanup.
//
// Revision 1.95.2.1  2006/10/12 12:11:36  lulin
// - ���������� �������� ���.
//
// Revision 1.95  2006/10/05 15:18:05  mmorozov
// - new behaviour: ��� eeTreeViewExport � ��� ����������� �������� OnCurrentChanged � ������ ���� NewCurrent = -1 (CQ: OIT500017819);
//
// Revision 1.94  2006/09/27 13:42:15  mmorozov
// � ������ ������ ��� CQ: OIT500022679.
//
// - remove: TTagSearch, TTagSearchList, TAvailableTags. � ������ ���� �� ��������������, � ������������ ����� ��� ������ ��������������, ����� ���� �������� _IAttributeInfo;
// - remove: �������������� �������� � enSelectedAttributesForm (enSelectedList: opAdd, opDelete, opChangeOperation);
// - new: TnsTaggedTreeInfo ������� �������;
//
// Revision 1.93  2006/09/13 09:46:21  oman
// - new beh: ��������� ��������/���������� ��� ����� �������� -
//  ��������� ���������� ��������/�����������(InsExpandedState)
//  /������� (cq22540)
//
// Revision 1.92  2006/06/01 11:05:43  mmorozov
// - hint fix;
//
// Revision 1.91  2006/04/13 15:02:02  oman
// hint fix
//
// Revision 1.90  2006/03/31 07:42:33  lulin
// - ������� ��� ����������, ���������� � Execte ��������.
//
// Revision 1.89  2006/03/30 15:31:43  lulin
// - ������� ��� ���������� � _OnTest.
//
// Revision 1.88  2006/03/30 14:01:57  lulin
// - �������� ������������� ��������� �� ��� - � ����������� � ��� - ��� ����, ����� � ����� ��������� �� ������.
//
// Revision 1.87  2006/03/22 07:29:36  oman
// - new beh: ������� � _OnTest �� OnGetState ��� ��������
//
// Revision 1.86  2006/02/10 14:51:18  mmorozov
// - change: vcm_opVisible -> vcm_opEnabled;
//
// Revision 1.85  2005/11/30 12:20:57  oman
// - fix: ��� �������� �� ������� ChangeDataSource ��������� �������
//
// Revision 1.84  2005/11/21 16:53:17  lulin
// - cleanup.
//
// Revision 1.83  2005/11/11 19:45:31  mmorozov
// new: ����������� ��������� � ���������� NoCurrent ��� �������� � �������, � ������� ��� �������� ����������;
//
// Revision 1.82  2005/11/04 10:49:32  mmorozov
// bugfix: ��� �������� ������� � ��� 6.� �� ������������ ��������� ��������;
//
// Revision 1.81  2005/07/22 08:43:40  mmorozov
// - ������� �� ����� ������;
//
// Revision 1.80  2005/06/30 07:48:26  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.79  2005/05/27 14:46:45  lulin
// - ������� ������� �������� � ���������� L3.
//
// Revision 1.78  2005/03/05 11:34:29  am
// change: ������� TeeTreeView �� TnscTreeView
//
// Revision 1.77  2004/12/23 11:15:19  lulin
// - rename prop: TvtCustomOutliner.TreeSource -> TreeStruct.
//
// Revision 1.76  2004/12/22 10:37:09  mmorozov
// - hint fix;
//
// Revision 1.75  2004/11/18 17:32:10  lulin
// - new interface: IvcmParamsPrim.
//
// Revision 1.74  2004/09/19 11:22:13  am
// change: ��� ��������� ������ ��������� ��� ����
//
// Revision 1.73  2004/09/19 09:56:04  am
// change: ����������� ������ ������ ������ ��������� ����������
//
// Revision 1.71  2004/08/19 12:28:57  demon
// - cleanup: ������� �������������� ������ ������ ��������� ���������
//
// Revision 1.70  2004/08/05 13:49:19  demon
// - cleanup: remove warnings and hints
//
// Revision 1.69  2004/07/23 10:16:06  mmorozov
// change: IndexOfTagName to FindTag;
//
// Revision 1.68  2004/07/22 09:28:04  mmorozov
// - ������������� DefDataAdapter.AttributeSearchList;
//
// Revision 1.67  2004/07/07 07:50:16  am
// change: Cleanup
//
// Revision 1.66  2004/07/01 15:56:44  demon
// - new behavior: ������� ������ ������ �������� ResetData(const aTreeSource : Il3SimpleTree)
//
// Revision 1.65  2004/06/22 17:33:14  demon
// - new behavior: DeleteNodes �������� �� ReleaseChilds
//
// Revision 1.64  2004/06/22 11:22:05  am
// new: DeleteNodes
//
// Revision 1.63  2004/06/21 15:24:49  am
// change: ������� �� TeeTreeView
//
// Revision 1.62  2004/06/21 06:41:17  am
// *** empty log message ***
//
// Revision 1.61  2004/06/17 11:31:34  am
// change: ��������� ��������
//
// Revision 1.60  2004/06/17 10:04:55  am
// change: ��������� ��������
//
// Revision 1.59  2004/06/16 10:36:00  am
// change: ������� �� ����� ������� (����� ��������� �� ����� �����������)
//
// Revision 1.58  2004/06/01 08:25:55  demon
// - new behavior: �������� �������� ������������ �������� � ����� ������� ��������� � VT
//
// Revision 1.57  2004/05/26 16:59:53  law
// - new behavior: TvtCustomOutliner ������ ����� ������ ��� ���������� Il3SimpleTree � Il3Tree, � �� ��� ������ _Tl3Tree.
//
// Revision 1.56  2004/04/08 18:32:35  law
// - refactoring: ���������� CurrentNode.
//
// Revision 1.55  2004/04/06 09:43:06  nikitin75
// - ��������� �� IStringOld;
//
// Revision 1.54  2004/04/05 13:54:13  nikitin75
// - ��������� �� IStringOld;
//
// Revision 1.53  2004/03/26 17:06:21  nikitin75
// ������� ������� ��������� ������� �� mrOk, ���� ������ �� ��������;
//
// Revision 1.52  2004/03/09 09:56:46  demon
// - optimization: ����������� ������� ��������� ������ � ��� � ������
//
// Revision 1.51  2004/03/09 09:07:50  mmorozov
// - ��������� �� ������ nsTypes ���������� � ������ nsConst;
//
// Revision 1.50  2004/03/04 16:37:42  law
// - rename unit: VLister -> vtLister.
//
// Revision 1.49  2004/03/04 15:39:55  law
// - rename unit: VOtliner -> vtOutliner.
//
// Revision 1.48  2004/03/03 18:05:13  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.47  2004/03/03 08:54:33  demon
// - new behavior: ���������� ���������� ��� ��������� Query (FillQuery)
//
// Revision 1.46  2004/02/27 14:12:45  demon
// - new: ���������� ResetData(aTreeSource : _Tl3Tree);
//
// Revision 1.45  2004/02/27 12:15:07  demon
// - new: ��������� �������� op_System_UpdateComplete
//
// Revision 1.44  2004/02/27 11:36:29  demon
// - new behavior: ������ ��������� ���������� ������ - TnsSelectedAttributesTree (� ���������� Reset)
//
// Revision 1.43  2003/12/26 16:02:35  demon
// - new behavior: BreafSelectionAttributesTag ������ �������� ������ KW � �� ��������. ���� ��������� �������� �������� �� DataAdapter.TagSearchList
//
// Revision 1.42  2003/12/24 16:48:22  demon
// - new behavior: CurentChanged ������ ����� ��� ���������
//
// Revision 1.41  2003/12/23 12:43:19  law
// - ��������� �������������� ���������, ��������� ������ Delphi.
//
// Revision 1.40  2003/12/11 16:12:13  law
// - ���������, ������� ������������� ������ Delphi.
//
// Revision 1.39  2003/11/30 13:33:25  law
// - cleanup: ������ �������� ������ ���������.
//
// Revision 1.38  2003/11/20 20:40:02  law
// - new behavior: ��������� ���������� ������ ��������������� ��������.
// - new behavior: ����� �������� ��������� �������� ������ ������ �� ��������������.
// - cleanup: �������� � Design-Time ���������� �� GblAdapter (�� ����������).
//
// Revision 1.37  2003/11/19 11:39:26  law
// - new behavior: ������������ ��� �������� � �������� � MenuManager'� ��� ���������� ������������� ��������������. ���� �������������� ���� �� ��������.
//
// Revision 1.36  2003/11/04 17:26:39  demon
// - fix: �������� �������� RootNode �� "��������� ���������"
//
// Revision 1.35  2003/10/10 11:25:57  demon
// - syntax fix
//
// Revision 1.34  2003/10/08 15:46:00  demon
// - code optimization
//
// Revision 1.33  2003/10/08 15:39:51  demon
// - bug fix: �������� FillQuery �� ��������� �������� ��� ������� ��������� �������� � ������ �����.
//
// Revision 1.32  2003/10/07 14:37:10  demon
// - new behavior: using new Attribute tag constants
//
// Revision 1.31  2003/10/07 13:52:06  demon
// - new behavior: �������� �������� enSelectedElement.opDelete ��� ������ � ����������� ���������� � ������ ��������
//
// Revision 1.30  2003/10/07 12:51:18  demon
// - new behavior: ���������� �������� ������� �������� ���� ������������ � ���� ��������.
//
// Revision 1.29  2003/10/06 08:48:57  demon
// - remove some syntax warnings
//
// Revision 1.28  2003/09/18 18:30:17  law
// - bug fix: ��� ������� TeeTreeView ��� IeeTreeView ��������� ��� "�������" ������ (AV - � ��������� � �����������).
//
// Revision 1.27  2003/09/09 08:51:39  cyberz
// fix, chg, add new icons (����� ��������� ����������, ����� ������ �� �������)
//
// Revision 1.26  2003/08/22 10:00:38  demon
// - fix: �������� ���� ���������� �������� � ��������.
//
// Revision 1.25  2003/08/20 13:00:00  demon
// - fix: ��� ������� ������ �������� ��������� ��������, ��� ��� �������� ����.
//
// Revision 1.24  2003/08/20 11:24:16  demon
// - new behavior: �������� ������������ ����������� ��� �������������� ���������� � ������.
//
// Revision 1.23  2003/08/20 08:29:56  demon
// - new: ���������� ���������� ������ � RootNode � ������������� � �������
//
// Revision 1.22  2003/08/18 11:17:08  demon
// - new: �������� ���������� ��������� �������� � ������ ���.
//
// Revision 1.21  2003/08/14 17:52:26  demon
// - new behavior: �������������� ����� �������� ��� ����������� ���������� Save/Load
//
// Revision 1.20  2003/08/08 13:17:33  demon
// - new: ������� ������� ���������� ���������� �������� � Query
//
// Revision 1.19  2003/07/31 16:41:31  demon
// - fix: ��� ������ � Active ��������� ������ Index ������������� Current.
//
// Revision 1.18  2003/07/30 14:38:16  demon
// - bug fix
//
// Revision 1.17  2003/07/30 09:33:39  demon
// - fix: ��������� �������� ������ �������� ��������� �������� � ������.
//
// Revision 1.16  2003/07/29 14:38:01  demon
// - new: �� double-click �� �������� ���� ���������� ���������������� � �������� ������.
//
// Revision 1.15  2003/07/29 09:55:54  demon
// - new: ��������� �������� ���������� Query, ���������� ����������.
//
// Revision 1.14  2003/07/28 16:13:47  demon
// - fix: ��������� �������� �� nil
//
// Revision 1.13  2003/07/28 11:09:35  demon
// - add: ��������� ��������� �������� Clear (�������� ���)
//
// Revision 1.12  2003/07/25 17:50:02  demon
// - new: �������� FindElement ���������� � nsTree
//
// Revision 1.11  2003/07/24 16:35:00  demon
// - new: ������� ����������� ������� ���� � ������ ���������� ���������.
//
// Revision 1.10  2003/07/24 15:47:42  demon
// - new: ������� ����������� �������� ��������/����������...
//
// Revision 1.9  2003/07/24 14:23:49  demon
// - new: ������� ������������� ������ � ������ ���������� ��� ���������������� � ������ ����������.
//
// Revision 1.8  2003/07/24 13:42:27  demon
// - new: ��������� ����������� �������� ��������� �� ������ ��������� ��������.
//
// Revision 1.7  2003/07/23 18:58:06  demon
// - fix: ��������� ���� �� ������ ���������� �� ���������.
//
// Revision 1.6  2003/07/23 14:04:03  demon
// - new: ������ � ����������� ���������� ������ ������� �� ��� Selected. ������ ����� �� Picked.
//
// Revision 1.5  2003/07/23 11:25:33  demon
// - fix: �������� ����������������� ��������� ��������� � ������ ��������� � ������ ���������� (���� �������� � Drag Select).
//
// Revision 1.4  2003/07/22 17:44:39  demon
// - new: ������� ������������� ���������� ��������� �� ������ (���������� ���������).
//
// Revision 1.3  2003/07/22 13:21:10  demon
// - new: � ������ ��������� ������
//
// Revision 1.2  2003/07/22 11:56:26  demon
// - add: ��������� ������� ���������� � �������� ���������� ���������.
//
// Revision 1.1  2003/07/21 16:35:09  demon
// - new: TenSelectedAttributes - ����� ����������� ��������� �������� ��������� ���������.
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

  OvcBase,

  l3TreeInterfaces,
  l3Tree,
  l3Tree_TLB,
  afwControl,

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

  eeInterfaces,
  eeTreeView,
  eeTreeViewExport,
  nscTreeView,
  

  DynamicTreeUnit,

  ImgList,
  nsTypes,
  nsConst, afwInputControl,

  afwControlPrim, afwBaseControl,

  bsInterfaces, l3InterfacedComponent,

  SearchDomainInterfaces,

  vcmExternalInterfaces,

  PrimSelectedAttributes_Form,
  PrimSelectedAttributesOptions_Form
  ;

type
  TenSelectedAttributes = class(TvcmEntityFormRef)
    Entities : TvcmEntities;
    SelectedTree: TnscTreeView;

    procedure vcmEntityFormInit;

    function  SelectedTreeGetItemImage(Sender: TObject; Index: Integer;
                                       var aImages: TCustomImageList): Integer;
    procedure SelectedTreeCurrentChanged(Sender: TObject;NewCurrent, OldCurrent: Integer);
    procedure SelectedTreeActionElement(Sender: TObject; Index: Integer);
    procedure SelectedTreeMakeTreeSource(out theTree: Il3SimpleTree);
    procedure vcmEntityFormChangedDataSource(aSender: TObject; const aOld,
      aNew: IvcmFormDataSource; const aFromHistory: Boolean);
    procedure enTreeopExpandAllTest(const aParams: IvcmTestParamsPrim);
    procedure enTreeopCollapseAllTest(const aParams: IvcmTestParamsPrim);

   private
    { Private declarations }

    procedure SyncCurrent(aIndex: integer);

    function pm_GetTaggedTreeInfo: InsTaggedTreeInfo;

    function GetTreeNode(const aNode: INodeBase): Il3SimpleNode; override;
    function GetTreeNode(const aNode: Il3SimpleNode): Il3SimpleNode; override;

    procedure AddChain(const aNode: INodeBase;
                       const aNodePath: TvcmInterfaceList);

    procedure DeleteElement(const aNode : Il3Node; WithChildren : Boolean = False); override;

    procedure AddNodes(aOp: TLogicOperation;
                       const aIterator: INodeIterator); override;
    function GetTaggedTreeInfo: InsTaggedTreeInfo; override;                   

    property TaggedTreeInfo: InsTaggedTreeInfo read pm_GetTaggedTreeInfo;
   public
   { Public declarations }
  end;

implementation

{$R *.DFM}

uses
  l3Chars,
  l3Base,
  l3Nodes,
  l3InterfacesMisc,
  l3Interfaces,
  l3String,

  eeTreeMisc,

  DataAdapter,

  nsNodes,
  nsTreeUtils,
  {$IfNDef Admin}
  nsSearchClasses,
  {$EndIf  Admin}
  nsSelectedTreeStruct,
  nsTreeAttributeNodesNew,
  SearchRes,

  StdRes,

  SearchInterfaces,
  SearchLite_Strange_Controls
  ;

procedure TenSelectedAttributes.vcmEntityFormInit;
begin
 SelectedTree.Images := nsSearchRes.SearchItemsImageList;
 f_InternalOp := false;
end;

procedure TenSelectedAttributes.DeleteElement(const aNode : Il3Node;
                                              WithChildren : Boolean);
var
 l_Parent : Il3SimpleNode;
begin
 if (aNode <> nil) and
    (WithChildren or
    not aNode.HasChild) then
 begin
  l_Parent := aNode.Parent;
  try
   aNode.Remove;
   DeleteElement(l_Parent as Il3Node);
  finally
   l_Parent := nil;
  end;
 end;
end;

function TenSelectedAttributes.SelectedTreeGetItemImage(Sender: TObject;
                                                        Index: Integer;
                                                        var aImages: TCustomImageList): Integer;
var
 l_l3Node : Il3SimpleNode;
 l_Node   : INodeBase;
 l_Op     : InsLogicOperation;
begin
 l_l3Node := SelectedTree.GetNode(Index);
 if l_l3Node.Parent = nil then
  Result := siilSelectedRoot
 else
 begin
  if Supports(l_l3Node, INodeBase, l_Node) then
  begin;
   if l_Node.HasChildren then
    Result := siilFolderStart
   else
    Result := siilSelectedElement;
  end
  else
   if Supports(l_l3Node, InsLogicOperation, l_Op) then
    Result := siilFolderStart + Integer(l_Op.Operation)
   else
    Result := siilSelectedElement;
 end;
end;

procedure TenSelectedAttributes.SelectedTreeCurrentChanged(Sender: TObject;
                                                           NewCurrent, OldCurrent: Integer);
begin
 if NewCurrent <> -1 then
  SyncCurrent(NewCurrent);
end;

procedure TenSelectedAttributes.AddChain(const aNode: INodeBase;
                                         const aNodePath: TvcmInterfaceList);
var
 l_Parent: INodeBase;
 l_Node: INodeBase;
 l_Root,
 l_TempNode: Il3Node;
 l_Searching: Boolean;
 l_Index: Integer;
 l_CurNode: INodeBase;

 function FindNode(const anIntf: Il3Node) : Boolean;
 var
  l_LevelNode: INodeBase;
 begin
  Result := Supports(anIntf, INodeBase, l_LevelNode) and l_CurNode.IsSameNode(l_LevelNode);
 end;

begin
 aNodePath.Clear;

 l_Node := aNode;
 while True do
 begin
  l_Node.GetParent(l_Parent);
  if l_Parent = nil then
   break;
  aNodePath.Insert(0, l_Node);
  l_Node := l_Parent;
 end;

 l_Searching := True;
 l_Root := SelectedTree.CTree.CRootNode;
 for l_Index := 0 to aNodePath.Count - 1 do
 begin
  l_CurNode := aNodePath[l_Index] as INodeBase;
  if l_Searching then
  begin
   l_TempNode := l_Root.IterateF(l3L2NA(@FindNode), imOneLevel or imCheckResult);
   if l_TempNode <> nil then
   begin
    l_Root := l_TempNode;
    continue;
   end
   else
    l_Searching := False;
  end;

  l_TempNode := TnsSelectedNode.Make(l_CurNode, False);
  l_Root.InsertChild(l_TempNode);
  SelectedTree.ExpandNode(l_Root, True);
  l_Root := l_TempNode;
 end;
end;

procedure TenSelectedAttributes.AddNodes(aOp: TLogicOperation;
                                         const aIterator: INodeIterator);
var
 l_LogicNode,
 l_CacheNode : Il3Node;
 l_NodeBase  : INodeBase;
 l_NodePath  : TvcmInterfaceList;
 l_Brief     : Boolean;
begin
 if (dsSelectedAttributes <> nil) then
  l_Brief := not dsSelectedAttributes.IsOneOperation
 else
 if Assigned(TaggedTreeInfo) then
  l_Brief := not TaggedTreeInfo.IsOneLogicOperation
 else
  l_Brief := true;

 l_NodePath := TvcmInterfaceList.Create;
 try
  while True do
  begin
   aIterator.GetNext(l_NodeBase);
   if l_NodeBase = nil then
    break;

   if l_Brief then
   begin
    l_CacheNode := TnsSelectedNode.Make(l_NodeBase, True);
    try
     if l_LogicNode = nil then
      l_LogicNode := TnsLogicNode.Make(aOp);
     l_LogicNode.InsertChild(l_CacheNode);
    finally
     l_CacheNode := nil;
    end;
   end
   else
    AddChain(l_NodeBase, l_NodePath);
  end;

  if (l_LogicNode <> nil) and
     l_Brief then
   SelectedTree.ExpandNode(SelectedTree.CTree.CRootNode.InsertChild(l_LogicNode), true);
 finally
  vcmFree(l_NodePath);
 end;
end;

function TenSelectedAttributes.GetTaggedTreeInfo: InsTaggedTreeInfo;
begin
 Result := TaggedTreeInfo;
end;

function TenSelectedAttributes.pm_GetTaggedTreeInfo: InsTaggedTreeInfo;
begin
 Supports(SelectedTree.TreeStruct, InsTaggedTreeInfo, Result);
end;

function TenSelectedAttributes.GetTreeNode(
  const aNode: INodeBase): Il3SimpleNode;

  function FindNode(const anNode: Il3SimpleNode): boolean;
  Var
   l_Node: INodeBase;
  begin
   Result := false;
   if Supports(anNode, INodeBase, l_Node) then
   try
    if l_Node.IsSameNode(aNode) then
     Result := true;
   finally
    l_Node := nil;
   end;
  end;

begin
 Result := SelectedTree.IterateF(l3L2NA(@FindNode), imCheckResult);
end;

function TenSelectedAttributes.GetTreeNode(const aNode: Il3SimpleNode): Il3SimpleNode;

  function FindNode(const anNode: Il3SimpleNode): boolean;
  begin
   if aNode.IsSame(anNode) then
    Result := true
   else
    Result := false;   
  end;

begin
 Result := SelectedTree.IterateF(l3L2NA(@FindNode), imCheckResult);
end;

procedure TenSelectedAttributes.SelectedTreeActionElement(Sender: TObject;
  Index: Integer);
begin
 SyncCurrent(Index);
end;

procedure TenSelectedAttributes.SyncCurrent(aIndex: integer);
Var
 l_l3Node : Il3SimpleNode;
 l_Node   : INodeBase;
begin
 if (aIndex >= 0) and not f_InternalOp then
 begin
  l_l3Node := SelectedTree.GetNode(aIndex);
  if (Aggregate <> nil) and Supports(l_l3Node, INodeBase, l_Node) then
   op_AttributeTree_SetCurrent.Call(Aggregate, l_l3Node);
 end;
end;

procedure TenSelectedAttributes.SelectedTreeMakeTreeSource(out theTree: Il3SimpleTree);
begin
 theTree := TnsSelectedTreeStruct.Make(nil, SelectedTree.ShowRoot);
end;

procedure TenSelectedAttributes.vcmEntityFormChangedDataSource(
  aSender: TObject; const aOld, aNew: IvcmFormDataSource;
  const aFromHistory: Boolean);
var
 l_V : InsSelectedAttributesIterators;
begin
 // ������ � �������� vs. ������� vs. _datasource
 if aFromHistory then exit;
 if (dsSelectedAttributes <> nil) then
 begin
  if Assigned(dsSelectedAttributes.RefreshValues) then
  begin
   l_V := dsSelectedAttributes.RefreshValues;
   try
    SelectedTree.TreeStruct := TnsSelectedTreeStruct.Make(dsSelectedAttributes.Search.Tag,
     SelectedTree.ShowRoot);
    // ������� ��������� ��������
    SelectedList_RefreshValues_Execute(l_V);
   finally
    l_V := nil;
   end;//try..finally
  end;//if Assigned(l_DS.Data) then
 end;//dsSelectedAttributes <> nil
end;//vcmEntityFormChangedDataSource

procedure TenSelectedAttributes.enTreeopExpandAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := SelectedTree.TreeStruct.RootNode.HasChild;
end;

procedure TenSelectedAttributes.enTreeopCollapseAllTest(
  const aParams: IvcmTestParamsPrim);
begin
 aParams.Op.Flag[vcm_ofEnabled] := SelectedTree.TreeStruct.RootNode.HasChild;
end;

end.
