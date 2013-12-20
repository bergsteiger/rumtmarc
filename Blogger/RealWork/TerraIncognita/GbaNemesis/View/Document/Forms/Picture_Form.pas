unit Picture_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Garant/Nemesis/Document/PictureForm.pas
// ���� ���������� �����-�������� (VCM Entity Form)
//
// ��������
//
//
// ��� ����� ����������� ��� ��� "������-������"
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// $Id: Picture_Form.pas,v 1.15 2012/09/29 10:31:07 lulin Exp $ 

// $Log: Picture_Form.pas,v $
// Revision 1.15  2012/09/29 10:31:07  lulin
// {RequestLink:397279284}
//
// Revision 1.14  2011/11/16 17:35:41  lulin
// {RequestLink:232098711}
//
// Revision 1.13  2010/11/11 15:04:12  lulin
// {RequestLink:228689255}.
// - ��������� ������ �������� �� �������.
//
// Revision 1.12  2010/11/10 18:43:39  lulin
// {RequestLink:228689255}.
//
// Revision 1.11  2010/09/08 12:13:55  lulin
// {RequestLink:197496539}.
//
// Revision 1.10  2010/08/30 15:31:18  lulin
// {RequestLink:224134305}.
//
// Revision 1.9  2010/08/30 12:51:44  lulin
// {RequestLink:224134305}.
//
// Revision 1.8  2009/12/02 10:51:09  oman
// - fix: {RequestLink:172983946}
//
// Revision 1.7  2009/11/18 13:06:21  lulin
// - ���������� ������� ��������� ��������.
//
// Revision 1.6  2009/11/12 14:32:48  lulin
// - ������� ����������� ������ ������ ����������.
//
// Revision 1.5  2009/11/06 13:06:40  lulin
// - ��������� �� ������ �������� ���������� ����� ���� Data.
//
// Revision 1.4  2009/10/16 17:00:57  lulin
// {RequestLink:159360578}. �52.
//
// Revision 1.3  2009/10/15 10:32:32  oman
// - new: ������ ���������� ������ ������� {RequestLink:122652464}
//
// Revision 1.2  2009/09/16 18:50:24  lulin
// - �������� ���������� � �������� ��������� �� �������.
//
// Revision 1.1  2009/09/15 18:10:06  lulin
// - ���������� �������� ������� �������� ������������������ ���������.
//
// Revision 1.130  2009/09/15 11:28:16  lulin
// - ������� ������� ��� ����� ���������������� ���������.
//
// Revision 1.129  2009/07/31 17:29:58  lulin
// - ������� �����.
//
// Revision 1.128  2009/04/15 18:49:46  lulin
// [$143396720]. ������������ ����������� ������.
//
// Revision 1.127  2009/02/27 08:46:56  oman
// - fix: ������� ������������� ���� (�-137466709)
//
// Revision 1.126  2009/02/20 18:50:40  lulin
// - <K>: 136941122. ������� �������� ���������� ��� ������� ��������� ��������.
//
// Revision 1.125  2009/02/10 18:11:55  lulin
// - <K>: 133891247. �������� ���������� ������ � ����������.
//
// Revision 1.124  2009/02/10 15:43:29  lulin
// - <K>: 133891247. �������� ���������� �����������.
//
// Revision 1.123  2008/12/29 07:39:07  oman
// - fix: MacroReplacer ��� �������� (�-122675365)
//
// Revision 1.122  2008/12/26 14:00:13  oman
// - fix: ���������� MacroReplacer (�-122675365)
//
// Revision 1.121  2008/12/22 15:05:03  oman
// - new: � ���� ������ ��������� �� ����� ���� ���� ��� ������� (�-122675365)
//
// Revision 1.120  2008/12/08 09:32:58  lulin
// - <K>: 128292941.
//
// Revision 1.119  2008/08/07 15:16:16  mmorozov
// - new behaviour: ���������� � ��������� �������� ������ ��� ���������� ������ (K<106037657>);
//
// Revision 1.118  2008/08/04 12:44:22  oman
// - fix: ��������� ������� ������ ��� ���������� �������� (K-105579231)
//
// Revision 1.117  2008/01/10 07:22:58  oman
// ������� �� ����� �������
//
// Revision 1.115.4.2  2007/12/11 09:32:12  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.115.4.1  2007/11/23 10:41:15  oman
// cleanup
//
// Revision 1.116  2007/12/10 12:51:02  mmorozov
// - new: ��������� ������ publisher\subscriber ��� �������������� ��������, ������ �������� (������������ ������������), ��������� ������� ������������ (� ������ CQ: OIT5-27823);
//
// Revision 1.115  2007/10/04 10:34:19  oman
// - fix: ������ �������� (cq26855)
//
// Revision 1.114  2007/09/25 03:58:26  mmorozov
// - new behaviour: ��� ������\��������� �������� ���������� �������� ��� �������� ���� vcm_otDate, vcm_otCombo, vcm_otEditCombo ���������� �������� ���������� _SelectedString, ������ Caption. ��� ����� Caption ��� ���� ����� �������� ���� ���������� (� ������ ������ CQ: OIT5-26741);
//
// Revision 1.113  2007/07/12 09:33:58  oman
// - ����� ���������� ��� ������������ ������� - ����� (cq 24711)
//
// Revision 1.112  2007/07/11 10:20:09  oman
// - new: ����� ���������� � ����������� ������� - ������ ���
//  ������ ���������� (cq24711)
//
// Revision 1.111  2007/07/11 10:05:32  oman
// - new: ����� ���������� � ����������� ������� - �������� ���
//  ������ ���������� (cq24711)
//
// Revision 1.110  2007/06/28 14:56:17  lulin
// - cleanup.
//
// Revision 1.109  2007/06/06 09:49:00  oman
// - new: �������� ���� ������� ���������� (cq25445)
//
// Revision 1.108  2007/04/17 12:27:32  lulin
// - ���������� ������� �������������� ������ � ���������� � ����� �����.
//
// Revision 1.107  2007/04/05 10:22:32  lulin
// - ����������� �� ������ �������������� �����.
//
// Revision 1.106  2007/03/20 11:38:07  lulin
// - �� ������ ��������� ��� ������������ ���������� ���� � ���������.
//
// Revision 1.105  2007/03/20 08:19:28  lulin
// - �� ������ ��������� ��� ������������ ���������� ����.
//
// Revision 1.104  2007/03/16 13:58:25  lulin
// - ��������� �� ����������� ������� �������������� �����.
//
// Revision 1.103  2007/03/16 09:56:39  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.102  2007/02/28 15:12:17  lulin
// - cleanup.
//
// Revision 1.101  2007/02/19 12:03:41  mmorozov
// MERGE WITH B_NEMESIS_6_4 (CQ: OIT5-24454)
//
// - bugfix: ������������ ��������� ������� ��� ������ ����� (CQ: OIT5-24454);
//
// Revision 1.100  2007/02/14 14:24:07  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.99  2007/02/13 12:08:49  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.98  2007/02/12 16:39:02  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.97  2007/02/10 13:25:57  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.96  2007/02/09 15:38:17  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.95  2007/02/07 19:13:29  lulin
// - ��������� ���� �� ������ � ����������.
//
// Revision 1.94  2007/02/07 17:48:35  lulin
// - ����������� �� ����������� ����� ��� ������ �� ��������.
//
// Revision 1.93  2007/01/26 14:34:20  lulin
// - �������� ��������� � ������������� ���������.
//
// Revision 1.92  2007/01/17 14:02:53  lulin
// - �������� ��������� ��������������� ��������� � ������ ��������.
//
// Revision 1.91  2007/01/16 14:13:10  lulin
// - ����������� �� ���������������� ��������� - ��������� ��������.
//
// Revision 1.90  2007/01/10 13:58:47  lulin
// - �� ��������� �� ������� ��������� � �������� � ���������� ��������.
//
// Revision 1.89  2007/01/10 11:57:57  lulin
// - cleanup.
//
// Revision 1.88  2006/12/15 11:30:36  lulin
// - ��������� �������� �� ��������� ������.
//
// Revision 1.87  2006/12/14 14:13:20  oman
// - fix: �������� "������" � "������" �� ������ ������� (cq16612)
//
// Revision 1.86  2006/07/24 13:57:20  mmorozov
// - _format code;
//
// Revision 1.85  2006/06/21 11:36:22  oman
// - fix: �� �������� � HAFPainter ������� ��� ���������
//
// Revision 1.84  2006/06/16 10:46:01  oman
// - fix: ������������ ������� � _OnTest ��� �������� "�� ��� ����" (cq21354)
//
// Revision 1.83  2006/04/18 08:21:57  oman
// - new beh: ������������� StdStr � _StdRes
//
// Revision 1.82  2006/04/12 13:15:14  oman
// - change: ������� ��������� ����������� ����� �� ������������� ������
// - new beh: ����������� nsc
//
// Revision 1.81  2006/04/03 12:01:57  oman
// - new beh: ������� �� �������� ��� "������ ��� ����������� � UI"-<�����>.
//
// Revision 1.80  2006/03/31 07:42:04  lulin
// - ������� ��� ����������, ���������� � Execte ��������.
//
// Revision 1.79  2006/03/30 15:31:19  lulin
// - ������� ��� ���������� � _OnTest.
//
// Revision 1.78  2006/03/30 14:01:34  lulin
// - �������� ������������� ��������� �� ��� - � ����������� � ��� - ��� ����, ����� � ����� ��������� �� ������.
//
// Revision 1.77  2006/03/22 08:41:59  oman
// - new beh: ������������� ��� ��������� ��������� � ��� ����� (StdStr, DebugStr � SystemStr)
//
// Revision 1.76  2006/03/16 15:06:11  oman
// - new beh: ������������� ��� ��������� ��������� � ��� ����� (StdStr, DebugStr � SystemStr)
// - fix: ������ SHowMessage �� _vcmSay
//
// Revision 1.75  2006/02/01 14:15:22  migel
// - fix: �� ���� ��������/��������� �������� � ��������������� ������.
//
// Revision 1.74  2005/11/08 11:29:47  migel
// - fix: ����� ������� ������� ��� ���������� �������� �������� ���������� (��. CQ:17400).
//
// Revision 1.73  2005/10/10 11:43:19  lulin
// - cleanup: ���������� ���������� �� ���������� ����������.
//
// Revision 1.72  2005/06/30 07:48:07  cyberz
// READY FOR TIE-TEMPLATE GENERATION
//
// Revision 1.71  2005/06/01 12:56:11  demon
// - new behavior: ����������� ������ �������� � ������� �������� �� BMP
//
// Revision 1.70  2005/04/18 14:06:07  fireton
// - change: ��������� �� TnsSaveDialog
//
// Revision 1.69  2005/03/14 14:53:28  lulin
// - new unit: nsDocumentPreview.
//
// Revision 1.68  2005/03/02 14:32:33  lulin
// - ����� ������� ������ � F1 ��������� �� AFW.
//
// Revision 1.67  2004/12/28 15:56:32  lulin
// - remove unit: nsPrintParams.
//
// Revision 1.66  2004/12/28 15:19:21  lulin
// - cleanup: �������� ���������, ������� ���������.
//
// Revision 1.65  2004/12/16 16:31:50  lulin
// - Print-preview ��������� ��������� ��������� ��������� �� ����� ��������.
//
// Revision 1.64  2004/12/10 14:26:30  lulin
// - ��������� ���������� ��������� ���������� �������.
//
// Revision 1.63  2004/12/06 14:34:12  lulin
// - ���������� ���������� � "����������" �����.
//
// Revision 1.62  2004/12/03 14:33:23  lulin
// - �� ������ TnsPrintManger ������� � ���������� InsPrintManager.
//
// Revision 1.61  2004/12/03 10:45:30  lulin
// - rename class: TnsTextPrintManager -> TnsPrintManager.
//
// Revision 1.60  2004/12/03 10:41:40  lulin
// - ������ nsTextPrintManager ������������ � nsPrintManager � ��������� � ���������� �����.
//
// Revision 1.59  2004/11/18 16:30:41  lulin
// - ���������� ���������� �� VCM ��� ������������� inc'��.
//
// Revision 1.58  2004/10/05 13:19:36  lulin
// - cleanup.
//
// Revision 1.57  2004/10/05 12:50:45  lulin
// - rename unit: eePreviewCanvas -> evPreviewCanvas.
//
// Revision 1.56  2004/09/17 11:25:43  lulin
// - �������� vcm_opStrings ������������ � _vcm_opItems, � ��� ������� ��� � _IvcmHolder �� IvcmStrings (!).
//
// Revision 1.55  2004/09/10 13:05:28  demon
// - fix: ������� ���������� ���������.
//
// Revision 1.54  2004/09/10 09:24:32  fireton
// - bug fix: state �� ��������� ������� "�� ��� ����"
//
// Revision 1.53  2004/09/10 08:59:19  fireton
// - change behaviour: �� ���������� ������� ��������
//
// Revision 1.52  2004/09/09 14:55:07  fireton
// - bug fix: �� ������� "���������� ������" ��� "�� ��� ����"
//
// Revision 1.51  2004/09/08 09:27:31  fireton
// - bug fix: �������������� ����������� ��� ������
//
// Revision 1.50  2004/09/07 16:22:09  law
// - ������� Nemesis �� ������������ �������.
//
// Revision 1.49  2004/08/10 09:30:30  am
// bugfix: ���� �������� ����������� � ������ "�� �� ����", �� ��� ������� "���������" ������� ����������� � 1%
//
// Revision 1.48  2004/08/06 11:49:46  demon
// - cleanup: remove warnings and hints
//
// Revision 1.47  2004/07/15 11:02:14  mmorozov
// new behaviour: ����� ��������� ������� �������� ��� �������� ��������� ��������;
//
// Revision 1.46  2004/07/09 08:34:07  mmorozov
// change: ������� �� ��������� ������ nsSettings;
// new: ������� ��������, ������� � ���������;
//
// Revision 1.45  2004/07/08 14:34:25  mmorozov
// bugfix: �� ���������� �������� � ������ ������� ��������;
// new: ���������� �������� Viewer.AutoFit;
//
// Revision 1.44  2004/07/06 06:32:11  demon
// - remove warning
//
// Revision 1.43  2004/07/06 06:27:50  nikitin75
// fix: ����� ����� (����� �������� �� PrintManager)
//
// Revision 1.42  2004/07/02 11:07:42  fireton
// - change: ������� �� ImageEn
//
// Revision 1.41  2004/07/02 06:39:24  nikitin75
// fix: ���������� _nsCorrectLengthAndWrongSymbolsOfName
//
// Revision 1.40  2004/05/24 08:00:51  nikitin75
// ���������, ������� �� ������ PrintManager
//
// Revision 1.39  2004/05/24 06:06:06  nikitin75
// ���������� nsPrinterEnabled � _OnTest
//
// Revision 1.38  2004/05/14 15:29:01  law
// - remove unit: evTypesE.
//
// Revision 1.37  2004/04/30 07:04:56  nikitin75
// + ������ �������� ��������� � ������-����;
//
// Revision 1.36  2004/04/29 13:54:57  nikitin75
// �������� ��������� ������
//
// Revision 1.35  2004/04/27 15:13:56  nikitin75
// fix: ����������� Cleanup, a �� Destroy
//
// Revision 1.34  2004/04/21 11:44:25  nikitin75
// OnMouseWheel
//
// Revision 1.33  2004/04/21 10:48:26  nikitin75
// ���������� ��������������/��������������� ��������
//
// Revision 1.32  2004/04/12 09:12:33  demon
// - rename: nsGetName � nsGetExternalObjectName
//
// Revision 1.31  2004/04/10 11:13:58  am
// change: �������� ������ �������� ��� ����� ������������
//
// Revision 1.30  2004/04/05 13:54:10  nikitin75
// - ��������� �� IStringOld;
//
// Revision 1.29  2004/02/20 13:24:21  am
// change: ������ ������ �� ��������.
//
// Revision 1.28  2004/02/17 10:23:25  am
// new: ���������.
//
// Revision 1.27  2004/01/30 17:35:52  migel
// - change: ������ ������� ������ �� ��������.
// - change: �������� ������� �������� �� ���������.
//
// Revision 1.26  2004/01/28 12:27:38  law
// - change: ��������� �� ����� � ���������������.
//
// Revision 1.25  2004/01/27 18:42:57  law
// - change: ��������� �� ����� � ����������.
//
// Revision 1.24  2004/01/27 15:57:16  law
// - change: ��������� �� _MessageDlg.
//
// Revision 1.23  2004/01/23 10:42:04  nikitin75
// - ������ ��������;
//
// Revision 1.22  2004/01/13 13:45:45  nikitin75
// ������ ��������� �� "Document" � "Common";
//
// Revision 1.21  2004/01/09 11:08:33  nikitin75
// + ��������� PagesCount;
//
// Revision 1.20  2004/01/08 16:33:34  nikitin75
// + ��������� �����, ���������� ��������;
//
// Revision 1.19  2004/01/08 15:10:22  nikitin75
// + �������� "������", "������...", "������";
//
// Revision 1.18  2004/01/06 14:39:38  nikitin75
// + ������ ������������;
//
// Revision 1.17  2004/01/06 13:39:51  nikitin75
// ������: ������ �����������;
//
// Revision 1.16  2004/01/05 14:14:12  nikitin75
// fix: �� �������� "�������� � ����";
// + SetActualScale;
//
// Revision 1.15  2003/12/25 13:33:38  nikitin75
// fix: ���������;
//
// Revision 1.14  2003/12/19 13:59:50  migel
// - change: ��������� �� ����� ��������� (���������/���������� ����� ��������� � ������).
//
// Revision 1.13  2003/12/17 14:36:15  dk3
// new settings
//
// Revision 1.12.2.1  2003/12/16 17:02:14  migel
// - change: ��������� �� ����� ���������.
//
// Revision 1.12  2003/11/19 18:54:37  law
// - new prop: TvcmBaseOperationsCollectionItem.Params - ��������� ������ ���������� ��������.
// - new prop: TvcmOperationsCollectionItem.Linked - ���������� ������� �������� � ���������������� ���������� ��� ���.
//
// Revision 1.11  2003/11/06 15:49:25  demon
// - add: SaveDialogFileName ��� �������� �� ������ ��������� � _Caption.
//
// Revision 1.10  2003/11/06 15:43:10  demon
// - add: ����������� ��������� �������� ��� IStream.
//
// Revision 1.9  2003/10/27 16:24:26  demon
// - new: �������� ��� �������� "������..." (� ����)
//
// Revision 1.8  2003/09/11 11:59:10  demon
// - sintax fix: ������ ��� � ��������� � ������������ ������� �� Tl3Base
//
// Revision 1.7  2003/09/04 14:38:57  law
// - bug fix: ���������� ��������� ������������ ������� LoadState � _SaveState.
//
// Revision 1.6  2003/08/21 07:44:12  migel
// - add: ��������� �� ��������� (�������)
//
// Revision 1.5  2003/08/20 14:59:46  migel
// - add: ����� �������� ���������� ����������
// - add: ����� ������� �������� ���������� ��
//
// Revision 1.4  2003/08/08 10:23:35  step
// �������� ����� � ��������������� ��������
//

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList,

  afwInterfaces,
  
  vcmExternalInterfaces,
  vcmInterfaces,
  vcmBase,
  vcmBaseEntities,
  vcmEntities,
  vcmComponent,
  vcmEntityForm,
  vcmContainerForm,
  vcmMainForm,
  vcmBaseMenuManager,
  vcmMenuManager,

  ExtCtrls,
  StdCtrls,

  evTypes,
  evInternalInterfaces,

  StdRes,

  DocumentDomainInterfaces,
  nsSaveDialog,

  ieview,
  imageenview,
  imageen,
  imageenio,
  imageenproc,

  l3Interfaces,
  l3InterfacedComponent,

  L10nInterfaces,

  PrimPicture_Form,
  PrimPictureOptions_Form
  ;

type
  TPictureForm = class(TvcmEntityFormRef)
    fEntities : TvcmEntities;
    ieViewer: TImageEnView;
    ieIO: TImageEnIO;
    ieProc: TImageEnProc;
    procedure vcmEntityFormLoadState(const aState: IvcmBase;
      aStateType   : TvcmStateType;
      var Loaded: Boolean);
    procedure vcmEntityFormSaveState(out aState: IvcmBase;
      aStateType   : TvcmStateType;
      var Saved: Boolean);
    procedure vcmEntityFormInit;
    procedure vcmEntityFormCreate(Sender: TObject);
  private
    f_Scale      : Integer;
    f_InitViewer : Boolean;
    f_SaveDialog: TnsSaveDialog;

    procedure AfterInit(var Message: TMessage); message CM_AFTER_INIT;

    function  Get_Scale: Integer; override;
    procedure Set_Scale(aPercentage: Integer); override;
    procedure FitInWindow; override;
  protected
    procedure Cleanup;
     override;
    function  CanEnlarge: Boolean; override;
    function  CanShrink: Boolean; override;
    procedure Enlarge; override;
    procedure Shrink; override;
    function GetSaveDialog: TnsSaveDialog; override;
  public
    property SaveDialog: TnsSaveDialog read f_SaveDialog;
  end;//TPictureForm

const
  FixedScales:   array[0..24] of Integer = (
    1, 2, 5,
    10, 25, 50, 75,
    100, 125, 150 , 200, 250, 300, 400, 500, 600, 700, 800, 900,
    1000, 1200, 1400, 1600, 1800, 2000
  );

implementation

{$R *.dfm}

uses
  Math,
  Clipbrd,

  l3Base,
  l3Types,
  l3Stream,
  l3InterfacesMisc,
  l3Bitmap,
  l3String,

  afwFacade,

  vcmForm,

  nevBase,
  nevTools,
  evBitmapDataObject,
  evDocumentPreview,

  DataAdapter,

  nsConst,
  nsTypes,
  nsExternalObject,
  nsHAFPainter,
  nsFixedHAFMacroReplacer,
  nsObjectPreview,
  nsTrialSupport,
  nsValueMapsIDs,
  nsValueMaps,

  hyieutils,
  GIFLZW,

  JclSysInfo,

  l3ValueMap,
  Common_Strange_Controls,
  OfficeLike_Result_Controls
  ;

type
  IPictureFormState = interface(IvcmBase)
   ['{AD6F16CC-C368-4A9B-8B78-0051F2F700ED}']
    // public methods
     function GetCaption: Il3CString;
       {-}
     function GetBitmap: TBitmap;
       {-}
     function GetScale: Integer;
       {-}
     function GetFileName: TFileName;
       {-}
     function GetInitialDir: string;
       {-}
     function GetInfo: InsLinkedObjectDescription;
  end;//IPictureFormState

  TPictureFormState = class(TvcmCacheableBase, IvcmBase, IPictureFormState)
    private
      f_Caption    : Il3CString;
      f_Bitmap     : TBitmap;
      f_Scale      : Integer;
      f_FileName   : string;
      f_InitialDir : string;
      f_Info: InsLinkedObjectDescription;
    public
      function GetCaption: Il3CString;
      function GetBitmap: TBitmap;
      function GetScale: Integer;
      function GetFileName: TFileName;
      function GetInitialDir: string;
      function GetInfo: InsLinkedObjectDescription;
    public
      constructor Create(const aCaption    : Il3CString;
                         aBitmap           : TBitmap;
                         aScale            : Integer;
                         const aFileName   : TFileName;
                         const aInitialDir : string;
                         const aInfo: InsLinkedObjectDescription);
        reintroduce;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
      class function Make(const aCaption  : Il3Cstring;
                          aBitmap         : TBitmap;
                          aScale          : Integer;
                          const aFileName : TFileName; const
                          aInitialDir     : string;
                          const aInfo: InsLinkedObjectDescription): IPictureFormState;
        {-}
  end;//TPictureFormState

function TPictureFormState.GetCaption: Il3CString;
begin
 Result := f_Caption;
end;

function TPictureFormState.GetBitmap: TBitmap;
begin
 Result := f_Bitmap;
end;

function TPictureFormState.GetScale: Integer;
begin
 Result := f_Scale;
end;

function TPictureFormState.GetFileName: TFileName;
begin
 Result := f_FileName;
end;

function TPictureFormState.GetInitialDir: string;
begin
 Result := f_InitialDir;
end;

constructor TPictureFormState.Create(const aCaption    : Il3CString;
                                     aBitmap           : TBitmap;
                                     aScale            : Integer;
                                     const aFileName   : TFileName;
                                     const aInitialDir : string;
                                     const aInfo: InsLinkedObjectDescription);
begin
 inherited Create;
 f_Caption := aCaption;
 f_Bitmap := Tl3Bitmap.Create;
 f_Scale := aScale;
 f_Bitmap.Assign(aBitmap);
 f_FileName := aFileName;
 f_InitialDir := aInitialDir;
 f_Info := aInfo;
end;

procedure TPictureFormState.Cleanup;
begin
 f_Caption := nil;
 f_info := nil;
 FreeAndNil(f_Bitmap);
 inherited;
end;

class function TPictureFormState.Make(const aCaption    : Il3CString;
                                      aBitmap           : TBitmap;
                                      aScale            : Integer;
                                      const aFileName   : TFileName;
                                      const aInitialDir : string;
                                      const aInfo: InsLinkedObjectDescription): IPictureFormState;
var
 l_PictureFormState: TPictureFormState;
begin
 l_PictureFormState := TPictureFormState.Create(aCaption, aBitmap, aScale,
  aFileName, aInitialDir, aInfo);
 try
  Result := l_PictureFormState;
 finally
  vcmFree(l_PictureFormState);
 end;
end;

function TPictureForm.CanEnlarge: Boolean;
begin
 Result := Scale < f_ValueMap.MaxValue;
end;

function TPictureForm.CanShrink: Boolean;
begin
 Result := Scale > f_ValueMap.MinValue;
end;

procedure TPictureForm.Enlarge;
var
 I: Integer;
begin
 ieViewer.AutoFit := False;
 for I := Low(FixedScales) to High(FixedScales) do
  if FixedScales[I] > Scale then
  begin
   Scale := FixedScales[I];
   Break;
  end;
end;

function  TPictureForm.Get_Scale: Integer;
begin
 Result := f_Scale;
// Result := Integer(GetLongint(pi_Document_ImageScale, dv_Document_ImageScale));
end;

procedure TPictureForm.Set_Scale(aPercentage: Integer);
begin
 if aPercentage < 1 then
  FitInWindow
 else
 begin
  f_Scale := aPercentage;
  ieViewer.AutoFit := False;
  ieViewer.Zoom := f_Scale;
 end;
// PutLongint(pi_Document_ImageScale, Longint(aPercentage));
 {Image.Align := alNone;
 Image.Width  := (Image.Picture.Width  * f_Scale) div 100;
 Image.Height := (Image.Picture.Height * f_Scale) div 100;
 }
end;

procedure TPictureForm.Shrink;
var
 I: Integer;
begin
 ieViewer.AutoFit := False;
 for I := High(FixedScales) downto Low(FixedScales) do
  if FixedScales[I] < Scale then
  begin
   Scale := FixedScales[I];
   Break;
  end;
end;

function TPictureForm.GetSaveDialog: TnsSaveDialog;
begin
 Result := SaveDialog;
end;

procedure TPictureForm.AfterInit(var Message: TMessage);
var
 l_Value : Il3CString;
begin
 if not ieViewer.IEBitmap.VclBitmap.Empty then
 begin
  f_InitViewer := True;
  l_Value := afw.Settings.LoadString(piDocumentPictureScale, dvDocumentPictureScale);
  if l3Same(l_Value, cvDocumentPictureScaleFit) then
   FitInWindow
  else
   Scale := StrToInt(l3Str(l_Value));
 end;//not ieViewer.IEBitmap.VclBitmap.Empty
end;

procedure TPictureForm.vcmEntityFormLoadState(const aState: IvcmBase;
  aStateType: TvcmStateType; var Loaded: Boolean);
var
 l_PictureFormState : IPictureFormState;
 l_Scale            : Integer;
begin
 if aStateType = vcm_stContent then
 if (l3BQueryInterface(aState, IPictureFormState, l_PictureFormState)) then
 begin
  CCaption := l_PictureFormState.GetCaption;
  SaveDialog.FileName := l_PictureFormState.GetFileName;
//  SaveDialog.InitialDir := l_PictureFormState.GetInitialDir;
  ieViewer.IEBitmap.Assign(l_PictureFormState.GetBitmap);
  l_Scale := l_PictureFormState.GetScale;
  if l_Scale > 1 then
   Scale := l_Scale
  else
   FitInWindow;
  f_Info := l_PictureFormState.GetInfo;
 end
 else
  Assert(False);
end;

procedure TPictureForm.vcmEntityFormSaveState(out aState: IvcmBase;
  aStateType: TvcmStateType; var Saved: Boolean);
var
 l_Scale : Integer;
begin
 if aStateType = vcm_stContent then
 begin
  if ieViewer.AutoFit then
   l_Scale := -1
  else
   l_Scale := Scale;
  aState := TPictureFormState.Make(CCaption, ieViewer.IEBitmap.VclBitmap, l_Scale,
   SaveDialog.FileName, SaveDialog.InitialDir, f_Info);
 end;
end;

procedure TPictureForm.vcmEntityFormInit;
begin
 //ScrollBox.DoubleBuffered := true;
 f_InitViewer := False;
end;

procedure TPictureForm.FitInWindow;
begin
 with ieViewer do
 begin
  AutoFit := True;
  f_Scale := Round(Zoom);
 end;
end;

procedure TPictureForm.vcmEntityFormCreate(Sender: TObject);
begin
 f_ValueMap := nsStringMapManager.Map[smap_piDocumentPictureScale] as InsSpetialStringValueMap;
 with ieViewer.MouseWheelParams do
 begin
  Action := iemwVScroll;
  Variation := iemwPercentage;
  Value := 15;
 end;
 f_SaveDialog := TnsSaveDialog.Create(Self);
 with f_SaveDialog do
 begin
  Filter := vcmConstString(str_PictuteSaveDialogFilter);
  Title := vcmConstString(str_SaveAsDialogTitle);
  DefaultExt := vcmConstString(str_PictuteSaveDialogExtension);
  if GetWindowsVersion in [wvWin95, wvWin95OSR2, wvWinNT31, wvWinNT35, wvWinNT351, wvWinNT4] then
   Options := [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist]
  else
   Options := [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing, ofPathMustExist];
 end;
end;

procedure TPictureForm.Cleanup;
begin
 f_ValueMap := nil;
 f_Info := nil;
 inherited;
end;

function TPictureFormState.GetInfo: InsLinkedObjectDescription;
begin
 Result := f_Info;
end;

initialization
 DefGIF_LZWDECOMPFUNC:= GIFLZWDecompress;
 DefGIF_LZWCOMPFUNC:= GIFLZWCompress;
end.
