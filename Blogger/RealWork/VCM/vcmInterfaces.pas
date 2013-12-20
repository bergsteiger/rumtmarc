unit vcmInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VCM"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VCM/vcmInterfaces.pas"
// �����: 21.02.2003 16:32
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<InternalInterfaces::Category>> Shared Delphi::VCM::vcmInterfaces
//
// ������� ����������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\VCM\vcmDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  l3Interfaces,
  afwInterfaces,
  vcmExternalInterfaces,
  l3Core,
  vcmFormDispatcherInterfaces,
  vcmUserControls,
  Classes,
  Controls,
  Forms
  ;

type
 IvcmBase = vcmExternalInterfaces.IvcmBase;

 TvcmObject = (
  {* ������ VCM. }
   vcm_objModule
 , vcm_objEntity
 , vcm_objEntityOperation
 , vcm_objModuleOperation
 , vcm_objControl
 , vcm_objMessage
 , vcm_objForm
 , vcm_objMainMenuItem
 , vcm_objUserType
 , vcm_objOperationState
 , vcm_objStrings
 , vcm_objFormSetFactory
 );//TvcmObject

 TvcmStringID = l3Interfaces.Tl3StringID;

 TvcmProjectFormName = type AnsiString;
  {* ��� ��� ������ �� ������� ���� ������� }

 PvcmStringID = ^TvcmStringID;

 TvcmOperationCode = l3Interfaces.Tl3OperationCode;
  {* ������� ������������ ���������� � ���������� ������������ ��������� ShortCut-�� }

const
  { �������������� ���������. }
 vcm_cidEmpty = TvcmControlID(0);
  { ������ ������������ ������������ �������. }

const
  { Weights }
 cNullWeight = -1;
  { cNullWeight - �� ������������� ��� }

const
  { UserTypes }
 vcm_utAny = 31;
  { ����� ���������������� ���. }

const
  { States }
 vcm_DefaultOperationState : TvcmOperationStateIndex = (rID : -1);

type
 IvcmData = interface(IvcmBase)
  {* ������� ��������� ������ }
   ['{519F45D2-92C3-4312-A8BA-15CC5E79E1B2}']
   function Clone: IvcmData;
     {* ������� ����� }
 end;//IvcmData

 IvcmObjectWithData = interface(IvcmBase)
  {* ������ � ������� }
   ['{8B787E25-8F5C-4D3D-9F96-A6F494CF4910}']
   function pm_GetDataForSave: IvcmData;
   procedure pm_SetDataForSave(const aValue: IvcmData);
   property DataForSave: IvcmData
     read pm_GetDataForSave
     write pm_SetDataForSave;
     {* ������ ����������� ������ ��������� ��������, ������ ��� �������� ������ ����� � ������������ ������� ������� ����������� }
 end;//IvcmObjectWithData

 TvcmTestEvent = procedure (const aParams: IvcmTestParamsPrim) of object;

 TvcmStatusStrings = afwInterfaces.TafwStatusInfo;

(*
 MvcmEntityFormState = PureMixIn
   function IsBaloon: Boolean;
   function Get_VCMClosing: Boolean;
   property VCMClosing: Boolean
     read Get_VCMClosing;
 end;//MvcmEntityFormState
*)

(*
 MvcmLayout = PureMixIn
   function Get_VCLWinControl: TWinControl;
   property VCLWinControl: TWinControl
     read Get_VCLWinControl;
 end;//MvcmLayout
*)

 IvcmLayout = interface(IvcmBase)
   ['{2540CD94-01DC-49C1-9BA8-749631163C9B}']
  // MvcmLayout
   function Get_VCLWinControl: TWinControl;
   property VCLWinControl: TWinControl
     read Get_VCLWinControl;
 end;//IvcmLayout

 TvcmFormID = {$IfDef XE4}record{$Else}object{$EndIf}
  {* ������������� �����. }
 public
   rName : AnsiString;
   rID : Integer;
 public
    function EQ(const anOther: TvcmFormID): Boolean;
 end;//TvcmFormID

 TvcmZoneType = (
   vcm_ztAny
 , vcm_ztMain
 , vcm_ztNavigator
 , vcm_ztParent
 , vcm_ztChild
 , vcm_ztReminder
 , vcm_ztFloating
 , vcm_ztModal
 , vcm_ztManualModal
 , vcm_ztForToolbarsInfo
 , vcm_ztSimpleFloat
 , vcm_ztMainObjectForm // ������-����, ���������� ����� � ������� MainObjectForm = TRUE
 , vcm_ztForFocus // ������-���� ��� ����, ������� ������������� ���������� ���� �����
 );//TvcmZoneType

 IvcmContainer = interface;
 { - ��������������� �������� IvcmContainer. }

 IvcmParams = interface;
 { - ��������������� �������� IvcmParams. }

 IvcmTestParams = interface(IvcmTestParamsPrim)
   ['{2E888E67-0D8C-4382-A211-D7E9836C3317}']
   function Get_Container: IvcmContainer;
   function BasePart: IvcmParams;
   procedure SetControlEvent(anEvent: TvcmControlTestEvent);
   property Container: IvcmContainer
     read Get_Container;
 end;//IvcmTestParams

 IvcmFormSetDataSource = interface;
 { - ��������������� �������� IvcmFormSetDataSource. }

 IvcmEntityForm = interface;
 { - ��������������� �������� IvcmEntityForm. }

 PIvcmEntityForm = ^IvcmEntityForm;

 IvcmFormDataSource = interface(Il3ChangeNotifier)
  {* ������ ������ ����� }
   ['{1EA49D91-5C33-490E-9108-C51B3E7C39E6}']
   function pm_GetUseCaseController: IvcmFormSetDataSource;
   function Get_DisplayName: IvcmCString;
   function IsSame(const aValue: IvcmFormDataSource): Boolean;
     {* �������� �� ��������� }
   function IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
     {* �������� �� ����� ������� � ������ }
   function IsLikeViewAreaController(const aDataSource: IvcmFormDataSource): Boolean;
     {* ��������� ����� �� ������ ������� �� ������ }
   function CastUCC(const aGUID: TGUID;
    out theObj;
    NeedsException: Boolean = false): Boolean;
     {* �������� ���������� ���������� � ��������� ����������. ��� �����, ����� ��������� �� ������ ������ � ����������� ����������. [$122674504] }
   property UseCaseController: IvcmFormSetDataSource
     read pm_GetUseCaseController;
     {* ���������� ������ ����������. ��� ��������� ����� ������ �������, �� ��������� ������� �� ���������� ������ ������ (Refresh) }
   property DisplayName: IvcmCString
     read Get_DisplayName;
     {* �������� ��������� ������ }
 end;//IvcmFormDataSource

 IvcmExecuteParams = interface(IvcmFlexParams)
  {* ��������� ���������� ��������. }
   ['{3800F95B-6E41-4AB7-A52E-71DB98647DE4}']
   function pm_GetData: IUnknown;
   function Get_Container: IvcmContainer;
   procedure SetControlEvent(anEvent: TvcmControlEvent);
   function BasePart: IvcmParams;
   property Data: IUnknown
     read pm_GetData;
     {* ������������ ��� ������ �������. ������������ ��������� ���������,
             ������� �������� � ��������� � ���������. �������� ������
             ���������, ��������� ��� ������� � ����������� ���� Data }
   property Container: IvcmContainer
     read Get_Container;
 end;//IvcmExecuteParams

 IvcmFormSet = interface;
 { - ��������������� �������� IvcmFormSet. }

 PIvcmFormSet = ^IvcmFormSet;

 IvcmFormSetRefreshDataParams = interface;
 { - ��������������� �������� IvcmFormSetRefreshDataParams. }

 IvcmFormSetDataSource = interface(IvcmObjectWithData{, Il3ChangeNotifier})
  {* ��������� ������ ������� ������ ����. [$54689847] }
   ['{948306E4-5742-41CC-8B87-F3A0973DCB66}']
   function pm_GetFormSet: IvcmFormSet;
   procedure pm_SetFormSet(const aValue: IvcmFormSet);
   function pm_GetMainCaption: IvcmCString;
   function pm_GetMainImageIndex: Integer;
   function pm_GetInInit: Boolean;
   procedure BeginRefresh;
     {* ���������� ����� ������� ���������� }
   procedure EndRefresh;
     {* ���������� � ����� ���������� }
   function IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
     {* �������� �� ����� ������� � ������ }
   function IsLikeUseCaseController(const aDataSource: IvcmFormSetDataSource): Boolean;
     {* ��������� ����� �� ������������� ������ ��� ��� ������� � ������� �� ������ }
   function IsRefreshing: Boolean;
     {* ������ ��������� � ��������� ���������� }
   procedure PushFromHistory;
     {* ������ ���� ��������� �� ������� }
   procedure Refresh(const aParams: IvcmFormSetRefreshDataParams = nil);
     {* �������� ������������� ������ }
   property FormSet: IvcmFormSet
     read pm_GetFormSet
     write pm_SetFormSet;
   property MainCaption: IvcmCString
     read pm_GetMainCaption;
   property MainImageIndex: Integer
     read pm_GetMainImageIndex;
   property InInit: Boolean
     read pm_GetInInit;
     {* ���� ������� ��� ������ ���������� ������ }
  // ������ �������������� � ����������� �����������
   function As_Il3ChangeNotifier: Il3ChangeNotifier;
 end;//IvcmFormSetDataSource

  TvcmCanClose = (
   {* ���������� ����������� �������� ����� }
    vcm_ccNone // �� ����������. ���� � TvcmEntityForm.CanClose = vcm_ccNone,                      � � TvcmZonesCollectionItem.CanClose <> vcm_ccNone, ��                      ����� ������������� CanClose ��� � ���� ��������
  , vcm_ccEnable // ���� ����� ���� �������
  , vcm_ccDisable // ���� �� ����� ���� �������
  );//TvcmCanClose

 IvcmDispatcher = interface;
 { - ��������������� �������� IvcmDispatcher. }

 IvcmForm = interface(IvcmLayout)
  {* ������� ����� ����� ���������� VCM }
   ['{F2D3FFAE-B8EA-4261-A4B6-EBF0175BA64D}']
   function Get_InClose: Boolean;
   function Get_Container: IvcmContainer;
   function Get_Dispatcher: IvcmDispatcher;
   function Get_NativeMainForm: IvcmContainer;
   function Get_Caption: IvcmCString;
   procedure Set_Caption(const aValue: IvcmCString);
   function SafeClose: Boolean;
   function ShowModal: Integer;
   property InClose: Boolean
     read Get_InClose;
   property Container: IvcmContainer
     read Get_Container;
     {* ���������, � ������� ������ ������ ����� }
   property Dispatcher: IvcmDispatcher
     read Get_Dispatcher;
   property NativeMainForm: IvcmContainer
     read Get_NativeMainForm;
   property Caption: IvcmCString
     read Get_Caption
     write Set_Caption;
 end;//IvcmForm

 TvcmFormDataSourceNotify = (
  {* ����������� ����������� _IvcmFormDataSource ���������� }
   vcm_dsnDestroy
 );//TvcmFormDataSourceNotify

 IvcmUserTypeDef = interface(IvcmBaseObjectDef)
   ['{1CC34971-4A78-4406-B24B-CB368802431F}']
   function Get_ID: Integer;
   function Get_FormClass: TClass;
   function Get_UserVisibleOpCount: Integer;
   function Get_AllowCustomizeToolbars: Boolean;
   function Get_SettingsCaption: AnsiString;
   function Get_UseToolbarAnotherUserType: Boolean;
   property ID: Integer
     read Get_ID;
   property FormClass: TClass
     read Get_FormClass;
   property UserVisibleOpCount: Integer
     read Get_UserVisibleOpCount;
   property AllowCustomizeToolbars: Boolean
     read Get_AllowCustomizeToolbars;
     {* ����� �� ����������� ������� � ����� � ������ ���������������� ����� }
   property SettingsCaption: AnsiString
     read Get_SettingsCaption;
   property UseToolbarAnotherUserType: Boolean
     read Get_UseToolbarAnotherUserType;
 end;//IvcmUserTypeDef

 IvcmUserTypesIterator = interface(IvcmBase)
   ['{601CCBA3-D46D-4DF4-8322-27582B18A05A}']
   function Next: IvcmUserTypeDef;
 end;//IvcmUserTypesIterator

  TvcmActivateIfUpdate = (
   {* ���������� ������ ��������� ����� (������� �������� ��������) ���
       ���������� ������. }
    wafNone // �� ������������
  , wafAlways // ������ ������������
  , wafIfNotActivated // ������������ ������ ���� �� �������� � ������ ActivateIfUpdate
  );//TvcmActivateIfUpdate

 IvcmEntityFormDef = interface(IvcmBaseObjectDef)
   ['{1BEF93AC-39A2-4630-964C-FCFD9714FCC7}']
   function Get_UserTypesIterator: IvcmUserTypesIterator;
   property UserTypesIterator: IvcmUserTypesIterator
     read Get_UserTypesIterator;
 end;//IvcmEntityFormDef

     TvcmBool = (
      {* ���������� ��� ������������ � VCM }
       vcm_bNone
     , vcm_bFalse
     , vcm_bTrue
     );//TvcmBool

     TvcmImageSize = (
      {* ������ ������. ������������ ��� �������� �������� ������ ��� ���� }
       isNone
     , isSmall
     , isLarge
     , isMedium
     );//TvcmImageSize

 IvcmToolbarStyle = interface(IvcmBase)
  {* ����� ������ ������������ }
   ['{8583988A-F32A-4579-8430-D6DB885BC9C0}']
   function pm_GetImageSize: TvcmImageSize;
   function pm_GetMergeWithContainer: TvcmBool;
   function pm_GetContainer: IvcmEntityForm;
   procedure Merge(const aStyle: IvcmToolbarStyle);
     {* ���������� ����� }
   property ImageSize: TvcmImageSize
     read pm_GetImageSize;
     {* ������ ������ }
   property MergeWithContainer: TvcmBool
     read pm_GetMergeWithContainer;
     {* ���������� � ������� ������������ ���������� ����� }
   property Container: IvcmEntityForm
     read pm_GetContainer;
     {* ��������� ��� ���������� ������ ������������ }
 end;//IvcmToolbarStyle

 IvcmToolbarsStyle = interface(IvcmBase)
  {* ������ ������� ������������ }
   ['{1AF66E21-1226-46EA-9BF3-312C75E600CA}']
   function pm_GetLeft: IvcmToolbarStyle;
   function pm_GetRight: IvcmToolbarStyle;
   function pm_GetTop: IvcmToolbarStyle;
   function pm_GetBottom: IvcmToolbarStyle;
   procedure Merge(const aStyle: IvcmToolbarsStyle);
     {* ���������� ����� }
   function IsDefault: Boolean;
     {* ��� ����� �� ������� ���������� ������ }
   procedure ForbidMerge;
     {* ��������� ����������� ������� ������������ }
   property Left: IvcmToolbarStyle
     read pm_GetLeft;
   property Right: IvcmToolbarStyle
     read pm_GetRight;
   property Top: IvcmToolbarStyle
     read pm_GetTop;
   property Bottom: IvcmToolbarStyle
     read pm_GetBottom;
 end;//IvcmToolbarsStyle

 IvcmFormStyle = interface(IvcmBase)
  {* ����� VCM ����� }
   ['{94D33121-029B-4F1D-A03D-6DD1FBE1ED4B}']
   function pm_GetToolbars: IvcmToolbarsStyle;
   procedure Merge(const aStyle: IvcmFormStyle);
     {* ���������� ����� }
   property Toolbars: IvcmToolbarsStyle
     read pm_GetToolbars;
     {* ������ ��� ������� ������������ ����� }
 end;//IvcmFormStyle

 IvcmEntity = interface;
 { - ��������������� �������� IvcmEntity. }

 IvcmAggregate = interface;
 { - ��������������� �������� IvcmAggregate. }

 IvcmEntityForm = interface(IvcmForm)
   ['{325580D6-55ED-48B2-8335-DE9E4B50BB38}']
   function pm_GetGUID: TGUID;
   procedure pm_SetGUID(const aValue: TGUID);
   function pm_GetIsMainInFormSet: Boolean;
   function Get_Entity: IvcmEntity;
   function Get_Aggregate: IvcmAggregate;
   function Get_ZoneType: TvcmZoneType;
   function pm_GetUserType: TvcmUserType;
   function pm_GetSubUserType: TvcmUserType;
   function Get_MainCaption: IvcmCString;
   function Get_FormDef: IvcmEntityFormDef;
   function pm_GetCurUserTypeDef: IvcmUserTypeDef;
   function pm_GetCurUseToolbarOfUserType: IvcmUserTypeDef;
   function pm_GetZoneControl: TControl;
   procedure pm_SetZoneControl(aValue: TControl);
   function pm_GetDataSource: IvcmFormDataSource;
   procedure pm_SetDataSource(const aValue: IvcmFormDataSource);
   function pm_GetFormSet: IvcmFormSet;
   function pm_GetStyle: IvcmFormStyle;
   function Get_AsContainer: IvcmContainer;
   function SameName(const aName: TvcmFormID): Boolean;
     {* ��������� �������� �� ���������� ��� ������ �������� }
   function LoadState(const aState: IvcmBase;
    aStateType: TvcmStateType): Boolean;
   function SaveState(out theState: IvcmBase;
    aStateType: TvcmStateType): Boolean;
   function IsMainObjectForm: Boolean;
   function IsModalForm: Boolean;
     {* ������� ��������� ���� ���� IsModal, ���� False, �� ����������
             ��������� ����� ��������� ����� }
   function IsModal: Boolean;
     {* ����� �������� ��������� }
   function GetStatus(out theStatus: TvcmStatusStrings): Boolean;
   procedure SetActiveInParent;
     {* ������� �������� � ��������. ����������� ��� ���� ����������� � PageControl-� }
   procedure SetFirstActiveInParent;
     {* ������� �������� ������� � �������� }
   procedure SetActiveAndShowInParent;
     {* ������� �������� � ���������� ��������� �� ��� ������� }
   procedure SetInactiveInParent;
     {* ������� �������� ������������ � ��������. ����������� ��� ���� ����������� � PageControl-� }
   function IsActiveInParent: Boolean;
     {* �������� �� ����� �������� � ��������. ����������� ��� ���� ����������� � PageControl-� }
   procedure CloseInParent;
     {* ���������� ������� ����� �� ������� }
   procedure LockFocus;
   procedure UnlockFocus;
   procedure MakeAggregate;
   procedure RegInContainer;
   procedure UnregInContainer;
   function GetTabInfo(out theCaption: Il3CString;
    out theItemIndex: Integer): Boolean;
     {* ���������� ��� ��������, � ������� ����������� ����� }
   procedure CheckFloatingVisibility;
   property GUID: TGUID
     read pm_GetGUID
     write pm_SetGUID;
   property IsMainInFormSet: Boolean
     read pm_GetIsMainInFormSet;
     {* ����� �������� ������� � ������ }
   property Entity: IvcmEntity
     read Get_Entity;
     {* ��������, ������� ������������ ����� }
   property Aggregate: IvcmAggregate
     read Get_Aggregate;
     {* ���������, � ������� ������ �������� }
   property ZoneType: TvcmZoneType
     read Get_ZoneType;
     {* ����, � ������� ����� ������������ ����� �������� }
   property UserType: TvcmUserType
     read pm_GetUserType;
   property SubUserType: TvcmUserType
     read pm_GetSubUserType;
     {* �������� ������� UserType }
   property MainCaption: IvcmCString
     read Get_MainCaption;
   property FormDef: IvcmEntityFormDef
     read Get_FormDef;
   property CurUserTypeDef: IvcmUserTypeDef
     read pm_GetCurUserTypeDef;
   property CurUseToolbarOfUserType: IvcmUserTypeDef
     read pm_GetCurUseToolbarOfUserType;
     {* ��� ����� ��� ������ �������� }
   property ZoneControl: TControl
     read pm_GetZoneControl
     write pm_SetZoneControl;
     {* ��������� ����, � ������� ���� ��������� ����� }
   property DataSource: IvcmFormDataSource
     read pm_GetDataSource
     write pm_SetDataSource;
   property FormSet: IvcmFormSet
     read pm_GetFormSet;
   property Style: IvcmFormStyle
     read pm_GetStyle;
   property AsContainer: IvcmContainer
     read Get_AsContainer;
  // MvcmEntityFormState
   function IsBaloon: Boolean;
   function Get_VCMClosing: Boolean;
   property VCMClosing: Boolean
     read Get_VCMClosing;
 end;//IvcmEntityForm


 IvcmAggregate = interface(IvcmBase)
   ['{BD00EF86-1F46-4CAA-A4EB-0103086805B3}']
   function Get_GUID: TGUID;
   procedure AddEntity(const anEntity: IvcmEntity);
     {* ��������� �������� � ��������� }
   procedure RemoveEntity(const anEntity: IvcmEntity);
     {* ������� �������� �� ��������� }
   function Operation(const anOp: TvcmOPID;
    const aParams: IvcmExecuteParams): IvcmExecuteParams; overload; 
   function Operation(const anOp: TvcmOPID): IvcmExecuteParams; overload; 
   function HasForm(const aName: TvcmFormID;
    theForm: PIvcmEntityForm = nil): Boolean;
     {* ���������, ������������ �� ��������� ����� � ��������� }
   property GUID: TGUID
     read Get_GUID;
 end;//IvcmAggregate

 IvcmFormSetFactory = interface;
 { - ��������������� �������� IvcmFormSetFactory. }

 IvcmFormSet = interface(IvcmAggregate)
  {* ������ ���� }
   ['{68DCE8D7-D4FA-411D-B6D7-69309F7FA3C8}']
   function pm_GetCanRefresh: Boolean;
   function Get_EntitiesCount: Integer;
   function Get_Entity(anIndex: Integer): IvcmEntity;
   function pm_GetContainer: IvcmContainer;
   procedure pm_SetContainer(const aValue: IvcmContainer);
   function pm_GetFactory: IvcmFormSetFactory;
   procedure pm_SetFactory(const aValue: IvcmFormSetFactory);
   function pm_GetDataSource: IvcmFormSetDataSource;
   procedure pm_SetDataSource(const aValue: IvcmFormSetDataSource);
   procedure Refresh(const aParams: IvcmFormSetRefreshDataParams);
     {* ��������� ������������� ������ }
   procedure SaveHistory;
     {* ��������� ������ � ������� }
   function IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
     {* �������� �� ����� ������� � ������ }
   function FindStatusInfoForm: IvcmEntityForm;
     {* ����� ����� ���������� �� ����� ������� }
   procedure PopToHistory;
     {* ������ �������� � ������� }
   procedure PushFromHistory;
     {* ������ ��������� �� ������� }
   property CanRefresh: Boolean
     read pm_GetCanRefresh;
     {* ����� ��������� ��������� ������ � ������� ��������� �� ������ }
   property EntitiesCount: Integer
     read Get_EntitiesCount;
     {* ���������� ��������� }
   property Entity[anIndex: Integer]: IvcmEntity
     read Get_Entity;
     {* ��������� �������� }
   property Container: IvcmContainer
     read pm_GetContainer
     write pm_SetContainer;
   property Factory: IvcmFormSetFactory
     read pm_GetFactory
     write pm_SetFactory;
   property DataSource: IvcmFormSetDataSource
     read pm_GetDataSource
     write pm_SetDataSource;
     {* ������ ������ ���������� }
 end;//IvcmFormSet


  TvcmSaveFormSetToHistory = (
    sfsNone // ���������� ���� �� ���������
  , sfsAllForms // ��������� ��� �����
  , sfsOnlyIfDataSourceChanged // ��������� ������ ������������ �����
  );//TvcmSaveFormSetToHistory

 IvcmFormSetRefreshDataParams = interface(IvcmBase)
   ['{08A20A53-92F1-4579-842F-3F6FD86A8563}']
   function pm_GetSaveToHistory: TvcmSaveFormSetToHistory;
   function pm_GetDataForHistory: IvcmData;
   function pm_GetDataSource: IvcmFormSetDataSource;
   procedure pm_SetDataSource(const aValue: IvcmFormSetDataSource);
   function pm_GetFormSet: IvcmFormSet;
   procedure pm_SetFormSet(const aValue: IvcmFormSet);
   property SaveToHistory: TvcmSaveFormSetToHistory
     read pm_GetSaveToHistory;
     {* �������� � ������� �����, � ������� ���������� _DataSource }
   property DataForHistory: IvcmData
     read pm_GetDataForHistory;
     {* ������ aDataSource, ������� ���������� ��������� � ������� }
   property DataSource: IvcmFormSetDataSource
     read pm_GetDataSource
     write pm_SetDataSource;
   property FormSet: IvcmFormSet
     read pm_GetFormSet
     write pm_SetFormSet;
 end;//IvcmFormSetRefreshDataParams

 IvcmEntityFormIterator = interface(IvcmBase)
  {* �������� ���� }
   ['{4D060767-BC15-4155-B148-005D1611436D}']
   function Next: IvcmEntityForm;
 end;//IvcmEntityFormIterator

  TvcmMainFormInfo = record
   {* ���������� � ������� �����. }
    rWindowState : TWindowState;
    rBounds : TRect; // ��������� ���� � ����������� ������.
  end;//TvcmMainFormInfo

 IvcmContainer = interface(IvcmBase)
  {* ��������� ���� }
   ['{719C2E6C-F3EA-4ED1-BB08-4C3327734EB2}']
   function pm_GetEntityFormIterator: IvcmEntityFormIterator;
   function Get_NativeMainForm: IvcmContainer;
   function Get_AsForm: IvcmEntityForm;
   procedure RegForm(const aForm: IvcmEntityForm);
   procedure UnregForm(const aForm: IvcmEntityForm);
   function InsertForm(const aForm: IvcmEntityForm): Boolean;
     {* ��������� ����� � ��������� }
   function HasForm(const aName: TvcmFormID;
    aZoneType: TvcmZoneType = vcm_ztAny;
    aRecursive: Boolean = true;
    theForm: PIvcmEntityForm = nil;
    aUserType: TvcmUserType = vcm_utAny;
    aGUID: PGUID = nil;
    aSubUserType: TvcmUserType = vcm_utAny): Boolean; overload; 
     {* ��������� ���� �� � ���������� ����� ����� }
   function HasForm(aZoneType: TvcmZoneType = vcm_ztAny;
    aRecursive: Boolean = true;
    theForm: PIvcmEntityForm = nil;
    aUserType: TvcmUserType = vcm_utAny;
    aGUID: PGUID = nil;
    aSubUserType: TvcmUserType = vcm_utAny): Boolean; overload; 
     {* ��������� ���� �� � ���������� ����� ����� }
   function Operation(const anOp: TvcmOPID;
    const aParams: IvcmExecuteParams): Boolean; overload; 
     {* ���������� �������� �� ����� �������� }
   function Operation(const anOp: TvcmOPID;
    const aParams: IvcmTestParams): Boolean; overload; 
     {* ���������� �������� �� ����� �������� }
   function Operation(const anOp: TvcmOPID;
    aMode: TvcmOperationMode = vcm_omExecute): Boolean; overload; 
     {* ���������� �������� �� ����� �������� }
   function IsNull: Boolean;
   procedure FormStyle(const aForm: IvcmEntityForm;
    const aStyle: IvcmFormStyle);
     {* ��������� ����� ����� }
   procedure SetFocusToMainObjectForm;
     {* ������������� ����� � ����� ��������� ����� ��������� ���� }
   procedure ChildDataSourceChanged(const aChild: IvcmEntityForm;
    const anOld: IvcmFormDataSource;
    const aNew: IvcmFormDataSource);
     {* ���������� ��� ��������� ��������� ������ ��������� ����� }
   property EntityFormIterator: IvcmEntityFormIterator
     read pm_GetEntityFormIterator;
     {* �������� ���� ���������� }
   property NativeMainForm: IvcmContainer
     read Get_NativeMainForm;
   property AsForm: IvcmEntityForm
     read Get_AsForm;
 end;//IvcmContainer

 IvcmParams = interface(IvcmBaseParamsPrim)
  {* ��������� �������� }
   ['{71B728D6-3EFB-4B1B-ACD3-4A5E9C1D5A84}']
   function Get_HasContainer: Boolean;
   function pm_GetTestPart: IvcmTestParams;
   function pm_GetExecutePart: IvcmExecuteParams;
   procedure SetContainerPrim(const aContainer: IvcmContainer;
    aReplace: Boolean);
   property HasContainer: Boolean
     read Get_HasContainer;
   property TestPart: IvcmTestParams
     read pm_GetTestPart;
   property ExecutePart: IvcmExecuteParams
     read pm_GetExecutePart;
 end;//IvcmParams

 IvcmEntity = interface(IvcmBase)
  {* �������� }
   ['{B0C75CC0-B3B7-440D-806A-6A5AB057C637}']
   function Get_ID: TvcmControlID;
   function Get_AsForm: IvcmEntityForm;
   function Operation(const anOp: TvcmOPID;
    const aParams: IvcmParams;
    aMode: TvcmOperationMode): Boolean; overload; 
   function Operation(const anOp: TvcmOPID;
    const aParams: IvcmExecuteParams): Boolean; overload; 
   function Operation(const anOp: TvcmOPID;
    const aParams: IvcmTestParams): Boolean; overload; 
   property ID: TvcmControlID
     read Get_ID;
   property AsForm: IvcmEntityForm
     read Get_AsForm;
 end;//IvcmEntity

 IvcmHistoryItem = interface(IvcmBase)
  {* ������� ������� ���������� }
   ['{31043D04-F4D1-4E89-8DDA-F005E711AC11}']
   function pm_GetCaption: IvcmCString;
   procedure Activate(const aMainForm: IvcmEntityForm); overload; 
     {* ����������� ������ �������� � ���������� }
   procedure Activate(const aMainForm: IvcmEntityForm;
      const anOwner: IvcmEntityForm); overload; 
     {* ����������� ������ �������� � ���������� }
   function Drop: Boolean;
     {* �������� ������ �� ���� }
   property Caption: IvcmCString
     read pm_GetCaption;
     {* �������� }
 end;//IvcmHistoryItem

   TvcmHistoryItemType = (
    {* ���� �������� �������. }
     vcm_hitNone // �������.
   , vcm_hitClose // �������� ���������� � ����� ������� ������ ���� �������,             �������������� �������� ������ ������������ �����.
   , vcm_hitContent // �������� ���������� � �����, ������� ������ ���� �������, �� �����            �������� ������� ������ ������� � ��������� hitClose.
   );//TvcmHistoryItemType

 IvcmHistory = interface(IvcmBase)
   ['{D98392A1-1592-465C-A07E-B3B059CFB5D1}']
   procedure DeleteBackItem;
     {* ������� ���� ������� �� ������ Back }
   function GetBackCount: Integer;
   function GetForwardCount: Integer;
   function GetBackItem(anIndex: Integer): Il3CString;
   function GetForwardItem(anIndex: Integer): Il3CString;
   function pm_GetInBF: Boolean;
   function pm_GetInProcess: Boolean;
   procedure BeforeFormDestroy(const aForm: IvcmEntityForm);
   function ForceSaveState(const aForm: IvcmEntityForm;
     aStateType: TvcmStateType = vcm_stContent): Boolean;
     {* ���������� ��� �������� ������������� ���������� ����� }
   function SaveState(const aForm: IvcmEntityForm;
     aStateType: TvcmStateType = vcm_stContent): Boolean;
   procedure SaveClose(const aForm: IvcmEntityForm;
     const aFormID: TvcmFormID;
     aUserType: TvcmUserType;
     aZoneType: TvcmZoneType;
     aSubUserType: TvcmUserType);
     {* ����� ������� ������ ���� ������� ��� �������� �� ������� }
   function HasInPreviousStep(const aFormClass: TvcmFormID;
     aUserType: TvcmUserType = vcm_utAny): Boolean;
   function Back(aTruncate: Boolean = False): Boolean; overload; 
   function Forward: Boolean; overload; 
   procedure Back(const aParams: IvcmExecuteParamsPrim;
     aTruncate: Boolean = False); overload; 
   procedure Forward(const aParams: IvcmExecuteParamsPrim); overload; 
   function CanBack: Boolean;
   function CanForward: Boolean;
   procedure GetBackStrings(const aParams: IvcmTestParamsPrim);
   procedure GetForwardStrings(const aParams: IvcmTestParamsPrim);
   procedure Start(const aSender: IvcmEntityForm;
     const aCaption: IvcmCString = nil;
     aFormSet: Boolean = False);
   procedure Finish(const aSender: IvcmEntityForm);
   procedure AddForm(const aForm: IvcmEntityForm);
   procedure RemoveForm(const aForm: IvcmEntityForm);
   function Add(const anItem: IvcmHistoryItem): Boolean;
     {* ��������� ������ � ������� }
   function IsLast: Boolean;
   function InBack: Boolean;
     {* ��������� � �������� Back, ���� ���, �� Forward }
   procedure Clear(aHeedCheckCurrent: Boolean = true);
     {* ������� ������� }
   property InBF: Boolean
     read pm_GetInBF;
     {* ������� ��������� � ��������� �������� (Back/Forward) }
   property InProcess: Boolean
     read pm_GetInProcess;
     {* ������� ��������� � �������� ���������� (����� ��������� Start-Finish) }
 end;//IvcmHistory

 IvcmLockListener = interface(IvcmBase)
  {* ��������� ���������� }
   ['{E0D65BF5-6B21-4ABC-9F2C-395BADEB1D05}']
   procedure Lock;
     {* ��������� ��������� }
   procedure BeforeUnlock;
     {* ���������� �������� ��� �����������, �� ��������� ��� ��������� }
   procedure Unlock;
     {* ��������� ��������� }
 end;//IvcmLockListener

 IvcmFormDispatcher = interface(IvcmBase)
  {* ��������� ���� ���������� }
   ['{D21F3AC0-178F-4F13-A571-79F897BEB2D9}']
   function Get_Locked: Boolean;
   function Get_MainFormsCount: Integer;
   function Get_MainForm(anIndex: Integer): IvcmEntityForm;
   function Get_CurrentMainForm: IvcmEntityForm;
   function Get_Notify: IvcmFormDispatcherNotify;
   procedure AddForm(const aForm: IvcmEntityForm);
     {* �������� ����� ����� � ���������� }
   procedure RemoveForm(const aForm: IvcmEntityForm);
     {* ������� ����� �� ���������� }
   procedure ShowMainForm(const aForm: IvcmEntityForm);
     {* �������� ������� ����� }
   procedure Lock;
   procedure UnLock;
   procedure BackupLockStatus;
   procedure RestoreLockStatus;
   function FindForm(const aGUID: TGUID;
     out theForm: IvcmEntityForm): Boolean;
   procedure AddFormForInvalidate(const aForm: IvcmEntityForm);
   procedure AddControlForInvalidate(aControl: TObject);
   procedure AddFormForUpdateActions(const aForm: IvcmEntityForm);
   procedure AddDockManager(const aDockManager: IDockManager);
   procedure AddLockListener(const aListener: IvcmLockListener);
   procedure RemoveLockListener(const aListener: IvcmLockListener);
   procedure UpdateMainCaption(const aForm: IvcmEntityForm = nil);
   procedure AddToCloseQueue(const aForm: IvcmEntityForm);
   procedure PlaceNewMainForm(aSource: TCustomForm;
     aNew: TCustomForm);
     {* ���������� ����� ������� �����.
             aSourceMainForm:
               - ����� �� ������� ������� �������� ����� }
   procedure StartNewMainForm;
     {* ���������� ����� ������� �������� ������� ����� }
   property Locked: Boolean
     read Get_Locked;
   property MainFormsCount: Integer
     read Get_MainFormsCount;
   property MainForm[anIndex: Integer]: IvcmEntityForm
     read Get_MainForm;
   property CurrentMainForm: IvcmEntityForm
     read Get_CurrentMainForm;
   property Notify: IvcmFormDispatcherNotify
     read Get_Notify;
 end;//IvcmFormDispatcher

 IvcmModule = interface;
 { - ��������������� �������� IvcmModule. }

 IvcmDispatcher = interface(IvcmBase)
  {* ��������� ���������� }
   ['{7FC5CA97-184A-4632-9A87-B97D59C5AE84}']
   function Get_ModulesCount: Integer;
   function Get_EntitiesCount: Integer;
   function Get_IsRestoringAllSettings: Boolean;
   function Get_InClosingAllWindows: Boolean;
   function pm_GetIsLockActionUpdate: Boolean;
   function Get_Module(anIndex: Integer): IvcmModule;
   function Get_FormDispatcher: IvcmFormDispatcher;
   function Get_History: IvcmHistory;
   function Get_ActiveEntity: IvcmEntity;
   function Get_Entity(anIndex: Integer): IvcmEntity;
   procedure BeginRestoreAllSettings;
   procedure EndRestoreAllSettings;
   procedure RestoreFormSize;
     {* ������������ ������ ����������� �� ����� (��������������� �������
             ������� Design-Time, ����� ������ �� ��������) }
   procedure ReloadAllToolbars;
     {* ������������� ���������� toolbar-�� � ���� �������� � ������ ������
             ���� }
   function EntityOperation(const anOp: TvcmOPID;
    const aParams: IvcmExecuteParams): Boolean; overload; 
   procedure EntityOperation(const anOp: TvcmOPID;
    const aParams: IvcmTestParams); overload; 
   {$If not defined(DesignTimeLibrary) AND not defined(NoVCM)}
   procedure EntityOperationBroadcast(const anOp: TvcmOPID;
    const aParams: IvcmExecuteParams);
   {$IfEnd} //not DesignTimeLibrary AND not NoVCM
   procedure CallModuleOperation(const anOp: TvcmMOPID;
    const aParams: IvcmExecuteParams);
     {* ��������� �������� ������. (!) ������ ��� ������ ������� VCM. �� ��� ������������� �� ������ }
   procedure ModuleOperation(const anOp: TvcmMOPID;
    const aParams: IvcmTestParams); overload; 
     {* ��������� �������� ������ }
   function ModuleOperation(const anOp: TvcmMOPID): Boolean; overload; 
     {* ��������� �������� ������ }
   function GetModuleByID(aModuleID: TvcmControlID): IvcmModule;
     {* ���������� ������ �� �������������� }
   procedure UpdateStatus;
   procedure AddAggregate(const anAggregate: IvcmAggregate);
   procedure RemoveAggregate(const anAggregate: IvcmAggregate);
   function FindAggregate(const aGUID: TGUID;
    out theAggregate: IvcmAggregate): Boolean;
   procedure StoreFocus;
   procedure RestoreFocus;
   procedure BeginOp(anInternal: Boolean = false);
   procedure EndOp;
   procedure StoreFocused(aHandle: THandle);
   function InOp(anInternal: Boolean = false): Boolean;
   procedure BeginCancelModal;
   procedure EndCancelModal;
   function InCancelModal: Boolean;
   procedure LockCursor;
   procedure UnlockCursor;
   procedure LockActionUpdate;
   procedure UnlockActionUpdate;
     {* ����������� OnTest-� ��������. ���������� ����� ������� ��������� �
             ���������� ��������� � �� ��� ������ ��������� }
   procedure AddObjectForFree(O: TObject);
   procedure ReinsertForms;
     {* ������������ �������� ���� }
   procedure TileWindowsHorizontal;
     {* ����������� �������� ���� ���������� ������������� }
   procedure TileWindowsVertical;
     {* ����������� �������� ���� ���������� ���������� }
   procedure CascadeWindows;
     {* ����������� �������� ���� �������� }
   procedure CloseAllWindows(const aCurrent: IvcmEntityForm = nil);
     {* ������� ��� �������� ���� ����� ��������, ���� �� �� ������, �� ����������� ���������� }
   property ModulesCount: Integer
     read Get_ModulesCount;
   property EntitiesCount: Integer
     read Get_EntitiesCount;
   property IsRestoringAllSettings: Boolean
     read Get_IsRestoringAllSettings;
     {* ���� �������������� ���� �������� ������� }
   property InClosingAllWindows: Boolean
     read Get_InClosingAllWindows;
     {* ���� �������� ���� ���� ������� }
   property IsLockActionUpdate: Boolean
     read pm_GetIsLockActionUpdate;
     {* ���������� �������� ��������� }
   property Module[anIndex: Integer]: IvcmModule
     read Get_Module;
   property FormDispatcher: IvcmFormDispatcher
     read Get_FormDispatcher;
     {* ��������� ���� ���������� }
   property History: IvcmHistory
     read Get_History;
   property ActiveEntity: IvcmEntity
     read Get_ActiveEntity;
     {* �������� �������� }
   property Entity[anIndex: Integer]: IvcmEntity
     read Get_Entity;
 end;//IvcmDispatcher

    TvcmEntityOperationsOption = (
     {* ��� ��������� ��������� }
      vcm_enoGroupItemsInContextMenu // ������������ �������� � ����������� ����
    );//TvcmEntityOperationsOption

    TvcmEntityOperationsOptions = set of TvcmEntityOperationsOption;

 IvcmEntityDef = interface(IvcmOperationalIdentifiedUserFriendlyControl)
  {* �������� �������� }
   ['{99A2B713-A7AD-462E-85F1-BF8BAB015709}']
   function pm_GetOptions: TvcmEntityOperationsOptions;
   function Get_ContextMenuWeight: Integer;
   property Options: TvcmEntityOperationsOptions
     read pm_GetOptions;
   property ContextMenuWeight: Integer
     read Get_ContextMenuWeight;
 end;//IvcmEntityDef

 IvcmEntitiesDefIterator = interface(IvcmBase)
  {* �������� �������� ��������� }
   ['{2B7E0191-516A-4291-A8C8-3B21174FBDE0}']
   function Get_Next: IvcmEntityDef;
   property Next: IvcmEntityDef
     read Get_Next;
     {* ��������� ��������� �������� }
 end;//IvcmEntitiesDefIterator

 IvcmModuleDef = interface(IvcmOperationalIdentifiedUserFriendlyControl)
   ['{8EC2C72E-6BC1-4DB5-92A5-364301DA3F62}']
   function Get_EntitiesDefIterator: IvcmEntitiesDefIterator;
   function Get_UserTypesIterator: IvcmUserTypesIterator;
   function Make: IvcmModule;
     {* ������� ������ }
   property EntitiesDefIterator: IvcmEntitiesDefIterator
     read Get_EntitiesDefIterator;
     {* �������� �������� ���������. ����� ���� nil }
   property UserTypesIterator: IvcmUserTypesIterator
     read Get_UserTypesIterator;
 end;//IvcmModuleDef

 IvcmModule = interface(IvcmBase)
  {* ������ (��� �� �� ����� ���� ������������ - � � ��� ������ �� �������) }
   ['{B04FFD05-9E96-4970-9DDD-7DA8173A828D}']
   function Get_ModuleDef: IvcmModuleDef;
   procedure Operation(anID: TvcmControlID;
    const aParams: IvcmParams;
    aMode: TvcmOperationMode);
     {* ��������� �������� ������ }
   function GetOperationByID(anID: TvcmControlID): IvcmOperationDef;
   property ModuleDef: IvcmModuleDef
     read Get_ModuleDef;
     {* ��������� ������ }
 end;//IvcmModule

  TvcmFormSetID = {$IfDef XE4}record{$Else}object{$EndIf}
   {* ������������� ������. }
  public
     rName : AnsiString;
  public
     function EQ(const anOther: TvcmFormSetID): Boolean;
  end;//TvcmFormSetID

  PvcmFormSetID = ^TvcmFormSetID;

 IvcmFormSetRefreshParams = interface(IvcmFormSetRefreshDataParams)
  {* ��������� ���������� ������ }
   ['{A4A09A60-7E69-46AA-8321-30102D348F15}']
 end;//IvcmFormSetRefreshParams

 IvcmFormSetFactory = interface(IvcmBase)
  {* ������� ������ }
   ['{B9D1E9AD-C234-41E1-940C-C50042E56540}']
   function pm_GetFormSetId: PvcmFormSetID;
   procedure Refresh(const aParams: IvcmFormSetRefreshParams);
     {* ��������� ������ ������.
            aDataForHistory - ������ aDataSource, ������� ���������� ���������
                              � ������� }
   procedure SaveHistory(const aContainer: IvcmContainer;
    aNeedSaveUseCaseData: Boolean);
   function IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
     {* �������� �� ����� ������� � ������ }
   function IsDefaultStatusForm(const aForm: IvcmEntityForm): Boolean;
     {* �������� �� ����� ���������� �� ����� ������� }
   function MakeMainCaption(const aDataSource: IvcmFormSetDataSource): IvcmCString;
   function MakeMainImageIndex(const aDataSource: IvcmFormSetDataSource): Integer;
   property FormSetId: PvcmFormSetID
     read pm_GetFormSetId;
     {* ������������� ������, ��� ������ ��������� ��� �������� ������ }
 end;//IvcmFormSetFactory

 TvcmInitProc = procedure (aForm: TWinControl);

 TvcmEffectiveUserType = Low(TvcmUserType)..Pred(High(TvcmUserType));

 IvcmMakeParams = interface(IvcmBase)
   ['{5D4BEDAD-5C8D-407F-B53C-46BF377DB7F8}']
   function Get_Owner: TComponent;
   function Get_Aggregate: IvcmAggregate;
   function Get_Container: IvcmContainer;
   property Owner: TComponent
     read Get_Owner;
   property Aggregate: IvcmAggregate
     read Get_Aggregate;
     {* ���������, � ������� ��������� ��������� }
   property Container: IvcmContainer
     read Get_Container;
 end;//IvcmMakeParams

 TvcmEffectiveUserTypes = set of TvcmEffectiveUserType;

 TvcmFormFactory = function (const aParams: IvcmMakeParams;
  aZoneType: TvcmZoneType;
  aUserType: TvcmEffectiveUserType;
  aGUID: PGUID;
  const aDataSource: IvcmFormDataSource;
  aSubUserType: TvcmUserType;
  aAfterCreate: TvcmInitProc): IvcmEntityForm of object;

 TvcmZoneTypes = set of TvcmZoneType;
  {* ����� ����� ���� ������� }

 TvcmEffectiveZoneType = vcm_ztMain..vcm_ztReminder;
  {* �������� ���� ������� }

 TvcmEffectiveZoneTypes = set of TvcmEffectiveZoneType;
  {* ��������� ����� �������� ��� ������� }

 TvcmFormDescriptor = {$IfDef XE4}record{$Else}object{$EndIf}
 public
   rFormID : TvcmFormID;
   rFactory : TvcmFormFactory;
 public
    procedure SetFactory(aFactory: TvcmFormFactory);
    function MakeForm(const aParams: IvcmMakeParams;
     aZoneType: TvcmZoneType;
     aUserType: TvcmEffectiveUserType;
     aGUID: PGUID;
     const aDataSource: IvcmFormDataSource;
     aSubUserType: TvcmUserType;
     aAfterCreate: TvcmInitProc): IvcmEntityForm;
    function FormClass: TClass;
 end;//TvcmFormDescriptor

 PvcmFormDescriptor = ^TvcmFormDescriptor;

 TvcmUserTypeInfo = class
 public
 // public methods
   class function AllowCustomizeToolbars(const anUserType: IvcmUserTypeDef): Boolean;
   class function IsCustomizationInternal(const anUserType: IvcmUserTypeDef): Boolean;
 end;//TvcmUserTypeInfo
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  SysUtils,
  afwFacade
  ;

// start class TvcmFormID

function TvcmFormID.EQ(const anOther: TvcmFormID): Boolean;
//#UC START# *4FFDB96C00FA_476A84380187_var*
//#UC END# *4FFDB96C00FA_476A84380187_var*
begin
//#UC START# *4FFDB96C00FA_476A84380187_impl*
 Result := (Self.rName = anOther.rName);
//#UC END# *4FFDB96C00FA_476A84380187_impl*
end;//TvcmFormID.EQ
// start class TvcmFormSetID

function TvcmFormSetID.EQ(const anOther: TvcmFormSetID): Boolean;
//#UC START# *4FFDBAD10278_4683F4F6007E_var*
//#UC END# *4FFDBAD10278_4683F4F6007E_var*
begin
//#UC START# *4FFDBAD10278_4683F4F6007E_impl*
 Result := (Self.rName = anOther.rName);
//#UC END# *4FFDBAD10278_4683F4F6007E_impl*
end;//TvcmFormSetID.EQ
// start class TvcmFormDescriptor

procedure TvcmFormDescriptor.SetFactory(aFactory: TvcmFormFactory);
//#UC START# *4FFC436A0015_4FFC30A800DF_var*
//#UC END# *4FFC436A0015_4FFC30A800DF_var*
begin
//#UC START# *4FFC436A0015_4FFC30A800DF_impl*
 Assert(@Self <> nil);
 Assert(not Assigned(rFactory));
 rFactory := aFactory;
//#UC END# *4FFC436A0015_4FFC30A800DF_impl*
end;//TvcmFormDescriptor.SetFactory

function TvcmFormDescriptor.MakeForm(const aParams: IvcmMakeParams;
  aZoneType: TvcmZoneType;
  aUserType: TvcmEffectiveUserType;
  aGUID: PGUID;
  const aDataSource: IvcmFormDataSource;
  aSubUserType: TvcmUserType;
  aAfterCreate: TvcmInitProc): IvcmEntityForm;
//#UC START# *4FFC47240301_4FFC30A800DF_var*
//#UC END# *4FFC47240301_4FFC30A800DF_var*
begin
//#UC START# *4FFC47240301_4FFC30A800DF_impl*
 Assert(@Self <> nil);
 Assert(Assigned(rFactory), Format('�� ���������������� ������� ��� ����� %s', [rFormID.rName]));
 Result := rFactory(aParams, aZoneType, aUserType, aGUID, aDataSource, aSubUserType, aAfterCreate);
//#UC END# *4FFC47240301_4FFC30A800DF_impl*
end;//TvcmFormDescriptor.MakeForm

function TvcmFormDescriptor.FormClass: TClass;
//#UC START# *4FFD9F7A02D6_4FFC30A800DF_var*
var
 l_Factory : TvcmFormFactory;
 l_M       : TMethod absolute l_Factory;
//#UC END# *4FFD9F7A02D6_4FFC30A800DF_var*
begin
//#UC START# *4FFD9F7A02D6_4FFC30A800DF_impl*
 Assert(@Self <> nil);
 Assert(Assigned(rFactory));
 l_Factory := rFactory;
 Result := l_M.Data;
//#UC END# *4FFD9F7A02D6_4FFC30A800DF_impl*
end;//TvcmFormDescriptor.FormClass
// start class TvcmUserTypeInfo

class function TvcmUserTypeInfo.AllowCustomizeToolbars(const anUserType: IvcmUserTypeDef): Boolean;
//#UC START# *51D6CBF90231_51D6CBDB0194_var*
//#UC END# *51D6CBF90231_51D6CBDB0194_var*
begin
//#UC START# *51D6CBF90231_51D6CBDB0194_impl*
 // http://mdp.garant.ru/pages/viewpage.action?pageId=466760570
 Result := anUserType.AllowCustomizeToolbars or afw.Application.IsInternal;
//#UC END# *51D6CBF90231_51D6CBDB0194_impl*
end;//TvcmUserTypeInfo.AllowCustomizeToolbars

class function TvcmUserTypeInfo.IsCustomizationInternal(const anUserType: IvcmUserTypeDef): Boolean;
//#UC START# *51FF6ED902F6_51D6CBDB0194_var*
//#UC END# *51FF6ED902F6_51D6CBDB0194_var*
begin
//#UC START# *51FF6ED902F6_51D6CBDB0194_impl*
 Result := (not anUserType.AllowCustomizeToolbars)
  and AllowCustomizeToolbars(anUserType);
//#UC END# *51FF6ED902F6_51D6CBDB0194_impl*
end;//TvcmUserTypeInfo.IsCustomizationInternal
{$IfEnd} //not NoVCM


end.