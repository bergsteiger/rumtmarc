unit SewerPipe;


{ $Id: SewerPipe.pas,v 1.159 2013/07/18 12:03:41 voba Exp $ }

// $Log: SewerPipe.pas,v $
// Revision 1.159  2013/07/18 12:03:41  voba
// - bug fix. ������ � ��������� ���������� ���������� ��� ������� 2
//
// Revision 1.158  2013/07/18 07:29:10  voba
// - bug fix. ������ � ��������� ���������� ���������� ��� �������
//
// Revision 1.157  2013/04/19 13:10:48  lulin
// - ���������.
//
// Revision 1.156  2013/04/11 16:46:52  lulin
// - ���������� ��� XE3.
//
// Revision 1.155  2013/03/22 04:38:49  fireton
// - �� ��������� ������������ ��� ���� ����������
//
// Revision 1.154  2013/02/07 13:18:49  narry
// ���������� (������ ��������)
//
// Revision 1.153  2013/02/05 13:36:14  narry
// ����������
//
// Revision 1.152  2013/02/05 12:11:33  narry
// ������� ����������� �������� EVD ��� KeyWords (426675759)
//
// Revision 1.151  2012/12/10 10:06:53  narry
// ������ ������
//
// Revision 1.150  2012/10/26 07:27:24  narry
// ������ ����� ������ ����� (406126937)
//
// Revision 1.149  2012/10/19 11:15:38  narry
// ������� ������ ��� �������� (404947393)
//
// Revision 1.148  2012/10/18 07:01:13  narry
// �� ��������� ������ ��������� �������
//
// Revision 1.147  2012/10/02 08:09:16  narry
// ������ �������� �� ISab ������ SAB
//
// Revision 1.146  2012/09/10 08:34:57  narry
// ��������� ������� ������ � ���
//
// Revision 1.145  2012/09/03 09:10:25  narry
// ������ � ����������� �� ��� ���������� ����������
//
// Revision 1.144  2012/07/10 10:02:52  narry
// ����� � ����������� �������� (375424204)
//
// Revision 1.143  2012/07/02 08:05:44  narry
// ����������
//
// Revision 1.142  2012/06/28 13:09:28  narry
// ����� � ��� ���������� � ������ ���������� (�� ����� �������� ������� ��� �� ����� ��������)
//
// Revision 1.141  2012/05/12 09:32:57  narry
// ����������� ����������� ���������� ������� ��� ��������
//
// Revision 1.140  2012/04/11 12:34:59  narry
// ����� � ��� ������� �������
//
// Revision 1.139  2012/03/29 07:17:48  narry
// ������������� ������ ������� (352453562)
//
// Revision 1.138  2012/01/30 09:11:24  narry
// - �� ����������� Progressor
//
// Revision 1.137  2011/10/13 08:43:33  narry
// ������������ ���������
//
// Revision 1.136  2011/10/05 11:04:18  voba
// - k : 281525254 ������ � ��������
//
// Revision 1.135  2011/09/16 12:57:41  narry
// - ����������
//
// Revision 1.134  2011/09/16 08:42:28  narry
// - ����������
//
// Revision 1.133  2011/09/16 08:12:49  narry
// - ����������
//
// Revision 1.132  2011/09/07 13:01:45  narry
// ����������� ����������
//
// Revision 1.131  2011/07/19 09:06:01  narry
// �� ������������� ��� ����� (274825533)
//
// Revision 1.130  2011/07/06 11:29:17  narry
// ��������� ��������� ���������� ������ ��������
//
// Revision 1.129  2011/06/14 13:18:43  narry
// ����������� ����������� ���������� (268338975)
//
// Revision 1.128  2011/06/10 12:49:16  voba
// - DocumentServer ������ �������� function DocumentServer(aFamily : TFamilyID), ��� �� �������� Family �� �����������
//
// Revision 1.127  2011/04/11 10:25:05  narry
// �������� ��� ��� (259885290)
//
// Revision 1.126  2011/02/14 13:49:13  narry
// K223609035. ������ ���������������� ���������
//
// Revision 1.125  2011/01/28 12:25:18  narry
// K251345165.������ �������������� ��������� � ���������� � ��������
//
// Revision 1.124  2011/01/11 07:38:57  narry
// 249338187: �������� � ������� ��������
//
// Revision 1.123  2010/09/24 12:11:01  voba
// - k : 235046326
//
// Revision 1.122  2010/07/12 08:48:27  narry
// - �204113447
//
// Revision 1.121  2010/07/09 11:51:17  narry
// - �172985568
//
// Revision 1.120  2010/04/20 08:51:23  narry
// - ������� ���������� �������
//
// Revision 1.119  2010/03/10 13:57:28  narry
// - �� ����������
//
// Revision 1.118  2010/01/26 13:06:36  narry
// - �� ������������ ������ �������
//
// Revision 1.117  2009/12/02 08:31:35  fireton
// - �������������� �������� ����������
//
// Revision 1.116  2009/11/16 10:11:41  narry
// - ����������
//
// Revision 1.115  2009/11/10 09:12:35  narry
// - ����������
//
// Revision 1.114  2009/09/08 09:03:51  narry
// - ������������� ����������
//
// Revision 1.113  2009/07/22 11:27:29  narry
// - ��������� ������� � DictServer
//
// Revision 1.112  2009/07/20 12:39:10  voba
// - ������� renum � ��������
//
// Revision 1.111  2009/05/27 12:39:26  narry
// - ���������� ������ ����������
//
// Revision 1.110  2009/03/16 16:19:17  narry
// - �������������� ������ ���������
//
// Revision 1.109  2009/03/04 16:26:01  lulin
// - <K>: 137470629. Bug fix: �� ��������� ����������.
//
// Revision 1.108  2009/02/05 10:26:24  narry
// - ����������� ��������� ��������� ����� ����
//
// Revision 1.107  2009/01/29 08:41:23  fireton
// - bugfix: � ��������� ����������� ������ �������, � �� ������ ��������
//
// Revision 1.106  2009/01/26 08:06:19  fireton
// - ������� � ������ b_archi_NewSrch2 (����� ��-������)
//
// Revision 1.105  2009/01/14 14:06:55  narry
// - ������
//
// Revision 1.104.2.1  2008/12/26 15:22:06  fireton
// - ��������� ����������� �� ������ �� DT_Srch
//
// Revision 1.104  2008/10/23 10:56:07  fireton
// - ����������� �� ������ ���������� � objtopic'��
//
// Revision 1.103  2008/09/25 10:23:29  fireton
// - bugfix: �� ����������� ������
//
// Revision 1.102  2008/09/23 12:17:50  fireton
// - ������/������� ������ ��������� ����
//
// Revision 1.101  2008/06/11 09:47:47  narry
// - ���������� ���������
//
// Revision 1.100  2008/05/13 14:15:14  narry
// - ������� �������� ����������
//
// Revision 1.99  2008/05/08 14:04:22  fireton
// - ������� �������� � ������� �� �����
//
// Revision 1.98  2008/04/22 12:43:58  voba
// - add ��������� ������� ������
//
// Revision 1.97  2008/04/22 08:59:40  narry
// - ������ 0 � ������� ������ �� ID ���������
//
// Revision 1.96  2008/03/20 09:48:33  lulin
// - cleanup.
//
// Revision 1.95  2008/02/12 13:23:14  voba
// - ������� ��� ������� ������� ������� ��� ����������
//
// Revision 1.94  2008/02/07 14:44:39  lulin
// - ����� _Tl3LongintList �������� � ����������� ������.
//
// Revision 1.93  2007/10/09 08:54:13  voba
// - merge with b_archi_export_refact2
//
// Revision 1.92.6.1  2007/09/14 15:52:58  voba
// no message
//
// Revision 1.92  2007/08/30 08:34:39  narry
// - ������������� ����������
//
// Revision 1.91.2.1  2007/07/26 12:10:03  voba
// - refact. �������  ImportType, ��� ����� �� ������ ietMassive �������������
//
// Revision 1.91  2007/07/24 12:32:35  narry
// - ����������� ������� ���������
//
// Revision 1.90  2007/06/13 11:24:39  narry
// - ������ �����������
//
// Revision 1.89  2007/04/02 10:39:43  voba
// - change Sab to ISab
//
// Revision 1.88.6.1  2007/03/29 09:05:41  voba
// no message
//
// Revision 1.88  2006/12/07 11:22:17  narry
// - ������� ������ ��������� �� �������
//
// Revision 1.87  2006/10/04 08:45:14  voba
// - remove tdSingle
//
// Revision 1.86  2006/02/14 08:40:23  voba
// - rename
//  Tm3DocumentStream   -> Tm3DocPartSelector
//  Tm3DocumentStreams  -> Tm3DocPartSet
//  m3_defDocStream     -> m3_defDocPart
//  m3_AllDocStreams    -> m3_AllDocParts
//
// Revision 1.85  2006/02/07 16:32:04  voba
// - new beh. ��������������� Im3DB �� ��������� ����
//
// Revision 1.84  2006/02/06 14:56:16  narry
// - ������ ����
//
// Revision 1.83  2005/12/01 11:47:44  narry
// - ����������
//
// Revision 1.82  2005/11/25 13:33:25  voba
// no message
//
// Revision 1.81  2005/11/09 16:22:21  narry
// - �����: ����������� �������� ������� ����������� �������
// - �����������: ������� ����� ��� �������� �������� ����
//
// Revision 1.80  2005/11/02 16:34:14  narry
// - ��������� ���������
//
// Revision 1.79  2005/10/18 09:06:50  lulin
// - ����������, �� ��� �� ��������������� � ����� � ��������� �������.
//
// Revision 1.78  2005/07/26 10:46:19  narry
// - update: ���������� ���������������� �������� - ������ ��������� ���������
//
// Revision 1.77  2005/05/24 08:39:01  lulin
// - bug fix: �� ���������������.
//
// Revision 1.76  2005/04/28 13:01:31  narry
// - update: ������ ������� ���������
//
// Revision 1.75  2005/04/19 15:41:47  lulin
// - ��������� �� "����������" ProcessMessages.
//
// Revision 1.74  2005/04/12 10:18:55  narry
// - update: ������ � ���������
//
// Revision 1.73  2005/03/24 18:39:27  lulin
// - remove object: Tk2AtomR.
//
// Revision 1.72  2005/03/16 08:35:26  voba
// - ����� ������������� ����� � OEM, ���� ���������� ������
//
// Revision 1.71  2005/03/11 16:40:50  narry
// - bug fix: �� ��������������� ����� �����������������
//
// Revision 1.70  2005/03/04 15:53:29  narry
// - �������: ���������� ������� �����-���
//
// Revision 1.69  2005/02/24 15:05:26  lulin
// - new behavior: "����� ��������" ���������, �� ��� � ��������� ����� ���� ��������� �������.
//
// Revision 1.68  2005/02/24 13:50:47  narry
// - �������������� ��������� ���������
//
// Revision 1.66  2005/02/21 15:22:14  narry
// - update: ���������
//
// Revision 1.65  2005/02/18 17:00:27  narry
// - update
//
// Revision 1.64  2005/02/18 14:54:00  narry
// - bug fix
//
// Revision 1.63  2005/02/18 12:16:28  narry
// - update: ��������� ���������
//
// Revision 1.62  2005/02/18 12:00:59  narry
// - update: ��������� ���������
//
// Revision 1.61  2005/02/16 17:11:17  narry
// - update: ��������� ���������
//
// Revision 1.60  2005/01/17 15:45:10  narry
// - update;
// - bug fix: ���������� ������������ csv-������ ��� ���������� � ������������ ���������� �������������
//
// Revision 1.59  2004/09/21 12:21:14  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.58  2004/09/14 15:58:10  lulin
// - ������ ������ Str_Man - ����������� ������ ���� - l3String.
//
// Revision 1.57  2004/08/27 15:13:49  voba
// - merge with B_New_Text_Base
//
// Revision 1.56.4.2  2004/08/25 16:36:27  law
// - ���������� ������������ �� ������� ������������� ������� ���������.
//
// Revision 1.56.4.1  2004/08/25 16:11:46  law
// - ���������� ������������ �� ������� ������������� ������� ���������.
//
// Revision 1.56  2004/05/14 17:27:08  law
// - remove unit: evStrGen.
//
// Revision 1.55  2004/05/14 15:17:05  law
// - remove unit: evTypesE.
//
// Revision 1.54  2004/02/18 12:11:37  narry
// - bug fix: ������������ ���������� �� �����
//
// Revision 1.53  2004/02/17 10:30:26  narry
// - update
// - cleanup
//
// Revision 1.52  2003/12/23 17:03:57  narry
// - bug fix: ����� ��� ����� �������� ���� ��������� � ������
//
// Revision 1.51  2003/09/22 15:42:50  narry
// - bug fix: AV ��� f_Progressor = nil
//
// Revision 1.50  2003/09/15 14:20:14  narry
// - update: ���������� ��������� ���������� ��������
//
// Revision 1.49  2003/08/27 08:36:11  voba
// - bug fix: ��������� ����� KW ������ �� ������ ������������������
//
// Revision 1.48  2003/07/23 10:13:13  narry
// - cleanup
// - bug fix: ��������� ������� ������ �� �������
//
// Revision 1.47  2003/07/22 12:02:03  narry
// - bug fix: �� ����������� ���������� � �������� ���������� ��������
//
// Revision 1.46  2003/07/18 14:44:29  narry
// - change: ��������� ������ ����������� ���������� � ��������� ��������� �������
//
// Revision 1.45  2003/07/16 10:36:35  narry
// - update: ������ TddDocTypeDetector ��������� � ��������� ������
//
// Revision 1.44  2003/07/10 08:15:49  narry
// - update: ����������� � �������� ������
//
// Revision 1.43.2.1  2003/07/08 15:18:28  narry
// - update: ����������� ��������� ������������ ���������� ��������� ����� ����� �����
//
// Revision 1.43  2003/06/03 11:13:42  narry
// - bug fix: ������� ������� ����� � ������ ������
// - update: ���������� ���������������� ��� ������������������
//
// Revision 1.42  2003/01/29 14:07:04  narry
// - update
//
// Revision 1.41  2003/01/27 13:21:59  narry
// - special
//
// Revision 1.40  2003/01/20 13:40:25  narry
// - new behavior: ����������� ����������� ���������� �������� ��������
//
// Revision 1.39  2003/01/17 10:23:16  narry
// - new begavior: ����������� �������� �������
//
// Revision 1.38  2002/09/19 13:09:16  narry
// - remove unit: ddHTML.
//
// Revision 1.37  2002/09/18 08:06:08  voba
// - cleanup: ������ �������� IsDefault.
//
// Revision 1.36  2002/07/30 15:59:37  narry
// - update
//
// Revision 1.35  2002/07/03 09:00:58  narry
// - update, cleanup � new behavior
//
// Revision 1.34  2002/06/11 12:15:47  narry
// - bug fix: �������� ��������� � ������� ��������� � Access violation
//
// Revision 1.33  2002/06/07 11:20:36  narry
// - update
//
// Revision 1.32.2.1  2002/06/06 15:09:23  narry
// - beta save.
//
// Revision 1.32  2002/04/17 09:21:21  narry
// - new behavor: ���������� ���������, ���������� � ���� ���������
//
// Revision 1.31  2001/12/27 13:46:12  narry
// - update: ���������� ������� �� AccGroups
//
// Revision 1.30  2001/11/22 13:58:44  narry
// - update : ������ ���������� ����� �������
//
// Revision 1.29  2001/10/25 13:12:35  narry
// - update: ��������� ��������� ������� ������� ���������
//
// Revision 1.28  2001/10/24 15:07:00  narry
// - new behavior: ���������� ����� �� �����, ����� ��������-������
//
// Revision 1.27  2001/09/04 13:58:59  voba
// - rename unit: MyUtil -> l3FileUtils.
//
// Revision 1.26  2001/08/29 15:36:27  law
// - cleanup: ������� �������� ����������� �� Orpheus � SysTools.
//
// Revision 1.25  2001/08/23 14:28:34  voba
// no message
//
// Revision 1.24  2001/04/27 11:39:37  voba
// - bug fix: �������� ��������� ������ �� ����� ������ ������.
//
// Revision 1.23  2001/04/25 14:48:17  voba
// - new behavior: ������� �������� ������ ������ ������� �����������.
//
// Revision 1.22  2001/03/16 14:59:31  voba
// fix Everest function name/format
//
// Revision 1.21  2001/02/28 10:12:39  law
// - ��������� Write � WriteEx ���������� � ���� - Write.
//
// Revision 1.20  2000/12/27 13:03:00  law
// - ��������� ��������� Log.
//

{.$DEFINE OnlyText}
{.$Undef ddLog}
{$I ProjectDefine.inc}
interface

Uses
  Classes,
  l3Types, l3Filer, l3Date, l3Base, m3DBInterfaces, l3LongintList,
  evExportGenerator, evEvdRd, evTagsListFilter,
  k2Types, k2TagGen, k2ForkGenerator,
  dt_EGen,
  dt_Types, dt_Const, dt_AttrSchema,
  dt_EFltr,
  ddFixFilter, ddProgressObj, ddDocTypeDetector, ddNameFilter, ddParaEliminator,
  m3DB,
  ddExtObjectSupport,
  evdHyperlinkCorrector, evEmptyTableEliminator, ddPictureFilter, ddTypes, dt_Sab;

type
   TddObjTopicTextDeleterFilter = class(TddChildBiteOffFilter)
   protected
    procedure DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant); override;
   public
    constructor Create;
   end;

  TSewerPipe = class(Tl3Base)
  private
   fAttributes: TdtAttributeSet;
   f_Reader: TevEvdReader;
   f_Filer: Tl3CustomFiler;
   f_DemonDocGen: TDocExportGenerator;
   f_ExpGen: TevExportGenerator;
   f_Progressor: TddProgressObject;

   f_Writer: Tk2TagGenerator;
   f_TotalProgressProc: Tl3ProgressProc;

   f_Diapason: TDiapasonRec;

    f_Aborted: Boolean;

    f_Family: Longint;
    f_TopicNo: Longint;  { ����� ������... �� ������� ��� ����������? ����� �������}
    f_Running: Boolean;

    f_ExportDocument: Boolean;
    f_ExportKW: Boolean;
    f_ExportEmpty: Boolean;
    f_KWFileName: AnsiString;

    f_SeparateFiles: Boolean;
    f_ReferenceFileName: ShortString;
    f_ReferencesDir: ShortString;

    f_TotalSizeDone: ShortString;
    f_Dicts: TdtAttributeSet;
    f_ExportDirectory: AnsiString;
    f_OnNewDocumentEvent : TNewDocumentEvent;
    f_MultiUser: Boolean;
    f_Convert2OEM: Boolean;
    f_InternalFormat: Boolean;
    f_FileSize: Longint;
    f_OnUnnecessaryData: TExportUnnecessaryData;
   f_Filter: TExportFilter;
   f_FixFilter: TddWrongTagFixFilter;
   f_DocTypeDetector: TddDocTypeDetector;
   FExportAnnotation: Boolean;
   FOnCalculateDone: TNotifyEvent;
   FOnlyStructure: Boolean;
   FSpecialAnnotation: Boolean;
   FSpecialFiler: Tl3CustomFiler;
   f_AllTopicSize: Int64;
   f_CurDone: Int64;
   f_FilerType: Byte;
   f_CurSize: Int64;
   f_DocSab: ISab;
   f_EmptyCount: Integer;
   f_EmptyTableElim: TevEmptytableEliminator;
   f_ExportDocTypes: TddExportDocTypes;
   f_ExportEditions: Boolean;
   f_ExportReferences: Boolean;
   f_ExtObjInserter: TddExtObjInserter;
   f_ObjTopicTextFilter: TddObjTopicTextDeleterFilter;
   f_Fork: Tk2ForkGenerator;
   f_FormulaAsPicture: Boolean;
   f_Generator: Tk2TagGenerator;
   f_HyperlinkCorrector: TevdHyperlinkCorrector;
   f_TopicsNeedDo: LongInt;
   f_TotalDone: Int64;
   f_NameWriter: TddNameWriter;
   f_NullFilter: TddNullDocFilter;
   f_OnError: TddErrorEvent;
   f_PicFilter: TddPictureFilter;
   f_StartProgress: Boolean;
   f_UseDocSize: Boolean;
   f_StructureGenerator: TddParaEliminator;
   f_TopicsList: Tl3LongintList;
   procedure CalcWorkValue(What: Tm3DocPartSet);
   procedure CheckProgressor;
   procedure DoExportDictionaries;
   procedure DoExportKeywords;
   procedure ExpandEditions;
    function GetTotalDone: Int64;
   function OnlyReferences: Boolean;
   function pm_GetTopicDone: Longint;
   procedure pm_SetProgressor(const Value: TddProgressObject);
    procedure pm_SetTotalProgressProc(const Value: Tl3ProgressProc);
   procedure StartProgress;
   procedure StopProgress;
  protected
  protected
   procedure InnerTopicUpdate(aState: Byte; aValue: Long; const aMsg: AnsiString);
   procedure SetAborted(Value: Boolean);
   procedure SetFamily(aFamily: Longint);
   procedure CreatePipeBends;
   procedure DestroyPipeBends;
   procedure SetDiapason(Value: TDiapasonRec);
   procedure TopicSwitch(Sender: TObject; const Handle: Tm3DBStreamIndex; Filer: Tl3CustomFiler);
   procedure SetBreakFlag(Value: Boolean);
   function GetBreakFlag: Boolean;
   procedure StartDocument(Sender: TObject; TopicNo: Longint; FilerType: Byte;
       MainGroup: ShortString);
   procedure TopicInit;
   procedure Cleanup; override;
   procedure Error(const aDescription: AnsiString; aCategory: Integer = 0);
   property ExportFilter: TExportFilter read f_Filter write f_Filter;
  public
   constructor Create(aOwner: TObject); override;
   function Execute(aAttributes: TdtAttributeSet = []): Boolean; virtual;
   procedure WriteSpecialName;
  public
   property Aborted: Boolean
    read f_Aborted
    write SetAborted;
   property AllTopicsSize: Int64
    read f_AllTopicSize;
   property Progressor: TddProgressObject read f_Progressor write pm_SetProgressor;
   property ExportDocTypes: TddExportDocTypes read f_ExportDocTypes write
       f_ExportDocTypes;

   property TopicDone: Longint read pm_GetTopicDone;
   property TopicsNeedDo: Longint
    read f_TopicsNeedDo;

   property Convert2OEM: Boolean
      read f_Convert2OEM write f_Convert2OEM;

   property InternalFormat: Boolean
      read f_InternalFormat write f_InternalFormat;

    property Family: Longint read f_Family write f_Family;

    property Diapason: TDiapasonRec
      read f_Diapason write SetDiapason;

    property ExportKW: Boolean
      read f_ExportKW write f_ExportKW;

    property KWFileName: AnsiString
      read f_KWFileName write f_KWFileName;

    property Dicts: TdtAttributeSet
      read f_Dicts write f_Dicts;

    property ExportEmpty: Boolean
      read f_ExportEmpty write f_ExportEmpty;

    property ExportDirectory: AnsiString
      read f_ExportDirectory write f_ExportDirectory;

    property ExportDocument: Boolean
      read f_ExportDocument write f_ExportDocument;

    property ReferencesDir: ShortString
      read f_ReferencesDir write f_ReferencesDir;

    property SeparateFiles: Boolean
      read f_SeparateFiles write f_SeparateFiles;

    property BreakFlag: Boolean
      read GetBreakFlag write SetBreakFlag;
   property DocSab: ISab read f_DocSab write f_DocSab;
   property EmptyCount: Integer read f_EmptyCount;
   property ExportAnnotation: Boolean read FExportAnnotation write
       FExportAnnotation;
   property ExportEditions: Boolean read f_ExportEditions write f_ExportEditions;

    property TotalProgressProc: Tl3ProgressProc read f_TotalProgressProc write
        pm_SetTotalProgressProc;
    property TotalDone: Int64
     read GetTotalDone;
    property TotalSizeDone: ShortString
      read f_TotalSizeDone write f_TotalSizeDone;
    property MultiUser: Boolean
      read f_Multiuser write f_MultiUser;
    property FileSize: Longint
      read f_FileSize write f_FileSize;
   property FormulaAsPicture: Boolean read f_FormulaAsPicture write
       f_FormulaAsPicture;
   property OnlyStructure: Boolean read FOnlyStructure write FOnlyStructure;
   property SpecialAnnotation: Boolean read FSpecialAnnotation write
       FSpecialAnnotation;
   property SpecialFiler: Tl3CustomFiler read FSpecialFiler write FSpecialFiler;
   property OnError: TddErrorEvent read f_OnError write f_OnError;
  published
   property OnCalculateDone: TNotifyEvent
    read FOnCalculateDone
    write FOnCalculateDone;
    property OnNewDocument: TNewDocumentEvent
     read f_OnNewDocumentEvent
     write f_OnNewDocumentEvent;
    property OnUnnecessaryData: TExportUnnecessaryData
     read f_OnUnnecessaryData
     write f_OnUnnecessaryData;

   property ExportReferences: Boolean read f_ExportReferences write f_ExportReferences;
   property TopicsList: Tl3LongintList read f_TopicsList;
    property Writer: Tk2TagGenerator
      read f_Writer write f_Writer;
  end;



implementation

uses
  SysUtils, Forms,
  ddUtils,
  dt_Dict,//dt_ServerService,
  dt_Serv,
  dt_Doc,
  dt_LinkServ,
  ht_Const, ht_dll,
  m3StorageInterfaces,
  m2COMLib,
  l3FileUtils, k2Tags, k2Base, l3Prg,

  DictsSup,
  afwFacade,

  k2StackGenerator, ddHeaderFilter, evdBufferedFilter, l3languages,
  evNestedDocumentEliminator,
  evdAllDocumentSubsEliminator,

  Document_Const,
  AnnoTopic_Const,
  TextPara_Const
  , l3DatLst, l3LongintListPrim,

  evdChildrenCountEliminator
  , Math, StrUtils, ddFormula2PictureFilter;

const
 cEmptyDocSize = 150;


constructor TSewerPipe.Create(aOwner: TObject);
begin
 inherited;
 f_Aborted:= False;
 f_Convert2OEM:= False;
 f_Family:= CurrentFamily;
 f_ExportEditions:= False;
 f_ExportDocTypes:= dtAll;
 //CreatePipeBends;
 f_TopicsList := Tl3LongintList.MakeSorted(l3_dupAccept);
end;

procedure TSewerPipe.CalcWorkValue(What: Tm3DocPartSet);
var
 i, l_RelCount, l_AnnoCount: Integer;
 l_Storage: Im3DB;
 l_Stream : IStream;
 l_Doc : Im3DBDocument;
 l_Size: Integer;
 l_Rel: Boolean;
 l_Msg: AnsiString;
 l_DocCount : Integer;

const
 c_PartNames: array[Tm3DocPartSelector] of String = (
   '���������', '���������', '���������� � ���������', '�������'
     );

var
 lRAProcStub : TdtRecAccessProc;

 function lRecAccessProc(aItemPtr : Pointer) : Boolean;
 var
  l_DocPart : Tm3DocPartSelector;
  l_ExtNumber: TDocID;
 begin
  Result := True;
  l_Doc := l_Storage.GetDocument(PDocID(aItemPtr)^);
   try
    for l_DocPart := Low(Tm3DocPartSelector) to High(Tm3DocPartSelector) do
    if l_DocPart in What then
    begin
     if (l_DocPart = m3_dsAnno) {and not DocumentServer.FileTbl.GetHasAnno(PDocID(aItemPtr)^)} then
      continue;
     try
        l_Stream := l_Doc.Open(m3_saRead, l_DocPart);
        try
         l_Size:= m2ComGetSize(l_Stream);
         if l_Size <= cEmptyDocSize then
         begin
          l_ExtNumber:= LinkServer(CurrentFamily).ReNum.GetExtDocID(l_Doc.ID);
          Error(Format('����������� ����� � %s # %-11d (%s)',
                           [c_PartNames[l_DocPart], IfThen(l_ExtNumber > 0, l_ExtNumber, l_Doc.ID), IfThen(l_ExtNumber > 0, '�������', '����������')]));
          Inc(f_EmptyCount);
         end;
         Inc(f_AllTopicSize, l_Size);
        finally
         l_Stream := nil;
        end;
         Inc(f_TopicsNeedDo);
     except
      Error(Format('������ ������ ��������� # %-11d (%d)', [LinkServer(CurrentFamily).ReNum.GetExtDocID(l_Doc.ID), l_Doc.ID]));
     end;
    end; // l_DocPart in What
  finally
   l_Doc := nil;
  end;
  if f_Progressor <> nil then
   f_Progressor.ProcessUpdate(1)
  else
   afw.ProcessMessages;
 end;

var
 l_TmpSab: ISab;
 l_Type: Byte;
begin
 f_AllTopicSize := 0;
 f_EmptyCount:= 0;
 f_TopicsNeedDo:= 0;
 l_AnnoCount:= 0;
 l_DocCount:= f_DemonDocGen.DocCount;
 if l_DocCount > 0 then
 begin
  f_UseDocSize := l_DocCount <= 10;
  l_RelCount:= f_DemonDocGen.RelatedCount(l_AnnoCount);
  if f_UseDocSize then
  begin
   l_Storage:= Tm3DB.Make(GlobalHtServer.TextBase[CurrentFamily]);
   try
    if f_Progressor <> nil then
     f_Progressor.Start(l_DocCount, '������� ������ ����������');
    {$IFDEF ddLog}
    l3System.Msg2Log('������� ������ %d ����������', [l_DocCount]);
    {$ENDIF}
    l_Storage.Start(m3_saRead);
    try
     lRAProcStub := L2RecAccessProc(@lRecAccessProc);
     try
      l_TmpSab:= MakeSabCopy(f_DemonDocGen.DocIDList);
      try
       l_TmpSab.RecordsByKey;
       l_Type:= Ord(dtObject);
       l_TmpSab.SubSelect(fType_Fld, l_Type, NOT_EQUAL);
       l_TmpSab.ValuesOfKey(fID_Fld);
       l_TmpSab.IterateRecords(lRAProcStub);
      finally
       l_TmpSab:= nil;
      end;
     finally
      FreeRecAccessProc(lRAProcStub);
     end;
    finally
     l_Storage.Finish;
    end;
    if f_Progressor <> nil then
     f_Progressor.Stop;

   finally
    l_Storage:= nil;
   end;
  end
  else //if f_UseDocSize then
  begin
   f_TopicsNeedDo:= 0; f_AllTopicSize:= 0;
   if (m3_dsMain in What) then
   begin
    f_AllTopicSize:= l_DocCount + l_RelCount;
    f_TopicsNeedDo:= l_DocCount;
   end;
   if (m3_dsAnno in What) then
   begin
    Inc(f_AllTopicSize, l_AnnoCount);
   end
   else
    l_AnnoCount:= 0;
  end;
  {$IFDEF ddLog}
  l3System.Msg2Log('������� ��������. �������:');
  if ExportDocument then
   l3System.Msg2Log(' %d ����������', [f_TopicsNeedDo])
  else
   f_TopicsNeedDo:= 0;
  if ExportReferences then
  begin
   l3System.Msg2Log(' %d �������', [l_RelCount]);
   inc(f_TopicsNeedDo, l_RelCount);
  end;
  if ExportAnnotation then
  begin
   l3System.Msg2Log(' %d ���������', [l_AnnoCount]);
   Inc(f_TopicsNeedDo, l_AnnoCount);
  end;
  if f_EmptyCount > 0 then
   l3System.Msg2Log('���������� ������ - %d', [f_EmptyCount]);
  if f_UseDocSize then
   l3System.Msg2Log('����� �������� %s', [Bytes2Str(f_AllTopicSize)]);
  {$endif}
 end; //if l_DocCount > 0 then

 if Assigned(FOnCalculateDone) then
  FOnCalculateDone(Self);
end;

procedure TSewerPipe.CheckProgressor;
begin
 if f_Progressor = nil then
  f_Progressor:= TddProgressObject.Create();
end;

procedure TSewerPipe.Cleanup;
begin
 FreeAndNil(f_Progressor);
 FreeAndNil(f_TopicsList);
 DestroyPipeBends;
 inherited;
end;


procedure TSewerPipe.SetAborted(Value: Boolean);
begin
 f_Aborted:= Value;
 if f_DemonDocGen <> nil then
  f_DemonDocGen.BreakFlag:= Value;
end;

procedure TSewerPipe.SetDiapason(Value: TDiapasonRec);
begin
  f_Diapason:= Value;
end;

procedure TSewerPipe.CreatePipeBends;
var
 l_G :Tk2TagGenerator;
 lEliminator : TevNestedDocumentEliminator;
begin
 { �������� }
 { TODO : ���� �� ���������� �� SetTo }
 f_DemonDocGen:= TDocExportGenerator.Create(nil, Family);
 f_DemonDocGen.AnsiCodePage:= GlobalHTServer.BaseLanguage[Family].AnsiCodePage;
 f_Filter:= TExportFilter.Create(nil, Family);
 f_Filter.AnsiCodePage:= GlobalHTServer.BaseLanguage[Family].AnsiCodePage;
 DictServer(Family).AddDictChangeNotifiedObj(f_Filter);
 f_DocTypeDetector:= TddDocTypeDetector.Create(nil);
 f_DocTypeDetector.ExportTypes:= ExportDocTypes;
 f_ExpGen:= TevExportGenerator.Create(nil);
 f_ExpGen.OnInitTopic:= TopicSwitch;
 f_Reader:= TevEvdReader.Create(nil);
 f_FixFilter:= TddWrongTagFixFilter.Create(nil);
 f_FixFilter.Write2Log := False;
 f_ObjTopicTextFilter := TddObjTopicTextDeleterFilter.Create;
 f_ObjTopicTextFilter.IsActive := False;
 f_NullFilter:= TddNullDocFilter.Create(k2_idDocument);
 f_Filer := Tm3DBFiler.Create(Tm3DB.Make(GlobalHtServer.TextBase[Family]));
 f_Fork:= Tk2ForkGenerator.Create(nil);
 f_StructureGenerator := TddParaEliminator.Create(nil);
 f_ExtObjInserter := TddExtObjInserter.Create(nil);
 f_EmptyTableElim:= TevEmptytableEliminator.Create(nil);
 f_PicFilter:= TddPictureFilter.Create;
 { ���������� }
 f_Reader.Filer:= f_Filer;
 f_Reader.Generator:= f_NullFilter;
 
 l_G := f_NullFilter.Use;
 try
  // - ��� ����� ����� �����
  TevNestedDocumentEliminator.SetTo(l_G);
  TevdAllDocumentSubsEliminator.SetTo(l_G);
  TevdChildrenCountEliminator.SetTo(l_G);
  if FormulaAsPicture then
   TddFormula2PictureFilter.SetTo(l_G);
  // - ��� ���� ������ �����
  f_Reader.Generator := l_G;
 finally
  FreeAndNil(l_G);
 end;//try..finally

 f_NullFilter.Generator:= f_EmptyTableElim;
 f_EmptyTableElim.Generator:= {x f_PicFilter;
 f_PicFilter.Generator:=} f_FixFilter;
 f_FixFilter.Generator:= f_ExpGen;
 f_DemonDocGen.Generator:=  f_Fork;
 f_Fork.Generator := f_ExpGen;
 f_ExpGen.Generator:= f_ExtObjInserter;
 f_ExtObjInserter.Generator := f_Filter;
 f_Filter.Generator:= f_DocTypeDetector;


 // SetTo
// TddDocTypeDetector.SetTo(f_Generator);
// TExportFilter.SetTo

end;

procedure TSewerPipe.DestroyPipeBends;
begin
 FreeAndNil(f_PicFilter);
 FreeAndNil(f_EmptyTableElim);
 l3Free(f_ExtObjInserter);
 l3Free(f_StructureGenerator);
 l3Free(f_Fork);
 DictServer(Family).DelDictChangeNotifiedObj(f_Filter);
 l3Free(f_Filer);
 l3Free(f_FixFilter);
 l3Free(f_NullFilter);
 l3Free(f_Reader);
 l3Free(f_ExpGen);
 l3Free(f_DocTypeDetector);
 l3Free(f_Filter);
 l3Free(f_DemonDocGen);
 l3Free(f_HyperlinkCorrector);
 l3Free(f_ObjTopicTextFilter);
end;

procedure TSewerPipe.DoExportDictionaries;
var
 i : TdtAttribute;
 S : AnsiString;
begin
  if Dicts <> [] then
  try
    for i:= Low(TdtAttribute) to High(TdtAttribute) do
    begin
      if i in Dicts then
      begin
        S:= ConcatDirName(ExportDirectory, SysUtils.Format('%s.nsr',[GetAttrName(i)]));
       if f_Progressor <> nil then
       begin
        f_DemonDocGen.ExportDictionary(AttrID2DLType(i), S, f_Progressor.ProcessUpdate);
       end
       else
        f_DemonDocGen.ExportDictionary(AttrID2DLType(i), S, f_TotalProgressProc);
      end;
    end; { for i:= }
  except
   on E: Exception do
   begin
    Error('������ �������� �������');
    l3System.Exception2Log(E);
   end;
  end; { try..except };
end;

procedure TSewerPipe.DoExportKeywords;
begin
  if ExportKW and (KWFileName <> '') then
  begin
   ForceDirectories(ExportDirectory);
   if f_Progressor <> nil then
   begin
    f_DemonDocGen.ExportKeywordData(ConcatDirName(ExportDirectory, KWFileName), f_Progressor.ProcessUpdate, ExportEmpty);
   end
   else
    f_DemonDocGen.ExportKeywordData(ConcatDirName(ExportDirectory, KWFileName), f_TotalProgressProc, ExportEmpty);
   end;
end;

procedure TSewerPipe.Error(const aDescription: AnsiString; aCategory: Integer = 0);
begin
 if Assigned(f_OnError) then
  f_OnError(aDescription, aCategory)
 else
  l3System.Msg2Log(aDescription);
end;


function TSewerPipe.Execute(aAttributes: TdtAttributeSet = []): Boolean;
var
  S: AnsiString;
  I, l_DocCount : Integer;
  l_NameFilter: TevTagsListFilter;
  l_What: Tm3DocPartSet;
  l_ISab: ISab;
  l_ValueFiller: IValueSetFiller;
  l_SAB : SAB;
  l_DocID: TDocID;
begin
 f_StartProgress:= False;
  f_Aborted:= True;
  f_Running:= True;
  f_TotalDone:= 0;
  Result:= False;
  CreatePipeBends;
  try
  if aAttributes <> [] then
   ExportFilter.Attributes:= aAttributes;
  f_DocTypeDetector.OnStartDocument:= StartDocument;
  f_Filter.ExportUnnecessaryDataNotifier:= OnUnnecessaryData;
 { TODO : ����� ������������� Single � NumList }
  if Diapason.Typ = tdSingle then
  begin
   try
    l_ISab := MakeSab(DocumentServer(f_Family).FileTbl);
    if Diapason.ExternalFormat then
     l_DocID := LinkServer(f_Family).Renum.ConvertToRealNumber(Diapason.ID)
    else
     l_DocID := Diapason.ID;
    l_ValueFiller := l_ISab.MakeValueSetFiller(fID_Fld);
    try
     l_ValueFiller.AddValue(l_DocID);
    finally
     l_ValueFiller := nil;
    end;
    DocSab:= l_ISab;

    //l_Sab := l_ISab.ExtractHTSab;
   finally
    l_ISab := nil;
   end;

   //f_Diapason.Typ := tdNumList;
   //f_Diapason.List := l_SAB;
   //f_Diapason.ExternalFormat := False;
  end; // Value.Typ = tdSingle

  if ExportEditions then
   ExpandEditions;

  if (DocSab <> nil) and DocSab.IsValid then
   f_DemonDocGen.DocSab:= DocSab
  else
   f_DemonDocGen.Diapason:= Diapason;

  f_DemonDocGen.Renum:= not InternalFormat;//True;
  f_DemonDocGen.ProcessDocs := ExportDocument;
  f_DemonDocGen.ProcessRels := ExportReferences;
  f_DemonDocGen.ProcessAnnos := ExportAnnotation;
  f_DemonDocGen.SpecialAnnotation := SpecialAnnotation;
  if (ExportDocument or ExportAnnotation or ExportReferences) and (f_DemonDocGen.DocCount <> 0) then
  begin
   // ������� ������� �����������
   if SpecialAnnotation then
   begin
    l_NameFilter:= TevTagsListFilter.Create(nil);
    l_NameFilter.ExcludeTagAttrList := TevTagsListFilter.MakeAttrList(k2_idAnnoTopic, [k2_tiName]);
    f_Fork.Generator2 := l_NameFilter;
    l_NameFilter.Generator := f_ExpGen;
    f_NameWriter := TddNameWriter.Create(nil);
    f_Fork.Generator := f_NameWriter;
    f_NameWriter.Filer := SpecialFiler;
   end // SpecialAnnotation
   else
    f_Fork.Generator := f_ExpGen;
   f_Filter.OEMConvertion:= Convert2OEM;

   f_Filter.DocGenerator:= f_DemonDocGen;
   f_Filter.SpecialAnnotation := SpecialAnnotation;
 {$IFDEF OnlyText}
   f_DocTypeDetector.Generator := f_ObjTopicTextFilter;
 {$ELSE}
   f_DocTypeDetector.Generator := f_ObjTopicTextFilter;
 {$ENDIF}

   if OnlyStructure then
   begin
    f_ObjTopicTextFilter.Generator:= f_StructureGenerator;
    //f_StructureGenerator.Link(Writer); ���� �� ��������
    f_StructureGenerator.Generator:= Writer;
   end
   else
    //f_ObjTopicTextFilter.Link(Writer); ���� �� ��������
    f_ObjTopicTextFilter.Generator:= Writer;
   f_Filter.Renum:= not InternalFormat;
   //if OnlyReferences then
   // f_Filter.Attributes := [atRelHLink];
   try
    f_TopicsList.Clear;
    l_What := [];
    if ExportDocument then
     Include(l_What, m3_dsMain);
    if ExportAnnotation then
     Include(l_What, m3_dsAnno);
    CalcWorkValue(l_What);
    f_Filer.Indicator.NeedProgressProc:= True;
    f_Filer.Indicator.OnProgressProc:= InnerTopicUpdate;
    StartProgress;
    f_DemonDocGen.Execute;
   finally
    StopProgress;
    if SpecialAnnotation then
    begin
     f_Fork.Generator := f_ExpGen;
     f_Fork.Generator2 := nil;
     l3Free(l_NameFilter);
     l3Free(f_NameWriter);
    end;
   end; { execute }
  end; // ExportDocument or ExportAnnotation
  DoExportKeywords;
  DoExportDictionaries;
 finally
  DestroyPipeBends;
 end;
 f_Aborted:= False;
 f_Running:= False;
 Result:= True;
{$IFDEF ddLog}
 l3System.Msg2Log('������� ��������');
{$Endif ddLog}
end;

procedure TSewerPipe.ExpandEditions;
var
 l_Sab: ISab;
begin
 if DocSab = nil then
 begin
  DocSab:= MakeSab(DocumentServer(f_Family).FileTbl, f_Diapason.List);
  htClearResults(f_Diapason.List);
 end;
 DocSab.RecordsBykey(fID_Fld);

 DocumentServer(f_Family).FileTbl.ExpandAllEdition(DocSab, False);
 DocSab.ValuesOfKey(fID_Fld);
end;

procedure TSewerPipe.TopicInit;
begin
 if f_TopicNo > 0 then
  f_TopicsList.Add(f_TopicNo);
 {$IFDEF ddLog}
 l3System.Msg2Log('# %-9d (%d �� %d)%s',
                 [Abs(f_TopicNo), TopicDone, f_TopicsNeedDo,
                  IfThen(f_TopicNo < 0, ' - �������� �� ����', '')]);
 {$ENDIF}
end;

procedure TSewerPipe.StartDocument(Sender: TObject; TopicNo: Longint;
    FilerType: Byte; MainGroup: ShortString);
begin
 f_TopicNo:= TopicNo;
 if f_TopicNo > 0 then
 begin
   if Assigned(f_OnNewDocumentEvent) then
    f_OnNewDocumentEvent(Sender, f_TopicNo, FilerType, MainGroup);
   f_FilerType:= FilerType;
 end; // f_TopicNo > 0
 //if f_FilerType <> 1 then // ���������� �������
  TopicInit
end;

procedure TSewerPipe.TopicSwitch(Sender: TObject; const Handle: Tm3DBStreamIndex; Filer: Tl3CustomFiler);
var
  l_Type       : Long;
  l_StartLevel : Long;
begin
 try
  (f_Filer As Tm3DBFiler).PartSelector := Handle.rPart;
  f_Filer.Handle:= Handle.rID;
  l_StartLevel := f_Reader.Generator.CurrentStartLevel;
  try
   f_Reader.Execute;
  except
   on E: Exception do
   begin
    l3System.Exception2Log(E);
    with f_Reader.Generator do
     while (CurrentStartLevel > l_StartLevel) do
      Finish(true);
   end;//on E: Exception
  end;//try..except
 except
  on E: Exception do
   l3System.Exception2Log(E);
 end;//try..except
end;

procedure TSewerPipe.SetFamily(aFamily: Longint);
begin
 if Family <> aFamily then
 begin
  f_Family:= aFamily;
  //DestroyPipeBends;
  //CreatePipeBends;
 end;
end;

procedure TSewerPipe.SetBreakFlag(Value: Boolean);
begin
  f_DemonDocGen.BreakFlag:= Value;
end;

function TSewerPipe.GetBreakFlag: Boolean;
begin
  Result:= f_DemonDocGen.BreakFlag;
end;



procedure TSewerPipe.InnerTopicUpdate(aState: Byte; aValue: Long; const aMsg:
    AnsiString);
var
 l_TempValue: Int64;
begin
 if not f_StartProgress then
  StartProgress;
{ ���� �������� �� ��������� ������ �����.
  ���� ������������ �������� ����� (f_UseDocSize = True),
  ����� ��������� ����� �������� ��� State = 1 �� �������� aValue,
  ����� ������ ��� State = 2 �� 1 }
 if (aState = 0) and not f_UseDocSize then
 begin
  // ��������� ������ ���������
  if aValue <= cEmptyDocSize then
  begin
   Error(Format('����������� ����� # %-11d', [f_TopicNo]));
   Inc(f_EmptyCount);
  end;
 end; // (aState = 0) and not f_UseDocSize

 if f_Progressor <> nil then
 begin
  f_Progressor.ProcessUpdate(aState, aValue, aMsg);
  if aState = 2 then
   f_TotalDone:= f_Progressor.TotalCur;
 end
 else
  case aState of
   0:
    begin
      f_CurSize:= aValue;
      f_CurDone:= 0;
      if f_TotalDone = 0 then
       if Assigned(f_TotalProgressProc) then    // �����-�� ���� �� ��� ������...
        f_TotalProgressProc(aState, f_TopicsNeedDo, '������ ��������');
    end;
   1:
    begin
      f_CurDone:= aValue;
      if Assigned(f_TotalProgressProc) then
      begin
       l_TempValue := aValue+f_TotalDone;
       f_TotalProgressProc(aState, aValue+f_TotalDone, '�������...');
      end;
    end;
   2:
    begin
     Inc(f_TotalDone, f_CurSize);
     if Assigned(f_TotalProgressProc) then
     begin
      if f_UseDocSize then
      begin
       if f_TotalDone = f_TopicsNeedDo then
        f_TotalProgressProc(aState, f_TotalDone, '������� ��������')
       else
        f_TotalProgressProc(1, f_TotalDone, '')
      end
      else
       f_TotalProgressProc(1, f_TotalDone, '')
     end;
    end;
  end;
end;

function TSewerPipe.GetTotalDone: Int64;
begin
 if (f_Progressor <> nil) and (f_Progressor.TotalState <> 0) then
  Result:= f_Progressor.TotalCur
 else
  Result:= f_TotalDone;
end;

function TSewerPipe.OnlyReferences: Boolean;
begin
 Result := (dtRelText in ExportDocTypes) and not ((dtNone in ExportDocTypes) or (dtText in ExportDocTypes));
end;

function TSewerPipe.pm_GetTopicDone: Longint;
begin
 Result := f_TopicsList.Count;
end;

procedure TSewerPipe.pm_SetProgressor(const Value: TddProgressObject);
begin
 FreeAndNil(f_Progressor);
 f_Progressor := Value.Use;
end;

procedure TSewerPipe.pm_SetTotalProgressProc(const Value: Tl3ProgressProc);
begin
 f_TotalProgressProc := Value;
 // ��������� ������� f_Progressor
 CheckProgressor;
 f_Progressor.OnProgressProc:= f_TotalProgressProc;
end;

procedure TSewerPipe.StartProgress;
begin
 f_StartProgress:= True;
 if f_Progressor <> nil then
   f_Progressor.Start(f_AllTopicSize, '������� ����������', f_UseDocSize)
 else
 begin
  if Assigned(f_TotalProgressProc) then
   f_TotalProgressProc(0, f_AllTopicSize, '�������');
 end;
end;

procedure TSewerPipe.StopProgress;
begin
 if f_Progressor <> nil then
 begin
  f_Progressor.Stop
 end
 else
 if Assigned(f_TotalProgressProc) then
  f_TotalProgressProc(2, f_AllTopicSize, '������� ��������');
end;

procedure TSewerPipe.WriteSpecialName;
begin
  f_NameWriter.WriteName;
end;

constructor TddObjTopicTextDeleterFilter.Create;
begin
 inherited Create(k2_idTextPara);
end;

procedure TddObjTopicTextDeleterFilter.DoAddAtomEx(AtomIndex: Long; const Value: Tk2Variant);
begin
 if CurrentType.InheritsFrom(k2_idDocument) and (AtomIndex = k2_tiType) and
    (Value.Kind = k2_vkInteger) then
  IsActive := (Value.AsInteger = Ord(dtObject));
 inherited; 
end;


end.
