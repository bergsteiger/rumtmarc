unit fsList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/List/fsList.pas"
// Начат: 31.08.2009 20:51
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormSetFactory::Class>> F1 Работа с документом и списком документов::WorkWithList::View::List::List$FP::List$FSF
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactory
  {$IfEnd} //not NoVCM
  ,
  DocumentAndListInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  DocumentUserTypes_dftDocSynchroView_UserType,
  DocumentUserTypes_dftRelatedSynchroView_UserType,
  DocumentUserTypes_dftAnnotationSynchroView_UserType,
  l3StringIDEx,
  ListUserTypes_lftNone_UserType,
  ListUserTypes_lftSimilarDocumentsSynchroView_UserType,
  ListUserTypes_lftCorrespondentsSynchroForm_UserType,
  ListUserTypes_lftRespondentsSynchroForm_UserType,
  ListUserTypes_lftUserCRList1_SynchorForm_UserType,
  ListUserTypes_lftUserCRList2_SynchorForm_UserType,
  ListInfoUserTypes_liListInfo_UserType,
  AttributesUserTypes_fAttributeSynchroView_UserType,
  SynchroViewUserTypes_svSynchroView_UserType,
  DocumentWithFlashUserTypes_dwftSynchro_UserType,
  FiltersUserTypes_utFilters_UserType,
  Common_FormDefinitions_Controls,
  WorkWithListInterfaces,
  DocInfoInterfaces,
  BaseDocumentWithAttributesInterfaces,
  BaloonWarningUserTypes_WarnJuror_UserType,
  BaloonWarningUserTypes_WarnPreActive_UserType,
  BaloonWarningUserTypes_WarnIsAbolished_UserType,
  BaloonWarningUserTypes_WarnOnControl_UserType,
  BaloonWarningUserTypes_WarnInactualDocument_UserType,
  BaloonWarningUserTypes_WarnRedaction_UserType,
  BaloonWarningUserTypes_remListModified_UserType,
  BaloonWarningUserTypes_remListFiltered_UserType,
  BaloonWarningUserTypes_remTimeMachineWarning_UserType,
  ListAnalizeUserTypes_Analize_UserType
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemPrim
  {$IfEnd} //not NoVCM
  ,
  nevBase,
  nsTypes,
  DocumentInterfaces,
  bsTypes,
  l3Interfaces,
  l3Tree_TLB,
  afwInterfaces,
  DynamicDocListUnit,
  l3TreeInterfaces,
  PrimPrimListInterfaces,
  FiltersUnit,
  DocumentUnit,
  DynamicTreeUnit,
  PreviewInterfaces,
  l3InternalInterfaces,
  PrimListInterfaces,
  SimpleListInterfaces,
  nevTools,
  bsTypesNew,
  FoldersDomainInterfaces,
  evdInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactoryPrim
  {$IfEnd} //not NoVCM
  
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  Tfs_List = {final fsf} class(TvcmFormSetFactory)
  protected
  // overridden protected methods
   procedure InitFields; override;
    {$If not defined(NoVCM)}
   class function GetInstance: TvcmFormSetFactoryPrim; override;
    {$IfEnd} //not NoVCM
  public
  // public methods
   function ListParentLftNoneNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для List }
   function RemListModifiedChildRemListModifiedNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для remListModified }
   function RemListFilteredChildRemListFilteredNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для remListFiltered }
   function RemTimeMachineWarningChildRemTimeMachineWarningNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для remTimeMachineWarning }
   function ListInfoChildLiListInfoNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для ListInfo }
   function FiltersNavigatorUtFiltersNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Filters }
   function SynchroViewChildSvSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для SynchroView }
   function TextChildDftDocSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Text }
   function WarnJurorChildWarnJurorNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для WarnJuror }
   function WarnPreActiveChildWarnPreActiveNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для WarnPreActive }
   function WarnIsAbolishedChildWarnIsAbolishedNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для WarnIsAbolished }
   function WarnOnControlChildWarnOnControlNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для WarnOnControl }
   function WarnInactualDocumentChildWarnInactualDocumentNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для WarnInactualDocument }
   function WarnRedactionChildWarnRedactionNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для WarnRedaction }
   function AttributesChildFAttributeSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Attributes }
   function RelatedChildDftRelatedSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Related }
   function AnnotationChildDftAnnotationSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Annotation }
   function SimilarChildLftSimilarDocumentsSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Similar }
   function UserCR1ChildLftUserCRList1SynchorFormNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для UserCR1 }
   function UserCR2ChildLftUserCRList2SynchorFormNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для UserCR2 }
   function CorrespondentsChildLftCorrespondentsSynchroFormNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Correspondents }
   function RespondentsChildLftRespondentsSynchroFormNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Respondents }
   function DocumentWithFlashChildDwftSynchroNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для DocumentWithFlash }
   function ListAnalizeChildAnalizeNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для ListAnalize }
  public
  // singleton factory method
    class function Instance: Tfs_List;
     {- возвращает экземпляр синглетона. }
  end;//Tfs_List
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base {a},
  l3MessageID,
  SysUtils {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}


// start class Tfs_List

var g_Tfs_List : Tfs_List = nil;

procedure Tfs_ListFree;
begin
 l3Free(g_Tfs_List);
end;

class function Tfs_List.Instance: Tfs_List;
begin
 if (g_Tfs_List = nil) then
 begin
  l3System.AddExitProc(Tfs_ListFree);
  g_Tfs_List := Create;
 end;
 Result := g_Tfs_List;
end;

var
    { Локализуемые строки List$FSFCaptionLocalConstants }
   str_fsListCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'fsListCaption'; rValue : 'Список');
    { Заголовок фабрики сборки форм "List$FSF" }

// start class Tfs_List

function Tfs_List.ListParentLftNoneNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsList;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.ListParentLftNoneNeedMakeForm

function Tfs_List.RemListModifiedChildRemListModifiedNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.RemListModifiedChildRemListModifiedNeedMakeForm

function Tfs_List.RemListFilteredChildRemListFilteredNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.RemListFilteredChildRemListFilteredNeedMakeForm

function Tfs_List.RemTimeMachineWarningChildRemTimeMachineWarningNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.RemTimeMachineWarningChildRemTimeMachineWarningNeedMakeForm

function Tfs_List.ListInfoChildLiListInfoNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsListInfo;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.ListInfoChildLiListInfoNeedMakeForm

function Tfs_List.FiltersNavigatorUtFiltersNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsFilters;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.FiltersNavigatorUtFiltersNeedMakeForm

function Tfs_List.SynchroViewChildSvSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsSynchroView;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.SynchroViewChildSvSynchroViewNeedMakeForm

function Tfs_List.TextChildDftDocSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsBaseDocument;
begin
 if Supports(aDataSource, IsdsBaseDocument, l_UseCase) then
  try
   aNew := l_UseCase.dsDocument;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.TextChildDftDocSynchroViewNeedMakeForm

function Tfs_List.WarnJurorChildWarnJurorNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsTextBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.WarnJurorChildWarnJurorNeedMakeForm

function Tfs_List.WarnPreActiveChildWarnPreActiveNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsTextBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.WarnPreActiveChildWarnPreActiveNeedMakeForm

function Tfs_List.WarnIsAbolishedChildWarnIsAbolishedNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsTextBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.WarnIsAbolishedChildWarnIsAbolishedNeedMakeForm

function Tfs_List.WarnOnControlChildWarnOnControlNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsTextBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.WarnOnControlChildWarnOnControlNeedMakeForm

function Tfs_List.WarnInactualDocumentChildWarnInactualDocumentNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsTextBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.WarnInactualDocumentChildWarnInactualDocumentNeedMakeForm

function Tfs_List.WarnRedactionChildWarnRedactionNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsTextBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.WarnRedactionChildWarnRedactionNeedMakeForm

function Tfs_List.AttributesChildFAttributeSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsBaseDocumentWithAttributes;
begin
 if Supports(aDataSource, IsdsBaseDocumentWithAttributes, l_UseCase) then
  try
   aNew := l_UseCase.dsAttributes;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.AttributesChildFAttributeSynchroViewNeedMakeForm

function Tfs_List.RelatedChildDftRelatedSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsDocInfo;
begin
 if Supports(aDataSource, IsdsDocInfo, l_UseCase) then
  try
   aNew := l_UseCase.dsRelatedDoc;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.RelatedChildDftRelatedSynchroViewNeedMakeForm

function Tfs_List.AnnotationChildDftAnnotationSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsDocInfo;
begin
 if Supports(aDataSource, IsdsDocInfo, l_UseCase) then
  try
   aNew := l_UseCase.dsAnnotation;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.AnnotationChildDftAnnotationSynchroViewNeedMakeForm

function Tfs_List.SimilarChildLftSimilarDocumentsSynchroViewNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsDocInfo;
begin
 if Supports(aDataSource, IsdsDocInfo, l_UseCase) then
  try
   aNew := l_UseCase.dsSimilarDocuments;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.SimilarChildLftSimilarDocumentsSynchroViewNeedMakeForm

function Tfs_List.UserCR1ChildLftUserCRList1SynchorFormNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsDocInfo;
begin
 if Supports(aDataSource, IsdsDocInfo, l_UseCase) then
  try
   aNew := l_UseCase.dsUserCR1;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.UserCR1ChildLftUserCRList1SynchorFormNeedMakeForm

function Tfs_List.UserCR2ChildLftUserCRList2SynchorFormNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsDocInfo;
begin
 if Supports(aDataSource, IsdsDocInfo, l_UseCase) then
  try
   aNew := l_UseCase.dsUserCR2;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.UserCR2ChildLftUserCRList2SynchorFormNeedMakeForm

function Tfs_List.CorrespondentsChildLftCorrespondentsSynchroFormNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsDocInfo;
begin
 if Supports(aDataSource, IsdsDocInfo, l_UseCase) then
  try
   aNew := l_UseCase.dsCorrespondents;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.CorrespondentsChildLftCorrespondentsSynchroFormNeedMakeForm

function Tfs_List.RespondentsChildLftRespondentsSynchroFormNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsDocInfo;
begin
 if Supports(aDataSource, IsdsDocInfo, l_UseCase) then
  try
   aNew := l_UseCase.dsRespondents;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.RespondentsChildLftRespondentsSynchroFormNeedMakeForm

function Tfs_List.DocumentWithFlashChildDwftSynchroNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsDocInfo;
begin
 if Supports(aDataSource, IsdsDocInfo, l_UseCase) then
  try
   aNew := l_UseCase.dsDocumentWithFlash;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.DocumentWithFlashChildDwftSynchroNeedMakeForm

function Tfs_List.ListAnalizeChildAnalizeNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsList;
begin
 if Supports(aDataSource, IsdsList, l_UseCase) then
  try
   aNew := l_UseCase.dsListAnalize;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_List.ListAnalizeChildAnalizeNeedMakeForm

procedure Tfs_List.InitFields;
 {-}
begin
 inherited;
 with AddZone('List', vcm_ztParent, fm_efList) do
 begin
  UserType := lftNone;
  with AddZone('remListModified', vcm_ztChild, fm_WarningBaloonForm) do
  begin
   UserType := remListModified;
   OnNeedMakeForm := RemListModifiedChildRemListModifiedNeedMakeForm;
  end;
  with AddZone('remListFiltered', vcm_ztChild, fm_WarningBaloonForm) do
  begin
   UserType := remListFiltered;
   OnNeedMakeForm := RemListFilteredChildRemListFilteredNeedMakeForm;
  end;
  with AddZone('remTimeMachineWarning', vcm_ztChild, fm_WarningBaloonForm) do
  begin
   UserType := remTimeMachineWarning;
   OnNeedMakeForm := RemTimeMachineWarningChildRemTimeMachineWarningNeedMakeForm;
  end;
  OnNeedMakeForm := ListParentLftNoneNeedMakeForm;
 end;
 with AddZone('ListInfo', vcm_ztChild, fm_efListInfo) do
 begin
  UserType := liListInfo;
  OnNeedMakeForm := ListInfoChildLiListInfoNeedMakeForm;
 end;
 with AddZone('Filters', vcm_ztNavigator, fm_enFilters) do
 begin
  UserType := utFilters;
  ActivateIfUpdate := wafAlways;
  OnNeedMakeForm := FiltersNavigatorUtFiltersNeedMakeForm;
 end;
 with AddZone('SynchroView', vcm_ztChild, fm_fcSynchroView) do
 begin
  UserType := svSynchroView;
  with AddZone('Text', vcm_ztChild, fm_TextForm) do
  begin
   UserType := dftDocSynchroView;
   with AddZone('WarnJuror', vcm_ztChild, fm_SynchroView_WarningBaloonForm) do
   begin
    UserType := WarnJuror;
    OnNeedMakeForm := WarnJurorChildWarnJurorNeedMakeForm;
   end;
   with AddZone('WarnPreActive', vcm_ztChild, fm_SynchroView_WarningBaloonForm) do
   begin
    UserType := WarnPreActive;
    OnNeedMakeForm := WarnPreActiveChildWarnPreActiveNeedMakeForm;
   end;
   with AddZone('WarnIsAbolished', vcm_ztChild, fm_SynchroView_WarningBaloonForm) do
   begin
    UserType := WarnIsAbolished;
    OnNeedMakeForm := WarnIsAbolishedChildWarnIsAbolishedNeedMakeForm;
   end;
   with AddZone('WarnOnControl', vcm_ztChild, fm_SynchroView_WarningBaloonForm) do
   begin
    UserType := WarnOnControl;
    OnNeedMakeForm := WarnOnControlChildWarnOnControlNeedMakeForm;
   end;
   with AddZone('WarnInactualDocument', vcm_ztChild, fm_SynchroView_WarningBaloonForm) do
   begin
    UserType := WarnInactualDocument;
    OnNeedMakeForm := WarnInactualDocumentChildWarnInactualDocumentNeedMakeForm;
   end;
   with AddZone('WarnRedaction', vcm_ztChild, fm_SynchroView_WarningBaloonForm) do
   begin
    UserType := WarnRedaction;
    OnNeedMakeForm := WarnRedactionChildWarnRedactionNeedMakeForm;
   end;
   OnNeedMakeForm := TextChildDftDocSynchroViewNeedMakeForm;
  end;
  with AddZone('Attributes', vcm_ztChild, fm_AttributesForm) do
  begin
   UserType := fAttributeSynchroView;
   OnNeedMakeForm := AttributesChildFAttributeSynchroViewNeedMakeForm;
  end;
  with AddZone('Related', vcm_ztChild, fm_TextForm) do
  begin
   UserType := dftRelatedSynchroView;
   OnNeedMakeForm := RelatedChildDftRelatedSynchroViewNeedMakeForm;
  end;
  with AddZone('Annotation', vcm_ztChild, fm_TextForm) do
  begin
   UserType := dftAnnotationSynchroView;
   OnNeedMakeForm := AnnotationChildDftAnnotationSynchroViewNeedMakeForm;
  end;
  with AddZone('Similar', vcm_ztChild, fm_efList) do
  begin
   UserType := lftSimilarDocumentsSynchroView;
   OnNeedMakeForm := SimilarChildLftSimilarDocumentsSynchroViewNeedMakeForm;
  end;
  with AddZone('UserCR1', vcm_ztChild, fm_efList) do
  begin
   UserType := lftUserCRList1_SynchorForm;
   OnNeedMakeForm := UserCR1ChildLftUserCRList1SynchorFormNeedMakeForm;
  end;
  with AddZone('UserCR2', vcm_ztChild, fm_efList) do
  begin
   UserType := lftUserCRList2_SynchorForm;
   OnNeedMakeForm := UserCR2ChildLftUserCRList2SynchorFormNeedMakeForm;
  end;
  with AddZone('Correspondents', vcm_ztChild, fm_efList) do
  begin
   UserType := lftCorrespondentsSynchroForm;
   OnNeedMakeForm := CorrespondentsChildLftCorrespondentsSynchroFormNeedMakeForm;
  end;
  with AddZone('Respondents', vcm_ztChild, fm_efList) do
  begin
   UserType := lftRespondentsSynchroForm;
   OnNeedMakeForm := RespondentsChildLftRespondentsSynchroFormNeedMakeForm;
  end;
  with AddZone('DocumentWithFlash', vcm_ztChild, fm_DocumentWithFlashForm) do
  begin
   UserType := dwftSynchro;
   OnNeedMakeForm := DocumentWithFlashChildDwftSynchroNeedMakeForm;
  end;
  OnNeedMakeForm := SynchroViewChildSvSynchroViewNeedMakeForm;
 end;
 with AddZone('ListAnalize', vcm_ztChild, fm_ListAnalizeForm) do
 begin
  UserType := Analize;
  OnNeedMakeForm := ListAnalizeChildAnalizeNeedMakeForm;
 end;
 Caption := str_fsListCaption.AsCStr;
 OwnerForm := 0;
end;//Tfs_List.InitFields

{$If not defined(NoVCM)}
class function Tfs_List.GetInstance: TvcmFormSetFactoryPrim;
 {-}
begin
 Result := Self.Instance;
end;//Tfs_List.GetInstance
{$IfEnd} //not NoVCM

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_fsListCaption
 str_fsListCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.