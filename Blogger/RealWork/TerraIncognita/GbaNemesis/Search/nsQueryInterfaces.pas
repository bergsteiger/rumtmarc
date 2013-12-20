unit nsQueryInterfaces;

// $Id: nsQueryInterfaces.pas,v 1.87 2013/04/24 09:35:56 lulin Exp $

// $Log: nsQueryInterfaces.pas,v $
// Revision 1.87  2013/04/24 09:35:56  lulin
// - ���������.
//
// Revision 1.86  2011/12/15 16:24:19  lulin
// {RequestLink:320734796}
//
// Revision 1.85  2010/11/02 15:19:14  lulin
// {RequestLink:237994238}.
//
// Revision 1.84  2010/10/25 09:55:14  lulin
// {RequestLink:237502802}.
// ��� �3.
//
// Revision 1.83  2010/10/12 11:11:53  oman
// - new: ��������� {RequestLink:235057812}
//
// Revision 1.82  2010/05/26 12:09:58  oman
// - new: {RequestLink:197493008}
//
// Revision 1.81  2009/09/18 12:21:37  lulin
// - ������������� �������, ������ ��������� �� ������.
//
// Revision 1.80  2009/09/03 13:26:17  lulin
// - ������ ���������� ����� �������������� ���� �� �����.
//
// Revision 1.79  2009/02/10 19:04:03  lulin
// - <K>: 133891247. �������� �������� ���������� ������.
//
// Revision 1.78  2009/02/09 11:57:18  lulin
// - <K>: 133891247.
//
// Revision 1.77  2008/06/18 13:27:53  oman
// - fix: �������� ���������� ������� ��������� �������� (cq29204)
//
// Revision 1.76  2008/06/18 13:09:05  oman
// - fix: ��������� ���������� �� ���� ��������� (cq29204)
//
// Revision 1.75  2008/06/18 11:20:12  oman
// - fix: �������� ����� ���������� ���������� (cq29204)
//
// Revision 1.74  2008/04/14 13:43:54  lulin
// - <K>: 89096854.
//
// Revision 1.73  2008/01/10 07:23:08  oman
// ������� �� ����� �������
//
// Revision 1.72  2007/12/25 12:55:42  lulin
// - ������ �������� ������.
//
// Revision 1.71  2007/12/21 07:12:12  mmorozov
// - new: �������� �� ����������� �� ���������� ������ (CQ: OIT5-27823);
//
// Revision 1.70  2007/10/08 07:54:14  oman
// - fix: ��� ������ �� �������� �������� ������������ ���. �.�. ��
//  ����������� ��� �� ����������� ����������� (cq26951)
// - fix: ��� ������ �� �������� �������� ������ � ���� �����. �.�. ��
//  ����������� ��� �� ��������.
//
// Revision 1.69  2007/08/14 14:29:57  lulin
// - ������������ ����������� ������ ������.
//
// Revision 1.68  2007/06/28 11:28:46  lulin
// - cleanup.
//
// Revision 1.67  2007/06/26 10:47:06  lulin
// - cleanup.
//
// Revision 1.66  2007/06/20 12:06:10  lulin
// - �������� �������� ������ (<K>-20219395).
//
// Revision 1.65  2007/06/13 15:13:57  lulin
// - ����� ������������ � ������������ � ���, ��� �� ������ (<K>-18219651).
//
// Revision 1.64  2007/06/13 14:26:59  lulin
// - ������� �������� �������� ���������� (<K>-18219609).
//
// Revision 1.63  2007/06/13 14:12:12  lulin
// - ������ �������� ��������� (<K>-18219558).
//
// Revision 1.62  2007/06/13 13:51:04  lulin
// - ����� �������� � ���������� � ���������� ������� (<K>-18219517).
//
// Revision 1.61  2007/06/13 13:32:13  lulin
// - cleanup.
//
// Revision 1.60  2007/06/04 08:12:53  lulin
// - ������� �������� ��� (<K>-15663142).
//
// Revision 1.59  2007/05/30 18:01:23  lulin
// - ������ �������� �������� ���������� � ������ (<K>-14516571).
//
// Revision 1.58  2007/05/30 14:18:45  lulin
// - � ��������� ������ �������� �������� �������� (<K>-14516583).
//
// Revision 1.57  2007/05/30 11:46:36  lulin
// - �������� ����, �������� ������ ����� ��������� (<K>-14516416).
//
// Revision 1.56  2007/05/30 11:41:14  lulin
// - �������� ����, �������� ������ ����� ��������� (<K>-14516416).
//
// Revision 1.55  2007/05/30 10:28:02  lulin
// - ������� �������� �������� (<K>-14516397).
//
// Revision 1.54  2007/05/30 10:09:45  lulin
// - �������� ��� ����� ��� ��������� ����������.
//
// Revision 1.53  2007/05/30 09:18:00  lulin
// - ����������� �� �������� �����, �� ������� ����������� ���� "����" (<K>-14516317).
// - ����������� �� ������ �� ���� "����" (<K>-13240375).
//
// Revision 1.52  2007/05/30 07:39:20  lulin
// - ������ ��� ��������� �������� ������������������ �������� �������� ������� ������������������ �������� (<K>-14516282).
//
// Revision 1.51  2007/05/30 07:07:53  lulin
// - �� ������ ���������� ������� ������� ������������������ (<K>-13239064).
// - �������������� ���.
//
// Revision 1.50  2007/05/29 09:50:12  lulin
// - ����� �������� ����� ���������� (<K>-13795334).
//
// Revision 1.49  2007/05/29 09:34:57  lulin
// - ������� �������� ������������ �������� (<K>-13239062).
//
// Revision 1.48  2007/05/28 15:33:04  lulin
// - ������� �������� �����.
//
// Revision 1.47  2007/05/28 12:58:28  lulin
// - �������� ����������� ������ �������� (<K>-13240379).
//
// Revision 1.46  2007/05/28 11:44:41  lulin
// - �������� � ���������� �������� ����� (<K>-13240319).
//
// Revision 1.45  2007/05/28 11:02:37  lulin
// - �������� � ���������� �������� ����� (<K>-13240310).
//
// Revision 1.44  2007/05/25 12:54:00  lulin
// - �������� �� ��� ��������, � ��� ������� - ����� ������ ��� �� ������ ���.
//
// Revision 1.43  2007/05/25 07:38:46  lulin
// - �������� �������� �������� �������� (<K>-13239753).
//
// Revision 1.42  2007/05/23 06:44:16  lulin
// - �������� �������� �������� �������� _NumList_.
//
// Revision 1.41  2007/05/22 12:44:58  lulin
// - �������� ������������� �������� ��������������� ��������.
//
// Revision 1.40  2007/05/22 12:00:41  lulin
// - �������� ������������� �������� ����� ��������.
//
// Revision 1.39  2007/05/22 07:36:02  lulin
// - ������ ������ �������� ������ ��������.
//
// Revision 1.38  2007/05/22 07:24:51  lulin
// - �������������� ��� ����� ��� ��������� �������� ����������.
//
// Revision 1.37  2007/05/21 14:25:37  lulin
// - ����� �������������� �������� ����������� ���������, � �� ������������� ��� �����.
//
// Revision 1.36  2007/05/21 14:11:05  lulin
// - ������� �������� �������� ����������.
//
// Revision 1.35  2007/05/17 13:27:36  lulin
// - � ���������� ������� �������� �������� - "�������� ���� ��-���������".
//
// Revision 1.34  2007/05/16 14:04:08  oman
// Cleanup
//
// Revision 1.33  2007/04/05 14:10:23  lulin
// - ����������� �� ������ �������������� �����.
//
// Revision 1.32  2007/04/05 07:58:27  lulin
// - ����������� �� ������ �������������� ����� ��� ������ � ���������.
//
// Revision 1.31  2007/03/28 14:51:21  oman
// - new: ����������� �� ContextParams � �� (cq24456)
//
// Revision 1.30  2007/03/27 11:59:34  oman
// ��������� ��� ��������� �� ����������� ������
//
// Revision 1.29  2007/02/16 18:06:14  lulin
// - ����������� �� ������������ ���������� ����.
//
// Revision 1.28  2007/02/14 17:49:30  lulin
// - ����������� �� ������������� ����������� �����.
//
// Revision 1.27  2007/02/14 16:51:00  lulin
// - ����������� �� ������������� ����������� �����.
//
// Revision 1.26  2007/02/05 09:07:26  lulin
// - bug fix: �� ���������� �����������.
//
// Revision 1.25  2007/02/02 08:39:25  lulin
// - ��������� �� ������ � ����������.
//
// Revision 1.24  2006/11/10 16:00:02  oman
// Merge from B_NEMESIS_6_4
//
// Revision 1.23  2006/11/03 09:46:21  oman
// Merge with B_NEMESIS_6_4_0
//
// Revision 1.22.2.2.2.1  2006/11/10 10:05:55  oman
// ����� �������� �����
//
// Revision 1.22.2.2  2006/10/24 09:46:55  oman
// - fix: � �� ��� �������� �� ������� ���������� �������� ����
//  - ������ ������ ���� ��������� _�����_ ����������� (cq23114)
//
// Revision 1.22.2.1  2006/10/24 09:43:55  oman
// no message
//
// Revision 1.22  2006/09/18 09:08:41  oman
// - fix: ���������� �������� ������������ �����
// - fix: ���������� ����������� �� ����� �����
// cleanup (�������� ��������/���������/��������)
//
// Revision 1.21  2006/09/14 14:16:27  oman
// - new: ��������� � �� �� (cq22535)
//
// Revision 1.20  2006/07/10 08:04:40  oman
// - new beh: � �������� ������ ���� ����������� ��������� ��
//  �������������� �������� (cq21733)
//
// Revision 1.19  2006/06/29 11:56:13  mmorozov
// - change: ��������� � ����� � ��������� ���� GblAdapter.TDateTime;
//
// Revision 1.18  2006/06/16 09:23:48  oman
// - fix: ������������ ������� ����������� ������������ ��� ������� -
// �� ��� ����... (cq21330)
//
// Revision 1.17  2006/06/16 07:45:40  oman
// - fix: � �������� ������ ��� ��������� ��������, ������� �����
//  ������������ ��� ���������� ������ => ����� AV (cq21336)
//
// Revision 1.16  2006/06/15 08:35:48  oman
// - fix: ������������ ������� ����������� ������������ ��� ������� (cq21330)
//
// Revision 1.15  2006/04/21 14:10:07  dinishev
// Bug fix: �� ���������������
//
// Revision 1.14  2006/04/21 12:57:39  dinishev
// Bug fix: �� ���������������
//
// Revision 1.13  2006/04/21 12:12:15  dinishev
// Bug fix: ���� ����������� ��������� ������ � ������� ������ �������� � ������ ������
//
// Revision 1.12  2006/04/19 09:08:03  dinishev
// Cleanup
//
// Revision 1.11  2006/04/10 14:38:53  dinishev
// Bug fix: �������� ������ ��������� � ������ ����� � ����� ������ ��������
//
// Revision 1.10  2006/04/03 15:56:29  dinishev
// _CleanUp
//
// Revision 1.9  2006/02/16 12:52:01  mmorozov
// - bugfix: ����� ���������� ��� ������ ������ �� ���������� ����������� ������ (CQ: 17586) + ��������� InscContextParams �������� � ���������� �����;
//
// Revision 1.8  2006/01/16 17:32:09  dinishev
// ����� �������������� ��������� ������� ������������� ��������
//
// Revision 1.7  2005/12/12 17:15:54  dinishev
// Bug fix: ����������� �� ��� ������� ����� ���������
//
// Revision 1.6  2005/12/08 18:13:45  dinishev
// Cleanup
//
// Revision 1.5  2005/12/06 06:56:48  dinishev
// no message
//
// Revision 1.4  2005/11/28 17:59:44  dinishev
// Bug fix: ��������� ��������� ����������� ����� ��� �������� �� �������
//
// Revision 1.3  2005/11/24 15:12:58  dinishev
// Cleanup
//
// Revision 1.2  2005/11/17 13:22:39  dinishev
// ����������� �� ��������
//
// Revision 1.1  2005/11/17 05:46:17  dinishev
// _Move to directory 'Search'
//
// Revision 1.29  2005/11/14 14:24:36  dinishev
// Bug fix: ���������� ������� �� ������ '*' � ����� ������
//
// Revision 1.28  2005/11/11 20:23:17  dinishev
// ��������� ������� ����������� �������� � ����������� �����
//
// Revision 1.27  2005/11/09 18:45:26  dinishev
// ����������� ����������
//
// Revision 1.26  2005/11/08 15:11:15  mmorozov
// bugfix: ����������� �� ��������������� ��������;
//
// Revision 1.25  2005/11/04 16:50:17  dinishev
// ������� Enter �������� � �������� ���� ������ ��� ������� ������ (� ����������� �� ���������)
//
// Revision 1.24  2005/10/31 17:25:25  dinishev
// no message
//
// Revision 1.23  2005/10/12 16:43:22  dinishev
// ��������������� ��������� ��� ���������� ��������� ������� ����������
//
// Revision 1.22  2005/10/05 17:37:10  dinishev
// ����������� ����
//
// Revision 1.21  2005/10/03 17:00:30  dinishev
// Bug fix: ���������� �������� �������� �� ���������
//
// Revision 1.20  2005/09/29 08:17:51  dinishev
// Bug fix: �� ������������ ������� ��������
//
// Revision 1.19  2005/09/27 15:06:27  dinishev
// ��������� ����� ������� ��� ������������ ����
//
// Revision 1.18  2005/09/23 16:22:42  dinishev
// ��������� ������ ���� �������
//
// Revision 1.17  2005/09/21 13:54:29  dinishev
// ��� ������� ������������ ��������� ������ � ���� "��������" (��� � ������ ��)
//
// Revision 1.16  2005/09/16 15:03:25  dinishev
// ������ ����������� ��������� ����������� + �������������� ������������ �������� + �������� E-mail
//
// Revision 1.15  2005/09/09 13:20:24  dinishev
// Bug fix: ����������� ���� �� ������������
//
// Revision 1.14  2005/09/07 09:08:29  dinishev
// Remove interface InevInputListner
//
// Revision 1.13  2005/09/05 10:53:52  dinishev
// ��������� ������� �������������� ������ ���������
//
// Revision 1.12  2005/09/02 14:52:05  dinishev
// �������� � ���������� �� (� ��������� �������) �� �������
//
// Revision 1.11  2005/09/02 09:44:00  dinishev
// Bug fix: �� ���������������
//
// Revision 1.10  2005/09/02 09:21:17  dinishev
// ��������� ������� �����
//
// Revision 1.9  2005/08/24 16:41:55  dinishev
// ���������� ����������� ��� ��������� ��������� ���.
//
// Revision 1.8  2005/08/24 08:04:30  dinishev
// AV ��� ������� ������.
//
// Revision 1.7  2005/08/23 14:08:52  dinishev
// �� ���������������
//
// Revision 1.6  2005/08/23 14:07:44  dinishev
// �� ���������������
//
// Revision 1.5  2005/08/23 13:22:12  dinishev
// ���������� ����������
//
// Revision 1.4  2005/08/23 13:21:14  dinishev
// ���������� ����������
//
// Revision 1.3  2005/08/23 12:47:17  dinishev
// ���������� ����������
//
// Revision 1.2  2005/08/23 12:03:39  dinishev
// ���������� ����������
//
// Revision 1.1  2005/08/23 08:43:09  dinishev
// ���������� ��� _nsQueryAttribute
//

{$Include nsDefine.inc }

interface

uses 
 SysUtils,

 l3Interfaces,
 l3TreeInterfaces,

 nevBase,

 nevTools,
 
 evQueryCardInt,

 nscInterfaces,
 
 vcmExternalInterfaces,

 BaseTreeSupportUnit,
 DynamicTreeUnit,
 SearchUnit,
 FiltersUnit,

 lgTypes
 ;

type
 IqaReq = interface(IqaReqPrim)
 ['{FBA8C89B-DE73-4DB3-B7B6-F2AE4EEA8980}']
  function Get_TagCaption: Il3Cstring;
    {-}
  function Get_Multy: Boolean;
    {-}
  function Get_TagName: Il3CString;
    {-}
  function Get_EditorReq: IevReq;
    {-}
  function CanAdd: Boolean;
    {* - ��������� ����� �� �������� ��� ���� ���� � ���������. }
  function CanOpenTree: Boolean;
    {* - ��������� ����� �� ������� ���� ������ ���������. }
  function GetReqAsString(const aSeparator: Il3CString): Il3CString;
    {-}
  procedure Save;
    {-}
  {$IFDEF Monitorings}
  procedure MakeFieldValue;
    {-}
  {$EndIF Monitorings}                  
  procedure CheckAttr;
    {-}
  procedure ReqClear;         
    {-}
  procedure OpenSelectWindow;
    {-}
  function IsSet(aElseDefaultValue : Boolean = False): Boolean;
    {* - ���� True, �� � ���������� ����������� ��������. }
  procedure Load;
    {-}
  property TagCaption: Il3Cstring
    read Get_TagCaption;
    {* - ��������� �������� (��� ����� ����� �����). }
  property TagName: Il3CString
    read Get_TagName;
    {-}        
  property EditorReq: IevReq
    read Get_EditorReq;
    {* - ������ �� ���������� �������. }
  property Multy: Boolean 
    read Get_Multy;
    {-}
 end;//IqaReq

 IqaReqAttribute = interface(InevBase)
 ['{DF0CA151-5704-4747-A334-6E78CE07DB8C}']
  procedure GetAttributesFromView(const aRoot : INodeBase);
    {* - ���������� ����� �������� �� ������ (������ ���� �����).
         � ������������� ����� � ��������� ����������� ����}
 end;//IqaReqAttribute

 IqaMorphoReq = interface(InevBase)
 ['{C44997A0-9E1F-4431-B10E-35897C36FD01}']
  procedure FillReqListAsString(const aList: Il3StringsEx);
    {-}
 end;//IqaMorphoReq

 IqaDateReq = interface(InevBase)
 ['{7D881C0D-BF38-4F99-8C83-F0E6784F30DA}']
   function Get_EndDate: System.TDateTime;
     {-}
   function Get_StartDate: System.TDateTime;
     {-}
   procedure Set_EndDate(const Value: System.TDateTime);
     {-}
   procedure Set_StartDate(const Value: System.TDateTime);
     {-}
   property StartDate: System.TDateTime
     read Get_StartDate
     write Set_StartDate;
     {-}
   property EndDate: System.TDateTime
     read Get_EndDate
     write Set_EndDate;
     {-}
 end;//IqaDateReq

 IqaDateReqDataHolder = interface(IUnknown)
 ['{587ECF06-2CB1-4D57-B253-53031A17482C}']
   function Get_EndDate: System.TDateTime;
     {-}
   function Get_StartDate: System.TDateTime;
     {-}
   procedure Set_EndDate(const Value: System.TDateTime);
     {-}
   procedure Set_StartDate(const Value: System.TDateTime);
     {-}
   function Get_IsOk: Boolean;
     {-}
   procedure Set_IsOk(const Value: Boolean);
     {-}
   function Get_ReqCaption: Il3CString;
     {-}
   function IsStartDateEmpty: Boolean;
     {-}
   function IsEndDateEmpty: Boolean;
     {-}
   property StartDate: System.TDateTime
     read Get_StartDate
     write Set_StartDate;
     {-}
   property EndDate: System.TDateTime
     read Get_EndDate
     write Set_EndDate;
     {-}
   property IsOk: Boolean
     read Get_IsOk
    write Set_IsOk;
     {-}
   property ReqCaption: Il3CString
     read Get_ReqCaption;
     {-}
 end;//IqaDateReqDataHolder

 IqaPhoneReq = interface(InevBase)
 ['{E6FB47BE-5D40-4116-AFD8-AF94CD7F3711}']
   function Get_Number: Il3CString;
     {-}
   function Get_Code: Il3CString;
     {-}
   procedure Set_Number(const Value: Il3CString);
     {-}
   procedure Set_Code(const Value: Il3CString);
     {-}
   property Code: Il3CString
     read Get_Code
     write Set_Code;
     {-}
   property Number: Il3CString
     read Get_Number
     write Set_Number;
     {-}
 end;//IqaPhoneReq

 TOnDateQuery = procedure (const aValue: IqaDateReqDataHolder) of Object;

 IqaMgrSearch = interface(InevBase)
 ['{3E9A3B4A-BF6C-482D-A8B7-7BF0FF40D8A3}']
  function Get_Query: IQuery;
    {-}
  procedure Set_Query(const Value: IQuery);
    {-}
  function Get_QueryType: TlgQueryType;
    {-}
  function Get_IsNew: Boolean;
    {-}
  function Get_Modified: Boolean;
    {-}
  procedure Set_Modified(Value: Boolean);
    {-}    
  function Get_FromHistory: Boolean;
    {-}
  procedure Set_FromHistory(const Value: Boolean);
    {-}
  function Get_QueryCard: IevQueryCard;
    {-}
  {$If not Defined(Admin) AND not Defined(Monitorings)}
  function Get_HistoryList: IvcmStrings;
    {-}
  {$ifEnd}  
  procedure FinishOpenTree(const aRoot : INodeBase;
                           const aReq  : IqaReq);
    {-}    
  procedure ReadSettings;
    {-}      
  procedure WriteSettings;
    {-}
  procedure InitUpdate;
    {-}    
  procedure Clear; 
    {-}
  procedure ClearContextMistakes;
    {-}
  procedure DeleteValue(const aView: InevView);
    {-}
  procedure DeleteAll;
    {-}
  procedure AddValue(const aView: InevView);
    {-}
  procedure OpenSelectWindow;
    {-}  
   {$IFDEF Monitorings}
   function ChangableReq: IqaReq;
     {* - ������������ �������� ��� ��������� ���������. }
   {$ENDIF Monitorings}
  {$IFDEF Monitorings}  
  function GetName4Query: Il3CString;   
    {* - ���������� ��� ��� �������. }    
  {$ENDIF Monitorings}  
  function GetCurrentReq: IqaReq;
    {* - ���������� ������� �������� ��� ��������. }  
  function GetCurrentField: IevEditorControlField;
    {* - ���������� ������� ������� ��� ���������. }    
  procedure CreateTree(const aQueryCard: IevQueryCard);
    {-}
  function  Save(aIgnoreError: Boolean = False): Boolean;
    {-}
  function  IsSomeFieldFilled(aElseDefaultValue: Boolean): Boolean;
    {-}
  procedure Load;
    {-}
  procedure ChangeStateAll(const aExpand: Boolean);
    {-}
  {$IFDEF Monitorings}
  procedure Check;
    {-}
  {$EndIF Monitorings}   
  procedure DateQuery(const aValue: IqaDateReq);
    {-}
  procedure ModifiedChanged(aValue: Boolean);
    {-}
  procedure ExecQuery;
    {-}
   function FindAttr(const aTagName : Il3CString): IqaReq;
     {* - ���������� ������� �� �����. }
   function  GettingFromView: Boolean;
     {-}
   procedure StartGettingFromView;
     {-}
   procedure FinishGettingFromView;
     {-}
  property Query: IQuery
    read Get_Query 
    write Set_Query;
    {* - ������. } 
  property QueryType: TlgQueryType 
    read Get_QueryType;
    {-}    
  property IsQueryNew: Boolean 
    read Get_IsNew;      
    {* - �������� �� ������ �����, �.�. �� ����������� �� ����. }         
  property Modified: Boolean 
    read Get_Modified
    write Set_Modified;
    {* - ������� ������������ ������������� �� ������� ���������� 
         ����������. }          
  property FromHistory: Boolean 
    read Get_FromHistory 
    write Set_FromHistory;
    {-}           
  property QueryCard: IevQueryCard 
    read Get_QueryCard;
    {* - ������ �� ��������� ����� � ����������. }
  {$If not Defined(Admin) AND not Defined(Monitorings)}
  property HistoryValues: IvcmStrings
    read Get_HistoryList;
    {-}
  {$IfEnd}  
 end;//IqaMgrSearch

  IqaHistory = interface(IvcmBase)
   {* - ��������� ������ ��� ���������� TasMgrSearch � �������. }
    ['{25869C71-1AB9-4EC1-86C8-F591CADEACDA}']
    // private methods
     function  GetQuery: IQuery;
     procedure pm_SetQuery(const aValue: IQuery);
       {-}
     function  GetFilter: INode;
     procedure SetFilter(const aNode: INode);
       {-}
     function GetDataReset : Boolean;
       {-}
     function GetConsultationSended: Boolean;
     procedure SetConsultationSended(const aValue : Boolean);
       {-}
    // public properties
     property Query: IQuery
       read GetQuery
       write pm_SetQuery;
       {-}
     property Filter: INode
       read GetFilter
       write SetFilter;
       {-}
     property DataReset : Boolean
       read GetDataReset;
       {-}
     property ConsultationSended: Boolean
       read GetConsultationSended
       write SetConsultationSended;
       {-}
  end;//IqaHistory

  InsQueryContainer = interface(IvcmBase)
   {* ��������� �������. }
    ['{F1B9E118-A606-4C44-B1E5-02691AED3ED4}']
    // property methods
      function  pm_getQuery : IQuery;
      procedure pm_setQuery(const aValue : IQuery);
    // properites
      property Query: IQuery
        read pm_getQuery
        write pm_setQuery;
        {-}
  end;//InsQueryContainer

  InsQueryFormState = interface(InsQueryContainer)
   {* ��� ���������� ��������� ���������� �������. }
    ['{6CF26BAF-5BC4-4378-9E86-7B96732CCE76}']
    // property methods
      function  pm_GetTag: Il3CString;
      procedure pm_SetTag(const aValue: Il3CString);
        {-}
      function  pm_GetFilter: IFilterFromQuery;
      procedure pm_SetFilter(const aValue: IFilterFromQuery);
        {-}
    // properties
      property Tag: Il3CString
        read pm_GetTag
        write pm_SetTag;
        {-}
      property Filter: IFilterFromQuery
        read pm_GetFilter
        write pm_SetFilter;
        {-}
  end;//InsQueryFormState

  EqaException = class(Exception)
  { ������� ����� ���������� }
  private
   f_ErrorControl: IevEditorControlField;
     {-}
  public
   constructor Create(const anErrorControl: IevEditorControlField; const Msg: string);
    reintroduce;
     {-}
   constructor CreateFmt(const anErrorControl: IevEditorControlField; const Msg: string; const Args: array of const);
    reintroduce;
     {-}
   destructor Destroy;
    override;
     {-}
   property ErrorControl: IevEditorControlField
       read f_ErrorControl;
     {-}
  end;//EqaException

  EqaRequiredValue = class(EqaException);
  { �� ����� ������������ �������� }
  EqaDuplicateValue = class(EqaException);
  { ������������� �������� �������� }
  EqaInvalidValue = class(EqaException);
  { �������� �������� ��������� }
  EqaSilentAbort = class(EqaException);

  EaqExceptionClass = class of EqaException;

implementation

{ EqaException }

constructor EqaException.Create(const anErrorControl: IevEditorControlField;
  const Msg: string);
begin
 inherited Create(Msg);
 f_ErrorControl := anErrorControl;
end;

constructor EqaException.CreateFmt(const anErrorControl: IevEditorControlField;
  const Msg: string; const Args: array of const);
begin
 inherited CreateFmt(Msg, Args);
 f_ErrorControl := anErrorControl;
end;

destructor EqaException.Destroy;
begin
 f_ErrorControl := nil;
 inherited Destroy;
end;

end.
