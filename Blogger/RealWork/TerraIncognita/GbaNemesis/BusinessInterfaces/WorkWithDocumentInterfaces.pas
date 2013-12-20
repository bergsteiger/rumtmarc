unit WorkWithDocumentInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "BusinessInterfaces"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/BusinessInterfaces/WorkWithDocumentInterfaces.pas"
// Начат: 29.12.2010 18:32
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ControllerInterfaces::Category>> F1 Core::Common::BusinessInterfaces::WorkWithDocumentInterfaces
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DynamicDocListUnit,
  DocumentUnit,
  DynamicTreeUnit,
  bsTypes,
  DocumentAndListInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmControllers
  {$IfEnd} //not NoVCM
  ,
  DocInfoInterfaces,
  bsTypesNew,
  nevTools,
  vcmInterfaces {a}
  ;

type
 IucpBaseSearchSupportQuery = interface
   ['{B8089C8A-893D-4E2E-9260-6BFD2F8E0C25}']
  // BaseSearchSupportQuery
   function Get_CanRunBaseSearch: Boolean;
   property CanRunBaseSearch: Boolean
     read Get_CanRunBaseSearch;
 end;//IucpBaseSearchSupportQuery

 IucpDocumentWithContents = interface
   ['{F12A4027-23C0-463E-BE27-720F8D76BEEE}']
   function pm_GetDsContents: IdsBaseContents;
   function pm_GetdsContentsRef: IvcmViewAreaControllerRef;
   property dsContents: IdsBaseContents
     read pm_GetDsContents;
     {* Оглавление }
   property dsContentsRef: IvcmViewAreaControllerRef
     read pm_GetdsContentsRef;
     {* Ссылка на "Оглавление" }
  // Contents
   procedure OpenContents(const aTree: IdeSimpleTree;
    anForceOpen: TnsContentsOpenMode;
    const aContainerOfDocument: InevDocumentContainer);
 end;//IucpDocumentWithContents

 IsdsDocument = interface(IsdsDocInfo{, IucpDocumentWithContents, InsWarningGenerator, InsWarningLocker, IucpBaseSearchSupportQuery})
   ['{158D206F-A24B-4C44-A989-F2563E04402E}']
   function pm_GetDsBaloonWarning: IdsWarning;
   function pm_GetDsTimeMachineWarning: IdsWarning;
   function pm_GetDsTranslationWarning: IdsWarning;
   function pm_GetDsCRBaloonWarning: IdsWarning;
   function pm_GetDsWarning: IdsWarning;
   function pm_GetdsWarningRef: IvcmViewAreaControllerRef;
   function pm_GetDsCRToPart: IdsDocumentList;
   function pm_GetdsCRToPartRef: IvcmViewAreaControllerRef;
   function pm_GetDsEditions: IdsEditions;
   function pm_GetdsEditionsRef: IvcmViewAreaControllerRef;
   procedure OpenWarning;
     {* предупреждение }
   procedure OpenEditions;
     {* редакции }
   procedure OpenSimilarDocuments;
     {* открыть список похожих документов }
   function OpenCRToPart(const aPositionList: IPositionList;
    const aNode: INodeBase;
    aType: TlstCRType): Boolean;
     {* вызывается для открытия вкладки корреспондентов/респондентов к фрагменту }
   function ChangeRedaction(const aChangeWorker: IbsChangeRedactionWorker;
    const aPos: TbsDocPos): Boolean;
     {* изменить редакцию документа }
   function IsWarningNeeded: Boolean;
     {* показывает необходимо ли показывать для данного документа предупреждение }
   function HasTimeMachineWarning: Boolean;
     {* показывает есть ли к документу предупреждение от Машины времени }
   function HasAnyRedaction: Boolean;
     {* показывает есть ли у документа не актуальные редакции }
   property dsBaloonWarning: IdsWarning
     read pm_GetDsBaloonWarning;
     {* Предупреждение для баллона }
   property dsTimeMachineWarning: IdsWarning
     read pm_GetDsTimeMachineWarning;
   property dsTranslationWarning: IdsWarning
     read pm_GetDsTranslationWarning;
     {* Предупреждения к переводу }
   property dsCRBaloonWarning: IdsWarning
     read pm_GetDsCRBaloonWarning;
   property dsWarning: IdsWarning
     read pm_GetDsWarning;
     {* БОФ предупреждения }
   property dsWarningRef: IvcmViewAreaControllerRef
     read pm_GetdsWarningRef;
     {* Ссылка на "БОФ предупреждения" }
   property dsCRToPart: IdsDocumentList
     read pm_GetDsCRToPart;
     {* БОФ СКР к части }
   property dsCRToPartRef: IvcmViewAreaControllerRef
     read pm_GetdsCRToPartRef;
     {* Ссылка на "БОФ СКР к части" }
   property dsEditions: IdsEditions
     read pm_GetDsEditions;
     {* БОФ редакции документа }
   property dsEditionsRef: IvcmViewAreaControllerRef
     read pm_GetdsEditionsRef;
     {* Ссылка на "БОФ редакции документа" }
  // Методы преобразования к реализуемым интерфейсам
   function As_IucpDocumentWithContents: IucpDocumentWithContents;
   function As_InsWarningGenerator: InsWarningGenerator;
   function As_InsWarningLocker: InsWarningLocker;
   function As_IucpBaseSearchSupportQuery: IucpBaseSearchSupportQuery;
 end;//IsdsDocument

 IdDocument = interface(IdDocInfo)
  {* Данные прецедента документ }
   ['{9B1A4C3A-EB75-4FD3-A5D5-4517ABB88AC1}']
   function pm_GetCRToPartFilter: INodeBase;
   procedure pm_SetCRToPartFilter(const aValue: INodeBase);
   function pm_GetCRToPartList: IDynList;
   procedure pm_SetCRToPartList(const aValue: IDynList);
   function pm_GetCRToPartType: TlstCRType;
   procedure pm_SetCRToPartType(aValue: TlstCRType);
   function pm_GetCRToPartPosList: IPositionList;
   procedure pm_SetCRToPartPosList(const aValue: IPositionList);
   function pm_GetContentsTree: IdeSimpleTree;
   procedure pm_SetContentsTree(const aValue: IdeSimpleTree);
   function pm_GetDsWarningRef: IvcmFormDataSourceRef;
   function pm_GetDsCRToPartRef: IvcmFormDataSourceRef;
   function pm_GetDsEditionsRef: IvcmFormDataSourceRef;
   function pm_GetDsContentsRef: IvcmFormDataSourceRef;
   property CRToPartFilter: INodeBase
     read pm_GetCRToPartFilter
     write pm_SetCRToPartFilter;
   property CRToPartList: IDynList
     read pm_GetCRToPartList
     write pm_SetCRToPartList;
   property CRToPartType: TlstCRType
     read pm_GetCRToPartType
     write pm_SetCRToPartType;
   property CRToPartPosList: IPositionList
     read pm_GetCRToPartPosList
     write pm_SetCRToPartPosList;
   property ContentsTree: IdeSimpleTree
     read pm_GetContentsTree
     write pm_SetContentsTree;
   property dsWarningRef: IvcmFormDataSourceRef
     read pm_GetDsWarningRef;
     {* Ссылка на "БОФ предупреждения" }
   property dsCRToPartRef: IvcmFormDataSourceRef
     read pm_GetDsCRToPartRef;
     {* Ссылка на "БОФ СКР к части" }
   property dsEditionsRef: IvcmFormDataSourceRef
     read pm_GetDsEditionsRef;
     {* Ссылка на "БОФ редакции документа" }
   property dsContentsRef: IvcmFormDataSourceRef
     read pm_GetDsContentsRef;
     {* Ссылка на "Оглавление" }
 end;//IdDocument

 IsdsDocumentWithFlash = interface(IsdsDocument)
  {* Документ с flash-роликом. }
   ['{C138E766-DD9B-40A2-B310-442243D35F22}']
 end;//IsdsDocumentWithFlash

 IsdsAAC = interface(IsdsDocument)
  {* Контроллер прецедента "Актуальная аналитика" }
   ['{3E31BE40-9EBE-4B74-9FDF-D5C902C941FA}']
   function pm_GetContainer: IdsAACContainer;
   function pm_GetLeft: IdsBaseDocument;
   function pm_GetRight: IdsBaseDocument;
   property Container: IdsAACContainer
     read pm_GetContainer;
   property Left: IdsBaseDocument
     read pm_GetLeft;
   property Right: IdsBaseDocument
     read pm_GetRight;
 end;//IsdsAAC
{$IfEnd} //not Admin AND not Monitorings

implementation

end.