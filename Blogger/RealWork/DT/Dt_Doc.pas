Unit Dt_Doc;

{ $Id: Dt_Doc.pas,v 1.278 2013/07/26 12:58:20 dinishev Exp $ }

// $Log: Dt_Doc.pas,v $
// Revision 1.278  2013/07/26 12:58:20  dinishev
// {Requestlink:474582850}. ��������� ������������ ���������� ��� �������.
//
// Revision 1.277  2013/07/08 09:12:32  voba
// - K:468028619
//
// Revision 1.276  2013/05/17 15:57:53  voba
// - ����������� ��������
//
// Revision 1.275  2013/04/19 13:07:39  lulin
// - ���������.
//
// Revision 1.274  2012/04/20 15:20:01  lulin
// {RequestLink:283610570}
//
// Revision 1.273  2012/01/13 09:29:19  fireton
// - ������� �������� ������� ��������� �� ������ �� ������� FILE, �� � �� ���� (K 326776318)
//
// Revision 1.272  2011/12/22 11:18:03  fireton
// - ��������� rStatus � �������������� ������ (� 321986415)
//
// Revision 1.271  2011/12/19 13:37:08  fireton
// - �������� ������� ID ����� JOIN (� 320745075)
//
// Revision 1.270  2011/08/31 09:00:13  voba
// - k : 281515440
//
// Revision 1.269  2011/07/28 08:42:26  voba
// - add function  GetMinValue
//
// Revision 1.268  2011/06/10 11:52:18  voba
// - DocumentServer ������ �������� function DocumentServer(aFamily : TFamilyID), ��� �� �������� Family �� �����������, ��-������� ���� ��������
//
// Revision 1.267  2011/02/18 11:27:32  voba
// - k : 236721575
//
// Revision 1.266  2011/01/28 11:27:23  voba
// - k : 251343383
//
// Revision 1.265  2010/12/23 11:49:35  voba
// - k:248195617
//
// Revision 1.264  2010/09/28 13:06:08  fireton
// - ������������ ������ ��� PAnsiChar ������ ����������
//
// Revision 1.263  2010/09/28 13:00:40  voba
// [$235058492].
//
// Revision 1.262  2010/09/24 12:11:14  voba
// - k : 235046326
//
// Revision 1.261  2010/03/16 11:59:36  voba
// no message
//
// Revision 1.260  2010/02/24 11:54:50  narry
// - �������� ����������� �������� �� �����
//
// Revision 1.259  2010/02/15 14:39:52  voba
// - K : 190679759
//
// Revision 1.258  2010/02/10 09:23:38  voba
// - add procedure ExpandAllEdition
//
// Revision 1.257  2010/02/02 13:54:42  voba
// - K:178324176
//
// Revision 1.256  2009/10/19 11:04:22  voba
// - ����������� �� ������ ���������� ���������� ���������
//
// Revision 1.255  2009/09/28 08:54:24  voba
// - ����������� �� ������� ����������� ����
//
// Revision 1.254  2009/09/17 11:44:33  lulin
// {RequestLink:163065542}.
//
// Revision 1.253  2009/09/15 14:32:46  voba
// - bug fix ��������� ������ �� ��������� ��������
//
// Revision 1.252  2009/09/15 12:34:07  voba
// - cc ������� �������������� �������
//
// Revision 1.251  2009/09/11 08:39:48  voba
// - ����� ������ ������
//
// Revision 1.250  2009/07/29 15:05:42  voba
// - refact. �������� ��������� - ���� �� ���������
//
// Revision 1.249  2009/07/22 11:27:26  narry
// - ��������� ������� � DictServer
//
// Revision 1.248  2009/07/20 12:38:48  voba
// - ������� renum � ��������
//
// Revision 1.247  2009/06/23 07:32:59  voba
// - �������������� ������� � ���������
//
// Revision 1.246  2009/06/08 13:23:24  voba
// - enh. ���������� ���������. ��������� �� ��������������� atDateNumsChDate, atRelHLink,
//
// Revision 1.245  2009/05/19 12:22:42  voba
// - ��������� (�� �� �����) ��������� �������� �����
//
// Revision 1.244  2009/05/15 08:24:37  narry
// - ��������������
//
// Revision 1.243  2009/05/14 13:02:01  voba
// - add dlDoc2DocLink � ���������� ��������
//
// Revision 1.242  2009/05/08 11:10:07  voba
// - ������� TblH �� Handle
//
// Revision 1.241  2009/05/08 08:48:42  voba
// - del ��������� �������������� ��������
// - bug fix �������� �������� �����
//
// Revision 1.240  2009/04/13 07:10:58  narry
// - ���������� ����������� ����� � ����������
//
// Revision 1.239  2009/04/09 06:05:05  voba
// - cc
//
// Revision 1.238  2009/03/31 09:02:58  fireton
// - ������/������� �������� "����������� � ���������" [$121164344]
//
// Revision 1.237  2009/03/26 10:24:06  fireton
// - ����� ���� (Comment)
//
// Revision 1.236  2009/03/23 13:25:16  voba
// - add {$Define V131}
//
// Revision 1.235  2009/03/19 08:47:08  voba
// no message
//
// Revision 1.234  2009/03/03 12:33:55  voba
// - �� ���� fDateNums
//
// Revision 1.233  2009/03/03 08:42:44  fireton
// - GetFullRecOnID ������ ���������� ����� ������
//
// Revision 1.232  2009/03/02 08:10:41  voba
// - ������� ������ ���������� � constructor TPrometTbl.Create
//
// Revision 1.231  2009/02/20 13:27:58  fireton
// - ������� !CHANGE (K 77235676)
// - 131 ������ ����
//
// Revision 1.230  2009/02/03 12:01:04  voba
// - �������� ������  "���������" �� ������ ��� �������� (��  {$ifdef NeedInclInDocRec})
//
// Revision 1.229  2009/01/26 08:06:17  fireton
// - ������� � ������ b_archi_NewSrch2 (����� ��-������)
//
// Revision 1.228.2.1  2009/01/23 14:06:29  fireton
// - ������� ����� �� Query
//
// Revision 1.228  2008/11/10 14:31:44  fireton
// - ���� ����� ��������� ������� (�����������)
//
// Revision 1.227  2008/10/31 09:58:12  voba
// - �������  property Docs  �� ISab
//
// Revision 1.226  2008/09/19 13:14:56  voba
// - add type TDocListAccessRec
//
// Revision 1.225  2008/09/17 14:47:47  fireton
// - ����� ������ ���� (130)
// - ��������� ���������
//
// Revision 1.224  2008/05/22 13:06:29  voba
// - add  function IsValidDocID
//
// Revision 1.223  2008/05/07 15:53:40  voba
// - Refact. function .GetRelImportNum � GetINumber ����, ������ ��� ������������ GetExtDocID
//
// Revision 1.222  2008/05/05 10:39:54  voba
// - ���������� �� ������ �����������������
//
// Revision 1.221  2008/04/30 10:14:46  voba
// - add  procedure ChangeHLAddr
//
// Revision 1.220  2008/04/23 09:03:40  voba
// no message
//
// Revision 1.219  2008/04/07 11:37:57  voba
// - bug fix
//
// Revision 1.218  2008/03/28 10:00:56  voba
// - ren GetRecordByUniq -> GetRecordIDByUniq
// - ren HasRecordsWith -> HasRecord
//
// Revision 1.217  2008/03/20 09:48:36  lulin
// - cleanup.
//
// Revision 1.216  2008/02/19 11:38:38  lulin
// - ����������� ��������������� �����������.
//
// Revision 1.215  2008/02/13 16:03:08  lulin
// - ������ ������� ������ ������ ������.
//
// Revision 1.214  2008/02/13 14:07:34  voba
// - del  procedure DocSAB2Stream, Stream2NumSAB, Stream2DocSab (����������� ��������� �� dt_sab)
//
// Revision 1.213  2008/02/12 14:39:28  voba
// - refact.
//
// Revision 1.212  2008/02/07 14:44:41  lulin
// - ����� _Tl3LongintList �������� � ����������� ������.
//
// Revision 1.211  2008/02/01 16:41:34  lulin
// - ���������� �������� ������.
//
// Revision 1.210  2008/01/29 07:29:13  voba
// - add comment.
//
// Revision 1.209  2007/12/06 11:40:59  lulin
// - cleanup.
//
// Revision 1.208  2007/11/30 09:05:05  voba
// - bug fix
//
// Revision 1.207  2007/11/26 10:08:30  voba
// - use cUndefDictID, cUndefDocID, cUndefSubID
//
// Revision 1.206  2007/11/12 12:40:41  fireton
// - bug fix: �������� ����������� ���� ���� ��
//
// Revision 1.205  2007/08/30 12:37:59  lulin
// - ������ �������� ������.
//
// Revision 1.204  2007/08/22 13:02:28  narry
// - ���������� ����� �������, �� ��������� ������ � �������
//
// Revision 1.203  2007/08/14 20:25:14  lulin
// - bug fix: �� ���������� ����������.
//
// Revision 1.202  2007/08/14 19:31:55  lulin
// - ������������ ������� ������.
//
// Revision 1.201  2007/08/14 14:30:08  lulin
// - ������������ ����������� ������ ������.
//
// Revision 1.200  2007/07/24 12:32:33  narry
// - ����������� ������� ���������
//
// Revision 1.199  2007/07/13 14:04:26  voba
// no message
//
// Revision 1.198  2007/07/04 07:45:41  narry
// - �� ������������ ������� ����������
//
// Revision 1.197  2007/07/03 15:07:11  voba
// - change function TDocumentSabList.GetIndex
//
// Revision 1.196  2007/07/03 13:30:59  voba
// - ������� �� ISabCursor
//
// Revision 1.195  2007/06/28 11:16:25  voba
// - refact. ����� �� function TAbstractList.GetItem ������ ��������
//
// Revision 1.194  2007/06/22 14:35:00  voba
// - change Sab to ISab
//
// Revision 1.193  2007/05/25 15:27:21  voba
// - DeleteRecsByKeys ������ ���������� ���������� ��������� � ��������� exception � ������ ������
//
// Revision 1.192  2007/05/18 12:23:40  fireton
// - ������������� �������� �����:
//   * ������ ���������� �� ����������� ���� � ��
//   * ���������� OperationHandle
//
// Revision 1.191  2007/04/27 14:24:37  voba
// - add procedure   SprIDs2DocIDs
// - del function TDocumentServer.AddDoc
//
// Revision 1.190  2007/04/27 07:49:33  fireton
// - ����������� DT. ������� THTServer �� �������������� ������.
//
// Revision 1.189  2007/04/25 07:52:37  fireton
// - �����������. ������ �� ������ ���������� ���� ������ � ������ ������������ ����� � DT_Types
//
// Revision 1.188  2007/04/23 07:30:03  voba
// - change Sab to ISab
//
// Revision 1.187  2007/04/19 08:07:41  voba
// - del function TFileTbl.JoinIDSabs
//
// Revision 1.186  2007/04/17 11:15:43  voba
// no message
//
// Revision 1.185  2007/04/10 10:59:54  voba
// - refact.
//
// Revision 1.184  2007/03/30 14:03:16  voba
// - merge
//
// Revision 1.183.2.1  2007/03/30 13:43:42  voba
// - change Sab to ISab
//
// Revision 1.183  2007/03/26 09:34:03  fireton
// - ��������� ������ l3System.FreeLocalMem
//
// Revision 1.182  2007/03/02 10:09:40  voba
// - bug fix htSubSearch Bug
//
// Revision 1.181  2007/02/22 09:22:19  voba
// - ren DelRecsOnKeys -> DeleteRecsByKeys, _move this to TdtTable
//
// Revision 1.180  2007/02/16 16:13:06  voba
// - rename type Condition ->ThtCondition
//
// Revision 1.179  2007/02/12 16:11:00  voba
// - ������� ������������� htModifyRecs �� ����� TAbsHtTbl.ModifyRecs
// - ������� TdtTable � ������ dt_Table (������� ������ ������� HyTech �� ������ � �������� �������)
// - ������� ������� HyTech �� ������ � Sab � dt_Sab, ����� ������ ������
//
// Revision 1.178  2006/10/04 08:30:14  voba
// - merge with b_archi_ht64
//
// Revision 1.177.2.2  2006/09/19 14:41:38  voba
// - ��� �������� ���� �� ������� ������ �� ����
//
// Revision 1.177.2.1  2006/09/19 07:49:10  voba
// - ������� �� HTStub
//
// Revision 1.177  2006/09/07 16:12:16  voba
// - bug fix
//
// Revision 1.176  2006/08/23 07:56:38  voba
// - merge
//
// Revision 1.175.10.2  2006/07/14 14:07:03  voba
// - imp. procedure   GetAnnoSABonDocSAB ������� �������� aHasAnno : Boolean = True ������ ����� �������� ������ ����� ��� HasAnno
//
// Revision 1.175  2006/02/06 13:32:55  voba
// - new beh. ������� ��������� ����� ��������� (����� 2)
//
// Revision 1.174  2005/12/06 11:59:39  voba
// - �������� ��������� ������ ��� �������� ���������
// - del Procedure   SetEmptyDestOnDocs(DestDocs : SAB);
// - del Procedure   SetEmptyDestOnSab(RecSab : Sab;IDSab : Sab);
//
// Revision 1.173  2005/11/11 15:09:48  voba
// - del procedure BaseStatistic
//
// Revision 1.172  2005/10/18 12:34:00  step
// � GetPublishData ��������� ���������� �� SourceId
//
// Revision 1.171  2005/10/17 13:23:01  step
// �������� TDocumentData.GetPublishedList (���������� ������ ������)
//
// Revision 1.170  2005/10/06 11:40:47  voba
// - enh. use l3ConcatText in GroupUpdateDoc
//
// Revision 1.169  2005/09/08 09:35:20  step
// no message
//
// Revision 1.168  2005/09/08 09:27:27  step
// new: TFileTbl.GetFutureVersions
//
// Revision 1.167  2005/08/12 07:46:53  voba
// - bug fix: �� ����������� Modified � fDateNums ����� ������
//
// Revision 1.166  2005/08/03 17:38:06  step
// ��������� ����� FindDocs � ��������� �� ������ Dt_Active � Dt_Doc
//
// Revision 1.165  2005/07/28 15:12:13  voba
// - improve : � procedure SetCorrectLis�t, SetPublishedList ����� �������������� ���������
//
// Revision 1.164  2005/07/25 13:07:25  lulin
// - bug fix: �� �������������� ����������.
//
// Revision 1.163  2005/06/09 10:54:31  step
// new: TDocumentSabList.GetDocIds
//
// Revision 1.162  2005/05/17 13:28:59  voba
// no message
//
// Revision 1.161  2005/05/16 11:05:32  voba
// add parameter   aPreventNumFree to procedure DelDocEx
//
// Revision 1.160  2005/04/07 08:19:13  step
// bug fix: TFileTbl.GetHasAnno
//
// Revision 1.159  2005/04/04 09:45:42  step
// new: TFileTbl.GetHasAnno
//
// Revision 1.158  2005/03/30 09:26:52  narry
// - ������� �������� ��� ����������� ���������
//
// Revision 1.157  2005/03/22 14:41:56  step
// ���������� �������� ������ � LinkServer
//
// Revision 1.156  2005/03/22 11:59:49  step
// change:TDocumentServer.DelDocEx, TDocumentServer.DelDocsEx - �������� �������� aDeleteText
//
// Revision 1.155  2005/03/22 11:26:11  step
// new: TDocumentServer.DelDocEx, TDocumentServer.DelDocsEx
//
// Revision 1.154  2005/03/16 08:47:28  voba
// - ��������
//
// Revision 1.153  2005/03/16 08:44:31  voba
// - improve ������� PAnsiChar �� String
// - �������� �������� PutToFullRec � GetFromFullRec ��-�� �������� �� String, ���� ����� ��������� � ������� ������ � �������� �� String ��� ����� �������������
//
// Revision 1.152  2005/03/15 09:35:40  step
// ����� ���� f_CardIsEmpty
//
// Revision 1.151  2005/03/14 12:57:04  step
// �������� ��������� TDocumentServer.GroupUpdateDoc: PAnsiChar --> string
//
// Revision 1.150  2005/03/14 09:42:37  step
// � ��������� TCardRec: ������ PAnsiChar --> string
// � TDocumentData: ���� f_CardModified �������� �������� CardModified
//
// Revision 1.149  2005/03/10 16:44:03  step
// ������ ����: TCardEditRec, TFullCardRec, TFullCardEditRec.
// �����������: TFileTbl.UpdDoc, TDocumentData.Card, TDocumentServer.GroupUpdateDoc
// ������: FullCard^.Card --> Card
//
// Revision 1.148  2005/03/09 11:29:14  step
// no message
//
// Revision 1.147  2005/03/09 11:24:13  step
// TFileTbl.UpdDoc ������ ������������ � HasAnno
//
// Revision 1.146  2005/03/02 16:02:23  narry
// - ����� ������: JoinIDSabs � GetAnnoSABonDocSAB
//
// Revision 1.145  2005/02/28 18:37:52  step
// new: TFileTbl.SetHasAnno, TFileTbl.DelDocsEx
//
// Revision 1.144  2005/02/22 17:40:21  step
// ���������� ���� HasAnno � ����. FILE
//
// Revision 1.143  2005/02/22 15:09:46  step
// �������� ��������� ���������
//
// Revision 1.142  2005/02/11 10:16:42  voba
// - improve TDocumentData.SetLogRec
//
// Revision 1.141  2005/01/14 14:34:38  voba
// - improvement RefreshVersionsList : ��������� ������ �� ������������� ���������
//
// Revision 1.140  2005/01/11 10:56:33  step
// � TDocumentSabList ��������� ��������� ���������� Il3ChangeNotifier
//
// Revision 1.139  2005/01/11 09:58:22  voba
// - rename TFileTbl.GetAllRelated to TFileTbl.GetAllVerLinkOrder
//
// Revision 1.138  2004/12/23 10:19:30  step
// TDocumentSabList.SetDocIds ���������� BuildSab
//
// Revision 1.137  2004/12/22 12:56:41  step
// new: procedure TDocumentSabList.SetDocIds
//
// Revision 1.136  2004/12/09 09:48:35  voba
// - synchro
//
// Revision 1.135  2004/11/15 16:23:11  step
// ������������� ��� ����� � ����� CheckFamilyNum
//
// Revision 1.134  2004/11/15 14:38:06  step
// �������� TDocumentSabList.GetDocs
//
// Revision 1.133  2004/11/15 12:13:15  step
// new: property TDocumentSabList.Docs
//
// Revision 1.132  2004/11/10 12:43:12  step
// �������� TDocumentServer.DelDoc � TDocumentServer.DelDocs (����������� ������� ������ �� ���������)
//
// Revision 1.130  2004/11/04 18:23:52  step
// ������ fOrderIndex � "�����������"
//
// Revision 1.129  2004/11/04 17:43:11  step
// ��������������
//
// Revision 1.128  2004/11/04 13:47:23  step
// new: property TDocumentData.RespondentsList
//
// Revision 1.127  2004/11/03 17:41:37  voba
// - optimize work in textbase
//
// Revision 1.126  2004/10/29 08:14:55  voba
// - ������� ���������� � ����������� ��� ��������
//
// Revision 1.125  2004/10/12 13:52:50  voba
// - improvement DelDoc ��������� �����, ������� �������� ����������� ��������� ��
//
// Revision 1.123  2004/09/21 12:04:20  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.122  2004/09/14 15:58:14  lulin
// - ������ ������ Str_Man - ����������� ������ ���� - l3String.
//
// Revision 1.121  2004/08/30 14:43:13  law
// - cleanup.
//
// Revision 1.120  2004/08/27 15:13:34  voba
// - merge with B_New_Text_Base
//
// Revision 1.119.2.1  2004/08/25 16:36:31  law
// - ���������� ������������ �� ������� ������������� ������� ���������.
//
// Revision 1.119  2004/08/24 16:59:39  voba
// - add ��������� ������ ������ �������� ������� (�� Define OldTextBaseAccess)
//
// Revision 1.118  2004/08/19 12:11:31  step
// �������� ������� ��������� �� ��������� ���������� � ������������� ����� TDocumentServer.SendMessageAboutDeletedDocs
//
// Revision 1.117  2004/08/17 12:16:53  step
// code clean: TDocumentServer.DelDocs
//
// Revision 1.116  2004/08/17 09:36:38  step
// �������� TFileTbl.GetRelated - �������� �������� aRelatedToTheseDocsOnly
//
// Revision 1.115  2004/08/16 15:49:12  step
// new: TDocumentServer.DelDocs, TFileTbl.GetRelated
//
// Revision 1.114  2004/08/06 08:55:16  voba
// -  ����. ������� ��� ����� ��������� �������
// - function TFileTbl.SetRelated ���������� ������ ID
//
// Revision 1.113  2004/08/03 08:52:47  step
// ������ dt_def.pas �� DtDefine.inc
//
// Revision 1.112  2004/07/22 14:16:58  voba
// - rename fPriceLevel_Fld ->  fStatus_Fld  PriceLevel ->  Status, ������� ��������� ������� ������ ������ ��������� ��������� (��.dstatChargeFree, dstatNotTM   �  Dt_Const)
//
// Revision 1.111  2004/07/22 10:32:49  voba
// ����� ��������� exception � UpdDoc � ���
//
// Revision 1.110  2004/07/14 13:28:27  step
// ����������������� ���������� �������� � StartTA
//
// Revision 1.109  2004/07/01 14:14:27  voba
// - merge newCashe
//
// Revision 1.108.2.1  2004/06/17 18:03:48  step
// � ������� TAbsHtTbl.AddRec � TAbsHtTbl.UpdRec ����� �������� AbsNum.
//
// Revision 1.108  2004/06/03 10:14:21  step
// change: TDocumentServer.ChangeDestDoc - �������� aSubList ����� �������������
//
// Revision 1.107  2004/05/21 19:00:15  step
// ���������� TFileTbl.GetAllVersionsOfDoc
//
// Revision 1.106  2004/05/21 15:53:04  step
// new: TFileTbl.GetAllVersionsOfDoc
//
// Revision 1.105  2004/05/13 16:32:18  step
// ������: "TFreeTbl.Create ..." --> "GlobalHtServer.FreeTbl[...]"
//
// Revision 1.104  2004/05/13 13:59:21  step
// ������ GlobalHTServer.StartTransactionWithWait �� GlobalHTServer.StartTransaction
//
// Revision 1.103  2004/05/12 13:22:36  voba
// -rename ev_lpRTrim -> l3RTrim
//
// Revision 1.102  2004/03/31 15:52:24  voba
// -bug fix: � TDocumentData.Create �������� DocID=0 ���������������� � ����� �������
//
// Revision 1.101  2004/03/29 09:32:44  voba
// no message
//
// Revision 1.100  2004/03/25 17:17:15  voba
// -bug fix: ��� �������� ��������� ��������� ��������� �������������
//
// Revision 1.99.2.1  2004/03/25 17:15:09  voba
// -bug fix: ��� �������� ��������� ��������� ��������� �������������
//
// Revision 1.99  2004/03/16 08:17:12  voba
// -new behavior: SetDocStages ����� virtual
//
// Revision 1.98  2004/03/05 16:52:23  step
// ������ ����
//
// Revision 1.97  2004/03/03 18:22:21  law
// - rename unit: l3Tree2 -> l3Tree.
//
// Revision 1.96  2004/02/26 09:06:32  step
// �������� ChangeDestDoc (�������� �������� aNewDestSub)
//
// Revision 1.95  2004/02/20 08:23:06  voba
// no message
//
// Revision 1.94  2004/01/23 15:51:38  voba
// no message
//
// Revision 1.93  2004/01/14 13:09:31  voba
// no message
//
// Revision 1.92  2004/01/13 15:14:46  voba
// - code clean
//
// Revision 1.91  2003/12/15 10:43:04  step
// ������������� htSortedRecords � ���� TDocumentSabList.GetValueSub
//
// Revision 1.90  2003/12/10 16:21:44  voba
// -bug fix in TDocumentSabList.GetValueSub
//
// Revision 1.89  2003/12/05 16:58:23  voba
// -code clean
//
// Revision 1.88  2003/12/04 18:33:28  step
// ��������� ����� ChangeDestDoc (�������� �������� aDocList)
//
// Revision 1.87  2003/12/02 14:08:50  fireton
// - refactoring: ������� ������� ������� ��������� � TDocumentAttrData � ��������� ������� ���� �� ����
//
// Revision 1.86  2003/12/02 08:20:35  voba
// -code clean
//
// Revision 1.85  2003/12/01 17:02:08  law
// - buf fix: ����������� ������ (����� ��������� ���������).
//
// Revision 1.84  2003/12/01 16:43:25  law
// - buf fix: ����������� ������ (����� ��������� ���������).
//
// Revision 1.83  2003/12/01 16:20:37  law
// - change: ��������� �� ������� ������� �������� � ������� ����������/��������� ��������.
//
// Revision 1.82  2003/11/17 17:20:36  voba
// -add method ChangeDestDoc
//
// Revision 1.81  2003/11/04 14:03:06  voba
// -new behavior �������DateNums �� TFullCardRec ��� �������������� ���������
//
// Revision 1.80  2003/10/02 13:51:28  voba
// - bug fix
//
// Revision 1.79  2003/09/22 13:57:53  voba
// - add comment
//
// Revision 1.78  2003/06/19 09:10:03  voba
// - code improvement
//
// Revision 1.77  2003/05/28 15:44:43  voba
// - add: propertyt TDocumentSabList.WithOrder (����True ������ ������ Items  � ������� �� �������)
//
// Revision 1.76  2003/05/19 15:41:52  demon
// - add: �������� ����� ������� dlAutoClasses
//
// Revision 1.75  2003/05/08 13:58:19  voba
// - bug fix
//
// Revision 1.74  2003/05/08 08:13:28  voba
// - improvement: �������� ������� ��������� ������ �������� ����������
//
// Revision 1.73  2003/05/07 08:31:39  voba
// ������� �������� TDocumentData CorespondentsList
//
// Revision 1.72  2003/05/06 14:04:57  step
// ��������� �������� �� ������������� ������ � TDocumentData.GetVersionsList
//
// Revision 1.71  2003/05/06 11:27:18  step
// ��������� property TDocumentData.VersionsList
//
// Revision 1.70  2003/04/29 15:45:16  voba
// - improvement: CheckVerLink ������ ����� ������ � ������� ��� ����� ������� VerLink
//
// Revision 1.69  2003/04/07 13:07:35  voba
// no message
//
// Revision 1.68  2003/04/04 12:39:55  demon
// - new behavior: �������� ����� ��� ������ ������� �� �������
// HyTech �� (65k - 1)
//
// Revision 1.67  2003/04/01 13:34:44  voba
// -merge
//
// Revision 1.66  2003/04/01 06:54:58  voba
// -bug fix: TDocReadRec.NoActive ����������� �����������
//
// Revision 1.65  2003/03/31 13:48:59  demon
// - new: �������� ������ �������, ���������� �� ��������� � 64�� �� 8��
//
// Revision 1.64  2003/03/26 16:21:03  voba
// -bug fix: ����������� ��������� ������ �������� (0) VerLink
//
// Revision 1.63  2003/03/13 10:02:37  demon
// - new: ��������� ��������� ������ ���� � ������ ��������� - VerLink
// (+ ��� ������� ������ � ���� ���������� ���������� Releated)
//
// Revision 1.62  2003/03/12 15:47:40  demon
// - new behavior: ��������� ������ �� "����������" (Alarms)
//
// Revision 1.61  2003/03/12 14:58:21  demon
// - new behavior: � ������ TDocumentSabList ��������� �����������
//  �������� ������� ����������
//
// Revision 1.60  2003/03/12 13:45:09  demon
// - new behavior: ������� ���� NoActive � PreActive.
//
// Revision 1.59  2003/03/11 15:11:22  demon
// - add: ��������� ������ � �������� ActiveInterval
//
// Revision 1.58  2003/03/11 09:45:31  step
// ��������� ���� ������� � ����� TFileTbl: WrongDocs � GetDocIdsOnRelated
//
// Revision 1.57  2003/01/21 09:50:47  demon
// - sintax check
//
// Revision 1.56  2003/01/20 09:26:11  voba
// no message
//
// Revision 1.55  2003/01/14 14:28:36  demon
// - add new operation GetAllDocumentIDs in DocumentServer
//
// Revision 1.54  2002/11/21 17:14:54  law
// - bug fix: ����������� �������������� ��������� MonoUser.
//
// Revision 1.53  2002/10/28 16:41:54  voba
// - small code improving
//
// Revision 1.52  2002/06/20 07:01:51  narry
// - bug fix: range check error ��� ������ ������� ����
//
// Revision 1.51  2002/04/15 12:17:00  demon
// - add Free Tbl in all massive transaction.
//
// Revision 1.50  2002/04/04 15:38:13  demon
// - change fullNameSize to 1000
//
// Revision 1.49  2002/04/03 13:58:56  demon
// - bug fix in reading deleting Dicts records
//
// Revision 1.48  2002/01/10 14:14:44  voba
// -lib sincro: replace l3GetStrLen to l3StrLen
//
// Revision 1.47  2001/11/21 12:50:31  demon
// - new: add new doc attribute - _dictionary #F (dlAccGroups)
//
// Revision 1.46  2001/09/04 13:59:09  voba

// - rename unit: MyUtil -> l3FileUtils.
//
// Revision 1.45  2001/08/23 10:27:44  demon
// - add new Type - TDocType its replaced some constants
//
// Revision 1.44  2001/08/08 11:22:12  voba
// bug fix
//
// Revision 1.43  2001/08/03 12:12:19  demon
// - new behavior: add function CheckDestInDoc for checking dead Hyperlinks in Doc
//
// Revision 1.42  2001/07/06 14:38:14  demon
// - new behavior: add transactions to all massive operation of Add, Modify and Delete of tbl records
//
// Revision 1.41  2001/06/29 10:41:54  narry
// -bug fix: �������� ������ ��������� �� ��������
//
// Revision 1.40  2001/01/19 16:21:23  demon
// - now Warning link tbl become usual link tbl (witout uniq key and additional feelds)
//
// Revision 1.39  2000/12/15 15:36:16  law
// - ��������� ��������� Log.
//

{$I DtDefine.inc}

Interface
Uses
 Classes,SysUtils, WinTypes,
 l3Base, l3Types, l3Date, l3DatLst, l3ChangeNotifier,
 l3CBaseRefInterfacedList,
 l3InternalInterfaces, l3Interfaces,
 HT_Const,
 Dt_Types,Dt_Const,
 dt_AttrSchema, dt_ImpExpTypes,
 Dt_Sab, Dt_ATbl, Dt_List,
 Dt_Free, Dt_Log, Dt_ReNum,
 Dt_Stage, Dt_Active, Dt_Alarm, CsClient,
 l3LongintList
 ;
Const
 cFullNameSize   = 1000;  // ����������� �� �� ������ FullName
 cUserFullNameSize = 730; //���������������� ����������� �� ������ FullName � AnnoName
 cShortNameSize  = 70;
 cDocCommentSize = 100;
 cPaperPlaceSize = 100;
 ArchivePlace   = $FFFE;

 docIdFld : ThtField = 1;
 docRelatedIdFld: ThtField = 9;

 fId_Fld         = 1;
 fSName_Fld      = 2;
 fFName_Fld      = 3;
 fStatus_Fld     = 4;
 fPriority_fld   = 5;
 fSDate_Fld      = 6;
 fType_Fld       = 7;
 fUserType_Fld   = 8;
 fRelated_fld    = 9;
 fPaperUser_fld  = 10;
 fPaperPlace_fld = 11;
 fPriorFlag_fld  = 12;
 fStageMask_fld  = 13;
 fVerLink_fld    = 14;
 fHasAnno_fld    = 15;
 fUrgency_fld    = 16;
 fComment_fld    = 17;

 urgRegular      = 0;
 urgUrgent       = 1;
 urgToVersion    = 2;

 cMaxUrgency     = 2;

 cUrgencyCaption: array[0..cMaxUrgency] of string = ('�������','�������','� ������');

 DocReadFldCount = 4;
 DocReadFldArr : Array[1..DocReadFldCount] of SmallInt = (fId_Fld,fType_Fld,
                                                          fUserType_Fld,fFName_Fld);

Type
 TShortNameStr  = Array [1..cShortNameSize] Of Char;
 TFullNameStr   = Array [1..cFullNameSize] Of Char;
 TDocCommentStr = Array [1..cDocCommentSize] Of Char;

{$Define V131}

(* ������ ������ � ��������� *)
 PCardRec = ^TCardRec;
 TCardRec = Record
             ShortName     : string;
             FullName      : string;
             Status        : Word;
             UserType      : TUserType;
             Related       : LongInt;
             Priority      : Word;
             SortDate      : TStDate;
             PaperUser     : TDictID;
             PaperPlace    : string;
             PriorFlag     : Boolean;
             StageMask     : Word;
             VerLink       : LongInt;
             HasAnno       : Boolean;
             Urgency       : Byte;
             {$ifdef V131}
             Comment       : string;
             {$endif V131}
            end;

(*
 PFileTblRec = ^TFileTblRec;
 TFileTblRec = Record
                ID            : LongInt;
                ShortName     : Array [1..ShortNameSize] of Char;
                FullName      : Array [1..FullNameSize] of Char;
                Status        : Word;
                Priority      : Word;
                SortDate      : TStDate;
                Typ           : Byte;
                UserType      : Byte;
                Related       : LongInt;
                PaperUser     : TDictID;
                PaperPlace    : Array [1..PaperPlaceSize] of Char;
                PriorFlag     : Boolean;
                StageMask     : Word;
                VerLink       : LongInt;
                HasAnno       : Boolean;
                Urgency       : Byte;
               end;
*)
(* ��������� ������ ��������� ��� ������ �� ������� *)
 PDocReadTblRec = ^TDocReadTblRec;
 TDocReadTblRec = record
                   ID       : TDocID;
                   Typ      : Byte;
                   Flag     : Byte;
                   Name     : TFullNameStr;
                   Urgency  : Byte;
                  end;

(* ��������� ������ ��������� ��� ������ �� ����� *)
 PDocReadRec = ^TDocReadRec;
 TDocReadRec = record
                ID       : TDocID;
                Typ      : Byte;
                Flag     : Byte;
                Name     : TFullNameStr;
                Urgency  : Byte;
                NoActive : Boolean; // �� ��������� ��������, ����������� � ������
                                    // ������, �� ������ ������ �� ������� ActiveInterval
               end;

 PDocListAccessRec = ^TDocListAccessRec;
 TDocListAccessRec = record
                rID        : TDocID;
                rExtID     : TDocID;
                rTyp       : Byte;
                rFlag      : Byte;
                rName      : TFullNameStr;
                rUrgency   : Byte;
                rStatus    : Word;
                rIsActive  : LongBool;
               {$ifdef NeedInclInDocRec}
                rIsInclude : LongBool;
               {$Endif}
                rComment   : TDocCommentStr;
               end;

 PIDFNameRec = ^TIDFNameRec;
 TIDFNameRec = packed record
  rDocID : TDocID;
  rName  : TFullNameStr;
 end;

 TFileTbl = Class(TPrometTbl)
  private
   //procedure   ClearDocData(var aRecs: Sab);
   Procedure   UpdDoc(ID : LongInt;
                      var aData : TCardRec;
                      NeedLockRec : Boolean);

   procedure   PutFieldToRecord(aRecord : PAnsiChar; aField : Word; const aBody); override;
   procedure   GetFieldFromRecord(aRecord : PAnsiChar; aField : Word;var aBody);  override;

  public
   Constructor Create(aFamily : TFamilyID); Reintroduce;
   function    AbsNumByID(const aDocID : TDocID): LongInt;

   Function    AddDoc : LongInt;
   Procedure   UpdSortDate(ID : LongInt;NewSortDate : TStDate);
   Procedure   DelDoc(ID : LongInt);
   Procedure   DelDocs(IDs : ISab);
   Function    CheckDoc(ID : TDocID;Var AbsNum : LongInt) : Boolean;
   Function    CheckRel(aRelID : TDocID) : LongInt;
   function    CheckIDSab(IDs : Sab) : Sab;
   function    CheckVerLink(aLinkID : TDocID) : TDocID; // ���������� ����� ���������,
                                                        // � �������� ����� ��������� aLinkID
                                                        // ��� 0, ���� ���� aLinkID ����������.
   Procedure   GetCard(ID : LongInt;CardRec : PCardRec);
   Procedure   GetExpCard(aID : LongInt;aCardRec : PExpCardRec);
   Function    GetDocIdOnRelated(aRelID : TDocID) : TDocID;
   function    GetDocIdOnVerLink(aLinkID : TDocID) : TDocID; { TODO -o������� -c����������� : .CheckVerLink ����� ����� �� ����� exception }

   function    GetRelated(aDocID : TDocID; Var LastRel : Boolean) : TDocID; overload;

   procedure   GetRelated(var aDocIDs: ISab;
                          out aRelatedIds: ISab;
                          aRelatedToTheseDocsOnly: Boolean); overload;

   function    GetVerLink(aDocID : TDocID) : TDocID;
   function    GetHasAnno(aDocID : TDocID): Boolean;
   procedure   GetAllVerLinkOrder(aDocID: TDocID; aDocList: TL3LongintList);
   procedure   ExpandAllEdition(aDocSet: ISab; aOnlyWithEdition : Boolean);

   procedure   SprIDs2DocIDs(const aDocIDs : ISab);
    {* - ��������� ������ �������, ����� ��������� ����� ����������� �������
         � ������ �������, � ������� ������ ������� �������� �� ������ �����}

   function    SetRelated(ID,R_ID : LongInt) : Longint;
   procedure   SetVerLink(ID,VL_ID : LongInt);
   procedure   SetHasAnno(aDocId: TDocId; aValue: Boolean); overload;
   procedure   SetHasAnno(var aDocIds: Sab; aValue: Boolean); overload;
   procedure   GetAnnoSABonDocSAB(aDocIds: Sab; out AnnoSAB: SAB; aHasAnno : Boolean = True);
   function GetFullRecOnID(anID: LongInt; aNeedHold: Boolean): Longint;
   Procedure   SrchOnFlag(Var SrchList : Sab;aFlag : Byte);
 end;

 TDocumentSabList = class; // forward declaration

 TDocumentServer = Class(TL3Base)
  private
   f_CSClient: TcsClient;
   procedure SendMessageAboutDeletedDocs(aDocIdsArray: array of Longint);
   procedure CheckFamilyNum; // ����������� ����������
  protected
   fFamily          : TFamilyID;

   fFileTbl         : TFileTbl;
   //fStageTbl        : TStageTbl;
   //fActiveTbl       : TActiveIntervalTbl;
   //fAlarmTbl        : TAlarmTbl;

   fProgressProc    : Tl3ProgressProc;
   fCurProgress     : LongInt;
   fCurProgressDelta: LongInt;

   procedure SetFamily(aValue : TFamilyID);
   function  MakeAttrTableArray : Il3CBaseList;
  public
   procedure Cleanup; override;
   function  CheckDoc(aDocID : TDocID;WithRel : Boolean;var RelFlag : Boolean) : Boolean;

   procedure Update;

   function  GetDocOnValues(Values : SAB;WithSort : Boolean;Photo  : LPSab) : SAB;

   procedure GroupUpdateDoc(aID : TDocID;
                            appFullName: string;
                            appShortName : string;
                            Status : Integer; NUStatus : Integer;
                            UserType : TUserType; NUUserType : Boolean;
                            aPriority : word = 0);

   procedure CheckDocPriority(NullOnly : Boolean;aProgress : Tl3ProgressProc);
   { ������������ � ����� � �����. ���������� ������� � ��������� ������ }
   procedure DelDoc(aDelDocID: TDocID);
   { ������� �������� � aDelDocID.
     ���� �� �������� ������� ����������, �� ��� �������� �������� ������ � ������� Renum,
     �� ����������� ������� �� Free � �� �������� ������ �� ��������� ��������. }
   procedure DelDocEx(aDelDocID: TDocID; aDeleteAnnos, aDeleteText: Boolean; aPreventNumFree : Boolean = false);
   { ������� �������� � aDelDocID.
     ���� �� �������� ������� ���������� ��� aPreventNumFree, �� ��� �������� �������� ������ � ������� Renum,
     �� ����������� ������� �� Free � �� �������� ������ �� ��������� ��������}

   procedure DelDocs(aDocIDs: ISab);
    // ������ ��������� DelDoc, � ����� ������ �������� - ������� �� ����, � ��������� ����������
   procedure DelDocsEx(aDocIDs: ISab; aDeleteAnnos, aDeleteTexts: Boolean);

   procedure DelRel(RelID : TDocID);

   function  GetRelImportNum(DocImpNum : TDocID) : TDocID;

   procedure ChangeDestDoc(anOldDestDoc, aNewDestDoc: TDocID;
                           aNewDestSub: TSubID; // ���� aNewDestSub = cUndefSubID, �� DestSub �� ����� �������
                           const aSubList: Tl3LongintList = nil;
                           const aDocList: ISab = nil);
    overload;
   {* - ������ � ������������
       � �������� (DestDoc = anOldDestDoc,
                   DestSub = �� aSubList, ���� aSubList <> nil)
       DestDoc --> aNewDestDoc �
       DestSub --> aNewDestSub (��. ������� ����)
   }

   procedure ChangeDestDoc(const aRelaceArr : array of TReplaceDocPair;
                           const aDocList: ISab);
    overload;

   procedure ChangeHLAddr(aOldDestDoc : TDocID; aOldDestSub : TSubID;
                          aNewDestDoc : TDocID; aNewDestSub : TSubID);
   function CheckDocEx(aDocID : TDocID): Boolean;

   property  Family : TFamilyID read fFamily write SetFamily;

   property  FileTbl : TFileTbl read fFileTbl;
   property  CSClient: TcsClient read f_CSClient write f_CSClient;
 end;

 TDocumentData = class(TL3Base)
  private
   f_SavedCard,
   f_Card: TCardRec;
   procedure CheckFamilyNum; // ����������� ����������
   function GetCard: PCardRec;
   function CardModified: Boolean;

  protected
   fFamily       : TFamilyID;

   fFileTbl      : TFileTbl;

   fDocID        : TDocID;
   fRealDocFlag  : Boolean;
   fCurDocType   : Byte;

   fDocLogRec    : array[Low(TLogActionType)..High(TLogActionType)] of Boolean;

   fVersionsList      : TDocumentSabList;
   fCorespondentsList : TDocumentSabList;
   fRespondentsList   : TDocumentSabList;

   procedure ClearFullCard;
   function  GetVersionsList: TDocumentSabList;
   function  GetCorespondentsList: TDocumentSabList;
   function  GetRespondentsList: TDocumentSabList;

   //procedure SetDictionaryValue(aHandler: Longint;aBuff: PAnsiChar;aSize: Longint); pascal;
   procedure SetLogRec(aInd : TLogActionType;aValue : Boolean);

   procedure GetNewDoc(aTyp : Byte);
   procedure LoadDoc;

   procedure Cleanup; override;
  public
   constructor Create(aFamily : TFamilyID;aID : TDocID;aTyp : Byte = 0); reintroduce;

   function  SetRelatedDoc(aRelID : LongInt) : LongInt;

   procedure SetVerLinkDoc(aLinkID : LongInt);

   procedure GetCorrectList(aList : Tl3CustomDataList);
   //procedure SetCorrectList(aList : Tl3CustomDataList);

   procedure GetPublishedList(aList : Tl3CustomDataList);
   //procedure SetPublishedList(aList : Tl3CustomDataList);

   //procedure GetDocStages(Var BeginSet,EndSet : TStageSet);
   //procedure SetDocStages(BeginSet,EndSet : TStageSet); virtual;

   //procedure GetDocActiveIntervalsList(aList : Tl3CustomDataList);

   //procedure GetDocAlarmsList(aList : Tl3CustomDataList);

   procedure RefreshCorespondentsList(aSubList: Tl3LongintList = nil);
   {* - ������������ ������ ��������������. }

   procedure RefreshVersionsList;
   {* - ������������ ������ ������. }

   procedure SetTextChangedFlag;

   procedure SaveDoc;

   property  Family  : TFamilyID read fFamily;
   property  DocID   : TDocID read fDocID;
   property  RealDoc : Boolean read fRealDocFlag;
   property  DocType : Byte read fCurDocType;

   property  Card : PCardRec read GetCard;
  
   property  LogRec[aInd : TLogActionType] : Boolean write SetLogRec;
   property  VersionsList : TDocumentSabList read GetVersionsList;
   property  CorespondentsList : TDocumentSabList read GetCorespondentsList;
   property  RespondentsList: TDocumentSabList read GetRespondentsList;
 end;

 TDocumentSabList = class(Tl3Base, Il3ChangeNotifier)
  private
   f_ChangeNotifier : Tl3ChangeNotifier;
   procedure CheckFamilyNum; // ����������� ����������
  protected
   fFamily        : TFamilyID;
   fFileTbl       : TFileTbl;
   fCurSab        : ISab;
   fSabCursor     : ISabCursor;
   fActiveList    : Tl3LongintList;
   fCheckActive   : Boolean;
   fOrderIndex    : Tl3LongintList;

   procedure SetFamily(aValue : TFamilyID);
   procedure SetCurSab(aValue : ISab);
   function  GetSabCursor : ISabCursor;
   function  GetChkActive : Boolean;
   procedure SetChkActive(aValue : Boolean);

   function  GetWithOrder : Boolean;
   procedure SetWithOrder(aValue : Boolean);
   procedure AddToOrderIndex(aValue : Integer);
   procedure DelFromOrderIndex(aIndex : Integer);
   procedure ClearOrderIndex;
   function  ConvertIndex(aValue : Integer) : Integer;

   procedure GetActiveStatusList;
   function  GetDocs: ISab;

   procedure Cleanup; override;
   property  ChangeNotifier: Tl3ChangeNotifier read f_ChangeNotifier implements Il3ChangeNotifier;
   property    SabCursor : ISabCursor read GetSabCursor;
  public
   constructor Create;
   constructor CreateEmpty(aFamily : TFamilyID);

   procedure   SetEmptySab;
   //procedure   SetValueSab(aValSab : Sab);
   //function    GetValueSub : ISab;

   procedure   SortList(aSortFields : array of ThtField);
   procedure   ClearCurSab;

   function    GetDoc(aItem : LongInt) : TDocReadRec;
   procedure   DelDoc(aItem : LongInt);
   function    AddDoc(aID : LongInt) : LongInt;
   //procedure   SetDocIds(const aDocIds: Tl3LongintList);

   //function    GetRecHandle(aIndex : Cardinal) : RHandle;
   //function    GetIndex(aID {aAbsNum} : Cardinal) : Cardinal;

   procedure   SaveList(DataName : TFileName;Comment : PAnsiChar);
   procedure   LoadList(DataName : TFileName;var Comment : PAnsiChar);

   //procedure   OutToFile(aName : TFileName; aTitle : PAnsiChar;aRealNumbers : Boolean);

   function    Count: Integer;
   //procedure   GetDocIds(out aDocIds: Sab);

   property    Family : TFamilyID read fFamily write SetFamily;
   property    CheckActiveStatus : Boolean read  GetChkActive
                                           write SetChkActive; // �� ��������� - False
   property    CurSab    : ISab read fCurSab write SetCurSab;
   //property    SabCursor : ISabCursor read GetSabCursor;
   property    WithOrder : Boolean read GetWithOrder write SetWithOrder;
   property    Docs      : ISab read GetDocs;

 end;

Const
 cDocumentServer : TDocumentServer = nil;

function DocumentServer(aFamily : TFamilyID = High(TFamilyID)) : TDocumentServer; // -1 ��������, ��� �� ���������� �� ����������
function IsValidDocID(aDocID : TDocID) : boolean;

function GetDocName(aDocID : TDocID; aIsExternalID : boolean = false) : String;
function GetMinPublDate(aDocID : TDocID; aIsExternalID : boolean = false) : TstDate;
function GetFreeDocID(aFamily : TFamilyID) : TDocID;
Implementation

uses
     WinProcs, Contnrs, Windows, Forms,
     HT_Dll,
     Dt_Err, Dt_Misc,  Dt_Serv, Dt_Link, Dt_LinkServ, DT_BBLog, Dt_DictConst, Dt_Prior,
     Dt_Hyper,
     StDateSt, VConst,
     l3Tree, l3Tree_TLB, l3Nodes, l3String,
     l3MinMax, l3Memory,
     m3DBInterfaces, m3DB,
     ddServerTask,
     csQueryTypes,
     l3Stream, dt_Dict, csServerTaskTypes;

{ TFileTbl }

Constructor TFileTbl.Create(aFamily : TFamilyID);
Begin
  Assert(aFamily <> MainTblsFamily);
  Inherited Create(aFamily, Ord(ftFile));
end;

Function TFileTbl.AddDoc : LongInt;
Begin
 GetFromFullRec(fId_Fld,Result);
 if Result = 0
  then
   Begin
    Result:=GetFreeNum;
    PutToFullRec(fId_Fld,Result);
   end;
 AddFRec;
end;

procedure TFileTbl.PutFieldToRecord(aRecord : PAnsiChar; aField : Word; const aBody);
var
 lStr    : PAnsiChar;
begin
 if ElementType[aField] = ET_CHAR then
 begin
  lStr := PAnsiChar(String(aBody));
  inherited PutFieldToRecord(aRecord, aField, lStr);
 end
 else
  inherited PutFieldToRecord(aRecord, aField, aBody);
end;

procedure TFileTbl.GetFieldFromRecord(aRecord : PAnsiChar; aField : Word;var aBody);
var
 lStr    : PAnsiChar;
begin
 if ElementType[aField] = ET_CHAR then
 try
  inherited GetFieldFromRecord(aRecord, aField, lStr);
  String(aBody) := l3GetStrPas(lStr);
 finally
  l3StrDispose(lStr);
 end
 else
  inherited GetFieldFromRecord(aRecord, aField, aBody);
end;

procedure TFileTbl.UpdDoc(ID : LongInt;
                          var aData : TCardRec;
                          NeedLockRec : Boolean);
var
 AbsNum : LongInt;
 RecH   : RHANDLE;
begin
 AbsNum:=Ht(htRecordByUniq(nil,Handle,fId_Fld,@ID,@RecH));
 if AbsNum=0 then
  raise EHtErrors.CreateInt(ecNotFound);
 ClearFullRec;
 GetFullRec(AbsNum,NeedLockRec);
 try
  if StartTA then
  try
   PutToFullRec(fSName_Fld,aData.ShortName);
   PutToFullRec(fFName_Fld,aData.FullName);
   PutToFullRec(fStatus_Fld,aData.Status);
   PutToFullRec(fUserType_Fld,aData.UserType);
   PutToFullRec(fPriority_fld,aData.Priority);
   PutToFullRec(fSDate_Fld, aData.SortDate);
   PutToFullRec(fPaperUser_fld,aData.PaperUser);
   PutToFullRec(fPaperPlace_fld,aData.PaperPlace);
   PutToFullRec(fPriorFlag_fld,aData.PriorFlag);
   PutToFullRec(fStageMask_fld,aData.StageMask);
   PutToFullRec(fHasAnno_fld, c_BoolToByte[aData.HasAnno]);
   PutToFullRec(fUrgency_fld, aData.Urgency);
   {$ifdef V131}
   PutToFullRec(fComment_fld, aData.Comment);
   {$endif V131}

   UpdFRec(AbsNum);
   SuccessTA;

   GlobalHtServer.BigBrother.LogEditDoc(TblFamily, ID, detAttribute);
  except
   on E : Exception do
   begin
    RollBackTA;
    l3System.Exception2Log(E);
    raise EHtErrors.CreateInt(ecUnableUpd);
   end;
  end;
 finally
  if NeedLockRec then
   FreeRec(AbsNum);
 end;
end;

Procedure TFileTbl.UpdSortDate(ID : LongInt;NewSortDate : TStDate);
Var
 AbsNum      : LongInt;
 RecH        : RHANDLE;
 TmpSortDate : TStDate;
Begin
 AbsNum:=Ht(htRecordByUniq(nil,Handle,fId_Fld,@ID,@RecH));
 if AbsNum=0 then raise EHtErrors.CreateInt(ecNotFound);
 ClearFullRec;
 GetFullRec(AbsNum,True);
 Try
  GetFromFullRec(fSDate_Fld,TmpSortDate);
  if (NewSortDate<>0) and
     (TmpSortDate<>NewSortDate)
   then
    Begin
     PutToFullRec(fSDate_Fld,NewSortDate);
     UpdFRec(AbsNum);
    end;
 finally
  FreeRec(AbsNum);
 end;
end;

Procedure TFileTbl.DelDoc(ID : LongInt);
Var
 RecH    : RHANDLE;
 AbsNum  : LongInt;
Begin
 AbsNum:=Ht(htRecordByUniq(nil,Handle,fId_Fld,@ID,@RecH));
 if AbsNum <> 0 then
  DelRec(AbsNum);
end;

procedure TFileTbl.DelDocs(IDs : ISab);
begin
 DeleteRecsByKeys(IDs,fID_Fld);
end;

Function TFileTbl.CheckDoc(ID : TDocID;Var AbsNum : LongInt) : Boolean;
Var
 RecH    : RHANDLE;
Begin
 AbsNum:=Ht(htRecordByUniq(nil,Handle,fId_Fld,@ID,@RecH));
 Result:=AbsNum>0;
end;

Function TFileTbl.CheckRel(aRelID : TDocID) : LongInt;
Var
 TmpSab   : Sab;
Begin
 htSearch(nil,TmpSab,Handle,fRelated_fld,EQUAL,@aRelID,nil);
 Try
  Result:=TmpSab.gFoundCnt
 finally
  htClearResults(TmpSab);
 end;
end;

function TFileTbl.CheckIDSab(IDs : Sab) : Sab;
var
 realDocs,
 realRels : SAB;
 valDocs,
 valRels,
 valAll   : SAB;
begin
 l3FillChar(Result,SizeOf(SAB));
 RefreshSrchList;
 htTransferToPhoto(IDs,fSrchList,fID_Fld);
 htRecordsByKey(realDocs,IDs);
 try
  htTransferToPhoto(IDs,fSrchList,fRelated_fld);
  htRecordsByKey(realRels,IDs);
  try
   if IDs.gFoundCnt > (realDocs.gFoundCnt + realRels.gFoundCnt) then
    begin
     htTransferToPhoto(IDs,fSrchList,fID_Fld);
     htValuesOfKey(valDocs,fID_Fld,realDocs);
     try
      htValuesOfKey(valRels,fRelated_fld,realRels);
      try
       htTransferToPhoto(valRels,fSrchList,fID_Fld);
       htOrResults(valAll,valDocs,valRels);
       try
        htXorResults(Result,IDs,valAll);
       finally
        htClearResults(valAll);
       end;
      finally
       htClearResults(valRels);
      end;
     finally
      htClearResults(valDocs);
     end;
    end;
  finally
   htClearResults(realRels);
  end;
 finally
  htClearResults(realDocs);
 end;
end;

function TFileTbl.CheckVerLink(aLinkID : TDocID) : TDocID;
var
 TmpSab    : Sab;
 openField : SmallInt;
begin
 Result:=0;

 if aLinkID = 0 then Exit;

 htSearch(nil,TmpSab,Handle,fVerLink_fld,EQUAL,@aLinkID,nil);
 try
  if (TmpSab.gFoundCnt>0) then
  begin
   openField:=fID_fld;
   Ht(htOpenResults(TmpSab,ROPEN_READ,@openField,1));
   try
    htReadResults(TmpSab,@Result,SizeOf(TDocID));
   finally
    htCloseResults(TmpSab);
   end;
  end;
 finally
  htClearResults(TmpSab);
 end;
end;

Procedure TFileTbl.GetCard(ID : LongInt;CardRec : PCardRec);
Begin
 GetFullRecOnID(ID, False);
 With CardRec^ do
  begin
   GetFromFullRec(fSName_Fld,ShortName);
   GetFromFullRec(fFName_Fld,FullName);
   GetFromFullRec(fStatus_Fld,Status);
   GetFromFullRec(fUserType_Fld,UserType);
   GetFromFullRec(fPriority_Fld,Priority);
   GetFromFullRec(fSDate_Fld, SortDate);
   GetFromFullRec(fRelated_Fld,Related);
   GetFromFullRec(fPaperUser_fld,PaperUser);
   GetFromFullRec(fPaperPlace_fld,PaperPlace);
   GetFromFullRec(fPriorFlag_fld,PriorFlag);
   GetFromFullRec(fStageMask_fld,StageMask);
   GetFromFullRec(fVerLink_fld,VerLink);
   GetFromFullRec(fHasAnno_fld,HasAnno);
   GetFromFullRec(fUrgency_fld,Urgency);
   {$ifdef V131}
    GetFromFullRec(fComment_fld, Comment);
   {$Endif V131}
  end;
end;

procedure TFileTbl.GetExpCard(aID : LongInt;aCardRec : PExpCardRec);
var
 AbsNum  : LongInt;
 RecH    : RHANDLE;
begin
 AbsNum:=Ht(htRecordByUniq(nil,Handle,fId_Fld,@aID,@RecH));
 if AbsNum=0 then
  raise EHtErrors.CreateInt(ecNotFound);
 ClearFullRec;
 GetFullRec(AbsNum,False);
 with aCardRec^ do
 begin
  ID:=aID;
  GetFromFullRec(fType_Fld,InternalType);
  GetFromFullRec(fSName_Fld,ShortName);
  GetFromFullRec(fFName_Fld,FullName);
  GetFromFullRec(fStatus_Fld,Status);
  GetFromFullRec(fPriority_Fld,Priority);
  GetFromFullRec(fSDate_Fld,SortDate);
  GetFromFullRec(fUserType_Fld,Flag);
  GetFromFullRec(fRelated_Fld,Related);
  GetFromFullRec(fPriorFlag_fld,PriorFlag);
  GetFromFullRec(fVerLink_fld,VerLink);
  GetFromFullRec(fHasAnno_fld, HasAnno);
  GetFromFullRec(fUrgency_fld, Urgency);
  GetFromFullRec(fComment_fld, Comment);
  //if not PriorFlag then
  // Priority:=0;
 end;
end;

function TFileTbl.SetRelated(ID,R_ID : LongInt) : LongInt;
Var
 AbsNum  : LongInt;
 RecH    : RHANDLE;
Begin
 AbsNum:=Ht(htRecordByUniq(nil,Handle,fId_Fld,@ID,@RecH));
 if AbsNum=0 then raise EHtErrors.CreateInt(ecNotFound);
 ClearFullRec;
 GetFullRec(AbsNum,False);
 if StartTA then
  Try
   GetFromFullRec(fRelated_fld, Result);
   PutToFullRec(fRelated_fld,R_ID);
   UpdFRec(AbsNum);
   SuccessTA;
  except
   RollBackTA;
   raise EHtErrors.CreateInt(ecUnableUpd);
  end;
end;

procedure TFileTbl.SetVerLink(ID,VL_ID : LongInt);
var
 AbsNum  : LongInt;
 RecH    : RHANDLE;
begin
 AbsNum:=Ht(htRecordByUniq(nil,Handle,fId_Fld,@ID,@RecH));
 if AbsNum = 0 then
  raise EHtErrors.CreateInt(ecNotFound);
 ClearFullRec;
 GetFullRec(AbsNum,False);
 if StartTA then
 try
  PutToFullRec(fVerLink_fld,VL_ID);
  UpdFRec(AbsNum);
  SuccessTA;
 except
  RollBackTA;
  raise EHtErrors.CreateInt(ecUnableUpd);
 end;
end;

procedure TFileTbl.SrchOnFlag(Var SrchList : Sab; aFlag : Byte);
var
 TmpSab : Sab;
begin
 {!!}
 htSearch(nil, TmpSab, Handle,  fUserType_Fld, Equal, @aFlag, nil);
 htValuesOfKey(SrchList,fId_Fld,TmpSab);
end;

Function TFileTbl.GetDocIdOnRelated(aRelID : TDocID) : TDocID;
Var
 TmpSab1   : Sab;
 openField : SmallInt;
begin
 Result := 0;
 htSearch(nil, TmpSab1, Handle, fRelated_fld, EQUAL, @aRelID, nil);
 try
  if TmpSab1.gFoundCnt <> 0 then
  begin
   openField := fID_fld;
   Ht(htOpenResults(TmpSab1,ROPEN_READ,@openField,1));
   try
    htReadResults(TmpSab1,@Result,SizeOf(TDocID));
   finally
    htCloseResults(TmpSab1);
   end;
  end;
 finally
  htClearResults(TmpSab1);
 end;
end;

function TFileTbl.GetDocIdOnVerLink(aLinkID : TDocID) : TDocID;
var
 TmpSab1   : Sab;
 openField : SmallInt;
begin
 Result := 0;
 htSearch(nil,TmpSab1,Handle,fVerLink_fld,EQUAL,@aLinkID,nil);
 try
  if TmpSab1.gFoundCnt<>0 then
  begin
   openField:=fID_fld;
   Ht(htOpenResults(TmpSab1,ROPEN_READ,@openField,1));
   try
    htReadResults(TmpSab1,@Result,SizeOf(TDocID));
   finally
    htCloseResults(TmpSab1);
   end;
  end
  else
   raise EHtErrors.CreateInt(ecNotFound);
 finally
  htClearResults(TmpSab1);
 end;
end;

Function TFileTbl.GetRelated(aDocID : TDocID; Var LastRel : Boolean) : TDocID;
Var
 AbsNum  : LongInt;
 RecH    : RHANDLE;
 TmpSab  : Sab;
Begin
 RefreshSrchList;
 Result:=0;
 LastRel:=False;
 AbsNum:=Ht(htRecordByUniq(@fSrchList,Handle,fId_Fld,@aDocID,@RecH));
 if AbsNum=0
  then
   exit;
 ClearFullRec;
 GetFullRec(AbsNum,False);
 GetFromFullRec(fRelated_fld,Result);
 htSearch(@fSrchList,TmpSab,Handle,fRelated_fld,EQUAL,@Result,nil);
 Try
  LastRel:=(TmpSab.gFoundCnt=1);
 finally
  htClearResults(TmpSab);
 end;
end;

function TFileTbl.GetVerLink(aDocID : TDocID) : TDocID;
var
 AbsNum  : LongInt;
 RecH    : RHANDLE;
begin
 RefreshSrchList;
 Result:=0;
 AbsNum:=Ht(htRecordByUniq(@fSrchList,Handle,fId_Fld,@aDocID,@RecH));
 if AbsNum=0 then
  exit;
 ClearFullRec;
 GetFullRec(AbsNum,False);
 GetFromFullRec(fVerLink_fld,Result);
end;

procedure TFileTbl.SetHasAnno(aDocId: TDocId; aValue: Boolean);
var
 l_RecNo: LongInt;
begin
 l_RecNo := Ht(htRecordByUniq(nil, Handle, fId_Fld, @aDocId, nil));
 if l_RecNo = 0 then
  raise EHtErrors.CreateInt(ecNotFound);
 ClearFullRec;
 GetFullRec(l_RecNo, False);
 if StartTA then
 try
  PutToFullRec(fHasAnno_fld, aValue);
  UpdFRec(l_RecNo);
  SuccessTA;
 except
  RollBackTA;
  raise EHtErrors.CreateInt(ecUnableUpd);
 end;
end;

procedure TFileTbl.SetHasAnno(var aDocIds: Sab; aValue: Boolean);
var
 l_Value: Byte;
 l_Recs: Sab;
begin
 l_Value := c_BoolToByte[aValue];
 RefreshSrchList;
 htTransferToPhoto(aDocIds, fSrchList, fId_Fld);
 htRecordsByKey(l_Recs, aDocIds);
 Ht(l_Recs.nRetCode);
 try
  ModifyRecs(l_Recs, fHasAnno_fld, @l_Value);
 finally
  htClearResults(l_Recs);
 end;
end;

procedure TFileTbl.GetAnnoSABonDocSAB(aDocIds: Sab; out AnnoSAB: SAB; aHasAnno : Boolean = True);
var
 l_AnnoDocs,
 l_CurDocs : SAB;
 l_HasAnno : Byte;
 l_NeedConvInSub : Boolean;
begin
 l_NeedConvInSub := htResultsType(aDocIds) = RES_VALUE;
 if l_NeedConvInSub then
  htRecordsByKey(l_CurDocs, aDocIds)
 else
  l_CurDocs := aDocIds;
 try
  l_HasAnno := c_BoolToByte[aHasAnno];
  htSubSearch(l_CurDocs, l_AnnoDocs, Handle, fHasAnno_fld, EQUAL, @l_HasAnno, nil);
  try
   htValuesOfKey(AnnoSab, fId_Fld, l_AnnoDocs);
  finally
   htClearResults(l_AnnoDocs);
  end;
 finally
  if l_NeedConvInSub then
   htClearResults(l_CurDocs);
 end;
end;

function TFileTbl.GetHasAnno(aDocID: TDocID): Boolean;
var
 l_RecNum: LongInt;
 l_FieldValue: Byte;
begin
 RefreshSrchList;
 l_RecNum := Ht(htRecordByUniq(@fSrchList, Handle, fId_Fld, @aDocID, nil));
 if l_RecNum = 0 then
  Result := False
 else
 begin
  ClearFullRec;
  GetFullRec(l_RecNum, False);
  GetFromFullRec(fHasAnno_fld, l_FieldValue);
  Result := Boolean(l_FieldValue);
 end;
end;

procedure TFileTbl.SprIDs2DocIDs(const aDocIDs : ISab);
var
 aSab : ISab;
begin
 if not Assigned(aDocIDs) or (aDocIDs.Count = 0) then
  Exit;
 aSab := MakeSabCopy(aDocIDs);
 aSab.RecordsByKey(fRelated_fld, MakePhoto(Self));

 aDocIDs.RecordsByKey(fId_Fld, aSab);
 aDocIDs.OrSab(aSab);

 aDocIDs.ValuesOfKey(fId_Fld);
end;

{ TDocumentServer }

procedure TDocumentServer.Update;
begin
 if Assigned(fFileTbl) then
  fFileTbl.UpdateTbl;
end;

procedure TDocumentServer.SendMessageAboutDeletedDocs(aDocIdsArray: array of Longint);
var
 l_Q: TDeleteDocsQuery;
 l_A: TDocArray;
 Index: Integer;
begin
 { ����� �������� ���� ������� }
 for Index:= 0 to Length(aDocIDsArray)-1 do
  Windows.SendMessage(Application.MainForm.Handle, wm_DelDoc, 0, aDocIDsArray[Index]);
 Windows.SendMessage(Application.MainForm.Handle, wm_RefreshDocs, 0, 0);
 { ������� ��������� ��������� }
 if (CSClient <> nil) then
 begin
  l_Q:= TDeleteDocsQuery.Create(nil, CSClient.ClientID);
  try
   SetLength(l_A, Length(aDocIDsArray));
   l3Move(aDocIDsArray[0], l_A[0], Length(aDocIDsArray)*SizeOf(Longint));
   l_Q.Docs:= l_A;
   CSClient.Exec(qtTask, l_Q.SaveToPipe);
  finally
   l3Free(l_Q);
  end;
 end;
 
end;

procedure TDocumentServer.SetFamily(aValue : TFamilyID);
begin
 if fFamily = aValue then Exit;
 fFamily := aValue;
 fFileTbl := TFileTbl(GlobalHtServer.GetTblObject(fFamily, Ord(ftFile)));
 if fFileTbl = nil then
  fFileTbl := TFileTbl.Create(fFamily)
 else
  fFileTbl.Use;

 //fReNumTbl := GlobalHtServer.ReNumTbl[fFamily];
 //fReNumTbl.UpdateInterval := 0;
end;

procedure TDocumentServer.Cleanup;
begin
 l3Free(fFileTbl);
 Inherited;
end;

function TDocumentServer.CheckDoc(aDocID : TDocID; WithRel : Boolean;var RelFlag : Boolean) : Boolean;
var
 TmpNum : LongInt;
begin
 Result:=False;
 RelFlag:=False;
 CheckFamilyNum;
 fFileTbl.RefreshSrchList;
 if fFileTbl.CheckDoc(aDocID,TmpNum) then
  Result:=True
 else
  if WithRel and (fFileTbl.CheckRel(aDocID) > 0) then
   begin
    RelFlag:=True;
    Result:=True;
   end;
end;

function TDocumentServer.GetDocOnValues(Values : SAB;WithSort : Boolean;
                                        Photo  : LPSab) : SAB;
var
 TmpSab  : Sab;
 Tmp_fld : SmallInt;
begin
 if Photo<>nil then                                
   htTransferToPhoto(Values,Photo^,fID_Fld)
 else
  begin
   fFileTbl.RefreshSrchList;
   htTransferToPhoto(Values,fFileTbl.fSrchList,fID_Fld);
  end;
 if WithSort then
  begin
   htRecordsByKey(TmpSab,Values);
   try
    Tmp_Fld:=fID_fld;
    htSortResults(Result,TmpSab,@Tmp_Fld,1);
   finally
    htClearResults(TmpSab);
   end;
  end
 else
  htRecordsByKey(Result,Values);
end;

procedure TDocumentServer.GroupUpdateDoc(aID : TDocID;
                                         appFullName : string;
                                         appShortName : string;
                                         Status : Integer; NUStatus : Integer;
                                         UserType : TUserType; NUUserType : Boolean;
                                         aPriority : word = 0);
var
 tmpCard    : TCardRec;
begin
 if (appFullName <> '')
  or (appShortName <> '')
  or (NUStatus <> 0)
  or NUUserType
  or (aPriority > 0) then
 begin
  FileTbl.GetCard(aID,@tmpCard);

  tmpCard.FullName := l3ConcatText(tmpCard.FullName, appFullName);
  tmpCard.ShortName := l3ConcatText(tmpCard.ShortName, appShortName);
  if NUStatus <> 0 then
   tmpCard.Status := (tmpCard.Status and not NUStatus) or (Status and NUStatus);

  if NUUserType then
   tmpCard.UserType := UserType;

  if aPriority > 0 then
  begin
   tmpCard.Priority := aPriority;
   tmpCard.PriorFlag := True;
  end;

  FileTbl.UpdDoc(aID,tmpCard,False);
 end;
end;

function TDocumentServer.GetRelImportNum(DocImpNum : TDocID) : TDocID;
var
 lRelDocID : TDocID;
 lDocID : TDocID;
begin
 //Result:=fRenumTbl.GetRelImportNum(DocImpNum);

 Result := DocImpNum + cNormalRelIndent;
 // �� ����� � Renum, ������ �����
 if not LinkServer(fFamily)[atRenum].Table.FindByUniqKey(rnImportID_fld, Result, rnRealID_fld, lRelDocID) then Exit;

 // � Renum ����, ������ ���� �� � ����-������ ����� �������
 lDocID := FileTbl.GetDocIdOnRelated(lRelDocID);

 if (lDocID > 0) // ����� ����� � ���� �������� �� ����� ������� (����� ��������� ���?)
    or FileTbl.HasRecord(fID_fld, lRelDocID) then // ��� ����� ���������
  Result := 0;
end;

procedure TDocumentServer.ChangeHLAddr(aOldDestDoc : TDocID; aOldDestSub : TSubID;
                                       aNewDestDoc : TDocID; aNewDestSub : TSubID);
var
 lModifiedDocs : ISab;
begin
 LinkServer(fFamily).HLinkTbl.ChangeDestAddr(aOldDestDoc, aOldDestSub, aNewDestDoc, aNewDestSub, lModifiedDocs);
 LinkServer(fFamily).LogBook.PutLogRecToDocs(lModifiedDocs, acHLWork);
end;

procedure TDocumentServer.ChangeDestDoc(anOldDestDoc, aNewDestDoc: TDocID;
                                        aNewDestSub: TSubID;
                                        const aSubList: Tl3LongintList = nil;
                                        const aDocList: ISab = nil);
var
 lValList  : ISAB;
begin
 if aDocList = nil then
  lValList := MakeSab(LinkServer(fFamily).HLinkTbl, LinkServer(fFamily).HLinkTbl.GetParentList(anOldDestDoc, aSubList))
 else
 begin
  lValList := MakeSabCopy(aDocList);
  if lValList.TypeOfSab <> RES_VALUE then
   lValList.ValuesOfKey(docIdFld);
 end;

 LinkServer(fFamily).HLinkTbl.ChangeDestAddr(anOldDestDoc, aNewDestDoc, aNewDestSub, lValList, aSubList);
 LinkServer(fFamily).LogBook.PutLogRecToDocs(lValList, acHLWork);
end;

procedure TDocumentServer.ChangeDestDoc(const aRelaceArr : array of TReplaceDocPair;
                                        const aDocList: ISab);
begin
 LinkServer(fFamily).HLinkTbl.ChangeDestAddr(aRelaceArr, aDocList);
 LinkServer(fFamily).LogBook.PutLogRecToDocs(aDocList, acHLWork);
end;

procedure TDocumentServer.DelDoc(aDelDocID: TDocID);
begin
 DelDocEx(aDelDocID, True, True);
end;

procedure TDocumentServer.DelDocs(aDocIDs: ISab);
begin
 DelDocsEx(aDocIDs, True, True);
end;

procedure TDocumentServer.DelRel(RelID : TDocID);
const
 MaxDelTime = 120; // 2 �����
var
 l_TransId  : Ht_Const.TrId;
 lDB : Im3DB;
begin
 if fFileTbl.CheckRel(RelID) > 1 then exit;

 CheckFamilyNum;

 if GlobalHTServer.StartTransaction([LinkServer(fFamily)[atHLink].Table,
                                     LinkServer(fFamily)[atSub].Table,
                                     LinkServer(fFamily)[atRenum].Table,
                                     GlobalHtServer.FreeTbl[fFamily]],
                                    l_TransID,
                                    MaxDelTime) then
  try
   LinkServer(fFamily)[atSub].DelAllLinkItems(RelID);
   LinkServer(fFamily)[atHLink].DelAllLinkItems(RelID);

   fFileTbl.PutFreeNum(RelID);

   lDB := Tm3DB.Make(GlobalHtServer.TextBase[fFamily]);
   try
    lDB.GetDocument(RelID).Delete;
   finally
    lDB := nil;
   end;

   GlobalHTServer.CommitTransaction(l_TransID);
  except
   GlobalHTServer.RollBackTransaction(l_TransID);
   raise;
  end;
end;

function TDocumentServer.MakeAttrTableArray : Il3CBaseList;
var
 I : TdtAttribute;
 lList : Tl3CBaseRefInterfacedList;
begin
 lList := Tl3CBaseRefInterfacedList.Create;
 try
  lList.Add(fFileTbl);
  lList.Add(GlobalHtServer.FreeTbl[fFamily]);
  for I := Low(TdtAttribute) to High(TdtAttribute) do
  with cAttrPassport[I] do
  begin
   if (rLink <> ftNone) and (rLink <> ftFile) then
    lList.Add(LinkServer(fFamily)[I].Table);
   if (rDict <> dlNone) and (cDLPassports[rDict].rClass = atcSingle) then
    lList.Add(DictServer(Family).GroupTbl[rDict]);
  end;
  Result := lList;
 finally
  lList.Free;
 end;//try..finally
end;

procedure TDocumentServer.DelDocEx(aDelDocID: TDocID; aDeleteAnnos, aDeleteText: Boolean; aPreventNumFree : Boolean = false);
const
 MaxDelTime = 300; // 5 �����
var
 NumsID    : Sab;
 RelID     : TDocID;
 lIsDelRel : Boolean;

 l_TransId  : Ht_Const.TrId;

 l_DocIdsArray: array of Longint;
 l_PreventNumFree: Boolean;
 lAttr : TdtAttribute;

 procedure DeleteText;
 var
  lDB : Im3DB;
 begin
  lDB := Tm3DB.Make(GlobalHtServer.TextBase[fFamily]);
  try
   lDB.GetDocument(aDelDocID).Delete;
   if RelID <> 0 then
    lDB.GetDocument(RelID).Delete;
  finally
   lDB := nil;
  end;
 end;

begin
 CheckFamilyNum;

 RelID:=fFileTbl.GetRelated(aDelDocID,lIsDelRel);
 lIsDelRel := lIsDelRel and (RelID > 0);

 if GlobalHTServer.StartTransaction(MakeAttrTableArray,
                                    l_TransId,
                                    MaxDelTime) then
 begin
  try
   l_PreventNumFree := aPreventNumFree or LinkServer(fFamily).HLinkTbl.HasLinksWithDest(aDelDocID);

   fFileTbl.DelDoc(aDelDocID);
   if not l_PreventNumFree then
    fFileTbl.PutFreeNum(aDelDocID);

   for lAttr := Low(TdtAttribute) to High(TdtAttribute) do
    with cAttrPassport[lAttr] do
    begin
     if cAttrPassport[lAttr].rLink = ftNone then Continue;
     if cAttrPassport[lAttr].rLink = ftFile then Continue;
     if (lAttr = atAnnoClasses) and not aDeleteAnnos then Continue;
     if (lAttr = atRenum) then
     begin
      if not l_PreventNumFree then
      begin
       LinkServer(fFamily)[atRenum].DelAllLinkItems(aDelDocID);
       if lIsDelRel then
        LinkServer(fFamily)[atRenum].DelAllLinkItems(RelID);
      end
     end
     else
      LinkServer(fFamily)[lAttr].DelAllLinkItems(aDelDocID);
    end;

   if lIsDelRel then
   begin
    LinkServer(fFamily)[atSub].DelAllLinkItems(RelID);
    LinkServer(fFamily)[atHLink].DelAllLinkItems(RelID);
   end;

   GlobalHTServer.CommitTransaction(l_TransId);
  except
   GlobalHTServer.RollBackTransaction(l_TransId);
   raise;
  end;

  GlobalHtServer.BigBrother.LogDeleteDoc(fFamily, aDelDocID);

  if not lIsDelRel then
   RelID := 0
  else
   if not l_PreventNumFree then
    fFileTbl.PutFreeNum(RelID);

  if aDeleteText then
   DeleteText;

   SetLength(l_DocIdsArray, 1);
   try
    l_DocIdsArray[0] := aDelDocID;
    SendMessageAboutDeletedDocs(l_DocIdsArray);
   finally
    l_DocIdsArray := nil;
   end;
 end;
end;

procedure TDocumentServer.DelDocsEx(aDocIDs: ISab; aDeleteAnnos, aDeleteTexts: Boolean);

var
 lArrIdx : Integer;
 lInDoc  : boolean; // ������������ ���� ��� �������
 l_DocIdsArray: array of Integer;

 function lRecAccessProc(aItemPtr : Pointer) : Boolean;
 begin
  Result := True;
  if lInDoc then
   GlobalHtServer.BigBrother.LogDeleteDoc(fFamily, PInteger(aItemPtr)^);
  l_DocIdsArray[lArrIdx] := PInteger(aItemPtr)^;
  Inc(lArrIdx);
 end;

const
 MaxDelTime = 300; (* 5 ����� *)
var
 l_DictIds: Sab;
 I: Integer;

 l_RelatedIds: ISab;
 l_NotReferencedDocIds: ISab;
 l_RelatedToNotReferencedDocIds: ISab;

 l_TransId  : Ht_Const.TrId;

 lRAProcStub : TdtRecAccessProc;
 lAttr : TdtAttribute;

begin
 if (aDocIDs.Count = 0) then
  Exit;
 CheckFamilyNum;

 fFileTbl.GetRelated(aDocIDs, l_RelatedIds, True);

 // ���������� ����������, �� ������� ��� ������.
 // � ��� �� ��������� ��������� � �� ���������, � ������� ������� ������ ������ �� ����� ����.
 LinkServer(fFamily).HLinkTbl.ExtractNotReferencedDocIds(aDocIDs, l_NotReferencedDocIds);
 fFileTbl.GetRelated(l_NotReferencedDocIds, l_RelatedToNotReferencedDocIds, True);

 if GlobalHTServer.StartTransaction(MakeAttrTableArray,
                                    l_TransId,
                                    MaxDelTime) then
 begin
  try
   fFileTbl.DelDocs(aDocIDs);
   fFileTbl.PutFreeNums(l_NotReferencedDocIds.HTSab);

   for lAttr := Low(TdtAttribute) to High(TdtAttribute) do
    with cAttrPassport[lAttr] do
    begin
     if cAttrPassport[lAttr].rLink = ftNone then Continue;
     if cAttrPassport[lAttr].rLink = ftFile then Continue;
     if (lAttr = atAnnoClasses) and not aDeleteAnnos then Continue;
     if (lAttr = atRenum) then
     begin
      LinkServer(fFamily)[atRenum].DelAllLinkItems(l_NotReferencedDocIds);
      LinkServer(fFamily)[atRenum].DelAllLinkItems(l_RelatedToNotReferencedDocIds);
     end
     else
      LinkServer(fFamily)[lAttr].DelAllLinkItems(aDocIDs);
    end;

   if l_RelatedIds.Count > 0 then
   begin
    LinkServer(fFamily)[atSub].DelAllLinkItems(l_RelatedIds);
    LinkServer(fFamily)[atHLink].DelAllLinkItems(l_RelatedIds);
   end;

   if l_RelatedToNotReferencedDocIds.Count > 0 then
    fFileTbl.PutFreeNums(l_RelatedToNotReferencedDocIds.HTSab);
   
   GlobalHTServer.CommitTransaction(l_TransId);
  except
   GlobalHTServer.RollBackTransaction(l_TransId);
   raise;
  end;

  SetLength(l_DocIdsArray, aDocIDs.Count + l_RelatedIds.Count);
  lArrIdx := 0;
  try
   GlobalHtServer.BigBrother.StartCaching;
   try
    lRAProcStub := L2RecAccessProc(@lRecAccessProc);
    try
     // ���������
     lInDoc := True;
     aDocIDs.IterateRecords(lRAProcStub);

     // �������
     lInDoc:= false;
     l_RelatedIds.IterateRecords(lRAProcStub);
    finally
     FreeRecAccessProc(lRAProcStub);
    end;

   finally
    GlobalHtServer.BigBrother.StopCaching;
   end;

   if aDeleteTexts then
    with dtGetDB(fFamily) do
     for I := 0 to Length(l_DocIdsArray) - 1 do
      GetDocument(l_DocIdsArray[I]).Delete;

    SendMessageAboutDeletedDocs(l_DocIdsArray);
  finally
   l_DocIdsArray := nil;
  end;
 end;
end;

{ TDocumentData }
constructor TDocumentData.Create(aFamily : TFamilyID;aID : TDocID;aTyp : Byte = 0);
var
 tmpNum : LongInt;
begin
 inherited Create(nil);
 fFamily:=aFamily;
 CheckFamilyNum;

 fFileTbl:=TFileTbl(GlobalHtServer.GetTblObject(fFamily, Ord(ftFile)));
 if fFileTbl = nil then
  fFileTbl:=TFileTbl.Create(fFamily);

 if (aID <> cUndefDocID) and (aID > 0) then
  begin
   if fFileTbl.CheckDoc(aID, tmpNum) then
    begin
     fDocID := aID;
     fRealDocFlag := True;
     fFileTbl.GetFullRec(TmpNum, False);
     fFileTbl.GetFromFullRec(fType_Fld, fCurDocType);
    end
   else
    begin
     fDocID := fFileTbl.GetDocIdOnRelated(aID);
     if fDocID = 0 then
      raise EHtErrors.CreateInt(ecNotFound);

     fRealDocFlag := False;
     fCurDocType := Byte(dtText);
    end;
  end
 else
  fDocID:=aID;

 l3FillChar(fDocLogRec,SizeOf(fDocLogRec));

 if fDocID = cUndefDocID then
  GetNewDoc(aTyp)
 else
  LoadDoc;

end;

procedure TDocumentData.Cleanup;
begin
 l3Free(fVersionsList);
 l3Free(fCorespondentsList);
 l3Free(fRespondentsList);
 inherited;
end;

procedure TDocumentData.ClearFullCard;
begin
 with f_Card do
 begin
  ShortName     := '';
  FullName      := '';
  Status        := 0;
  UserType      := utNone;
  Related       := 0;
  Priority      := 0;
  SortDate      := 0;
  PaperUser     := 0;
  PaperPlace    := '';
  PriorFlag     := False;
  StageMask     := 0;
  VerLink       := 0;
  HasAnno       := False;
 end;
 f_SavedCard := f_Card;
end;

procedure TDocumentData.RefreshCorespondentsList(aSubList: Tl3LongintList = nil);
begin
 if fCorespondentsList = nil then
 begin
  fCorespondentsList := TDocumentSabList.CreateEmpty(Family);
  fCorespondentsList.CheckActiveStatus := True;
 end;
 LinkServer(fFamily).HLinkTbl.GetParentList(DocId, fCorespondentsList, aSubList);
end;

procedure TDocumentData.RefreshVersionsList;
var
 l_List: TL3LongintList;
 I: Integer;
begin
 if fVersionsList = nil then
 begin
  fVersionsList := TDocumentSabList.CreateEmpty(Family);
  fVersionsList.WithOrder := True;
 end
 else
  fVersionsList.ClearCurSab;

 l_List := TL3LongintList.Create;
 try
  fFileTbl.GetAllVerLinkOrder(fDocID, l_List);

  for I := 0 to Pred(l_List.Count) do
   try
    fVersionsList.AddDoc(TDocId(l_List[I]));
   except
    l3System.Msg2Log(Format('Verlink �� ������������� �������� Id = #%d',[TDocId(l_List[I])]));
   end;
 finally
  l_List.Free;
 end;
end;

function TDocumentData.GetCorespondentsList: TDocumentSabList;
begin
 if fCorespondentsList = nil then
  RefreshCorespondentsList;
 Result := fCorespondentsList;
end;

function TDocumentData.GetVersionsList: TDocumentSabList;
begin
 if fVersionsList = nil then
  RefreshVersionsList;
 Result := fVersionsList;
end;

procedure TDocumentData.SetLogRec(aInd : TLogActionType; aValue : Boolean);
begin
 {$IFNDEF nsTest}
 if (fFamily > 0) and (fDocID > 0) then
 begin
  if aValue and not fDocLogRec[aInd] then
   LinkServer(fFamily).LogBook.PutLogRec(fDocID, aInd);
  fDocLogRec[aInd] := aValue;
 end;
 {$ENDIF nsTest} 
end;

procedure TDocumentData.GetNewDoc(aTyp : Byte);
var
 Dummy   : Byte;
 TmpPChar : PAnsiChar;
const
 NewName : Array [1..19] Of Char = '* ����� �������� *'#0;
begin
 fDocID:=fFileTbl.GetFreeNum;
 //LinkServer(fFamily).LogBook.PutLogRec(fDocID,acNew);
 ClearFullCard;
 l3FillChar(fDocLogRec,SizeOf(fDocLogRec));
 fFileTbl.ClearFullRec;
 fFileTbl.PutToFullRec(fID_Fld,fDocID);
 TmpPChar:=@NewName;
 fFileTbl.PutToFullRec(fSName_Fld,TmpPChar);
 fFileTbl.PutToFullRec(fFName_Fld,TmpPChar);
 if aTyp<>0 then
  Dummy:=aTyp
 else
  Dummy:=Byte(dtText);
 fCurDocType:=Dummy;
 fFileTbl.PutToFullRec(fType_Fld,Dummy);
 Dummy:=Byte(utNone);
 fFileTbl.PutToFullRec(fUserType_Fld,Dummy);
 fFileTbl.AddDoc;
 GlobalHtServer.BigBrother.LogCreateDoc(fFamily, fDocID);
end;

Procedure TDocumentData.LoadDoc;
begin
 if (fDocID <> 0) then
 begin
  fFileTbl.GetCard(fDocID, @f_Card);
  f_SavedCard := f_Card;

  GlobalHtServer.BigBrother.LogOpenDoc(fFamily, fDocID);
 end;
end;

function TDocumentData.SetRelatedDoc(aRelID : LongInt) : LongInt;
begin
 if aRelID = f_Card.Related then Exit;

 if aRelID = cUndefDocID then
  Result := fFileTbl.GetFreeNum
 else
  Result := aRelID;

 if f_Card.Related <> 0 then
  DocumentServer(fFamily).DelRel(f_Card.Related);

 fFileTbl.SetRelated(fDocID,Result);
 f_Card.Related := Result;
end;

procedure TDocumentData.SetVerLinkDoc(aLinkID : TDocID);
var
 l_tmpDocID : TDocID;
begin
 if aLinkID = cUndefDocID then
  raise EHtErrors.CreateInt(ecIDNotAssigned)
 else
 begin
  l_tmpDocID := fFileTbl.CheckVerLink(aLinkID);
  if l_tmpDocID <> 0 then
   raise EHtErrors_IDAlreadyUsed.CreateInt(ecIDAlreadyUsedInDoc,[aLinkID,l_tmpDocID]);
 end;

 fFileTbl.SetVerLink(fDocID,aLinkID);
 f_Card.VerLink:=aLinkID;
end;

procedure TDocumentData.GetCorrectList(aList : Tl3CustomDataList);
var
 tmpSortOrder : TSortRec;
begin
 tmpSortOrder.Fld[1]:=crDateFld;
 tmpSortOrder.FldCount:=1;

 LinkServer(fFamily).GetDataList(dlCorrects,fDocID,aList,tmpSortOrder);
end;

(*procedure TDocumentData.SetCorrectList(aList : Tl3CustomDataList);
begin
 LinkServer(fFamily).SetDataListEx(dlCorrects,fDocID,aList{,aDelList});
end;
*)

procedure TDocumentData.GetPublishedList(aList : Tl3CustomDataList);
var
 tmpSortOrder : TSortRec;
begin
 tmpSortOrder.Fld[1]:=piSourFld;
 tmpSortOrder.FldCount:=1;

 DictServer(Family).GetPublishData(fDocID, aList, True);
 //LinkServer(fFamily).GetDataListEx(dlPublisheds,fDocID,aList,tmpSortOrder);
end;

(*procedure TDocumentData.SetPublishedList(aList : Tl3CustomDataList);
begin

 LinkServer(fFamily).SetDataListEx(dlPublisheds,fDocID,aList);
end;

procedure TDocumentData.GetDocStages(Var BeginSet,EndSet : TStageSet);
begin
 DocumentServer.Family:=fFamily;
 DocumentServer.StageTbl.DocID:=fDocID;
 DocumentServer.StageTbl.GetDocStages(BeginSet,EndSet);
end;*)

{procedure TDocumentData.SetDocStages(BeginSet,EndSet : TStageSet);
begin
 DocumentServer.Family:=fFamily;
 DocumentServer.StageTbl.DocID:=fDocID;
 DocumentServer.StageTbl.SetDocStages(BeginSet,EndSet);
end;}

(*procedure TDocumentData.GetDocActiveIntervalsList(aList : Tl3CustomDataList);
begin
 DocumentServer.Family:=fFamily;
 DocumentServer.ActiveIntervalTbl.DocID:=fDocID;
 DocumentServer.ActiveIntervalTbl.GetDocActiveIntervalsList(aList);
end;

procedure TDocumentData.GetDocAlarmsList(aList : Tl3CustomDataList);
begin
 DocumentServer.Family:=fFamily;
 DocumentServer.AlarmTbl.DocID:=fDocID;
 DocumentServer.AlarmTbl.GetDocAlarmsList(aList);
end; *)

procedure TDocumentData.SetTextChangedFlag;
begin
 GlobalHtServer.BigBrother.LogEditDoc(fFamily, fDocID, detText);
end;

procedure TDocumentData.SaveDoc;
begin
 if CardModified or (not f_Card.PriorFlag) then
 begin
  CheckFamilyNum;
  if fDocID = 0 then
   raise EHtErrors.CreateInt(ecNotAssigned);

  if not f_Card.PriorFlag then
   f_Card.Priority := LinkServer(fFamily).GetPriority(fDocID);

  if CardModified then
  begin
   fFileTbl.UpdDoc(fDocID, f_Card, False);
   Windows.SendMessage(Application.MainForm.Handle, wm_RefreshDocs, 0, 0);
  end;

  f_SavedCard := f_Card;
 end;
end;

function TDocumentData.GetCard: PCardRec;
begin
 Result := @f_Card;
end;

function TDocumentData.CardModified: Boolean;
begin
 Result := (f_Card.ShortName  <> f_SavedCard.ShortName) or
           (f_Card.FullName   <> f_SavedCard.FullName) or
           (f_Card.Status     <> f_SavedCard.Status) or
           (f_Card.UserType   <> f_SavedCard.UserType) or
           (f_Card.Related    <> f_SavedCard.Related) or
           (f_Card.Priority   <> f_SavedCard.Priority) or
           (f_Card.SortDate   <> f_SavedCard.SortDate) or
           (f_Card.PaperUser  <> f_SavedCard.PaperUser) or
           (f_Card.PaperPlace <> f_SavedCard.PaperPlace) or
           (f_Card.PriorFlag  <> f_SavedCard.PriorFlag) or
           (f_Card.StageMask  <> f_SavedCard.StageMask) or
           (f_Card.VerLink    <> f_SavedCard.VerLink) or
           (f_Card.HasAnno    <> f_SavedCard.HasAnno) or
           (f_Card.Urgency    <> f_SavedCard.Urgency) or
           (f_Card.Comment    <> f_SavedCard.Comment);
end;

{ TDocumentSabList }

constructor TDocumentSabList.Create;
begin
 inherited Create;

 fCheckActive := False;

 f_ChangeNotifier := Tl3ChangeNotifier.Create;
end;

constructor TDocumentSabList.CreateEmpty(aFamily : TFamilyID);
begin
 inherited Create;
 f_ChangeNotifier := Tl3ChangeNotifier.Create;

 fCheckActive:=False;
 Family:=aFamily;
 SetEmptySab;
end;

procedure TDocumentSabList.Cleanup;
begin
 ClearCurSab;

 l3Free(fActiveList);
 fCheckActive := False;

 l3Free(fOrderIndex);
 l3Free(f_ChangeNotifier);
 inherited;
end;

procedure TDocumentSabList.SetFamily(aValue : TFamilyID);
begin
 if fFamily<>aValue then
 begin
  ClearCurSab;
  fFamily:=aValue;
  if fFamily <> 0 then
   fFileTbl := TFileTbl(GlobalHtServer.GetTblObjectEx(fFamily, Ord(ftFile)));
 end;
end;

function TDocumentSabList.GetSabCursor : ISabCursor;
begin
 if fSabCursor = nil then
  fSabCursor := fCurSab.MakeSabCursor(MakeFieldArray([fId_Fld, fType_Fld, fUserType_Fld, fFName_Fld, fUrgency_fld]),
                                      cmBalanced,
                                      ROPEN_READ);
 Result := fSabCursor;
end;

procedure TDocumentSabList.SetCurSab(aValue : ISab);
begin
 CheckFamilyNum;

 ClearCurSab;

 if not aValue.IsEmpty then
 begin
  fCurSab := MakeSabCopy(aValue);
  GetActiveStatusList;
 end;
end;

function TDocumentSabList.GetChkActive : Boolean;
begin
 Result:=fCheckActive;
end;

procedure TDocumentSabList.SetChkActive(aValue : Boolean);
begin
 if aValue <> fCheckActive then
 begin
  fCheckActive := aValue;
  if aValue then
   GetActiveStatusList
  else
   L3Free(fActiveList);
 end;
end;

function  TDocumentSabList.GetWithOrder : Boolean;
begin
 Result := fOrderIndex <> nil;
end;

procedure TDocumentSabList.SetWithOrder(aValue : Boolean);
begin
 if aValue = WithOrder then Exit;
 if aValue  then
  fOrderIndex := Tl3LongintList.Create
 else
  l3Free(fOrderIndex);
end;

procedure TDocumentSabList.AddToOrderIndex(aValue : Integer);
var
 I : Integer;
begin
 if not WithOrder then Exit;

 for I := 0 to Pred(fOrderIndex.Count) do
  if fOrderIndex[I] >= aValue then
   fOrderIndex[I] := fOrderIndex[I] + 1;
 fOrderIndex.Add(aValue);
end;

procedure TDocumentSabList.DelFromOrderIndex(aIndex : Integer);
var
 I : Integer;
 lValue : Integer;
begin
 if not WithOrder then Exit;

 lValue := fOrderIndex[I];

 for I := 0 to Pred(fOrderIndex.Count) do
  if fOrderIndex[I] > lValue then
   fOrderIndex[I] := fOrderIndex[I] - 1;
 fOrderIndex.Delete(aIndex);
end;

procedure TDocumentSabList.ClearOrderIndex;
begin
 if not WithOrder then Exit;
 fOrderIndex.Clear;
end;

function TDocumentSabList.ConvertIndex(aValue : Integer) : Integer;
begin
 if WithOrder then
  Result := fOrderIndex[aValue]
 else
  Result := aValue;
end;

procedure TDocumentSabList.SetEmptySab;
var
 lSab : Sab;
begin
 CheckFamilyNum;
 ClearCurSab;

 //fFileTbl.RefreshSrchList;
 //htCreateEmptySAB(@fFileTbl.fSrchList,lSab,fFileTbl.Handle,fId_Fld,Res_Record);

 fCurSab := MakeEmptySab(fFileTbl);
end;

procedure TDocumentSabList.ClearCurSab;
begin
 fSabCursor := nil;
 fCurSab := nil;
 l3Free(fActiveList);
 ClearOrderIndex;
end;

procedure TDocumentSabList.GetActiveStatusList;
var
 lDiapason  : ISAB;
begin
 if CheckActiveStatus then
 begin
  if (fCurSab <> nil) and not fCurSab.IsEmpty then
  begin
   lDiapason := MakeSabCopy(fCurSab);
   lDiapason.ValuesOfKey(fId_Fld);
   fActiveList := LinkServer(fFamily).ActiveIntervals.GetActiveDocNumbers(lDiapason);
  end;
 end;
end;

function TDocumentSabList.GetDoc(aItem : LongInt) : TDocReadRec;
var
 lIndex : Longint;
begin
 aItem := ConvertIndex(aItem);
 l3FillChar(Result,sizeOf(TDocReadRec));
 l3Move(PAnsiChar(SabCursor.GetItem(aItem))^,Result,SizeOf(TDocReadTblRec));

 // ��������� Active �������
 if CheckActiveStatus then
  Result.NoActive := (fActiveList = nil) or
                    not fActiveList.FindData(Result.ID, lIndex);
end;

procedure TDocumentSabList.DelDoc(aItem : LongInt);
begin
 SabCursor.DelItem(ConvertIndex(aItem));
 DelFromOrderIndex(aItem);
end;

function TDocumentSabList.AddDoc(aID : LongInt) : LongInt;
var
 AbsNum : LongInt;
begin
 CheckFamilyNum;
 if (fCurSab = nil) or not fCurSab.IsValid then
  raise EHtErrors.CreateInt(ecNotAssigned);

 AbsNum := fFileTbl.GetRecordIDByUniq(fId_Fld, aID, nil, fCurSab.HTSabAddr);
 if AbsNum = 0 then
 begin
  f_ChangeNotifier.Changing;

  fCurSab.Refresh;

  AbsNum := fFileTbl.GetRecordIDByUniq(fId_Fld, aID, nil, fCurSab.HTSabAddr);

  if AbsNum = 0 then raise EHtErrors.CreateInt(ecNotFound);
  f_ChangeNotifier.Changed;
 end;

 Result := SabCursor.AddItem(AbsNum);
 AddToOrderIndex(Result);
end;

procedure TDocumentSabList.SortList(aSortFields : array of ThtField);
begin
 if (fCurSab <> nil) and fCurSab.IsValid then
  fCurSab.Sort(aSortFields);
end;

Const
 cHeaderSize = 10;
 cHeader  : Array[1..cHeaderSize] of Char = 'Saved Data';
 cVersion : Char = #05;

procedure TDocumentSabList.SaveList(DataName : TFileName;Comment : PAnsiChar);
var
 fStrm : Tl3FileStream;
 lDocList : ISab;
 lLen  : Cardinal;
 lDataType : Byte;

begin
 CheckFamilyNum;
 if (fCurSab = nil) or fCurSab.IsEmpty then
  raise EHtErrors.CreateInt(ecNotAssigned);

 fStrm := Tl3FileStream.Create(DataName,l3_fmReadWrite);
 try
  fStrm.WriteBuffer(cVersion, 1);
  fStrm.WriteBuffer(cHeader[1], cHeaderSize);
  fStrm.WriteBuffer(Zero, 4);

  if Comment <> nil then
  begin
   lDataType := Byte(sdtComment);
   fStrm.WriteBuffer(lDataType,SizeOf(lDataType));
   lLen := StrLen(Comment);
   fStrm.WriteBuffer(lLen, SizeOf(lLen));
   fStrm.WriteBuffer(Comment^, lLen);
  end;

  lDocList := MakeSabCopy(fCurSab);
  lDocList.ValuesOfKey(fID_fld);
  lDocList.Sort;

  lDataType := Byte(sdtDocs);
  fStrm.WriteBuffer(lDataType,SizeOf(lDataType));
  lLen := lDocList.Count * 4;
  fStrm.WriteBuffer(lLen, SizeOf(lLen));
  dtOutSabToStream(lDocList, fStrm);
 finally
  l3Free(fStrm);
 end;
end;

procedure TDocumentSabList.LoadList(DataName : TFileName;var Comment : PAnsiChar);
var
 fStrm : Tl3FileStream;
 lDocList : ISab;
 lLen  : Cardinal;
 lDataType : Byte;
 lCheckSum : LongWord;
 lDataVer  : Char;
begin
 Comment := nil;
 CheckFamilyNum;

 fStrm := Tl3FileStream.Create(DataName,l3_fmReadWrite);
 try
  fStrm.ReadBuffer(lDataVer, SizeOf(lDataVer));
  if (lDataVer <> #04) and (lDataVer <> cVersion) then
    raise Exception.Create('������������ ������ ������!'#13+'�������� �� ��������.');

  fStrm.ReadBuffer(cHeader[1], cHeaderSize);
  fStrm.ReadBuffer(lCheckSum, SizeOf(lCheckSum));

  while true do
  begin
   fStrm.ReadBuffer(lDataType, SizeOf(lDataType));

   if lDataVer = #04 then
    fStrm.ReadBuffer(lLen,SizeOf(Word))
   else
    fStrm.ReadBuffer(lLen,SizeOf(lLen));

   case TSaveDocDT(lDataType) of
    sdtDocs :
     begin
      fCurSab := MakeValueSet(fFileTbl, fId_Fld, fStrm);
      fCurSab.RecordsByKey;
      Break;
     end;
    sdtComment :
     begin
      if lLen > 0 then
      begin
       Comment := l3StrAlloc(lLen + 1);
       //l3FillChar(Com  ment^, lLen + 1);
       fStrm.ReadBuffer(Comment^, lLen);
       Comment[lLen] := #0;
      end;
     end;
   end; // case
  end; //while true do 

 finally
   l3Free(fStrm);
 end;
end;

(*
procedure TDocumentSabList.OutToFile(aName : TFileName; aTitle : PAnsiChar;
                                     aRealNumbers : Boolean);
const
 CashSize = 4096;
 STitle   : array [1..22] of Char = '���������� ���������: ';
 EndChars : array [1..2] of Char = #13#10;
 TabChars : Char = #9;
var
 CurFl   : TmgExFileStream;
 CurBuf  : TmgBuffStream;
 I       : LongInt;

 CurItem : PDocReadRec;
 lDocID   : TDocID;
 TmpLen  : Word;
 TmpStr  : ShortString;
begin
 if (fCurSab = nil) or fCurSab.IsEmpty then
  exit;

 CurFl:=TmgExFileStream.Create(aName,l3_fmWrite);
 CurBuf:=TmgBuffStream.Create(CurFl,CashSize);
 try
  //ReadForvard:=True;
  CurBuf.WriteBuffer(aTitle^,l3StrLen(aTitle));
  CurBuf.WriteBuffer(EndChars,SizeOf(EndChars));
  CurBuf.WriteBuffer(STitle,SizeOf(STitle));
  TmpStr:=IntToStr(Count);
  CurBuf.WriteBuffer(TmpStr[1],Length(TmpStr));
  CurBuf.WriteBuffer(EndChars,SizeOf(EndChars));
  CurBuf.WriteBuffer(EndChars,SizeOf(EndChars));

  for I:=0 to Count - 1 do
  begin
   CurItem := SabCursor.GetItem(I);
   lDocID := CurItem^.ID;
   if not aRealNumbers then
    lDocID := LinkServer(fFamily).Renum.GetExtDocID(lDocID);

   TmpStr := IntToStr(lDocID);
   CurBuf.WriteBuffer(TmpStr[1],Length(TmpStr));
   CurBuf.WriteBuffer(TabChars,SizeOf(TabChars));
   try
    TmpLen:=l3RTrimLen(@CurItem^.Name, cFullNameSize);
   except
    //!DEBUG
    //TmpLen:=l3RTrimLen(@CurItem^.Name,FullNameSize);
    TmpLen := cFullNameSize;
    l3System.Msg2Log(Format('l3RTrimLen bug GDocID = %d', [lDocID]));
   end;
   CurBuf.WriteBuffer(CurItem^.Name,TmpLen);
   CurBuf.WriteBuffer(EndChars,SizeOf(EndChars));
  end;
  //ReadForvard:=False;
 finally
  l3Free(CurBuf);
  l3Free(CurFl);
 end;
end;
  *)
procedure TFileTbl.GetAllVerLinkOrder(aDocID: TDocID; aDocList: TL3LongintList);
var
 l_CurId: TDocId;
begin
 if aDocList = nil then
  Exit;

 // �����:    A -> B -> C -> aDocID -> D -> E -> F
 // ����������� ������� � ������ ������  (DocId, C, B, A)
 aDocList.Clear;
 l_CurId := aDocID;
 repeat
  // �������� �� ��������� (��������� ������������)
  if aDocList.IndexOf(l_CurId) > -1 then
   raise EHtErrors.CreateInt(ecWrongVerLink);
  aDocList.Insert(0, l_CurId);
  l_CurId := CheckVerLink(l_CurId);
 until l_CurId <= 0;

 // ����������� ���������� � ����� c����� (D, E, F)
 l_CurId := GetVerLink(aDocID);
 while l_CurId > 0 do
 begin
  // �������� �� ��������� (��������� ������������)
  if aDocList.IndexOf(l_CurId) > -1 then
   raise EHtErrors.CreateInt(ecWrongVerLink);
  aDocList.Add(l_CurId);
  l_CurId := GetVerLink(l_CurId);
 end;
end;

procedure TFileTbl.ExpandAllEdition(aDocSet: ISab; aOnlyWithEdition : Boolean);
var
 lSab1 : ISab;
 lSab2 : ISab;
 lCurCount : Integer;
 lSaveCount : Integer;
 lVal : Integer;
begin
 //aDocSet - ������ ������� �� FileTbl

 lSab1 := MakeSabCopy(aDocSet);
 lSab2 := MakeSabCopy(aDocSet);

 // ��������� ������ ���� c VerLink <> 0
 if aOnlyWithEdition then
 begin
  lVal := 0;
  aDocSet.SubSelect(fVerLink_fld, lVal, GREAT);
  aDocSet.AndSab(lSab1);
  //�� ���, � ���� VerLink = 0 ����� �������� ��, � ���� ������� �������� ����

  lSab1.SubtractSab(aDocSet);
  lSab1.ValuesOfKey(fId_Fld);
  lSab1.RecordsByKey(fVerLink_fld);
  lSab1.ValuesOfKey(fVerLink_fld);
  lSab1.RecordsByKey(fId_Fld);
  aDocSet.OrSab(lSab1);

  lSab1 := MakeSabCopy(aDocSet);
 end;

 lSaveCount := aDocSet.Count;

 while True do
 begin
  lSab1.ValuesOfKey(fVerLink_fld);
  lSab1.RecordsByKey(fId_Fld);
  aDocSet.OrSab(lSab1);
  lCurCount := aDocSet.Count;
  if lCurCount = lSaveCount then Break;
  lSaveCount := lCurCount;
 end;

 lSaveCount := aDocSet.Count;

 while True do
 begin
  lSab2.ValuesOfKey(fId_Fld);
  lSab2.RecordsByKey(fVerLink_fld);
  aDocSet.OrSab(lSab2);

  lCurCount := aDocSet.Count;
  if lCurCount = lSaveCount then Break;
  lSaveCount := lCurCount;
 end;
end;

function TFileTbl.AbsNumByID(const aDocID : TDocID): LongInt;
var
 RecH: RHANDLE;
begin
 Result := Ht(htRecordByUniq(nil, Handle, fId_Fld, @aDocID, @RecH));
end;

function TFileTbl.GetFullRecOnID(anID: LongInt; aNeedHold: Boolean): Longint;
begin
 Result := AbsNumByID(anID);
 if Result = 0 then
  raise EHtErrors.CreateInt(ecNotFound);
 ClearFullRec;
 GetFullRec(Result, aNeedHold);
end;

procedure TFileTbl.GetRelated(var aDocIDs: ISab;
                              out aRelatedIds: ISab;
                              aRelatedToTheseDocsOnly: Boolean);
var
 lSab : ISab;
 lSab2 : ISab;
begin
 aRelatedIds := MakeSabCopy(aDocIDs);

 aRelatedIds.TransferToPhoto(fID_Fld, Self);
  // (1) �������� DocIds

 if not aRelatedToTheseDocsOnly then
 begin
  aRelatedIds.ValuesOfKey(fRelated_fld);
  Exit; // result = (3)
 end;

 aRelatedIds.RecordsByKey;
  // (2) ������ �� �������� DocIds. (1) --> (2)

 lSab := MakeSabCopy(aRelatedIds);

 aRelatedIds.ValuesOfKey(fRelated_fld);
  // (3) �������� RelatedIds ��� �������� DocIds (� �� ������ !!!). (2) --> (3)

 lSab2 := MakeSabCopy(aRelatedIds);
 lSab2.RecordsByKey;
  // (4) ������ �� RelatedIds. (3) --> (4)

 lSab2.XorSab(lSab);
  // (5) ������ � RelatedIds, ������� ������������ �� ������ � ������� �� �������� DocIds. (5) = (4) - (2)

 lSab2.ValuesOfKey(fRelated_fld);
 // (6) �������� RelatedIds ������� ������������ �� ������ � ������� �� �������� DocIds. (5) --> (6)

 aRelatedIds.XorSab(lSab2);
  // (7) ��� RelatedIds, ����� ����� (�.�. ������������� �� ������ � ������� �� �������� DocIds). result = (3) - (6)
end;

(*procedure TFileTbl.GetRelated(var aDocIDs: Sab;
                              out aRelatedIds: Sab;
                              aRelatedToTheseDocsOnly: Boolean);
var
 l_RecsByDocIds: Sab;
 l_RecsByRelatedIds: Sab;
 l_RecsWithCommonRelatedIds: Sab;
 l_AllRelatedIds: Sab;
 l_CommonRelatedIds: Sab;
begin
 RefreshSrchList;
 htTransferToPhoto(aDocIDs, fSrchList, fID_Fld);
 Ht(aDocIDs.nRetCode);
  // (1) �������� DocIds
 htRecordsByKey(l_RecsByDocIds, aDocIDs);
 Ht(l_RecsByDocIds.nRetCode);
  // (2) ������ �� �������� DocIds. (1) --> (2)
 try
  htValuesOfKey(l_AllRelatedIds, fRelated_fld, l_RecsByDocIds);
  Ht(l_AllRelatedIds.nRetCode);
    // (3) �������� RelatedIds ��� �������� DocIds (� �� ������ !!!). (2) --> (3)
  try
   if not aRelatedToTheseDocsOnly then
    Ht(htCopyResults(aRelatedIds, l_AllRelatedIds)) // (3) --> result
   else
   begin
    htRecordsByKey(l_RecsByRelatedIds, l_AllRelatedIds);
    Ht(l_RecsByRelatedIds.nRetCode);
    // (4) ������ �� RelatedIds. (3) --> (4)
    try
     htXorResults(l_RecsWithCommonRelatedIds, l_RecsByRelatedIds, l_RecsByDocIds);
     Ht(l_RecsWithCommonRelatedIds.nRetCode);
      // (5) ������ � RelatedIds, ������� ������������ �� ������ � ������� �� �������� DocIds. (5) = (4) - (2)
     try
      htValuesOfKey(l_CommonRelatedIds, fRelated_fld, l_RecsWithCommonRelatedIds);
      Ht(l_CommonRelatedIds.nRetCode);
       // (6) �������� RelatedIds ������� ������������ �� ������ � ������� �� �������� DocIds. (5) --> (6)
      try
       htXorResults(aRelatedIds, l_AllRelatedIds, l_CommonRelatedIds);
       Ht(aRelatedIds.nRetCode);
        // (7) ��� RelatedIds, ����� ����� (�.�. ������������� �� ������ � ������� �� �������� DocIds). result = (3) - (6)
      finally
       htClearResults(l_CommonRelatedIds);
      end;
     finally
      htClearResults(l_RecsWithCommonRelatedIds);
     end;
    finally
     htClearResults(l_RecsByRelatedIds);
    end;
   end; // if-else
  finally
   htClearResults(l_AllRelatedIds);
  end;
 finally
  htClearResults(l_RecsByDocIds);
 end;
end;*)

function TDocumentData.GetRespondentsList: TDocumentSabList;
begin
 if fRespondentsList = nil then
  fRespondentsList := TDocumentSabList.CreateEmpty(Family);
 Result := fRespondentsList;
end;

function TDocumentSabList.GetDocs: ISab;
var
 l_SabIsOpen: Boolean;
 lSab : Sab;
begin
 Result := Nil;
 if (fCurSab = nil) or fCurSab.IsEmpty then Exit;

 Result := MakeSabCopy(fCurSab);
 Result.ValuesOfKey(fId_Fld);
end;

function TDocumentServer.CheckDocEx(aDocID : TDocID): Boolean;
var
 l_TmpNum : LongInt;
begin
 Result:=False;
 CheckFamilyNum;
 fFileTbl.RefreshSrchList;
 Result := fFileTbl.CheckDoc(aDocID, l_TmpNum);
 if Result then
  // � ������� FILE ���� ������, �� ��� ������ �� ������, ���� ��� ��������� ����
  // ����� ������, ��� �������� ��� ������ � ���������� ������� ��� � �����������
  Result := LinkServer(CurrentFamily).LogBook.IsDocHadActions(aDocID, [acNew, acWasImported]);
end;

procedure TDocumentServer.CheckFamilyNum;
begin
 if (fFamily = 0) then
  raise EHtErrors.CreateInt(ecNotAssigned);
end;


procedure TDocumentServer.CheckDocPriority(NullOnly : Boolean;aProgress : Tl3ProgressProc);

 function lCheckPriority(gRecNo : LongInt;fpRecord : Pointer) : MFUNC_RET;
 var
  TmpID    : LongInt;
  TmpPrior : Word;
 begin
  try
   FileTbl.fFullRecord:=PAnsiChar(fpRecord);
   FileTbl.GetFromFullRec(fId_Fld,TmpID);
   TmpPrior:=LinkServer(fFamily).GetPriority(TmpID);
   FileTbl.PutToFullRec(fPriority_fld,TmpPrior);
   Inc(fCurProgress);
   if Assigned(fProgressProc) and (fCurProgress mod fCurProgressDelta = 0) then
    fProgressProc(piCurrent,fCurProgress,'');
   Result := MFUNC_SUCCESS;
  except
   Result := MFUNC_ABORT;
  end;
 end;

const
 MaxCDPTime = 3600; // 1 ���
var
 TmpFullRec : PAnsiChar;
 TmpSab     : Sab;
 lTransID   : HT_Const.TRID;
 lHTStub    : Pointer;
begin
 if Assigned(aProgress) then
  fProgressProc:=aProgress;
 TmpFullRec:=FileTbl.fFullRecord;
 FileTbl.RefreshSrchList;
 if NullOnly then
  htSearch(@FileTbl.fSrchList,TmpSab,FileTbl.Handle,fPriority_fld,EQUAL,@Zero,nil)
 else
  TmpSab:=FileTbl.fSrchList;
 try
  fCurProgress:=0;
  fCurProgressDelta:=TmpSab.gFoundCnt div 400;
  if fCurProgressDelta = 0 then fCurProgressDelta := 1;
  if Assigned(fProgressProc) then
   fProgressProc(piStart,TmpSab.gFoundCnt,'������ ����������� ���� ����������');
  Ht(htHoldResults(TmpSab));
  try
   if GlobalHTServer.StartTransaction([FileTbl], lTransID, MaxCDPTime) then
    try
     lHTStub := HTStub3(@lCheckPriority);
     try
      FileTbl.ModifyRecs(TmpSab, lHTStub, True {aFastMode});
     finally
      HTStubFree(lHTStub);
     end;
     GlobalHTServer.CommitTransaction(lTransID);
    except
     GlobalHTServer.RollBackTransaction(lTransID);
     raise;
    end;
  finally
   htReleaseResults(TmpSab);
   FileTbl.fFullRecord:=TmpFullRec;
  end;
 finally
  if NullOnly then
   htClearResults(TmpSab);
  if Assigned(aProgress) then
   begin
    fProgressProc(piEnd,0,'');
    fProgressProc:=nil;
   end;
 end;
end;

procedure TDocumentData.CheckFamilyNum;
begin
 if (fFamily = 0) then
  raise EHtErrors.CreateInt(ecNotAssigned);
end;

procedure TDocumentSabList.CheckFamilyNum;
begin
 if (fFamily = 0) then
  raise EHtErrors.CreateInt(ecNotAssigned);
end;

function TDocumentSabList.Count: Integer;
begin
 if fCurSab = nil then
  Result := 0
 else
  Result := fCurSab.Count;
end;

(*procedure TDocumentSabList.SetDocIds(const aDocIds: Tl3LongintList);
var
 l_Ids: Sab;
 l_ListIndex: Longint;
 l_FillBufferProc: TFillBufferProc;

 function fn_FillBuffer(aBuffer: Pointer; aBufSize: Longint): Longint;
 var
  l_WrittenAmount: Longint;
 begin
  l_WrittenAmount := 0;
  while (l_ListIndex < aDocIds.Count)
    and (l_WrittenAmount < aBufSize div SizeOf(TDocId)) do
  begin
   PDocId(PAnsiChar(aBuffer) + l_WrittenAmount * SizeOf(TDocId))^ := aDocIds.Items[l_ListIndex];
   Inc(l_ListIndex);
   Inc(l_WrittenAmount);
  end;

  Result := l_WrittenAmount * SizeOf(TDocId);
 end;

begin
 l_FillBufferProc := L2FillBufferProc(@fn_FillBuffer);
 try
  l_ListIndex := 0;
  l_Ids := BuildSab(l_FillBufferProc, fFileTbl, fId_Fld);
  try
   SetValueSab(l_Ids);
  finally
   htClearResults(l_Ids);
  end;
 finally
  FreeFillBufferProc(l_FillBufferProc);
 end;
end;

procedure TDocumentSabList.GetDocIds(out aDocIds: Sab);
var
 l_SabIsOpen: Boolean;
 lSab : Sab;
begin
 if (fCurSab = nil) or fCurSab.IsEmpty then Exit;

 with fCurSab do
 begin
  l_SabIsOpen := IsOpened;
  try
   if l_SabIsOpen then
    CloseSab;

   lSab := fCurSab.HTSab;
   htValuesOfKey(aDocIds, fId_Fld, lSab);
   Ht(aDocIds.nRetCode);
  finally
   if l_SabIsOpen then
    OpenSab;
  end;
 end;
end;
*)

function DocumentServer(aFamily : TFamilyID = High(TFamilyID)) : TDocumentServer;
begin
 if aFamily <> High(TFamilyID) then
  cDocumentServer.Family := aFamily;
 Result := cDocumentServer;
end;

function IsValidDocID(aDocID : TDocID) : boolean;
begin
 Result := (aDocID <> cUndefDocID) and (aDocID > 0);
end;

function GetDocName(aDocID : TDocID; aIsExternalID : boolean = false) : String;
begin
 if aIsExternalID then
  aDocID := LinkServer(CurrentFamily).Renum.ConvertToRealNumber(aDocID);

 with DocumentServer(CurrentFamily).FileTbl do
 begin
  GetFullRecOnID(aDocID, False);
  GetFromFullRec(fFName_Fld, Result);
 end;
end;

function GetMinPublDate(aDocID : TDocID; aIsExternalID : boolean = false) : TstDate;
var
 lSab : ISab;
 lType  : Byte;
begin
 if aIsExternalID then
  aDocID := LinkServer(CurrentFamily).Renum.ConvertToRealNumber(aDocID);

 lSab := MakeSab(LinkServer(CurrentFamily)[atDateNums].Table);
 lSab.Select(lnkDocIDFld, aDocID);
 lSab.ValuesOfKey(lnkDictIDFld);
 lSab.RecordsByKey(dtIDFld, MakePhoto(DictServer(CurrentFamily).DictTbl[dlDateNums]));
 lType := Ord(dnPublish);
 lSab.SubSelect(dnTypFld, lType);
 Result := lSab.GetMinValue(dnDateFld);
end;

function GetFreeDocID(aFamily : TFamilyID) : TDocID;
begin
 Result := DocumentServer(aFamily).FileTbl.GetFreeNum;
end;
end.



