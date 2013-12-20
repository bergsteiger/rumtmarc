Unit ExportPipe;

{ $Id: ExportPipe.pas,v 1.202 2013/07/22 11:03:02 fireton Exp $ }

// $Log: ExportPipe.pas,v $
// Revision 1.202  2013/07/22 11:03:02  fireton
// - ��-TIFF �� ������ �������� � csv (K 454525700)
//
// Revision 1.201  2013/04/19 13:10:48  lulin
// - ���������.
//
// Revision 1.200  2013/04/11 16:46:52  lulin
// - ���������� ��� XE3.
//
// Revision 1.199  2013/03/13 12:14:45  narry
// �� ������� �� �����, ���� � ����� ���� ���� (435460677)
//
// Revision 1.198  2013/03/11 08:43:42  narry
// �� �������� ������� �� ������� � ��������� � ������� ������ ���������� ������
//
// Revision 1.197  2013/02/07 13:18:49  narry
// ���������� (������ ��������)
//
// Revision 1.196  2013/02/05 12:11:33  narry
// ������� ����������� �������� EVD ��� KeyWords (426675759)
//
// Revision 1.195  2012/12/10 10:06:53  narry
// ������ ������
//
// Revision 1.194  2012/12/07 13:12:39  narry
// �������� ���� � ������
//
// Revision 1.193  2012/12/05 13:36:18  narry
// AV ��� ������������� ��������
//
// Revision 1.192  2012/11/01 09:43:28  lulin
// - ����� ����� � �������.
//
// Revision 1.191  2012/11/01 07:45:54  lulin
// - ������ ����������� ����������� �������� �������� �������.
//
// Revision 1.190  2012/10/19 12:38:33  narry
// ������� ������ ��� �������� (404947393)
//
// Revision 1.189  2012/10/19 11:15:38  narry
// ������� ������ ��� �������� (404947393)
//
// Revision 1.188  2012/10/18 06:58:17  narry
// ����������
//
// Revision 1.187  2012/10/02 08:11:20  narry
// ������ �������� �� ISab ������ SAB
//
// Revision 1.186  2012/09/03 09:10:25  narry
// ������ � ����������� �� ��� ���������� ����������
//
// Revision 1.185  2012/08/30 13:55:26  narry
// ������� ��� ����������
//
// Revision 1.184  2012/08/29 10:00:26  voba
// - ������� �������� ��� ������ � XML
//
// Revision 1.183  2012/08/23 11:09:09  fireton
// - ��� ������ ������ �� ���������� ������� (K 229214222)
//
// Revision 1.182  2012/07/27 10:17:38  voba
// - XML support
//
// Revision 1.181  2012/07/10 10:02:52  narry
// ����� � ����������� �������� (375424204)
//
// Revision 1.180  2012/07/02 09:43:26  narry
// �� ���������������� ������
//
// Revision 1.179  2012/07/02 08:05:44  narry
// ����������
//
// Revision 1.178  2012/06/29 08:14:29  narry
// Execute ���������� False, ���� ������ �� ���� ��������������
//
// Revision 1.177  2012/03/29 07:17:48  narry
// ������������� ������ ������� (352453562)
//
// Revision 1.176  2012/01/19 10:48:02  fireton
// - �� ���������� ������, ���� �� ���� �������� ���� ������� (K 327825561)
//
// Revision 1.175  2012/01/19 10:01:09  fireton
// - ������� ������������� ��� ����� ������ ��������� (K 327823137)
//
// Revision 1.174  2012/01/11 10:12:16  narry
// - ������������ �������� ������������� �������� �������� ����������
//
// Revision 1.173  2011/12/19 09:14:59  fireton
// - ������������ ������ ����� ������ (� 316113066)
//
// Revision 1.172  2011/12/06 08:24:06  narry
// �� ���������� zip (312445573)
//
// Revision 1.171  2011/10/28 06:43:27  narry
// �� ������� �� ������� (296096189)
//
// Revision 1.170  2011/10/21 13:12:01  narry
// ������������ ���������
//
// Revision 1.169  2011/10/13 08:43:33  narry
// ������������ ���������
//
// Revision 1.168  2011/10/06 08:26:42  fireton
// - ������� ��������� progress �������� ���������
//
// Revision 1.167  2011/10/05 11:01:38  voba
// - k : 281525254 ������ � ��������
//
// Revision 1.166  2011/09/13 10:43:31  narry
// �� ����������
//
// Revision 1.165  2011/09/13 05:28:23  narry
// ������������ ������ ���������� ���������� (265410470)
//
// Revision 1.164  2011/09/07 13:01:45  narry
// ����������� ����������
//
// Revision 1.163  2011/08/08 12:51:34  narry
// ��������� ������ QQQ (278827615)
//
// Revision 1.162  2011/07/19 09:05:14  narry
// ������ ��� � ������������� SetTo
//
// Revision 1.161  2011/06/14 13:18:18  narry
// ����������� ����������� ���������� (268338975)
//
// Revision 1.160  2011/06/10 12:49:05  voba
// - DocumentServer ������ �������� function DocumentServer(aFamily : TFamilyID), ��� �� �������� Family �� �����������
//
// Revision 1.159  2011/03/03 11:51:54  narry
// K197497438. ������� �������� RangeManager �� ����
//
// Revision 1.158  2011/01/13 12:53:56  narry
// K250086166.
//
// Revision 1.157  2010/12/03 12:45:07  lulin
// {RequestLink:244195248}.
//
// Revision 1.156  2010/09/24 12:11:01  voba
// - k : 235046326
//
// Revision 1.155  2010/08/04 08:30:25  voba
// - k: 229672814
//
// Revision 1.154  2010/07/19 09:53:49  narry
// �227477456. ���������������� ������ �������, �� ��������� ����� ����� ���������
//
// Revision 1.153  2010/07/09 11:51:17  narry
// - �172985568
//
// Revision 1.152  2010/06/22 07:16:10  narry
// - K219123030. ����������� ������������� ��� �����
//
// Revision 1.151  2010/05/27 06:57:08  narry
// - K184287805
//
// Revision 1.150  2010/04/20 08:51:23  narry
// - ������� ���������� �������
//
// Revision 1.149  2010/04/07 12:40:52  narry
// - � �������� ������ ���������� ����� ���������� ��������� ������
//
// Revision 1.148  2010/02/24 11:57:48  narry
// - �������� ����������� �������� �� �����
//
// Revision 1.147  2009/11/10 09:12:35  narry
// - ����������
//
// Revision 1.146  2009/09/08 09:02:58  narry
// - ������������� ����������
//
// Revision 1.145  2009/07/22 11:27:29  narry
// - ��������� ������� � DictServer
//
// Revision 1.144  2009/07/20 12:39:10  voba
// - ������� renum � ��������
//
// Revision 1.143  2009/05/27 12:39:26  narry
// - ���������� ������ ����������
//
// Revision 1.142  2009/04/21 11:02:00  fireton
// - [$142607395]. ��������� GIF ������ ���� ������ �������� >= 2000.
//
// Revision 1.141  2009/04/13 07:12:44  narry
// - ���������� ����������� ����� � ����������
//
// Revision 1.140  2009/04/09 15:08:20  lulin
// [$140280550]. ���������� �����.
//
// Revision 1.139  2009/02/05 10:26:00  narry
// - ����������� ��������� ��������� ����� ����
//
// Revision 1.138  2009/01/26 08:06:19  fireton
// - ������� � ������ b_archi_NewSrch2 (����� ��-������)
//
// Revision 1.137  2009/01/14 14:06:55  narry
// - ������
//
// Revision 1.136  2009/01/13 16:21:15  narry
// - ������
//
// Revision 1.135.2.1  2008/12/26 15:22:06  fireton
// - ��������� ����������� �� ������ �� DT_Srch
//
// Revision 1.135  2008/10/15 09:07:02  fireton
// - ����������� ����, ���������� � �������� ���������� (��������� DocImageServer)
//
// Revision 1.134  2008/10/03 10:24:39  fireton
// - ������� ��������� ������ ����� ���� �� ������ TIFF
//
// Revision 1.133  2008/09/18 11:15:36  narry
// - �� ���������� ��������� � ���� ����
//
// Revision 1.132  2008/09/11 14:43:38  narry
// - ������ �������� � evd � ����������� �� ������� �������
// - �����������
//
// Revision 1.131  2008/08/11 08:46:28  voba
// - "�������� �� ��������" ������� ������ � �������. ��� ��� ����� �������� �� ��������� � �������� ������ ��� ��� �� �����
//
// Revision 1.130  2008/07/24 15:06:45  narry
// - ����������� ������ �����������
//
// Revision 1.129  2008/05/26 14:46:56  narry
// - ��������� evNSRCPlus
//
// Revision 1.128  2008/05/07 16:07:00  voba
// - Refact. function .GetRelImportNum � GetINumber ����, ������ ��� ������������ GetExtDocID
//
// Revision 1.127  2008/04/11 16:06:20  narry
// - ������ ���������� ������ ������ � ����� ���������
//
// Revision 1.126  2008/04/03 07:55:54  voba
// - ��������� ��� �� DocImgSup � dt_DocImages
//
// Revision 1.125  2008/03/21 14:09:24  lulin
// - cleanup.
//
// Revision 1.124  2008/03/13 14:48:24  narry
// - �����������
//
// Revision 1.123  2008/03/04 11:43:02  narry
// - ������� ExtractPattern � ddUtils
//
// Revision 1.122  2008/03/03 20:06:03  lulin
// - <K>: 85721135.
//
// Revision 1.121  2008/02/27 15:48:23  narry
// - ����������� �������� �������������� ������ ����� Writer
//
// Revision 1.120  2008/02/20 17:23:01  lulin
// - �������� ������.
//
// Revision 1.119  2008/02/14 09:40:36  lulin
// - ����� �������� �����.
//
// Revision 1.118  2008/02/13 20:20:09  lulin
// - <TDN>: 73.
//
// Revision 1.117  2008/02/06 15:37:02  lulin
// - ������� �������� ������� �� ������������ ������.
//
// Revision 1.116  2008/02/05 09:58:02  lulin
// - �������� ������� ������� � ��������� ����� � ��������� �� �� ������.
//
// Revision 1.115  2008/02/01 15:14:46  lulin
// - ����������� �� �������� ��������������� �������.
//
// Revision 1.114  2007/11/22 10:31:53  narry
// - ������ �������� ������ ������ �������
// - �������� ������ ���������� ��� ������
// - ������ �������� ��������
//
// Revision 1.113  2007/11/16 09:32:36  narry
// - ������� ���������� ������� ��� ��������
//
// Revision 1.112  2007/10/09 08:54:13  voba
// - merge with b_archi_export_refact2
//
// Revision 1.111.10.1  2007/09/21 14:03:19  voba
// no message
//
// Revision 1.111  2007/07/04 08:51:39  narry
// - ���������� ���������� ���������� ����������, ��������� � ���
//
// Revision 1.110  2007/06/28 11:19:57  narry
// - ��������� �������� ������� ������������ ������� �������
//
// Revision 1.109  2007/04/18 11:37:55  narry
// - ���������
//
// Revision 1.108  2007/04/10 14:07:21  narry
// - ����� ������ �������
// - ����� �������� "�������� � �������"
//
// Revision 1.107  2007/03/14 15:15:34  narry
// - �������� ����� � �������� �� ��������� ��������� ������� �� �������
//
// Revision 1.106  2006/12/11 10:41:33  fireton
// - bug fix: ��������� � ������������ exception ��� ������ ������ TIFFa
//
// Revision 1.105  2006/12/07 14:43:46  voba
// - ����������� ���� ������ - ������� �������
//
// Revision 1.104  2006/12/07 11:22:17  narry
// - ������� ������ ��������� �� �������
//
// Revision 1.103  2006/11/27 15:57:12  narry
// - ������� � XML ��� nalog.ru
//
// Revision 1.102  2006/07/20 05:52:25  narry
// - ������ ������ ������ �� uses
//
// Revision 1.101  2006/03/07 12:27:39  narry
// - ���������: ����� ���������� �������� �������
//
// Revision 1.100  2006/01/05 15:01:49  narry
// - �����������: ����� ���������� ������������ ����� �����
//
// Revision 1.99  2005/12/01 11:47:44  narry
// - ����������
//
// Revision 1.98  2005/11/29 13:43:29  narry
// - ����������: ������� �� ����� ������ �������� �����
//
// Revision 1.97  2005/11/25 13:33:44  voba
// no message
//
// Revision 1.96  2005/11/11 12:29:54  fireton
// - change: ������ �������� � resourcestring (����� ������������� ����� ����)
//
// Revision 1.95  2005/11/09 16:22:21  narry
// - �����: ����������� �������� ������� ����������� �������
// - �����������: ������� ����� ��� �������� �������� ����
//
// Revision 1.94  2005/11/02 16:31:37  narry
// - �����: ������� � ������ ������ � �����
// - ���������: �������� ���������� �� �����
//
// Revision 1.93  2005/10/20 05:54:30  voba
// - change IsImageExists param type (PPublishDataRec)
//
// Revision 1.92  2005/10/17 13:26:06  step
// �������������� LinkComent --> LinkComment
//
// Revision 1.91  2005/07/26 10:46:19  narry
// - update: ���������� ���������������� �������� - ������ ��������� ���������
//
// Revision 1.90  2005/07/25 13:07:23  lulin
// - bug fix: �� �������������� ����������.
//
// Revision 1.89  2005/07/21 11:15:06  lulin
// - bug fix: �� �������������� ����������.
//
// Revision 1.88  2005/07/14 15:54:11  narry
// - bug fix
//
// Revision 1.87  2005/04/28 13:01:31  narry
// - update: ������ ������� ���������
//
// Revision 1.86  2005/04/25 13:12:27  fireton
// - change: ������� ������� �������� �� iebitmap � memory-mapped files
//
// Revision 1.85  2005/04/25 12:16:16  fireton
// - bug fix: ������ � ������� �������� ��� GIF
//
// Revision 1.84  2005/04/19 15:41:47  lulin
// - ��������� �� "����������" ProcessMessages.
//
// Revision 1.83  2005/03/29 14:00:16  voba
// - bug fix
//
// Revision 1.82  2005/03/28 13:34:12  narry
// - update
//
// Revision 1.81  2005/03/18 12:45:13  voba
// - bug fix
//
// Revision 1.80  2005/03/11 16:41:30  narry
// - update: ��������� �������� ����������� ���������
//
// Revision 1.79  2005/02/18 12:00:59  narry
// - update: ��������� ���������
//
// Revision 1.78  2005/02/16 17:11:17  narry
// - update: ��������� ���������
//
// Revision 1.77  2005/01/17 15:45:10  narry
// - update;
// - bug fix: ���������� ������������ csv-������ ��� ���������� � ������������ ���������� �������������
//
// Revision 1.76  2004/09/21 12:21:14  lulin
// - Release ������� �� Cleanup.
//
// Revision 1.75  2004/09/14 15:58:10  lulin
// - ������ ������ Str_Man - ����������� ������ ���� - l3String.
//
// Revision 1.74  2004/09/02 13:52:57  fireton
// - bug fix: "�������" � ����� � ������������ ������ �� ��
//
// Revision 1.73  2004/08/17 15:17:17  fireton
// - bug fix: ��������������� ��������� � ��� ��� �������� ��������� �������
//
// Revision 1.72  2004/08/17 13:39:18  narry
// - update
//
// Revision 1.71  2004/06/17 12:05:58  voba
// - ������ : ��� �������� ��� ��� ����� ����������� ��. ������
//
// Revision 1.70  2004/06/17 10:12:50  narry
// - bug fix: �� ��������� ����������� ������ ��� ���� ������� ���������
// - bu fix: ��� �������� ��� ��� ����� ����������� ��. ������
//
// Revision 1.69  2004/06/01 17:04:26  law
// - ������ ����������� Tl3VList.MakePersistent - ����������� _Tl3ObjectRefList.
//
// Revision 1.68  2004/06/01 14:10:53  narry
// - update: ���������� ������ ���������� ������� �� �������
//
// Revision 1.67  2004/05/14 16:08:05  law
// - new units: evFileGenerator, evPlainTextGenerator.
//
// Revision 1.66  2004/04/15 14:38:43  narry
// - new property: _OneStep - ��������� ������� �������� � ���� ������
//
// Revision 1.65  2004/03/10 14:52:17  fireton
// - change: ��� �������� �������� gif ������ ���������� ������
//
// Revision 1.64  2004/03/05 17:05:15  step
// ������ ����
//
// Revision 1.63  2004/02/27 15:38:16  fireton
// - bugfix: �� ��������������� ��������� ����������/������������ �����������
//
// Revision 1.62  2004/02/27 15:03:16  fireton
// - ��������� ��������� '_' (������ ����� ����. ������)
//
// Revision 1.61  2004/02/27 11:16:47  voba
// no message
//
// Revision 1.60  2004/02/27 10:28:53  voba
// - merge with adding_field_shname
//
// Revision 1.59  2004/02/18 12:11:37  narry
// - bug fix: ������������ ���������� �� �����
//
// Revision 1.58  2004/02/17 10:29:41  narry
// - new: �������� ���������� ���� ������ �� ������ ������
//
// Revision 1.57.8.4  2004/02/26 12:57:36  fireton
// - add: ������� ������������ ������ (� tif � gif)
//
// Revision 1.57.8.3  2004/02/25 12:38:01  voba
// no message
//
// Revision 1.57.8.2  2004/02/24 10:17:11  voba
// no message
//
// Revision 1.57.8.1  2004/02/18 14:32:20  voba
// no message
//
// Revision 1.57  2003/09/22 15:42:50  narry
// - bug fix: AV ��� f_Progressor = nil
//
// Revision 1.56  2003/09/15 14:37:08  narry
// - bug fix: ���������� Progressor ��������� � AV
//
// Revision 1.55  2003/07/18 14:44:29  narry
// - change: ��������� ������ ����������� ���������� � ��������� ��������� �������
//
// Revision 1.54  2003/06/03 14:35:47  narry
// - update: ���������� ���������������� ��� ������������������
//
// Revision 1.53  2003/01/17 10:23:16  narry
// - new begavior: ����������� �������� �������
//
// Revision 1.52  2003/01/04 10:26:33  narry
// - update: ������ ���� ���� ������ ������� �� �������
//
// Revision 1.51  2002/09/24 15:22:39  voba
// - rename unit: evTxtExp -> evTextFormatter.
//
// Revision 1.50  2002/08/28 08:16:17  narry
// - update
//
// Revision 1.49  2002/07/24 12:46:42  narry
// - bug fix: ��� ������� �� ����� ������ ����� �������� � ���� ��� �������
//
// Revision 1.48  2002/07/23 15:38:49  narry
// - bug fix: ������� ������� ���� ��� ���� ��� ������� � ������� � ���������� �� ������
//
// Revision 1.47  2002/06/14 07:39:25  narry
// - bug fix: Integer overflow
//
// Revision 1.46  2002/06/06 11:13:18  narry
// - bug fix: ������ ������� ��������, �������� �� NSRC
//
// Revision 1.45  2002/06/05 13:24:02  narry
// - update: ������������ ���������� ������ "������" ������
//
// Revision 1.44  2002/02/28 15:07:04  narry
// - bug fix: ������ ������ � ������ ����� ��� ���������� ������������� ������ �� �����
//
// Revision 1.43  2002/02/15 10:33:42  narry
// - update
//
// Revision 1.42  2002/01/21 09:11:40  narry
// - bug fix and update
//
// Revision 1.41  2001/12/27 13:46:12  narry
// - update: ���������� ������� �� AccGroups
//
// Revision 1.40  2001/11/22 13:58:44  narry
// - update : ������ ���������� ����� �������
//
// Revision 1.39  2001/10/25 12:01:25  narry
// - bug fix : ���������� ������ ��� ���������� �� �����
//
// Revision 1.38  2001/10/24 15:07:00  narry
// - new behavior: ���������� ����� �� �����, ����� ��������-������
//
// Revision 1.37  2001/10/22 12:51:28  narry
// - new behavior: ������� ������� ��������� ��� ���������� ��������
//
// Revision 1.36  2001/09/19 12:50:56  narry
// - update - ������ TComponent ����������� �� Tl3InterfacedComnonent
//
// Revision 1.35  2001/09/04 13:58:59  voba
// - rename unit: MyUtil -> l3FileUtils.
//
// Revision 1.34  2001/06/04 11:47:22  narry
// -new behavior - ��������� ������ �������� ����� ������
//
// Revision 1.33  2001/03/28 13:46:12  narry
// �������� ������, ����������� �������� RTF ����
//
// Revision 1.32  2000/12/27 13:03:00  law
// - ��������� ��������� Log.
//

{$I ddDefine.inc}
{$DEFINE Bend}

interface

Uses
  Classes,

  l3Types,
  l3Filer,
  l3Memory,
  l3Chars,
  l3Base,
  l3InterfacedComponent,
  l3RangeManager,
  l3RecList,

  k2FileGenerator,

  dt_Types, dt_Const,
  dt_AttrSchema,
  dt_Sab,
  {$IFDEF Bend}ddNSRCPipeBend,{$ENDIF}

  evdXMLWriter,

  SewerPipe, ddProgressObj,
  l3ObjectRefList,
  l3StringList
  , k2TagFilter, k2TagGen, k2Prim, DT_Query, ddDocTypeDetector;

type
 TepFilerInfo = record
  Filer   : TevDOSFiler;// ������
  FName   : ShortString;// ��� �����
  FileSize: Int64;      // ������ �����
  FirstDoc: Boolean;    // ������ ������ � ����
  Pattern : ShortString;// ������ ����� �����
  RealName: ShortString;
  PrevPart : Int64;
 end;
  TepFilers          = (fileDocument, fileReference, fileAnnotation);
  TepFilersArray     = array[TepFilers] of TepFilerInfo;

  TepCalculationDone = procedure (Sender: TObject; Value: Int64; EmptyCount: Integer) of object;
  TepPatternType     = (patAccGroup, patNumber, patDate);
  TepPatternsArray   = array[TepPatternType] of AnsiString;

  PImgCountRec = ^TImgCountRec;
  TImgCountRec = packed record
   rDocID: TDocID;
   rCount: Integer;
  end;

  TexpClearAttributes = (attrNone, attrLevel1, attrLevel2);

  TExportPipe = class(Tl3InterfacedComponent)
  private
    FAnnoFileNamePattern: AnsiString;
    fAttributes: TdtAttributeSet;
    FExportDirectory: ShortString;
    FObjTopicFileName: AnsiString;
    FOnCalculationDone: TepCalculationDone;
    f_Pipe: TSewerPipe;
    f_Writer: Tk2CustomFileGenerator;
    f_Running: Boolean;
    f_ErrorList: TStrings;
    f_OutFileType: TepSupportFileType;
    f_OutExt: ShortString;
    {$IFDEF Bend}
    f_Bend: TddPipeBend;
    {$ENDIF}

    f_Filers: TepFilersArray;

    f_ExportKW: Boolean;
    f_ExportDocImage: Boolean;
    f_ExportEmpty: Boolean;
    f_Family: TFamilyID;
    f_ExportDoc: Boolean;
    f_MultiUser: Boolean;

    f_DivideBy: TepDivideBy;
   
    //f_DocDir: ShortString;
    f_CreateDirs: Boolean;
    f_Dicts: TdtAttributeSet;
    f_TotalProgressProc : Tl3ProgressProc;
    //f_TopicProgressProc : Tl3ProgressProc;
    f_CodePage          : Long;
    f_WorkVAnonced      : Boolean;
    f_UpdateFiles       : Boolean;
    f_InternalFormat    : Boolean;
    f_ExternalExport    : Boolean;
    f_ExportRTFBody     : Boolean;
    f_OutputFileSize    : Longint;
    f_SeparateByGroup   : Boolean;
    f_TaskPriority      : Integer;
    f_UnnecessaryDataList: Tl3StringList;
    f_ErrorFound        : Boolean;
    FProgressor         : TddProgressObject;
    FDocFileNamePattern: AnsiString;
    FRefFileNamePattern: AnsiString;
    FStartNumber: Integer;
    f_Attributes: TdtAttributeSet;
    f_ClearAttributes: TexpClearAttributes;
    f_FormulaAsPicture: Boolean;
    f_ImagesByPages: Boolean;
    f_ImgCounters: Tl3RecList;
    f_InBend: Tk2TagFilter;
    f_LowcaseNames: Boolean;
    f_OnlyDocImagesHeader: Boolean;
    f_OnlyStructure: Boolean;
    f_OutBend: Ik2TagGenerator;
    function DivideBySize: Boolean;
    function FindPartNumber(aFilename: AnsiString; aFindCurrent: Boolean): AnsiString;
    function GetFileName(Index: TepFilers): AnsiString;
    function GetExportAnnotation: Boolean;
    function pm_GetDocSab: ISab;
    function pm_GetExportEditions: Boolean;
    function pm_GetExportReferences: Boolean;
    function pm_GetTotalDone: Int64;
    procedure pm_SetDocSab(const Value: ISab);
    procedure pm_SetExportEditions(const Value: Boolean);
    procedure pm_SetExportReferences(const Value: Boolean);
    procedure pm_SetOnlyStructure(const aValue: Boolean);
    procedure pm_SetQuery(const Value: TdtQuery);
    procedure SetProgressor(const Value: TddProgressObject);
    procedure SetFileName(Index: TepFilers; const Value: AnsiString);
    procedure SetExportAnnotation(const Value: Boolean);
    procedure SetExportDirectory(const Value: ShortString);
    procedure SetObjTopicFileName(const Value: AnsiString);
    function SetPageCount(aRangeManager: Tl3RangeManager; const aFileName: AnsiString): Boolean;
    procedure WriteImages(aRangeManager: Tl3RangeManager; aTopic, aImageFileName, aShortName : AnsiString; aImageCount:
        Integer);
    function WriteOnePubl(aPublRec: PPublishDataRec; aRangeManager: Tl3RangeManager; var aCSVElem:
        AnsiString): Boolean;
    procedure _OnCalcDone(Sender: TObject);
  protected
    procedure DoExternalExport_;
    function DoInternalExport: Boolean;
    procedure Export2EVD(Binary: Boolean);
    procedure Export2NSRC;
    procedure Export2RTF;
    procedure Export2HTML;
    procedure Export2XML;
    procedure Export2TXT;
    function DoExportDocImages: Boolean;
    procedure OpenFilers(aFiler: TepFilers);
    procedure CloseFilers(aFiler: TepFilers);
    procedure SetOutFileType(Value: TepSupportFileType);
    procedure NewDocument(Sender: TObject; TopicNo: Longint; FilerType: Byte; MainGroup: ShortString);
    procedure UnnecessaryData(aDocID : TDocID; aMessage : AnsiString);
    function MakeOutFileName(TopicNo: Longint; aFiler: TepFilers; const aMainGroup:
        ShortString = ''): ShortString;
    function GetKWFileName: ShortString;
    procedure SetKWFileName(Value: ShortString);
    function GetTotalSizeDone: ShortString;
    function GetDiapason: TDiapasonRec;
    procedure SetDiapason(Value: TDiapasonRec);
    procedure SetDivideBy(Value: TepDivideBy);
    procedure Cleanup; override;
    procedure ErrorEvent(const aMsg: AnsiString; aCategory: Integer = 0);
  public
    constructor Create(aOwner: TComponent);  override;
    function Execute: Boolean;
    procedure AbortExport;
    procedure AddBend(InBend: Tk2TagFilter; OutBend: Ik2TagGenerator = nil);
  public
   { �������� ���������� ������ ���������, ������� ����� ��������� �� ���� ���
     �������� ���������.
     �� ��������� �� ���� ����� ������ ����� �������� - AllAttributes. }
    property Attributes: TdtAttributeSet read f_Attributes write f_Attributes;
    property ClearAttributes: TexpClearAttributes
     read f_ClearAttributes
     write f_ClearAttributes;
   property Progressor : TddProgressObject
    read FProgressor
    write SetProgressor;

   property Dicts: TdtAttributeSet
      read f_Dicts write f_Dicts;

    property TotalProgressProc: Tl3ProgressProc
      read f_TotalProgressProc write f_TotalProgressProc;
    property TotalSizeDone: ShortString
      read GetTotalSizeDone;
    property CodePage: Long
      read f_CodePage
      write f_CodePage
      default CP_OEMLite;
    property DocSab: ISab read pm_GetDocSab write pm_SetDocSab;
    property ErrorFound: Boolean
     read f_ErrorFound;
   property ErrorList: TStrings
    read f_ErrorList;
    property ExportEditions: Boolean read pm_GetExportEditions write pm_SetExportEditions;
    property FormulaAsPicture: Boolean read f_FormulaAsPicture write
        f_FormulaAsPicture;
    property ImagesByPages: Boolean read f_ImagesByPages write f_ImagesByPages;
    property LowcaseNames: Boolean read f_LowcaseNames write f_LowcaseNames;
    property OnlyDocImagesHeader: Boolean read f_OnlyDocImagesHeader write f_OnlyDocImagesHeader;
    property OnlyStructure: Boolean read f_OnlyStructure write pm_SetOnlyStructure;
    property Query: TdtQuery write pm_SetQuery;
    property StartNumber: Integer read FStartNumber write FStartNumber;
    property TotalDone: Int64 read pm_GetTotalDone;
  published
    property ExportAnnotation: Boolean read GetExportAnnotation write
        SetExportAnnotation;
    property ObjTopicFileName: AnsiString read FObjTopicFileName write
        SetObjTopicFileName;
    property Diapason: TDiapasonRec
      read GetDiapason write SetDiapason;

    property ExportEmpty: Boolean
      read f_ExportEmpty write f_ExportEmpty;

    property ExportDocument: Boolean
      read f_ExportDoc write f_ExportDoc;

    property ExportRTFBody: Boolean
      read f_ExportRTFBody write f_ExportRTFBody;

    property ExportKW: Boolean
      read f_ExportKW write f_ExportKW;

    property ExportDocImage: Boolean
      read f_ExportDocImage write f_ExportDocImage;

    property MultiUser: Boolean
      read f_MultiUser write f_Multiuser;

    property Family: TFamilyID
      read f_Family write f_Family;

    property InternalFormat: Boolean
      read f_InternalFormat write f_InternalFormat;

    property OutFileType: TepSupportFileType
      read f_OutFileType write SetOutFileType default outNSRC;

    property DivideBy: TepDivideBy
     read f_DivideBy
     write SetDivideBy
     default divNone;

    property AnnotationFileName: AnsiString
     index fileAnnotation
     read GetFileName
     write SetFileName;

    property DocumentFileNameMask: AnsiString
     index fileDocument
     read GetFileName
     write SetFileName;

    property ReferenceFileNameMask: AnsiString
     index fileReference
     read GetFileName
     write SetFileName;

    property ExportDirectory: ShortString read FExportDirectory write
        SetExportDirectory;

    property KWFileName: ShortString
      read GetKWFileName write SetKWFileName;

    property UpdateFiles: Boolean
      read f_UpdateFiles write f_UpdateFiles;

    property ExternalExport: Boolean
      read f_ExternalExport write f_ExternalExport;
    property OnCalculationDone: TepCalculationDone read FOnCalculationDone write
        FOnCalculationDone;

    property ExportReferences: Boolean read pm_GetExportReferences write pm_SetExportReferences;
    property OutputFileSize: Longint
      read f_OutputFileSize write f_OutputFileSize;
    property TaskPriority : Integer
     read f_TaskPriority
     write f_TaskPriority;

  end;

const
  DefaultFileNames : array[TepFilers] of ShortString = ('document', 'related', 'annotat');
  TepPatternNames  : array[TepPatternType] of ShortString = ('%MAIN%', '%NUMBER%', '%DATE%');
  epFindNext = False;
  epFindCurrent = True;

implementation

uses
  SysUtils, Forms, StrUtils, Graphics,

  l3String, l3Date, l3Math, l3languages,
  l3FileUtils, l3Stream, l3DatLst,

  afwFacade,

  Ht_Const, ht_Dll,
  dt_Serv, dt_Doc, dt_User, dt_Dict, dt_DocImages, dt_LinkServ,

  {ddFormula2PictureFilter,} npbAttributesFilter, npbHyperlinkFilter, evdCommentFilter,
  evCustomTextFormatter, evSimpleTextPainter, evTextFormatter, evEmptyTableEliminator,
  evdWriter, evNSRWrt, evdPlainTextWriter, evdEmptyRowFilter, evdBufferedFilter,

  hyieutils, imageenio, iemio, ImageEnproc, hyiedefs, TIFLZW, GIFLZW,
  ddNSRC_w,  ddRTFWriter, ddHTMLWriter, ddServerTask, //ddUserRequestManager,

  ddUtils,  {$IFDEF AAC}dd_lcDossierDecorator,{$ENDIF}

  Document_Const, DT_ImgContainer, l3ProtoPtrRecListPrim;

resourcestring
 epsArticleSubstring = '������ ';
 epsErrorWrongRange4 = '", ���������� ������� � ����� - ';
 epsErrorWrongRange3 = ' ������ �������� ����. ������ - �������� �������: "';
 epsErrorWrongRange2 = '�����:';
 epsErrorWrongPagesRange = '����� %s: ������ �������� ����. ������ - ������������ �������� �������: %s';
 epsErrorFileCorrupted = '����� %s: ������ �������� ����. ������ - ���� �������� (%s)';
 epsOfDocuments = '��������(��)';
  rsExportData = 'ExportData';

function MakeImgRec(aDocID: TDocID): TImgCountRec;
begin
 Result.rDocID := aDocID;
 Result.rCount := 1;
end;


constructor TExportPipe.Create(aOwner: TComponent);
var
  l_Stream: Tl3MemoryStream;
  i: TepFilers;
begin
  inherited;
  f_Pipe:= TSewerPipe.Create(nil);
  f_Pipe.OnNewDocument:= NewDocument;
  f_PIpe.OnCalculateDone := _OnCalcDone;
  f_Pipe.OnError:= ErrorEvent;
  f_Attributes:= cdtAllAttributes;
  //f_Pipe.OnUnnecessaryData:= UnnecessaryData;
  f_Running:= False;
  for i:= low(TepFilers) to High(TepFilers) do
  begin
   f_Filers[i].Filer:= TevDOSFiler.Create(nil);
   f_Filers[i].FName:= DefaultFileNames[i];
  end;
  f_CreateDirs:= True;
  f_ExportDoc:= True;
  ExportReferences:= True;
  fExportDirectory:= '';
  f_DivideBy:= divNone;
  OutFileType:= outNSRC;
  f_MultiUser:= False;
  CodePage:= cp_OEMLite;
  f_WorkVAnonced:= False;
  f_UpdateFiles:= False;

  fObjTopicFileName:= 'objectopic.nsr';
  f_InternalFormat:= False;
  
  f_UnnecessaryDataList:= Tl3StringList.Create;
  f_ErrorList:= TStringList.Create;
  f_ExternalExport:= False;
  f_ExportRTFBody:= False;
  f_OutPutFileSize:= -1;
  f_OnlyDocImagesHeader:= False;
  f_ImagesByPages:= False;
end;


procedure TExportPipe.Cleanup;
var
 i: TepFilers;
begin
 l3Free(f_UnnecessaryDataList);
 l3Free(f_ErrorList); 
 l3Free(f_Pipe);
 for i:= Low(TepFilers) to High(TepFilers) do
  l3Free(f_Filers[i]);
 FreeAndNil(f_ImgCounters); 
 inherited;
end;

procedure TExportPipe.SetOutFileType(Value: TepSupportFileType);
begin
  if (f_OutFileType <> Value) and not f_Running then
  begin
    f_OutFileType:= Value;
    if not (f_OutFileType in [outNSRC, outEVD, outEVDText, outTxt]) then
    begin
      f_DivideBy:= divTopic;
    end;
  end;
  case OutFileType of
    outEVD,
    outEVDtext: f_OutExt:= '.evd';
    outTXT  : f_OutExt:= '.txt';
    outNSRC : f_OutExt:= '.nsr';
    outRTF  : f_OutExt:= '.rtf';
    outHTML : f_OutExt:= '.html';
    outXML  : f_OutExt:= '.xml';
  end;
end;

procedure TExportPipe.SetDivideBy(Value: TepDivideBy);
begin
 if (f_DivideBy <> Value) and not f_Running then
 begin
  if Value  in [divAccRight, divSize] then
  begin
   if OutFileType in [outEVD, outEVDtext,outNSRC] then
    f_DivideBy:= Value;
  end
  else
   f_DivideBy:= Value;
  UpdateFiles:= f_DivideBy = divAccRight;
 end;
end;

function TExportPipe.DoInternalExport: Boolean;
var
 i: TepFilers;
 {$IFDEF AAC}
 l_RenumBuffered: Boolean;
 {$ENDIF}
begin
 Result:= False;
 if ExportDocument or ExportAnnotation or ExportReferences or ExportKW or ExportDocImage then
 try
  {$IFDEF AAC}
  l_RenumBuffered:= LinkServer(family).Renum.Buffered;
  LinkServer(family).Renum.Buffered:= True;
  {$ENDIF}
  f_Pipe.InternalFormat:= InternalFormat;
  f_Pipe.Family:= Family;
  if fProgressor <> nil then
   f_Pipe.Progressor:= fProgressor
  else
   f_Pipe.TotalProgressProc:= f_TotalProgressProc;
  f_Pipe.Dicts:= Dicts;
  f_Pipe.ExportDirectory:= ExportDirectory;
  f_Pipe.FileSize:= OutputFileSize; // ????
  f_Pipe.OnlyStructure := OnlyStructure;
  f_Pipe.ExportDocTypes := dtAll;
  f_Pipe.FormulaAsPicture:= FormulaAsPicture;
  if not ExportDocument then
  begin
   f_pipe.ExportDocTypes:= f_pipe.ExportDocTypes - [dtText, {dtRelText,} dtObject, dtFlash, dtShortCut, dtNone];
   //ExportReferences:= False;
  end; // not ExportDocument
  if not ExportAnnotation then
   f_pipe.ExportDocTypes:= f_pipe.ExportDocTypes - [dtAnnotation];
  if not ExportReferences then
   f_pipe.ExportDocTypes:= f_pipe.ExportDocTypes - [dtRelText]
  {else
   ExportDocument:= True};
  for i:= Low(TepFilers) to High(TepFilers) do
  begin
   f_Filers[i].FileSize:= 0;
   f_Filers[i].PrevPart:= 0;
   f_Filers[i].FirstDoc:= True;
   f_Filers[i].RealName := ChangeFileExt(f_Filers[i].FName, f_OutExt);
   if UpdateFiles and (OutFileType in [outEVDtext, outTXT, outNSRC]) then
    f_Filers[i].Filer.Mode := l3_fmAppend
   else
    f_Filers[i].Filer.Mode := l3_fmWrite;
   //f_Filers[i].Filer.FileName:= l3GetTempFileName('export');//MakeOutFileName (0, i);  l3FileUtils
  end; // for i
  f_Pipe.ExportKW:= ExportKW;
  f_Pipe.ExportEmpty:= ExportEmpty;
  f_Pipe.MultiUser:= MultiUser;
  f_Pipe.KWFileName:= KWFileName;
  if f_Pipe.KWFileName = '' then
   f_Pipe.KWFileName:= 'keywords.kw';
  CodePage:= l3CodePageFromLangID(GlobalHtServer.BaseLanguage[Family].LanguageID, OutFileType = outNSRC);
  case OutFileType of
   outEVD : Export2EVD(True);
   outEVDtext: Export2EVD(False);
   outTXT : Export2TXT;
   outNSRC: Export2NSRC;
   outRTF : Export2RTF;
   outHTML: Export2HTML;
   outXML : Export2XML;
  end;
  Result:= f_Pipe.TopicDone > 0;
  if ExportDocImage then
   Result:= DoExportDocImages and Result;
 finally
  {!!!!!!!
  if Assigned(f_TotalProgressProc) then
   f_TotalProgressProc(2, 0, '��� � ���, ������!');
  }
  {$IFDEF AAC}
  LinkServer(family).Renum.Buffered:= l_RenumBuffered;
  {$ENDIF}
  for i:= Low(TepFilers) to High(TepFilers) do
   f_Filers[i].Filer.Close;
  f_Running:= False;
 end;
end;

procedure TExportPipe.DoExternalExport_;
begin
 { TODO : ��������� ���� ����� ��������������� � ���� }
 (*
 l_Params := TddExportTaskItem.Create(nil, GlobalHtServer.CurUserID);
 try
  l_Params.ExportEmptyKW         := ExportEmpty;
  l_Params.ExportDocument        := ExportDocument;
  l_Params.ExportRTFBody         := ExportRTFBody;
  l_Params.ExportKW              := ExportKW;
  l_Params.ExportDocImage        := ExportDocImage;
  l_Params.MultiUser             := MultiUser;
  l_Params.Family                := Family;
  l_Params.InternalFormat        := InternalFormat;
  l_Params.OutFileType           := Ord(OutFileType);
  l_Params.SeparateFiles         := Ord(DivideBy);
  l_Params.DocumentFileNameMask  := DocumentFileNameMask;
  l_Params.ReferenceFileNameMask := ReferenceFileNameMask;
  l_Params.ObjTopicFileName      := ObjTopicFileName;
  l_Params.KWFileName            := KWFileName;
  l_Params.OutputFileSize        := OutputFileSize;
  l_Params.ExportDirectory       := ExportDirectory;
  l_Params.ExportAnnoTopics      := ExportAnnotation;
  l_Params.AnnoTopicFileName     := AnnotationFileName;
  l_Params.OnlyStructure         := OnlyStructure;
  l_Params.DocID                 := Diapason.ID;
  l_Params.DiapasonType          := Diapason.Typ;
  UserRequestManager.SendTask(l_Params)
 finally
  l3Free(l_Params);
 end
 *)
end;

function TExportPipe.Execute: Boolean;
var
 i: TepFilers;
begin
 f_ErrorFound:= False;
 f_UnnecessaryDataList.Clear;
 f_Running:= True;
 Result:= False;
 ErrorList.Clear;
 if DivideBySize then // ������������ ����� ������
 begin
  if not AnsiContainsText(DocumentFileNameMask, TepPatternNames[patNumber]) then
   DocumentFilenamemask := ExtractOnlyFileName(DocumentFileNameMask) +
                           TepPatternNames[patNumber] +
                           ExtractFileExt(DocumentFileNameMask);
  if not AnsiContainsText(AnnotationFileName, TepPatternNames[patNumber]) then
   AnnotationFilename := ExtractOnlyFileName(AnnotationFileName) + TepPatternNames[patNumber] +
                          ExtractFileExt(AnnotationFileName);
 end; // DivideBySize
 if ExternalExport then
 begin
  DoExternalExport_;
  Result:= True;
 end
 else
  Result:= DoInternalExport;
 f_Running:= False;
end;

function TExportPipe.MakeOutFileName(TopicNo: Longint; aFiler: TepFilers; const
    aMainGroup: ShortString = ''): ShortString;
var
 l_Folder: AnsiString;
 l_PartNum : AnsiString;
 l_FileName: AnsiString;
 l_NeedNumber : Boolean;
 l_NeedAccGroup: Boolean;
 l_NeedDate: Boolean;
 l_Mask : AnsiString;
 l_FileSize: Int64;
begin
 l_Folder := ExportDirectory;
 Assert(l_Folder <> '', '������ ��� ����� ��������');
 case aFiler of
  fileReference : l_Mask := ReferenceFileNameMask;
  fileDocument  : l_Mask := DocumentFileNameMask;
  fileAnnotation: l_Mask := AnnotationFileName;
 end; // case aFiler
 // ������� �����������
 l_NeedAccGroup:= (DivideBy = divAccRight) or AnsiContainsText(l_Mask, TepPatternNames[patAccGroup]) or
                  AnsiContainsText(l_Folder, TepPatternNames[patAccGroup]);
 l_NeedNumber := DivideBySize and (aFiler <> fileReference);
 l_NeedDate:= AnsiContainsText(l_Mask, TepPatternNames[patDate]);

 if DivideBy = divTopic then
 begin
  if aFiler = fileAnnotation then
   Result:= IntToStr(TopicNo)+'a'
  else
   Result:= IntToStr(TopicNo);
 end
 else
 if DivideBy = divAccRight then
 begin
  if not AnsiContainsText(l_Mask, TepPatternNames[patAccGroup]) then
   Result:= ExtractOnlyFileName(l_Mask)+ '_' + TepPatternNames[patAccGroup]
  else
   Result:= l_Mask;
 end
 else
  Result := f_Filers[aFiler].RealName;

 if l_NeedAccGroup then
 begin
  Result := StringReplace(Result, TepPatternNames[patAccGroup], aMainGroup, [rfReplaceAll, rfIgnoreCase]);
  l_Folder := StringReplace(ExportDirectory, TepPatternNames[patAccGroup], aMainGroup, [rfReplaceAll, rfIgnoreCase]);
  if f_Writer is TddNSRCGenerator then
   TddNSRCGenerator(f_Writer).ExportDirectory := l_Folder;
  {$IFDEF Bend}
  if f_Bend <> nil then
   f_Bend.ExportDir := l_Folder;
  {$ENDIF}
 end;
 ForceDirectories(l_Folder);

 Result:= ConcatDirName(l_Folder, ExtractOnlyFileName(Result) + f_OutExt);

 if l_NeedDate then
  Result := StringReplace(Result, TepPatternNames[patDate], DateToString(SysUtils.Date), [rfReplaceAll, rfIgnoreCase]);


 if l_NeedNumber then
  if (OutputFileSize > 0) then
  begin
   UpdateFiles := False;
   l_FileName:= StringReplace(Result, TepPatternNames[patNumber], FindPartNumber(Result, epFindCurrent), [rfReplaceAll, rfIgnoreCase]);
   //������ ���������� � �������� - � ���� ������ ����� ���� ������ ������ ������ ����!
    if f_Filers[aFiler].Filer.FileName <> l_FileName then
     l_FileSize:= GetFileSize(l_FileName)
    else
     l_FileSize:= f_Filers[aFiler].Filer.Size;
    if l_FileSize >= OutputFileSize then
    begin
     l_PartNum := FindPartNumber(Result, epFindNext);
     Result := StringReplace(Result, TepPatternNames[patNumber], l_PartNum, [rfReplaceAll, rfIgnoreCase]);
    end
    else
     Result := l_FileName;
  end // l_NeedNumber and (OutputFileSize > 0)
  else
   Result := StringReplace(Result, TepPatternNames[patNumber], '', [rfReplaceAll, rfIgnoreCase]);

 if LowcaseNames then
  Result:= LowerCase(Result);
end;

procedure TExportPipe.CloseFilers(aFiler: TepFilers);
begin
 //if DivideBy in [divTopic, divAccRight, divSize] then
   if f_Filers[aFiler].Filer.Opened then
    f_Filers[aFiler].Filer.Close;
end;

procedure TExportPipe.OpenFilers(aFiler: TepFilers);
var
 l_FileName: AnsiString;
begin
 if f_Filers[aFiler].Filer.Opened then
  exit;
 l_FileName := f_Filers[aFiler].Filer.FileName;
 if (ExportAnnotation and (aFiler = fileAnnotation)) or
    (ExportDocument and (aFiler = fileDocument)) or
    (ExportReferences and (aFiler =  fileReference)) then
 try
  //if DivideBy in [divTopic, divAccRight, divSize] then
  begin
   f_Filers[aFiler].Filer.Open;
   f_Filers[aFiler].Filer.CodePage := CodePage;
  end // DivideBy in [divTopic, divAccRight, divSize]
  (*
  else
  begin
   if not f_Filers[aFiler].Filer.Opened then
   begin
    f_Filers[aFiler].Filer.Open;
    f_Filers[aFiler].Filer.CodePage:= CodePage;
   end; // not f_Filers[aFiler].Opened
  end;
  *)
 except
  on E: Exception do
  begin
   l3System.Msg2Log('CRITICAL ERROR: ������ (%s) �������� ����� %s', [E.Message, l_FileName]);
  end;
 end;
end;

procedure TExportPipe.NewDocument(Sender: TObject; TopicNo: Longint; FilerType:
    Byte; MainGroup: ShortString);
var
 l_Part: Longint;
 l_S   : AnsiString;
 l_Filer : TepFilers;
 l_NewFile: Boolean;
begin
 // ����� ����������� ������ �� ����� ����
 l_Filer := TepFilers(FilerType);
 l_S:= MakeOutFileName(TopicNo, l_Filer, MainGroup);
 l_NewFile:= not AnsiSameText(l_S, f_Filers[l_Filer].Filer.FileName);

 if l_NewFile then
  CloseFilers(l_Filer);

 if l_Filer = fileReference then
 begin
  if (DivideBy <> divNone) or (f_Filers[l_Filer].Filer.FileName = '') then
  begin
   if (l_NewFile and (DivideBy <> divAccRight)) or (f_OutFileType in [outRTF, outHTML, outXML]) then
    f_Filers[l_Filer].Filer.Mode:= l3_fmWrite
   else
    f_Filers[l_Filer].Filer.Mode:= l3_fmAppend;
   f_Filers[l_Filer].Filer.FileName:= l_S;
  end; // (DivideBy <> divNone) or (f_Filers[l_Filer].FileName = '')
 end // l_Filer = fileReference
 else // l_Filer = fileReference
 begin // l_Filer <> fileReference
  if DivideBySize then
  begin
   if l_NewFile then
   begin
    CloseFilers(l_Filer);
    if FileExists(l_S) then
     f_Filers[l_Filer].Filer.Mode:= l3_fmAppend
    else
    begin
     f_Filers[l_Filer].Filer.Mode:= l3_fmWrite;
     if OutFileType = outNSRC then
      TddNSRCGenerator(f_Writer).First:= True;
    end;
   end
   else
    f_Filers[l_Filer].Filer.Mode:= l3_fmAppend;
   f_Filers[l_Filer].Filer.FileName:= l_S;
  end
  else
  if (DivideBy <> divNone) or (f_Filers[l_Filer].Filer.FileName = '') then
  begin
   // ��������� ������ ������, ����� �� ������������� ������������
   if l_NewFile{IsNewFileName(ExtractFileName(l_S))} and (DivideBy <> divAccRight) then
    f_Filers[l_Filer].Filer.Mode:= l3_fmWrite
   else
   begin
    f_Filers[l_Filer].Filer.Mode:= l3_fmAppend;
    if OutFileType = outNSRC then
     TddNSRCGenerator(f_Writer).First:= not FileExists(l_S);
   end;
   f_Filers[l_Filer].Filer.FileName:= l_S;
  end; // (DivideBy <> divNone) or (f_Filers[l_Filer].FileName = '')
 end; // l_Filer <> fileReference
 //f_Writer.Filer := nil;
 OpenFilers(l_Filer);
 f_Writer.Filer:= f_Filers[l_Filer].Filer;
end;

procedure TExportPipe.AbortExport;
begin
 f_Pipe.Aborted:= True;
end;

procedure TExportPipe.AddBend(InBend: Tk2TagFilter; OutBend: Ik2TagGenerator =
    nil);
begin
 // ���� �������� ������ ����� nil, �� ������������ InBend.Generator
 f_InBend:= InBend;
 if OutBend = nil then
   f_OutBend:= InBend.Generator
 else
  f_OutBend:= OutBend;
end;

function TExportPipe.DivideBySize: Boolean;
begin
 Result := (AnsiContainsText(DocumentFileNameMask, TepPatternNames[patNumber]) or AnsiContainsText(AnnotationFileName, TepPatternNames[patNumber]))
           or ((DivideBy = divSize) and (OutputFileSize > 0));
end;

function TExportPipe.DoExportDocImages: Boolean;
var
 l_PublInDataList : ISabCursor;
 I               : Integer;
 l_TextF         : TextFile;
 l_RangeManager  : Tl3RangeManager;
 l_Units         : AnsiString;
 l_s             : AnsiString;
begin
 //������� lPublInDataList
 Result:= False;
 //l_PublInDataList := DictServer(f_Family).GetPublishData(MakeSab(DocumentServer(f_Family).FileTbl, Diapason.List));
 l_PublInDataList := DictServer(f_Family).GetPublishData(f_Pipe.DocSab);
 if l_PublInDataList <> nil then
 begin
  ForceDirectories(ExportDirectory);
  if f_ImgCounters = nil then
   f_ImgCounters := Tl3RecList.Create(SizeOf(TImgCountRec));
  f_ImgCounters.Clear;
  if f_ImagesByPages then
  begin
   AssignFile(l_TextF, ExportDirectory+'\images.csv');
   Rewrite(l_TextF);
  end;
  try
   if FProgressor <> nil then
    FProgressor.Start(l_PublInDataList.Count, '������� ������� ����������', False);
   l_RangeManager:= Tl3RangeManager.Create;
   try
    for I:= 0 to pred(l_PublInDataList.Count) do
    begin
     if WriteOnePubl(PPublishDataRec(l_PublInDataList.GetItem(I)), l_RangeManager, l_S) and f_ImagesByPages then
     begin
      l_S := l_S + '1'#9 + IntToStr(l_RangeManager.Count) + #9;
      if l_RangeManager.BottomSide then
       l_S := l_S + '1'
      else
       l_S := l_S + '0';
      Writeln(l_TextF, l_S);
     end; // WriteOnPubl
     if FProgressor <> nil then
      FProgressor.ProcessUpdate(i)
     else
      afw.ProcessMessages;
     if f_Pipe.Aborted then
      break;
    end; // for i
   finally
    l_RangeManager.Free;
   end; // try..finally
   Result:= True;
  finally
   if f_ImagesByPages then
    CloseFile(l_TextF);
   if FProgressor <> nil then
    FProgressor.Stop;
  end; // try..finally
 end; // <> nil
end;

procedure TExportPipe.ErrorEvent(const aMsg: AnsiString; aCategory: Integer = 0);
begin
 f_ErrorList.Add(aMsg);
end;

procedure TExportPipe.Export2NSRC;
var
 l_G, l_G4Free : Tk2tagGenerator;
 l_ObjFN: AnsiString;
 i: TepFilers;
begin
 l_G:= nil;
 try
  f_Writer:= TddNSRCGenerator.SetTo(l_G);
  TddNSRCGenerator(f_Writer).CodePage:= CodePage;
  TddNSRCGenerator(f_Writer).ExportDirectory:= ExportDirectory;
  TddNSRCGenerator(f_Writer).OnError:= ErrorEvent;
  {$IFDEF evNSRCPlus}
  TevSimpleTextPainter.SetTo(l_G);
  {$ELSE evNSRCPlus}
  TevTextFormatter.SetTo(l_G);
  {$ENDIF evNSRCPlus}
  TevCustomTextFormatter(l_G).CodePage:= CodePage;
  TevdEmptyRowFilter.SetTo(l_G);
  {$IFDEF Bend}
  f_Bend:= TddPipeBend.SetTo(l_G);
  TddPipeBend(l_G).ExportDir:= ExportDirectory;
  TddPipeBend(l_G).ObjTopicFileName:= ObjTopicFilename;
  {$ENDIF}
  {$IFDEF AAC}
  TlcDossierDecorator.SetTo(l_G);
  {$ENDIF}
  TevEmptyTableEliminator.SetTo(l_G);
  // ������ ������ ���?
  (*
  if DivideBy = divNone then
  begin
   for i := Low(TepFilers) to High(TepFilers) do
    f_Filers[i].Filer.FileName:= ConcatDirName(ExportDirectory, f_Filers[i].RealName);
  end;
  *)
  f_Pipe.Convert2OEM:= True;
  f_Pipe.ExportDocument:= ExportDocument;
  if not UpdateFiles then
  begin
   l_ObjFN:= ConcatDirName(ExportDirectory, ObjTopicFilename);
   if FileExists(l_ObjFN) then
    DeleteFile(l_ObjFN);
  end; // not UpdateFiles

  l_G4Free:= l_G;

  if f_InBend <> nil then
  begin
   f_InBend.Generator:= l_G;
   l_G:= f_InBend;
  end;

  f_Pipe.Writer:= l_G;
  f_Pipe.Execute(Attributes);

 finally
  FreeAndNil(l_G4Free);
 end;
end;

procedure TExportPipe.Export2RTF;
var
 i : TepFilers;
begin
  f_Writer:= TevRTFObjectGenerator.Create;
  try
   if f_InBend <> nil then
   begin
    f_Pipe.Writer := f_InBend;
    f_OutBend:= f_Writer;
   end
   else
    f_Pipe.Writer:= f_Writer;
   f_Pipe.Convert2OEM:= False;
   f_Pipe.ExportDocument:= ExportDocument;
   f_Pipe.Execute;
  finally
   l3Free(f_Writer);
  end; { Writer.Create }
end;

procedure TExportPipe.Export2XML;
var
 i : TepFilers;
 l_G : Tk2tagGenerator;
begin
 l_G:= nil;
 try
  TevdXMLWriter.SetTo(l_G);
  f_Writer:= TevdXMLWriter(l_G);
  if ClearAttributes <> attrNone then
  begin
   f_Pipe.FormulaAsPicture:= true;
   //TddFormula2PictureFilter.SetTo(l_G); // ddFormula2PictureFilter
   if ClearAttributes = attrLevel1 then
    TnpbAttributesFilter.SetTo(l_G)  // npbAttributesFilter
   else
   if ClearAttributes = attrLevel2 then
   begin
    TnpbAttributesFilterEx.SetTo(l_G);  // npbAttributesFilter
    TnpbHyperlinkFilter.SetTo(l_G);  // evdHyperlinkEliminator
   end; // ClearAttributes = attrLevel2
   TevdCommentFilter.SetTo(l_G); // evdCommentFilter
  end; // ClearAttributes <> attrNone

  if f_InBend <> nil then
  begin
   f_Pipe.Writer := f_InBend;
   f_OutBend:= l_G;
  end
  else
   f_Pipe.Writer:= l_G;
  f_Pipe.Convert2OEM:= False;
  f_Pipe.ExportDocument:= ExportDocument;
  f_Pipe.Execute;
 finally
  FreeAndNil(l_G);
 end; { Writer.Create }
end;

procedure TExportPipe.Export2HTML;
var
 i : TepFilers;
begin
  f_Writer:= TddHTMLGenerator.Create;
  try
   if f_InBend <> nil then
   begin
    f_Pipe.Writer := f_InBend;
    f_OutBend:= f_Writer;
   end
   else
    f_Pipe.Writer:= f_Writer;
   f_Pipe.Convert2OEM:= False;
   f_Pipe.ExportDocument:= ExportDocument;
   f_Pipe.Execute;
  finally
    l3Free(f_Writer);
  end; { Writer.Create }
end;

procedure TExportPipe.Export2TXT;
var
 Formatter: TevTextFormatter;
 i : TepFilers;
begin
 Formatter:= TevTextFormatter.Create(nil);
 try
  Formatter.CodePage:= CodePage;
  f_Writer:= TevdPlainTextWriter.Create(nil);
  try
   if f_InBend <> nil then
   begin
    f_Pipe.Writer := f_InBend;
    f_OutBend:= Formatter;
   end
   else
    f_Pipe.Writer:= Formatter;
   Formatter.Generator:= f_Writer;
   f_Pipe.Convert2OEM:= (CodePage <> cp_OEM) and (CodePage <> cp_OEMLite);
   f_Pipe.ExportDocument:= ExportDocument;
   f_Pipe.Execute;
  finally
   l3Free(f_Writer);
  end; { Writer.Create }
 finally
  l3Free(Formatter);
 end; //
end;

procedure TExportPipe.Export2EVD(Binary: Boolean);
var
 i : TepFilers;
 {$IFDEF AAC}
 l_DM: TlcDossierDecorator;
 {$ENDIF}
begin
 {$IFDEF AAC}
 l_DM:= TlcDossierDecorator.Create(nil);
 try
 {$ENDIF}
  f_Writer:= TevdNativeWriter.Create(nil);
  try
   TevdNativeWriter(f_Writer).Binary:= Binary;
   {$IFDEF AAC}
   f_Pipe.Writer:= l_DM;
   if f_InBend <> nil then
   begin
    l_DM.Generator := f_InBend;
    if f_InBend.Generator = nil then
     f_InBend.Generator:= f_Writer
    else
     f_OutBend:= f_Writer;
   end
   else
    l_DM.Generator:= f_Writer;
   {$ELSE}
   if f_InBend <> nil then
   begin
    f_Pipe.Writer := f_InBend;
    if f_InBend.Generator = nil then
     f_InBend.Generator:= f_Writer
    else
     f_OutBend:= f_Writer;
   end
   else
    f_Pipe.Writer:= f_Writer;
   {$ENDIF}
   f_Pipe.Convert2OEM:= False;
   f_Pipe.ExportDocument:= ExportDocument;
   f_Pipe.Execute(Attributes - [atKeyWords]);
  finally
    l3Free(f_Writer);
  end; { Writer.Create }
 {$IFDEF AAC}
 finally
  l3Free(l_DM);
 end;
 {$ENDIF}
end;

function TExportPipe.FindPartNumber(aFilename: AnsiString; aFindCurrent: Boolean):
    AnsiString;
var
 l_CurNum: Integer;
 l_S : AnsiString;
begin
  l_CurNum := StartNumber;
  repeat
   if l_CurNum = 0 then
    Result := ''
   else
    Result := IntToStr(l_CurNum);
   if (l_CurNUm > 0) then
    Result := '_' + Result;
   if FileExists(StringReplace(aFileName, TepPatternNames[patNumber], Result,
                               [rfIgnoreCase, rfReplaceAll])) then
    Inc(l_CurNum)
   else
   begin
    if aFindCurrent then
     if l_CurNum > StartNumber then
     begin
      Dec(l_CurNum);
      if l_CurNum > 0 then
       Result := IntToStr(l_CurNum)
      else
       Result := '';
      if DivideBySize and (l_CurNUm > 0) then
       Result := '_' + Result;
     end; // l_CurNum > StartNumber
    break;
   end
  until False;
end;

function TExportPipe.GetKWFileName: ShortString;
begin
  Result:= f_Pipe.KWFileName;
end;

procedure TExportPipe.SetKWFileName(Value: ShortString);
begin
  f_Pipe.KWFileName:= Value;
end;

function TExportPipe.GetTotalSizeDone: ShortString;
begin
  Result:= f_Pipe.TotalSizeDone;
end;


function TExportPipe.GetDiapason: TDiapasonRec;
begin
  Result:= f_Pipe.Diapason;
end;

function TExportPipe.GetFileName(Index: TepFilers): AnsiString;
begin
  Result := f_Filers[index].FName;
end;

function TExportPipe.GetExportAnnotation: Boolean;
begin
  Result := f_Pipe.ExportAnnotation;
end;

function TExportPipe.pm_GetDocSab: ISab;
begin
 Result := f_Pipe.DocSab;
end;

function TExportPipe.pm_GetExportEditions: Boolean;
begin
 Result := f_Pipe.ExportEditions;
end;

function TExportPipe.pm_GetExportReferences: Boolean;
begin
 Result := f_Pipe.ExportReferences;
end;

function TExportPipe.pm_GetTotalDone: Int64;
begin
 Result := f_Pipe.TotalDone;
end;

procedure TExportPipe.pm_SetDocSab(const Value: ISab);
begin
 f_Pipe.DocSab:= Value;
end;

procedure TExportPipe.pm_SetExportEditions(const Value: Boolean);
begin
 f_Pipe.ExportEditions:= Value;
end;

procedure TExportPipe.pm_SetExportReferences(const Value: Boolean);
begin
 f_Pipe.ExportReferences:= Value;
end;

procedure TExportPipe.pm_SetOnlyStructure(const aValue: Boolean);
begin
 f_OnlyStructure := aValue;
 {!!!! ������� ��� ����������� !!!!}
 if f_OnlyStructure then
  l3System.Stack2Log('������ �������� ������ ��������� ����������');
end;

procedure TExportPipe.pm_SetQuery(const Value: TdtQuery);
var
 l_DRec: TDiapasonRec;
 l_Sab: ISab;
begin
 l_DRec.Typ:= tdNumList;
 l_DRec.ExternalFormat:= False;
 l_Sab:= Value.FoundList;
 l_Sab.ValuesOfKey(fId_Fld);
 l_DRec.List:= l_Sab.ExtractHTSab;
 Diapason:= l_DRec;
end;

procedure TExportPipe.SetDiapason(Value: TDiapasonRec);
begin
  f_Pipe.Diapason:= Value;
end;

procedure TExportPipe.UnnecessaryData(aDocID : TDocID; aMessage : AnsiString);
begin
 f_ErrorFound:= True;
 { TODO -oNarry -c�������� : �� ������� - �������� ����� �������� ��������� ��������� }
 f_UnnecessaryDataList.Add(SysUtils.Format('%d %s', [aDocID, aMessage]));
end;

procedure TExportPipe.SetProgressor(const Value: TddProgressObject);
begin
  FProgressor := Value;
end;

procedure TExportPipe.SetFileName(Index: TepFilers; const Value: AnsiString);
begin
 if Value = '' then
  f_Filers[Index].FName:= DefaultFileNames[Index]
 else
  f_Filers[Index].FName:= Value;
end;

procedure TExportPipe.SetExportAnnotation(const Value: Boolean);
begin
 f_Pipe.ExportAnnotation := Value;
end;

procedure TExportPipe.SetExportDirectory(const Value: ShortString);
begin
  if FExportDirectory <> Value then
  begin
    FExportDirectory := Value;
  end;
end;

procedure TExportPipe.SetObjTopicFileName(const Value: AnsiString);
begin
 if Value <> '' then
  FObjTopicFileName := Value;
end;

function TExportPipe.SetPageCount(aRangeManager: Tl3RangeManager; const aFileName: AnsiString): Boolean;
var
 l_ImageIO: TImageEnIO;
begin
 l_ImageIO := TImageEnIO.Create(nil);
 try
  try
   if l_ImageIO.LoadFromFileTIFF(aFileName) > 0 then
    aRangeManager.SrcString:= '1-' + IntToStr(l_ImageIO.Params.TIFF_ImageCount);
   Result:= True;
  except
   on EieImageReadError do
    Result:= False
   else
    raise;
  end;
 finally
  l3Free(l_ImageIO);
 end; // try..finally;
end;


procedure TExportPipe.WriteImages(aRangeManager: Tl3RangeManager; aTopic,
    aImageFileName, aShortName : AnsiString; aImageCount: Integer);
{����� ������ - ������� ����������� ����� ��������� ���������� ��������� �������:
[Pref]_[Num]_[Date]_[Topic]_[Page].gif, ���
[Pref] - ������� �������
[Num] - ����� ������� (���� ���, �� ����� �������������)
[Date] - ���� ������� (��� ������ ���� �������) � ������� DDMMYYYY, ��������, ��� ������� ��������� � ��� - 01052006  (���� ���, �� ����� �������������)
[Topic] - ����� ���������, ��� �������� ��������� �������� �������
[Page] - ����������
��� ����� ��������� �������� �������������, ���� ����� �����������, �� � ������ ������������� ����������
}
var
 j: Integer;
 l_ImageIO: TImageEnIO;
 l_ImageProc: TImageEnProc;
 l_BMP: TIEBitmap;
 l_FileName, l_FileNameEx : AnsiString;
 l_Height, l_Width : Integer;
 l_CurPage: Integer;
begin
 try
  l_ImageIO:= TImageEnIO.Create(nil);
  try
   l_ImageProc:= TImageEnProc.Create(nil);
   try
    l_BMP:= TIEBitmap.Create;
    l_BMP.Location := ieFile;
    try
     if Progressor <> nil then
      Progressor.ProcessUpdate(0, aRangeManager.Count, '������ ������� � ��������� ' + aTopic);
     l_FileName:= ExportDirectory + '\' + aShortName + '_' + aTopic;
     l_FileNameEx := ExportDirectory + '\' + aTopic + '_' + IntToStr(aImageCount) + '.tif';
     for J:= 1 to aRangeManager.Count do
     begin
      if f_Pipe.Aborted then
       break;
      l_ImageIO.IEBitmap := l_BMP;
      l_CurPage := Pred(aRangeManager.Pages[J]);
      l_ImageIO.Params.TIFF_ImageIndex := l_CurPage;
      try
       l_ImageIO.LoadFromFileTIFF(aImageFileName);
       l_ImageIO.Params.TIFF_Compression := ioTIFF_G4FAX;
 
       if f_ImagesByPages then
       begin
        l_FileNameEx := l_FileName + '_' + IntToStr(J) + '.tif';
        l_ImageIO.SaveToFileTIFF(l_FileNameEx);
        l_FileNameEx := l_FileName + '_' + IntToStr(J) + '.gif';
        l_ImageProc.AttachedIEBitmap := l_ImageIO.IEBitmap;
 
        if (l_ImageIO.IEBitmap.Height >= 2000) then {[$142607395]}
        begin
         // � GIF �������� �� ������� 32% �� ���������
         l_Width := l3MulDiv(l_ImageIO.IEBitmap.Width, 32, 100);
         l_Height := l3MulDiv(l_ImageIO.IEBitmap.Height, 32, 100);
         l_ImageProc.Resample(l_Width, l_Height, rfBicubic);
        end;
 
        l_ImageIO.Params.GIF_Interlaced := False;
        l_ImageIO.Params.BitsPerSample := 2;
        l_ImageIO.Params.SamplesPerPixel := 1;
        l_ImageIO.SaveToFileGIF(l_FileNameEx);
       end
       else // if f_ImagesByPages
       begin
        l_ImageIO.Params.TIFF_ImageIndex := J - 1;
        if J = 1 then
         l_ImageIO.SaveToFileTIFF(l_FileNameEx)
        else
         l_ImageIO.InsertToFileTIFF(l_FileNameEx);
       end;  // if f_ImagesByPages
      except
       on EieImageReadError do
        l3System.Msg2Log(SysUtils.Format(epsErrorFileCorrupted, [aTopic, aImageFileName]))
       else
        raise;
      end;
      if Progressor <> nil then
       Progressor.ProcessUpdate(1, j, Format('���. %d', [J]))
      else
       afw.ProcessMessages;
     end; // for j
     if Progressor <> nil then
      Progressor.ProcessUpdate(2, aRangeManager.Count, '');
    finally
     FreeAndNil(l_BMP);
    end; // try..finally
   finally
    FreeAndNil(l_ImageProc);
   end; // try..finally
  finally
   FreeAndNil(l_ImageIO);
  end; // try..finally;
 except
  on E: Exception do
   l3System.Msg2Log('������ ��� ������� ������ (���� %s). %s: %s', [aImageFileName, E.ClassName, E.Message]);
 end;
end;

function TExportPipe.WriteOnePubl(aPublRec: PPublishDataRec; aRangeManager: Tl3RangeManager; var
    aCSVElem: AnsiString): Boolean;
var
 l_Msg: AnsiString;
 l_SrcRange: AnsiString;
 l_NumOfImages: Integer;
 l_ShName: AnsiString;
 l_Topic: AnsiString;
 l_ImageFileName: AnsiString;
 l_ImageIO: TImageEnIO;
 X: Integer;
 l_Num: AnsiString;
 l_TmpS: AnsiString;
 I: Integer;
 l_TextF: TextFile;
 l_Date: AnsiString;
 l_ImgContainer : TdtImgContainerFile;
 l_ImgCount: Integer;
 l_ICRec: TImgCountRec;
 l_PICRec: PImgCountRec;
 l_Idx: Integer;
 l_IsPicture: Boolean;

 procedure AddToCSV(const aStr: string);
 begin
  if f_ImagesByPages and l_IsPicture then
   aCSVElem := aCSVElem + aStr;
 end;

begin
 Result:= False;
 with aPublRec^ do
 begin
  l_ShName:= l3ArrayToString(ShName, SizeOf(ShName));
  l_ImageFileName := DocImageServer.GetImageFileName(aPublRec);
  l_IsPicture := IsTIFF(l_ImageFileName);

  if ((SourId = 0) and (l_ShName <> '@')) or
     (f_ImagesByPages and  (l_ShName = '')) or // ���� �������� �����������, �� ������� ��� ������������ ����������
     not FileExists(l_ImageFileName) then
  begin
   l3System.Msg2Log(IfThen(FileExists(l_ImageFileName),
                           '������������ �������� ������������� "'+ l_ShName + '"',
                           '������������ ��� ����� "'+ l_ImageFileName +'"'));
   exit;
  end; // ((SourId = 0) and (l_ShName <> '@')) or (l_ShName = '') or not DocImageServer.IsImageExists(l_PublRec)
  l_Num  := l3ArrayToString(Num, SizeOf(Num));
  aCSVElem := '';
  AddToCSV(l_ShName + #9 + l_Num + #9#9);
  if Length(l_Num) > 0 then
   l_ShName := l_ShName +'_'+l_Num;

  l_Date := FormatDateTime('ddmmyyyy',StDateToDateTime(SDate));
  if SDate > 0 then
   l_ShName := l_ShName +'_'+l_Date;
  AddToCSV(l_Date + #9);
  l_Topic := IntToStr(LinkServer(Family).Renum.GetExtDocID(DocID));
  AddToCSV(l_Topic + #9);
  l_TmpS:= l3ArrayToString(LinkComment, SizeOf(LinkComment));
  l_Num:= '';
  X:= Pos(epsArticleSubstring, AnsiUpperCase(l_TmpS));
  if X <> 0 then
  begin
   Inc(X, 7);
   while (X <= Length(l_TmpS)) and ((l_TmpS[X] in cc_ANSILetter) or (l_TmpS[X] in cc_Digits)) do
   begin
    l_Num := l_Num + l_TmpS[X];
    Inc(X);
   end;
  end;
  AddToCSV(l_Num + #9);

  if f_ImgCounters.FindPart(DocID, SizeOf(TDocID), l_Idx) then
  begin
   l_PICRec := PImgCountRec(f_ImgCounters.ItemSlot(l_Idx));
   l_PICRec^.rCount := l_PICRec^.rCount + 1;
   l_ImgCount := l_PICRec^.rCount;
  end
  else
  begin
   l_ICRec := MakeImgRec(DocID);
   f_ImgCounters.Add(l_ICRec);
   l_ImgCount := 1;
  end;

  if l_IsPicture then // �������� ������ TIFF'�
  begin
   l_NumOfImages := EnumTIFFIm(l_ImageFileName);
   l_SrcRange := l3ArrayToString(Pages, SizeOf(Pages));
   if aRangeManager.CheckSource(l_SrcRange) <> 0 then
   begin
    l_Msg:= SysUtils.Format(epsErrorWrongPagesRange, [l_Topic, l_SrcRange]);
    l3System.Msg2Log(l_Msg);
    f_ErrorList.Add(l_Msg);
    exit;
   end;
   aRangeManager.SrcString := l_SrcRange;
   aRangeManager.Confine(1, l_NumOfImages);
   if aRangeManager.Count = 0 then
   begin
    if l_SrcRange <> '' then
    begin
     l3System.Msg2Log('�������� %s: ������ �������� %s, �� ����� ���� %d ������� - ��������', [l_Topic, l_SrcRange, l_NumOfImages]);
     Exit;
    end;
    if not SetPageCount(aRangeManager, l_ImageFileName) then
    begin
     l3System.Msg2Log(SysUtils.Format(epsErrorFileCorrupted, [l_Topic, l_ImageFileName]));
     exit;
    end;
   end; // RM.Count = 0
   // �������� ���������� �������
   if (not f_OnlyDocImagesHeader) or (not f_ImagesByPages) then
    WriteImages(aRangeManager, l_Topic, l_ImageFileName, l_ShName, l_ImgCount);
   Result:= True;
  end // IsTIFF
  else
   if not f_ImagesByPages then
   begin
    // ������ ����������� � ���������� ����� � ����������
    l_ImgContainer := TdtImgContainerFile.Create(l_ImageFileName);
    try
     l_ImgContainer.UnWrapFile(ConcatDirName(ExportDirectory, l_Topic + '_' + IntToStr(l_ImgCount) + '.zip'));
    finally
     l3Free(l_ImgContainer);
    end;
   end; // if not f_ImagesByPages then
 end; // with PPublishDataRec(lPublInDataList.Data[I])^
end;

procedure TExportPipe._OnCalcDone(Sender: TObject);
begin
 if Assigned(FOnCalculationDone) then
  FOnCalculationDone(Self, TSewerPipe(Sender).AllTopicsSize, TSewerPipe(Sender).EmptyCount);
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\pipeout\ExportPipe.pas initialization enter'); {$EndIf}
 DefTIFF_LZWDECOMPFUNC:=TIFFLZWDecompress;
 DefTIFF_LZWCOMPFUNC:=TIFFLZWCompress;
 DefGIF_LZWDECOMPFUNC:= GIFLZWDecompress;
 DefGIF_LZWCOMPFUNC:= GIFLZWCompress;
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\dd\pipeout\ExportPipe.pas initialization leave'); {$EndIf}
end.

