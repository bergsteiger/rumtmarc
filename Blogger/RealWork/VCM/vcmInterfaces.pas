unit vcmInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/VCM/vcmInterfaces.pas"
// Начат: 21.02.2003 16:32
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<InternalInterfaces::Category>> Shared Delphi::VCM::vcmInterfaces
//
// Базовые интерфейсы.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

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
  {* Объект VCM. }
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
  {* Тип для работы со списком форм проекта }

 PvcmStringID = ^TvcmStringID;

 TvcmOperationCode = l3Interfaces.Tl3OperationCode;
  {* команда возвращаемая компоненту в результате срабатывания механизма ShortCut-ов }

const
  { Идентификаторы контролов. }
 vcm_cidEmpty = TvcmControlID(0);
  { Пустой идентификтор управляющего объекта. }

const
  { Weights }
 cNullWeight = -1;
  { cNullWeight - не установленный вес }

const
  { UserTypes }
 vcm_utAny = 31;
  { любой пользовательский тип. }

const
  { States }
 vcm_DefaultOperationState : TvcmOperationStateIndex = (rID : -1);

type
 IvcmData = interface(IvcmBase)
  {* Базовый интерфейс данных }
   ['{519F45D2-92C3-4312-A8BA-15CC5E79E1B2}']
   function Clone: IvcmData;
     {* сделать копию }
 end;//IvcmData

 IvcmObjectWithData = interface(IvcmBase)
  {* Объект с данными }
   ['{8B787E25-8F5C-4D3D-9F96-A6F494CF4910}']
   function pm_GetDataForSave: IvcmData;
   procedure pm_SetDataForSave(const aValue: IvcmData);
   property DataForSave: IvcmData
     read pm_GetDataForSave
     write pm_SetDataForSave;
     {* данные необходимые сборки храняться отдельно, потому что состоние сборки может в определенные моменты времени сохраняться }
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
  {* Идентификатор формы. }
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
 , vcm_ztMainObjectForm // Псевдо-зона, содержащая форму у которой MainObjectForm = TRUE
 , vcm_ztForFocus // Псевдо-зона для форм, которые автоматически выставляют себе фокус
 );//TvcmZoneType

 IvcmContainer = interface;
 { - предварительное описание IvcmContainer. }

 IvcmParams = interface;
 { - предварительное описание IvcmParams. }

 IvcmTestParams = interface(IvcmTestParamsPrim)
   ['{2E888E67-0D8C-4382-A211-D7E9836C3317}']
   function Get_Container: IvcmContainer;
   function BasePart: IvcmParams;
   procedure SetControlEvent(anEvent: TvcmControlTestEvent);
   property Container: IvcmContainer
     read Get_Container;
 end;//IvcmTestParams

 IvcmFormSetDataSource = interface;
 { - предварительное описание IvcmFormSetDataSource. }

 IvcmEntityForm = interface;
 { - предварительное описание IvcmEntityForm. }

 PIvcmEntityForm = ^IvcmEntityForm;

 IvcmFormDataSource = interface(Il3ChangeNotifier)
  {* Бизнес объект формы }
   ['{1EA49D91-5C33-490E-9108-C51B3E7C39E6}']
   function pm_GetUseCaseController: IvcmFormSetDataSource;
   function Get_DisplayName: IvcmCString;
   function IsSame(const aValue: IvcmFormDataSource): Boolean;
     {* проверка на равенство }
   function IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
     {* является ли форма главной в сборке }
   function IsLikeViewAreaController(const aDataSource: IvcmFormDataSource): Boolean;
     {* определим нужно ли менять позицию на данные }
   function CastUCC(const aGUID: TGUID;
    out theObj;
    NeedsException: Boolean = false): Boolean;
     {* Приводит контроллер прецедента к заданному интерфейсу. Это нужно, чтобы избавится от явного знания о контроллере прецедента. [$122674504] }
   property UseCaseController: IvcmFormSetDataSource
     read pm_GetUseCaseController;
     {* Контроллер логики прецедента. При изменении полей бизнес объекта, он принимает решение об обновлении данных сборки (Refresh) }
   property DisplayName: IvcmCString
     read Get_DisplayName;
     {* название источинка данных }
 end;//IvcmFormDataSource

 IvcmExecuteParams = interface(IvcmFlexParams)
  {* Параметры выполнения операции. }
   ['{3800F95B-6E41-4AB7-A52E-71DB98647DE4}']
   function pm_GetData: IUnknown;
   function Get_Container: IvcmContainer;
   procedure SetControlEvent(anEvent: TvcmControlEvent);
   function BasePart: IvcmParams;
   property Data: IUnknown
     read pm_GetData;
     {* используется для обмена данными. Пользователь описывает интерфейс,
             который известен и приемнику и источнику. Источник создаёт
             интерфейс, заполняет его данными и присваивает полю Data }
   property Container: IvcmContainer
     read Get_Container;
 end;//IvcmExecuteParams

 IvcmFormSet = interface;
 { - предварительное описание IvcmFormSet. }

 PIvcmFormSet = ^IvcmFormSet;

 IvcmFormSetRefreshDataParams = interface;
 { - предварительное описание IvcmFormSetRefreshDataParams. }

 IvcmFormSetDataSource = interface(IvcmObjectWithData{, Il3ChangeNotifier})
  {* Интерфейс бизнес объекта сборки форм. [$54689847] }
   ['{948306E4-5742-41CC-8B87-F3A0973DCB66}']
   function pm_GetFormSet: IvcmFormSet;
   procedure pm_SetFormSet(const aValue: IvcmFormSet);
   function pm_GetMainCaption: IvcmCString;
   function pm_GetMainImageIndex: Integer;
   function pm_GetInInit: Boolean;
   procedure BeginRefresh;
     {* вызывается перед началом обновления }
   procedure EndRefresh;
     {* вызывается в конце обновления }
   function IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
     {* является ли форма главной в сборке }
   function IsLikeUseCaseController(const aDataSource: IvcmFormSetDataSource): Boolean;
     {* определим нужно ли пересоздавать сборку или все отличие в позиции на данных }
   function IsRefreshing: Boolean;
     {* сборка находится в состоянии обновления }
   procedure PushFromHistory;
     {* сборка была выгружена из истории }
   procedure Refresh(const aParams: IvcmFormSetRefreshDataParams = nil);
     {* обновить представление сборки }
   property FormSet: IvcmFormSet
     read pm_GetFormSet
     write pm_SetFormSet;
   property MainCaption: IvcmCString
     read pm_GetMainCaption;
   property MainImageIndex: Integer
     read pm_GetMainImageIndex;
   property InInit: Boolean
     read pm_GetInInit;
     {* флаг взведен при первом обновлении сборки }
  // Методы преобразования к реализуемым интерфейсам
   function As_Il3ChangeNotifier: Il3ChangeNotifier;
 end;//IvcmFormSetDataSource

  TvcmCanClose = (
   {* Определяет возможность закрытия формы }
    vcm_ccNone // Не определено. Если у TvcmEntityForm.CanClose = vcm_ccNone,                      а у TvcmZonesCollectionItem.CanClose <> vcm_ccNone, то                      форме устанавливает CanClose как у зоны стыковки
  , vcm_ccEnable // Окно может быть закрыто
  , vcm_ccDisable // Окно не может быть закрыто
  );//TvcmCanClose

 IvcmDispatcher = interface;
 { - предварительное описание IvcmDispatcher. }

 IvcmForm = interface(IvcmLayout)
  {* Базовый класс формы библиотеки VCM }
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
     {* Контейнер, в который входит данная форма }
   property Dispatcher: IvcmDispatcher
     read Get_Dispatcher;
   property NativeMainForm: IvcmContainer
     read Get_NativeMainForm;
   property Caption: IvcmCString
     read Get_Caption
     write Set_Caption;
 end;//IvcmForm

 TvcmFormDataSourceNotify = (
  {* Нотификация рассылаемая _IvcmFormDataSource слушателям }
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
     {* Можно ли настраивать тулбары у формы с данным пользовательским типом }
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
   {* определяет способ активации формы (сделать закладку активной) при
       обновлении сборки. }
    wafNone // не активировать
  , wafAlways // всегда активировать
  , wafIfNotActivated // активировать только если не активных с флагом ActivateIfUpdate
  );//TvcmActivateIfUpdate

 IvcmEntityFormDef = interface(IvcmBaseObjectDef)
   ['{1BEF93AC-39A2-4630-964C-FCFD9714FCC7}']
   function Get_UserTypesIterator: IvcmUserTypesIterator;
   property UserTypesIterator: IvcmUserTypesIterator
     read Get_UserTypesIterator;
 end;//IvcmEntityFormDef

     TvcmBool = (
      {* Логический тип используемый в VCM }
       vcm_bNone
     , vcm_bFalse
     , vcm_bTrue
     );//TvcmBool

     TvcmImageSize = (
      {* Размер иконки. Используется для указания размеров иконок для зоны }
       isNone
     , isSmall
     , isLarge
     , isMedium
     );//TvcmImageSize

 IvcmToolbarStyle = interface(IvcmBase)
  {* Стиль панели инструментов }
   ['{8583988A-F32A-4579-8430-D6DB885BC9C0}']
   function pm_GetImageSize: TvcmImageSize;
   function pm_GetMergeWithContainer: TvcmBool;
   function pm_GetContainer: IvcmEntityForm;
   procedure Merge(const aStyle: IvcmToolbarStyle);
     {* объединить стили }
   property ImageSize: TvcmImageSize
     read pm_GetImageSize;
     {* размер иконок }
   property MergeWithContainer: TvcmBool
     read pm_GetMergeWithContainer;
     {* объединять с панелью инструментов контейнера формы }
   property Container: IvcmEntityForm
     read pm_GetContainer;
     {* контейнер для размещения панели иснтрументов }
 end;//IvcmToolbarStyle

 IvcmToolbarsStyle = interface(IvcmBase)
  {* Иконки панелей инструментов }
   ['{1AF66E21-1226-46EA-9BF3-312C75E600CA}']
   function pm_GetLeft: IvcmToolbarStyle;
   function pm_GetRight: IvcmToolbarStyle;
   function pm_GetTop: IvcmToolbarStyle;
   function pm_GetBottom: IvcmToolbarStyle;
   procedure Merge(const aStyle: IvcmToolbarsStyle);
     {* объединить стили }
   function IsDefault: Boolean;
     {* для одной из панелей устновлены иконки }
   procedure ForbidMerge;
     {* запретить объединение панелей инструментов }
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
  {* стиль VCM формы }
   ['{94D33121-029B-4F1D-A03D-6DD1FBE1ED4B}']
   function pm_GetToolbars: IvcmToolbarsStyle;
   procedure Merge(const aStyle: IvcmFormStyle);
     {* объединить стили }
   property Toolbars: IvcmToolbarsStyle
     read pm_GetToolbars;
     {* иконки для панелей инструментов формы }
 end;//IvcmFormStyle

 IvcmEntity = interface;
 { - предварительное описание IvcmEntity. }

 IvcmAggregate = interface;
 { - предварительное описание IvcmAggregate. }

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
     {* Проверяет является ли переданное имя именем сущности }
   function LoadState(const aState: IvcmBase;
    aStateType: TvcmStateType): Boolean;
   function SaveState(out theState: IvcmBase;
    aStateType: TvcmStateType): Boolean;
   function IsMainObjectForm: Boolean;
   function IsModalForm: Boolean;
     {* сначала проверяет свой флаг IsModal, если False, то рекурсивно
             проверяет флаги родителей формы }
   function IsModal: Boolean;
     {* форма является модальной }
   function GetStatus(out theStatus: TvcmStatusStrings): Boolean;
   procedure SetActiveInParent;
     {* сделать активным в родителе. Применяется для форм находящихся в PageControl-е }
   procedure SetFirstActiveInParent;
     {* сделать активным первого в родителе }
   procedure SetActiveAndShowInParent;
     {* сделать активной и развернуть навигатор он был свернут }
   procedure SetInactiveInParent;
     {* сделать активным предыдующего в родителе. Применяется для форм находящихся в PageControl-е }
   function IsActiveInParent: Boolean;
     {* является ли форма активная в родителе. Применяется для форм находящихся в PageControl-е }
   procedure CloseInParent;
     {* Попытаться закрыть форму во вкладке }
   procedure LockFocus;
   procedure UnlockFocus;
   procedure MakeAggregate;
   procedure RegInContainer;
   procedure UnregInContainer;
   function GetTabInfo(out theCaption: Il3CString;
    out theItemIndex: Integer): Boolean;
     {* Информация для закладки, в которую вставляется форма }
   procedure CheckFloatingVisibility;
   property GUID: TGUID
     read pm_GetGUID
     write pm_SetGUID;
   property IsMainInFormSet: Boolean
     read pm_GetIsMainInFormSet;
     {* форма является главной в сборке }
   property Entity: IvcmEntity
     read Get_Entity;
     {* Сущность, которую олицетворяет форма }
   property Aggregate: IvcmAggregate
     read Get_Aggregate;
     {* Агрегация, в которую входит сущность }
   property ZoneType: TvcmZoneType
     read Get_ZoneType;
     {* Зона, в которую может встраиваться форма сущности }
   property UserType: TvcmUserType
     read pm_GetUserType;
   property SubUserType: TvcmUserType
     read pm_GetSubUserType;
     {* уточняет текущий UserType }
   property MainCaption: IvcmCString
     read Get_MainCaption;
   property FormDef: IvcmEntityFormDef
     read Get_FormDef;
   property CurUserTypeDef: IvcmUserTypeDef
     read pm_GetCurUserTypeDef;
   property CurUseToolbarOfUserType: IvcmUserTypeDef
     read pm_GetCurUseToolbarOfUserType;
     {* тип формы для чтения настроек }
   property ZoneControl: TControl
     read pm_GetZoneControl
     write pm_SetZoneControl;
     {* компонент зоны, в которую была вставлена форма }
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
     {* Добавляет сущность в агрегацию }
   procedure RemoveEntity(const anEntity: IvcmEntity);
     {* удаляет сущность из агрегации }
   function Operation(const anOp: TvcmOPID;
    const aParams: IvcmExecuteParams): IvcmExecuteParams; overload; 
   function Operation(const anOp: TvcmOPID): IvcmExecuteParams; overload; 
   function HasForm(const aName: TvcmFormID;
    theForm: PIvcmEntityForm = nil): Boolean;
     {* Проверяет, присутствует ли указанная форма в агрегации }
   property GUID: TGUID
     read Get_GUID;
 end;//IvcmAggregate

 IvcmFormSetFactory = interface;
 { - предварительное описание IvcmFormSetFactory. }

 IvcmFormSet = interface(IvcmAggregate)
  {* Сборка форм }
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
     {* обновляет представление сборки }
   procedure SaveHistory;
     {* сохраняет сборку в историю }
   function IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
     {* является ли форма главной в сборке }
   function FindStatusInfoForm: IvcmEntityForm;
     {* найти форму отвечающую за вывод статуса }
   procedure PopToHistory;
     {* сборка помещена в историю }
   procedure PushFromHistory;
     {* сборка выгружена из истории }
   property CanRefresh: Boolean
     read pm_GetCanRefresh;
     {* после помещения удаляемой сборки в историю обновлять ее нельзя }
   property EntitiesCount: Integer
     read Get_EntitiesCount;
     {* Количество сущностей }
   property Entity[anIndex: Integer]: IvcmEntity
     read Get_Entity;
     {* вложенная сущность }
   property Container: IvcmContainer
     read pm_GetContainer
     write pm_SetContainer;
   property Factory: IvcmFormSetFactory
     read pm_GetFactory
     write pm_SetFactory;
   property DataSource: IvcmFormSetDataSource
     read pm_GetDataSource
     write pm_SetDataSource;
     {* бизнес объект прецедента }
 end;//IvcmFormSet


  TvcmSaveFormSetToHistory = (
    sfsNone // сохранение форм не требуется
  , sfsAllForms // сохранять все формы
  , sfsOnlyIfDataSourceChanged // сохранять только изменившиеся формы
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
     {* записать в историю формы, у которых изменились _DataSource }
   property DataForHistory: IvcmData
     read pm_GetDataForHistory;
     {* данные aDataSource, которые необходимо сохранить в историю }
   property DataSource: IvcmFormSetDataSource
     read pm_GetDataSource
     write pm_SetDataSource;
   property FormSet: IvcmFormSet
     read pm_GetFormSet
     write pm_SetFormSet;
 end;//IvcmFormSetRefreshDataParams

 IvcmEntityFormIterator = interface(IvcmBase)
  {* Итератор форм }
   ['{4D060767-BC15-4155-B148-005D1611436D}']
   function Next: IvcmEntityForm;
 end;//IvcmEntityFormIterator

  TvcmMainFormInfo = record
   {* информация о главной форме. }
    rWindowState : TWindowState;
    rBounds : TRect; // положение окна в координатах экрана.
  end;//TvcmMainFormInfo

 IvcmContainer = interface(IvcmBase)
  {* Контейнер форм }
   ['{719C2E6C-F3EA-4ED1-BB08-4C3327734EB2}']
   function pm_GetEntityFormIterator: IvcmEntityFormIterator;
   function Get_NativeMainForm: IvcmContainer;
   function Get_AsForm: IvcmEntityForm;
   procedure RegForm(const aForm: IvcmEntityForm);
   procedure UnregForm(const aForm: IvcmEntityForm);
   function InsertForm(const aForm: IvcmEntityForm): Boolean;
     {* вставляет форму в контейнер }
   function HasForm(const aName: TvcmFormID;
    aZoneType: TvcmZoneType = vcm_ztAny;
    aRecursive: Boolean = true;
    theForm: PIvcmEntityForm = nil;
    aUserType: TvcmUserType = vcm_utAny;
    aGUID: PGUID = nil;
    aSubUserType: TvcmUserType = vcm_utAny): Boolean; overload; 
     {* проверяет есть ли в контейнере такая форма }
   function HasForm(aZoneType: TvcmZoneType = vcm_ztAny;
    aRecursive: Boolean = true;
    theForm: PIvcmEntityForm = nil;
    aUserType: TvcmUserType = vcm_utAny;
    aGUID: PGUID = nil;
    aSubUserType: TvcmUserType = vcm_utAny): Boolean; overload; 
     {* проверяет есть ли в контейнере такая форма }
   function Operation(const anOp: TvcmOPID;
    const aParams: IvcmExecuteParams): Boolean; overload; 
     {* Выполнение операции по имени сущности }
   function Operation(const anOp: TvcmOPID;
    const aParams: IvcmTestParams): Boolean; overload; 
     {* Выполнение операции по имени сущности }
   function Operation(const anOp: TvcmOPID;
    aMode: TvcmOperationMode = vcm_omExecute): Boolean; overload; 
     {* Выполнение операции по имени сущности }
   function IsNull: Boolean;
   procedure FormStyle(const aForm: IvcmEntityForm;
    const aStyle: IvcmFormStyle);
     {* определим стиль формы }
   procedure SetFocusToMainObjectForm;
     {* устанавливаем фокус в самую вложенную форму указанной зоны }
   procedure ChildDataSourceChanged(const aChild: IvcmEntityForm;
    const anOld: IvcmFormDataSource;
    const aNew: IvcmFormDataSource);
     {* вызывается при изменении источника данных вложенной формы }
   property EntityFormIterator: IvcmEntityFormIterator
     read pm_GetEntityFormIterator;
     {* итератор форм контейнера }
   property NativeMainForm: IvcmContainer
     read Get_NativeMainForm;
   property AsForm: IvcmEntityForm
     read Get_AsForm;
 end;//IvcmContainer

 IvcmParams = interface(IvcmBaseParamsPrim)
  {* Параметры операции }
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
  {* Сущность }
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
  {* Элемент истории приложения }
   ['{31043D04-F4D1-4E89-8DDA-F005E711AC11}']
   function pm_GetCaption: IvcmCString;
   procedure Activate(const aMainForm: IvcmEntityForm); overload; 
     {* активизирет данные элемента в приложении }
   procedure Activate(const aMainForm: IvcmEntityForm;
      const anOwner: IvcmEntityForm); overload; 
     {* активизирет данные элемента в приложении }
   function Drop: Boolean;
     {* сбросить запись на диск }
   property Caption: IvcmCString
     read pm_GetCaption;
     {* название }
 end;//IvcmHistoryItem

   TvcmHistoryItemType = (
    {* Типы элемента истории. }
     vcm_hitNone // обычный.
   , vcm_hitClose // содержит информацию о форме которая должна быть закрыта,             предварительно сохранив данные существующей формы.
   , vcm_hitContent // содержит информацию о форме, которая должна быть создана, но после            создания элемент должен перейти в состояние hitClose.
   );//TvcmHistoryItemType

 IvcmHistory = interface(IvcmBase)
   ['{D98392A1-1592-465C-A07E-B3B059CFB5D1}']
   procedure DeleteBackItem;
     {* Удаляет один элемент из списка Back }
   function GetBackCount: Integer;
   function GetForwardCount: Integer;
   function GetBackItem(anIndex: Integer): Il3CString;
   function GetForwardItem(anIndex: Integer): Il3CString;
   function pm_GetInBF: Boolean;
   function pm_GetInProcess: Boolean;
   procedure BeforeFormDestroy(const aForm: IvcmEntityForm);
   function ForceSaveState(const aForm: IvcmEntityForm;
     aStateType: TvcmStateType = vcm_stContent): Boolean;
     {* сохранение без проверки необходимости сохранения формы }
   function SaveState(const aForm: IvcmEntityForm;
     aStateType: TvcmStateType = vcm_stContent): Boolean;
   procedure SaveClose(const aForm: IvcmEntityForm;
     const aFormID: TvcmFormID;
     aUserType: TvcmUserType;
     aZoneType: TvcmZoneType;
     aSubUserType: TvcmUserType);
     {* форма которая должна быть закрыта при переходе по истории }
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
     {* добавляет запись в историю }
   function IsLast: Boolean;
   function InBack: Boolean;
     {* Находимся в процессе Back, если нет, то Forward }
   procedure Clear(aHeedCheckCurrent: Boolean = true);
     {* Очищает историю }
   property InBF: Boolean
     read pm_GetInBF;
     {* история находится в состоянии перехода (Back/Forward) }
   property InProcess: Boolean
     read pm_GetInProcess;
     {* история находится в процессе сохранения (между сколбками Start-Finish) }
 end;//IvcmHistory

 IvcmLockListener = interface(IvcmBase)
  {* слушатель блокировок }
   ['{E0D65BF5-6B21-4ABC-9F2C-395BADEB1D05}']
   procedure Lock;
     {* отрисовка запрещена }
   procedure BeforeUnlock;
     {* переходные процессы уже завершились, но отрисовка ещё запрещена }
   procedure Unlock;
     {* отрисовка разрешена }
 end;//IvcmLockListener

 IvcmFormDispatcher = interface(IvcmBase)
  {* Диспетчер форм приложения }
   ['{D21F3AC0-178F-4F13-A571-79F897BEB2D9}']
   function Get_Locked: Boolean;
   function Get_MainFormsCount: Integer;
   function Get_MainForm(anIndex: Integer): IvcmEntityForm;
   function Get_CurrentMainForm: IvcmEntityForm;
   function Get_Notify: IvcmFormDispatcherNotify;
   procedure AddForm(const aForm: IvcmEntityForm);
     {* добавить новую форму в приложение }
   procedure RemoveForm(const aForm: IvcmEntityForm);
     {* удалить форму из приложения }
   procedure ShowMainForm(const aForm: IvcmEntityForm);
     {* показать главную форму }
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
     {* разместить новую главную форму.
             aSourceMainForm:
               - форма на которой вызвали создание новой }
   procedure StartNewMainForm;
     {* вызывается перед началом создания главной формы }
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
 { - предварительное описание IvcmModule. }

 IvcmDispatcher = interface(IvcmBase)
  {* Диспетчер приложения }
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
     {* перечитывает размер компонентов на форме (восстанавливает сначала
             размеры Design-Time, потом читает из настроек) }
   procedure ReloadAllToolbars;
     {* перезагружает информацию toolbar-ов у всех открытых в данный момент
             форм }
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
     {* Выполняет операцию модуля. (!) Только для вызова изнутри VCM. Не для использования на формах }
   procedure ModuleOperation(const anOp: TvcmMOPID;
    const aParams: IvcmTestParams); overload; 
     {* выполняет операцию модуля }
   function ModuleOperation(const anOp: TvcmMOPID): Boolean; overload; 
     {* выполняет операцию модуля }
   function GetModuleByID(aModuleID: TvcmControlID): IvcmModule;
     {* возвращает модуль по идентификатору }
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
     {* блокировать OnTest-ы операций. Необходимо когда система находится в
             переходном состоянии и не все данные актуальны }
   procedure AddObjectForFree(O: TObject);
   procedure ReinsertForms;
     {* перечитывает значения форм }
   procedure TileWindowsHorizontal;
     {* упорядочить открытые окна приложения горизонтально }
   procedure TileWindowsVertical;
     {* упорядочить открытые окна приложения ветикально }
   procedure CascadeWindows;
     {* расположить открытые окна каскадом }
   procedure CloseAllWindows(const aCurrent: IvcmEntityForm = nil);
     {* закрыть все открытые окна кроме текущего, если он не указан, то закрывается приложение }
   property ModulesCount: Integer
     read Get_ModulesCount;
   property EntitiesCount: Integer
     read Get_EntitiesCount;
   property IsRestoringAllSettings: Boolean
     read Get_IsRestoringAllSettings;
     {* идет восстановление всех настроек системы }
   property InClosingAllWindows: Boolean
     read Get_InClosingAllWindows;
     {* идет закрытие всех окон системы }
   property IsLockActionUpdate: Boolean
     read pm_GetIsLockActionUpdate;
     {* обновление операций запрещено }
   property Module[anIndex: Integer]: IvcmModule
     read Get_Module;
   property FormDispatcher: IvcmFormDispatcher
     read Get_FormDispatcher;
     {* диспетчер форм приложения }
   property History: IvcmHistory
     read Get_History;
   property ActiveEntity: IvcmEntity
     read Get_ActiveEntity;
     {* Активная сущность }
   property Entity[anIndex: Integer]: IvcmEntity
     read Get_Entity;
 end;//IvcmDispatcher

    TvcmEntityOperationsOption = (
     {* для настройки сущностей }
      vcm_enoGroupItemsInContextMenu // группировать элементы в контекстном меню
    );//TvcmEntityOperationsOption

    TvcmEntityOperationsOptions = set of TvcmEntityOperationsOption;

 IvcmEntityDef = interface(IvcmOperationalIdentifiedUserFriendlyControl)
  {* Описание сущности }
   ['{99A2B713-A7AD-462E-85F1-BF8BAB015709}']
   function pm_GetOptions: TvcmEntityOperationsOptions;
   function Get_ContextMenuWeight: Integer;
   property Options: TvcmEntityOperationsOptions
     read pm_GetOptions;
   property ContextMenuWeight: Integer
     read Get_ContextMenuWeight;
 end;//IvcmEntityDef

 IvcmEntitiesDefIterator = interface(IvcmBase)
  {* Итератор описаний сущностей }
   ['{2B7E0191-516A-4291-A8C8-3B21174FBDE0}']
   function Get_Next: IvcmEntityDef;
   property Next: IvcmEntityDef
     read Get_Next;
     {* следующий описатель сущности }
 end;//IvcmEntitiesDefIterator

 IvcmModuleDef = interface(IvcmOperationalIdentifiedUserFriendlyControl)
   ['{8EC2C72E-6BC1-4DB5-92A5-364301DA3F62}']
   function Get_EntitiesDefIterator: IvcmEntitiesDefIterator;
   function Get_UserTypesIterator: IvcmUserTypesIterator;
   function Make: IvcmModule;
     {* создает модуль }
   property EntitiesDefIterator: IvcmEntitiesDefIterator
     read Get_EntitiesDefIterator;
     {* итератор описаний сущностей. Может быть nil }
   property UserTypesIterator: IvcmUserTypesIterator
     read Get_UserTypesIterator;
 end;//IvcmModuleDef

 IvcmModule = interface(IvcmBase)
  {* Модуль (что он на самом деле олицетворяет - я и сам теперь не понимаю) }
   ['{B04FFD05-9E96-4970-9DDD-7DA8173A828D}']
   function Get_ModuleDef: IvcmModuleDef;
   procedure Operation(anID: TvcmControlID;
    const aParams: IvcmParams;
    aMode: TvcmOperationMode);
     {* выполняет операцию модуля }
   function GetOperationByID(anID: TvcmControlID): IvcmOperationDef;
   property ModuleDef: IvcmModuleDef
     read Get_ModuleDef;
     {* описатель модуля }
 end;//IvcmModule

  TvcmFormSetID = {$IfDef XE4}record{$Else}object{$EndIf}
   {* идентификатор сборки. }
  public
     rName : AnsiString;
  public
     function EQ(const anOther: TvcmFormSetID): Boolean;
  end;//TvcmFormSetID

  PvcmFormSetID = ^TvcmFormSetID;

 IvcmFormSetRefreshParams = interface(IvcmFormSetRefreshDataParams)
  {* Параметры обновления сборки }
   ['{A4A09A60-7E69-46AA-8321-30102D348F15}']
 end;//IvcmFormSetRefreshParams

 IvcmFormSetFactory = interface(IvcmBase)
  {* Фабрика сборки }
   ['{B9D1E9AD-C234-41E1-940C-C50042E56540}']
   function pm_GetFormSetId: PvcmFormSetID;
   procedure Refresh(const aParams: IvcmFormSetRefreshParams);
     {* обновляет данные сборки.
            aDataForHistory - данные aDataSource, которые необходимо сохранить
                              в историю }
   procedure SaveHistory(const aContainer: IvcmContainer;
    aNeedSaveUseCaseData: Boolean);
   function IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
     {* является ли форма главной в сборке }
   function IsDefaultStatusForm(const aForm: IvcmEntityForm): Boolean;
     {* является ли форма отвечающую за вывод статуса }
   function MakeMainCaption(const aDataSource: IvcmFormSetDataSource): IvcmCString;
   function MakeMainImageIndex(const aDataSource: IvcmFormSetDataSource): Integer;
   property FormSetId: PvcmFormSetID
     read pm_GetFormSetId;
     {* идентификатор сборки, имя сборки указанное при описании сборки }
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
     {* Агрегация, к которой относятся параметры }
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
  {* Набор типов доны докинга }

 TvcmEffectiveZoneType = vcm_ztMain..vcm_ztReminder;
  {* реальная зона докинга }

 TvcmEffectiveZoneTypes = set of TvcmEffectiveZoneType;
  {* множество типов реальных зон докинга }

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
 Assert(Assigned(rFactory), Format('Не зарегистрирована фабрика для формы %s', [rFormID.rName]));
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