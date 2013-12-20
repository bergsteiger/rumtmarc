unit OldSituationSearch_Form;

// $Id: OldSituationSearch_Form.pas,v 1.21 2013/01/23 08:04:22 kostitsin Exp $

// $Log: OldSituationSearch_Form.pas,v $
// Revision 1.21  2013/01/23 08:04:22  kostitsin
// �� ����������
//
// Revision 1.20  2013/01/22 15:59:20  kostitsin
// [$424399029]
//
// Revision 1.19  2012/09/29 10:31:47  lulin
// {RequestLink:397279284}
//
// Revision 1.18  2012/04/13 08:59:49  lulin
// {RequestLink:237994598}
//
// Revision 1.17  2011/11/16 17:35:57  lulin
// {RequestLink:232098711}
//
// Revision 1.16  2011/10/10 17:17:57  lulin
// {RequestLink:271749118}.
//
// Revision 1.15  2011/03/05 18:56:24  lulin
// {RequestLink:228688510}.
//
// Revision 1.14  2010/07/19 09:53:38  lulin
// {RequestLink:197496539}.
//
// Revision 1.13  2009/12/02 17:22:09  lulin
// {RequestLink:172984885}.
//
// Revision 1.12  2009/11/16 18:41:58  lulin
// {ReqestLink:159360578}. �58.
//
// Revision 1.11  2009/11/16 11:44:26  lulin
// {RequestLink:159360578}. �58.
//
// Revision 1.10  2009/11/12 14:33:08  lulin
// - ������� ����������� ������ ������ ����������.
//
// Revision 1.9  2009/11/10 12:29:55  lulin
// - �������� �������� �������������� ���������� ��������.
//
// Revision 1.8  2009/11/05 18:33:04  lulin
// - ��������� �� ���������� ������� ����������.
//
// Revision 1.7  2009/11/05 15:00:22  lulin
// - ��������� �������� � ����������� ���������� ��������.
//
// Revision 1.6  2009/10/29 16:03:16  lulin
// - ��-������� �������� ��������.
//
// Revision 1.5  2009/10/29 14:36:10  lulin
// - ������ ����� �������� �� ������ �� ������� ����������� ����������.
//
// Revision 1.4  2009/10/16 17:01:04  lulin
// {RequestLink:159360578}. �52.
//
// Revision 1.3  2009/09/23 08:05:28  lulin
// {RequestLink:164071198}.
//
// Revision 1.2  2009/09/22 17:40:17  lulin
// - ������ ����� ��������� �������� �� ������.
//
// Revision 1.1  2009/09/22 14:49:37  lulin
// - ��������� ������ ������ �� ������.
//
// Revision 1.100  2009/09/22 08:39:36  lulin
// - ������� ����������� ����� �������� ������ �������.
//
// Revision 1.99  2009/09/21 19:46:46  lulin
// - ������� ������� � ��������� ��������.
//
// Revision 1.98  2009/09/15 16:32:54  lulin
// - �������� ������ ������������ ��������� �������� �� ������.
//
// Revision 1.97  2009/09/03 18:49:13  lulin
// - ����������������� ������ � ������� ��������.
//
// Revision 1.96  2009/08/26 08:15:25  lulin
// - ���������� ����� ��������, ����� ����� ���� ������.
// - bug fix: �� ���������� �����������.
//
// Revision 1.95  2009/07/31 17:30:07  lulin
// - ������� �����.
//
// Revision 1.94  2009/02/10 19:04:03  lulin
// - <K>: 133891247. �������� �������� ���������� ������.
//
// Revision 1.93  2009/02/09 11:57:18  lulin
// - <K>: 133891247.
//
// Revision 1.92  2008/07/22 10:42:32  oman
// - new: ���������� ������� - ����� ����� �� (�-103940886)
//
// Revision 1.91  2008/06/26 10:50:07  oman
// - fix: ������� � ��������������� ����� (cq11768)
//
// Revision 1.90  2008/04/16 07:50:34  mmorozov
// - new: ������� ��������� ������� �������� ��� ��������� � ��������� (K<89102296>).
//
// Revision 1.89  2008/01/24 11:56:24  oman
// - new: ���������� DPI (cq24598)
//
// Revision 1.88  2008/01/24 11:47:50  oman
// - new: ������������ ���������������� �������� (cq24598)
//
// Revision 1.87  2008/01/10 07:23:08  oman
// ������� �� ����� �������
//
// Revision 1.85.4.2  2007/12/21 09:45:42  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.85.4.1  2007/11/22 13:20:25  oman
// ������������ �� ����� �������
//
// Revision 1.86  2007/12/21 07:12:12  mmorozov
// - new: �������� �� ����������� �� ���������� ������ (CQ: OIT5-27823);
//
// Revision 1.85  2007/09/25 03:58:33  mmorozov
// - new behaviour: ��� ������\��������� �������� ���������� �������� ��� �������� ���� vcm_otDate, vcm_otCombo, vcm_otEditCombo ���������� �������� ���������� _SelectedString, ������ Caption. ��� ����� Caption ��� ���� ����� �������� ���� ���������� (� ������ ������ CQ: OIT5-26741);
//
// Revision 1.84  2007/06/28 14:56:23  lulin
// - cleanup.
//
// Revision 1.83  2007/05/17 12:40:12  lulin
// - ������� �������� �� ������������.
//
// Revision 1.82  2007/03/29 09:31:46  oman
// - new: ����������� ���������� ��������� - ������ �����������
//  (cq24456)
//
// Revision 1.81  2007/03/20 11:38:27  lulin
// - �� ������ ��������� ��� ������������ ���������� ���� � ���������.
//
// Revision 1.80  2007/03/16 07:48:23  oman
// - new: �������� ����� ����������� ������ (cq24456)
//
// Revision 1.79  2007/03/14 08:02:16  oman
// - fix: ������ ���������������� ���������� ���� ����������
//  �������������� - ������ �� ListIndexOutOfBounds
//
// Revision 1.78  2007/03/01 08:53:51  lulin
// - cleanup.
//
// Revision 1.77  2007/02/13 14:33:31  lulin
// - cleanup.
//
// Revision 1.76  2007/02/13 12:08:59  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.75  2007/02/09 13:58:35  lulin
// - ��� ���������� � ������ �� �������� ������ � ���������� � ������� �������.
//
// Revision 1.74  2007/02/08 15:31:48  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.73  2007/02/08 13:12:11  lulin
// - ���������� ��������� � ������ ���������.
//
// Revision 1.72  2007/01/20 15:30:33  lulin
// - ��������� ��������� �������� ��� ���������� � ��� ������������.
//
// Revision 1.71  2007/01/17 14:03:08  lulin
// - �������� ��������� ��������������� ��������� � ������ ��������.
//
// Revision 1.70  2007/01/16 14:13:20  lulin
// - ����������� �� ���������������� ��������� - ��������� ��������.
//
// Revision 1.69  2007/01/15 19:22:44  lulin
// - ��������� �� ���������� �������� ������ - �� ��������� ������ ��������. ������� �������� �������� �������������� �� ������ ���������� � �������.
//
// Revision 1.68  2007/01/10 13:58:55  lulin
// - �� ��������� �� ������� ��������� � �������� � ���������� ��������.
//
// Revision 1.67  2007/01/10 11:58:02  lulin
// - cleanup.
//
// Revision 1.66  2006/12/07 12:40:58  lulin
// - ��������� ������� �� "����������" ������.
//
// Revision 1.65  2006/12/07 08:32:15  lulin
// - cleanup.
//
// Revision 1.64  2006/12/05 14:16:03  lulin
// - ������� �������� � ���������� ����������.
//
// Revision 1.63  2006/11/03 09:46:20  oman
// Merge with B_NEMESIS_6_4_0
//
// Revision 1.62.4.1  2006/10/25 07:29:38  oman
// ���������� ���������� �� StdStr
//
// Revision 1.62  2006/04/19 13:34:22  oman
// - new beh: ������������� StdStr � _StdRes
//
// Revision 1.61  2006/03/31 07:42:33  lulin
// - ������� ��� ����������, ���������� � Execte ��������.
//
// Revision 1.60  2006/03/30 15:31:43  lulin
// - ������� ��� ���������� � _OnTest.
//
// Revision 1.59  2006/03/30 14:01:56  lulin
// - �������� ������������� ��������� �� ��� - � ����������� � ��� - ��� ����, ����� � ����� ��������� �� ������.
//
// Revision 1.58  2006/03/20 09:27:50  oman
// - new beh: ������������� ��� ��������� ��������� � ��� ����� (StdStr, DebugStr � SystemStr)
//
// Revision 1.57  2005/11/14 12:07:47  mmorozov
// - add units;
//
// Revision 1.56  2005/10/06 10:49:40  lulin
// - ����� ������� �������� � ����� ���������� �����.
//
// Revision 1.55  2005/10/06 09:17:13  lulin
// - ������� ����� ������� �������� � ����� ���������� �����.
//
// Revision 1.54  2005/06/30 07:48:26  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.53  2005/05/27 14:46:45  lulin
// - ������� ������� �������� � ���������� L3.
//
// Revision 1.52  2005/02/28 09:33:57  demon
// - new behavior: ��� �������� ������� _IQuery �� �������� ����� ��������� ��� ���
// - new behavior: ���� _IQuery.Type ����� readonly
//
// Revision 1.51  2005/01/21 11:37:56  mmorozov
// bugfix: ��� �������� ������ ������� �� �� �������������� ������� � ������;
//
// Revision 1.50  2004/11/18 16:30:48  lulin
// - ���������� ���������� �� VCM ��� ������������� inc'��.
//
// Revision 1.49  2004/09/21 13:53:23  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.48  2004/09/17 11:25:52  lulin
// - �������� vcm_opStrings ������������ � _vcm_opItems, � ��� ������� ��� � _IvcmHolder �� IvcmStrings (!).
//
// Revision 1.47  2004/09/16 11:34:37  lulin
// - ����� ������� ������� � ������������ ��������� ����������.
//
// Revision 1.46  2004/09/13 11:44:06  lulin
// - bug fix: aParams ��� ��������.
//
// Revision 1.45  2004/09/10 16:34:46  lulin
// - ����������� - �������� OpDef � �������� ������ �� OperationItem, � �� �� ���� ����������.
//
// Revision 1.44  2004/08/26 10:22:52  mmorozov
// new behaviour: �� ������ ������ � toolbar-�� � ������� ����, ������ �� ������������;
//
// Revision 1.43  2004/08/05 13:31:15  demon
// - cleanup: remove warnings and hints
//
// Revision 1.42  2004/07/19 12:34:26  am
// new: � ���\���: ���� �� ���� ������� �� ������, ��������� ����������� �������
//
// Revision 1.41  2004/07/07 07:50:16  am
// change: Cleanup
//
// Revision 1.40  2004/06/25 09:16:48  am
// change: ������� �� ����� �������
//
// Revision 1.39  2004/05/27 08:28:34  nikitin75
// ����� �������������� ���������� ����� �������� ������������ � MainZone (����������� ��������� - � _ParentZone)
//
// Revision 1.38  2004/04/15 15:02:16  demon
// - new behavior: ����������� ����� ��� 5.� . �������� enResult ������������� � ����� cfSaveLoadForm.
//
// Revision 1.37  2004/04/06 09:43:06  nikitin75
// - ��������� �� IStringOld;
//
// Revision 1.36  2004/04/05 13:54:12  nikitin75
// - ��������� �� IStringOld;
//
// Revision 1.35  2004/03/12 12:01:17  demon
// - new behavior: Splitters �������� �� ResizeablePanel
//
// Revision 1.34  2004/03/10 10:42:43  nikitin75
// - ���� Ok (ShortCut);
// - ������ shortcut (Enter) �������� ��������������� � opOk;
//
// Revision 1.33  2004/03/09 09:07:50  mmorozov
// - ��������� �� ������ nsTypes ���������� � ������ nsConst;
//
// Revision 1.32  2004/02/04 13:31:46  demon
// - new behavior: �������� ������ � _IQuery ���������� �� ������ search\nsQuery � ������ nsQueryUtils
//
// Revision 1.31  2004/01/15 14:14:27  demon
// - fix: ������ ������ �������� _OnTest ��� �������� ���� ShortCut
//
// Revision 1.30  2004/01/13 13:50:35  demon
// - new: ������� �������� � shortcut'�� ��� ������ �������.
//
// Revision 1.29  2004/01/09 14:42:37  demon
// - remame: ������� _Caption � �������� op_Result_Ok (��� ���� Help)
//
// Revision 1.28  2003/12/23 08:23:39  demon
// - new behavior: ������� ������� �������� �������� � �������� Search. ������ ���������� IFilters.
//
// Revision 1.27  2003/12/18 17:22:49  law
// - change: ������� TvtPanel -> TvtPanel.
//
// Revision 1.26  2003/11/30 17:03:55  law
// - change: _ModuleOperation ��������� �� ���� � ���������������.
//
// Revision 1.25  2003/11/30 13:33:25  law
// - cleanup: ������ �������� ������ ���������.
//
// Revision 1.24  2003/11/21 13:02:14  law
// - change: �������� aMode ��������� � ����� � ������ ��������������.
//
// Revision 1.23  2003/11/20 20:40:02  law
// - new behavior: ��������� ���������� ������ ��������������� ��������.
// - new behavior: ����� �������� ��������� �������� ������ ������ �� ��������������.
// - cleanup: �������� � Design-Time ���������� �� GblAdapter (�� ����������).
//
// Revision 1.22  2003/11/19 17:53:08  migel
// - change: ��������� ������ � ��������� �� ������.
//
// Revision 1.21  2003/11/19 12:49:16  migel
// - change: ��������� ������ � ��������� �� ������.
//
// Revision 1.20  2003/10/17 15:11:19  demon
// - new: �������� _opIsQuerySaved (�������� ������� ���������� �������� �������)
//
// Revision 1.19  2003/10/13 14:47:37  demon
// - syntax fix
//
// Revision 1.18  2003/10/13 13:45:02  demon
// - new behavior: ��� ������ ������ �������� �������� ��������� �� ������� ������.
//
// Revision 1.17  2003/10/10 12:18:48  demon
// - fix: �������� ���� ��� ���������� OldSituationSearch.
//
// Revision 1.16  2003/10/09 09:02:47  mmorozov
// + ���������� ������� � �������;
//
// Revision 1.15  2003/10/08 08:54:14  mmorozov
// + � �������� �������� ��������� ������� �������;
//
// Revision 1.14  2003/10/08 06:30:43  mmorozov
// + ����������� ������������� �������;
//
// Revision 1.13  2003/10/07 14:37:10  demon
// - new behavior: using new Attribute tag constants
//
// Revision 1.12  2003/10/06 13:46:26  demon
// - new behavior: ��������� �������� ClearAll (�� ������ �������).
//
// Revision 1.11  2003/10/06 12:25:52  demon
// - new: ��������� ���� ��� ������������ �������� ������ �������.
//
// Revision 1.10  2003/10/06 08:48:57  demon
// - remove some syntax warnings
//
// Revision 1.9  2003/09/25 14:06:13  demon
// - sintax fix
//
// Revision 1.8  2003/09/23 13:01:05  demon
// - new: ��������� ������ "������" � �� ��� � ���
//
// Revision 1.7  2003/09/04 14:38:59  law
// - bug fix: ���������� ��������� ������������ ������� LoadState � _SaveState.
//
// Revision 1.6  2003/08/20 07:54:32  demon
// - new: ���������� ���������� �� � �������
//
// Revision 1.5  2003/08/19 17:13:57  demon
// - new: ���������� � �������� ������� � ��� �-�� 5.�
//
// Revision 1.4  2003/08/04 17:31:58  demon
// - new: ��������� �������� ������� ������ ������.
//
// Revision 1.3  2003/07/30 15:07:54  demon
// - new: ����������� �������� ������.
//
// Revision 1.2  2003/07/29 08:11:45  demon
// - fix: ��������� �������� SetRoot ��� ������ ����� ����.
//
// Revision 1.1  2003/07/28 15:59:36  demon
// - add: ��������� ��� ��� ������� �������
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
  ExtCtrls,
  StdCtrls,
  Buttons,

  afwControl,

  vtSizeablePanel,
  vcmComponent,
  vtPanel,

  OvcBase,

  vcmInterfaces,
  vcmExternalInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmContainerForm,
  vcmBaseEntities,

  nscContextFilter,

  SearchUnit,
  
  nsQuery,
  nsFolders, vtProportionalPanel,

  nsQueryInterfaces, l3InterfacedComponent, afwControlPrim, afwBaseControl,
  afwTextControlPrim, afwTextControl,

  PrimOldSituationSearch_Form,
  PrimOldSituationSearchOptions_Form
  ;

const
  CM_AFTER_INIT = (WM_USER + 201);

type
  TcfOldSituationSearch = class(TvcmContainerFormRef)
    Entities : TvcmEntities;
    BackgroundPanel: TvtPanel;
    ContextFilter: TnscContextFilter;
    BotomPanel: TvtSizeablePanel;
    ParentZone: TvtPanel;
    ZoneContainer: TvtProportionalPanel;
    ChildZone: TvtPanel;
    MainZone: TvtSizeablePanel;
    procedure enResultopCancelExecute(const aParams: IvcmExecuteParams);

    procedure vcmContainerFormInit;
    procedure vcmContainerFormSaveState(out aState: IvcmBase;
                                        aStateType: TvcmStateType;
                                        var Saved: Boolean);
    procedure vcmContainerFormLoadState(const aState: IvcmBase;
                                        aStateType: TvcmStateType;
                                        var Loaded: Boolean);
    procedure ContextFilterChange(Sender: TObject);
    procedure ContextFilterWrongContext(Sender: TObject);
   private

    procedure AfterInit(var Message: TMessage); message CM_AFTER_INIT;
   protected
    function FillQuery : IQuery; override;

    procedure InitControls; override;
    procedure Cleanup; override;
   public
     { Public declarations }
  end;

implementation

{$R *.DFM}

uses
  l3InterfacesMisc,
  l3Tree_TLB,
  l3Nodes,
  l3String,

  eeInterfaces,
  eeTreeMisc,

  DataAdapter,

  bsTypes,

  nsTypes,
  nsConst,
  nsQueryUtils,
  nsNodes,
  nsUtils,

  BaseTreeSupportUnit,

  StdRes,
  SearchLite_Strange_Controls,

  vtF1InterfaceConst
  ;

procedure TcfOldSituationSearch.InitControls;
begin
 inherited;
end;

procedure TcfOldSituationSearch.Cleanup;
begin
 f_FormState := nil;
 inherited;
end;

function TcfOldSituationSearch.FillQuery : IQuery;
begin
 if (f_FormState.Query <> nil) then
  Result := f_FormState.Query
 else
 begin
  f_FormState.Query := DefDataAdapter.CreateEmptyQuery(QT_KEYWORD);
  Result := f_FormState.Query;
 end;//f_FormState.Query <> nil

 // ��������� ��������� �������� � Query
 if (Result <> nil) then
  Op_AttributeTree_SaveToQuery.Call(Aggregate, Result);
end;

procedure TcfOldSituationSearch.AfterInit(var Message: TMessage);
  //message CM_AFTER_INIT;
  {-}
var
 l_C : TControl;  
begin
 if (MainZone.ControlCount > 0) then
 begin
  l_C := MainZone.Controls[0];
  if (l_C is TvcmEntityForm) then
   if TvcmEntityForm(l_C).CanFocus then
   // - http://mdp.garant.ru/pages/viewpage.action?pageId=271749118
   // - http://mdp.garant.ru/pages/viewpage.action?pageId=271749118&focusedCommentId=274468233#comment-274468233
    (l_C as TvcmEntityForm).SetFocus;
 end;//MainZone.ControlCount > 0
end;

procedure TcfOldSituationSearch.vcmContainerFormInit;
var
 l_FormState : TnsQueryFormState;
begin
 ContextFilter.Images := dmStdRes.SmallImageList;
 l_FormState := TnsQueryFormState.Create;
 try
  Supports(l_FormState, InsQueryFormState, f_FormState);
 finally
  vcmFree(l_FormState);
 end;
{
 �������, �.�. �� ��������� query � ���� �����
 try
  if l3BQueryInterface(l_FormState, InsQueryFormState, f_FormState) then
   f_FormState.Tag := KeyWordTag;
 finally
  vcmFree(l_FormState);
 end;
}
 PostMessage(Handle, CM_AFTER_INIT, 0, 0);
 // http://mdp.garant.ru/pages/viewpage.action?pageId=271749118&focusedCommentId=290954110&#comment-290954110
end;

procedure TcfOldSituationSearch.vcmContainerFormSaveState(out aState: IvcmBase;
                                                          aStateType   : TvcmStateType;
                                                          var Saved: Boolean);
begin
 if aStateType = vcm_stContent then
  aState := f_FormState as IvcmBase;
end;

procedure TcfOldSituationSearch.vcmContainerFormLoadState(const aState: IvcmBase;
                                                          aStateType   : TvcmStateType;
                                                          var Loaded: Boolean);
begin
 if aStateType = vcm_stContent then
  if not l3BQueryInterface(aState, InsQueryFormState, f_FormState) then
   Assert(False);
end;

procedure TcfOldSituationSearch.enResultopCancelExecute(const aParams: IvcmExecuteParams);
begin
 vcmDispatcher.History.Back;
end;

procedure TcfOldSituationSearch.ContextFilterChange(Sender: TObject);
begin
 Op_Context_SetContext.Call(Aggregate, ContextFilter.MakeState);
end;

procedure TcfOldSituationSearch.ContextFilterWrongContext(Sender: TObject);
begin
 nsBeepWrongContext;
end;

end.
