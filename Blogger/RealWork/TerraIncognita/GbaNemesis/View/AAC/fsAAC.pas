unit fsAAC;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/AAC/fsAAC.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFormSetFactory::Class>> F1 Пользовательские сервисы::AAC::View::AAC::AACPrim::AAC$FormSetFactory
//
// Сборка для документа ААК
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
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx,
  Common_FormDefinitions_Controls,
  WorkWithDocumentInterfaces,
  BaloonWarningUserTypes_WarnJuror_UserType,
  AACContainer_Form,
  AACContainerPrim_AACContainer_UserType,
  DocumentUserTypes_dftAACLeft_UserType,
  DocumentUserTypes_dftAACRight_UserType
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemPrim
  {$IfEnd} //not NoVCM
  ,
  fsAbstractDocument,
  nevBase,
  nsTypes,
  DocumentInterfaces,
  nevTools,
  bsTypes,
  DocumentUnit,
  bsTypesNew,
  afwInterfaces,
  FoldersDomainInterfaces,
  DocumentAndListInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactoryPrim
  {$IfEnd} //not NoVCM
  ,
  vcmFormSetFactory {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  Tfs_AAC = {final fsf} class(Tfs_AbstractDocument)
   {* Сборка для документа ААК }
  protected
  // overridden protected methods
   procedure InitFields; override;
    {$If not defined(NoVCM)}
   class function GetInstance: TvcmFormSetFactoryPrim; override;
    {$IfEnd} //not NoVCM
  public
  // public methods
   function AACContainerParentAACContainerNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для AACContainer }
   function LeftChildDftAACLeftNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Left }
   function WarnJurorChildWarnJurorNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для WarnJuror }
   function RightMainDftAACRightNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
      out aNew: IvcmFormDataSource;
      aSubUserType: TvcmUserType): Boolean;
     {* Обработчик OnNeedMakeForm для Right }
  public
  // singleton factory method
    class function Instance: Tfs_AAC;
     {- возвращает экземпляр синглетона. }
  end;//Tfs_AAC
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


// start class Tfs_AAC

var g_Tfs_AAC : Tfs_AAC = nil;

procedure Tfs_AACFree;
begin
 l3Free(g_Tfs_AAC);
end;

class function Tfs_AAC.Instance: Tfs_AAC;
begin
 if (g_Tfs_AAC = nil) then
 begin
  l3System.AddExitProc(Tfs_AACFree);
  g_Tfs_AAC := Create;
 end;
 Result := g_Tfs_AAC;
end;

var
    { Локализуемые строки AAC$FormSetFactoryCaptionLocalConstants }
   str_fsAACCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'fsAACCaption'; rValue : 'Текст');
    { Заголовок фабрики сборки форм "AAC$FormSetFactory" }

// start class Tfs_AAC

function Tfs_AAC.AACContainerParentAACContainerNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsAAC;
begin
 if Supports(aDataSource, IsdsAAC, l_UseCase) then
  try
   aNew := l_UseCase.Container;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_AAC.AACContainerParentAACContainerNeedMakeForm

function Tfs_AAC.LeftChildDftAACLeftNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsAAC;
begin
 if Supports(aDataSource, IsdsAAC, l_UseCase) then
  try
   aNew := l_UseCase.Left;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_AAC.LeftChildDftAACLeftNeedMakeForm

function Tfs_AAC.WarnJurorChildWarnJurorNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsDocument;
begin
 if Supports(aDataSource, IsdsDocument, l_UseCase) then
  try
   aNew := l_UseCase.dsBaloonWarning;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_AAC.WarnJurorChildWarnJurorNeedMakeForm

function Tfs_AAC.RightMainDftAACRightNeedMakeForm(const aDataSource: IvcmFormSetDataSource;
  out aNew: IvcmFormDataSource;
  aSubUserType: TvcmUserType): Boolean;
var
 l_UseCase : IsdsAAC;
begin
 if Supports(aDataSource, IsdsAAC, l_UseCase) then
  try
   aNew := l_UseCase.Right;
  finally
   l_UseCase := nil;
  end;//try..finally
 Result := (aNew <> nil);
end;//Tfs_AAC.RightMainDftAACRightNeedMakeForm

procedure Tfs_AAC.InitFields;
 {-}
begin
 inherited;
 with AddZone('AACContainer', vcm_ztParent, fm_AACContainerForm) do
 begin
  UserType := AACContainer;
  with AddZone('Left', vcm_ztChild, fm_TextForm) do
  begin
   UserType := dftAACLeft;
   with AddZone('WarnJuror', vcm_ztChild, fm_WarningBaloonForm) do
   begin
    UserType := WarnJuror;
    OnNeedMakeForm := WarnJurorChildWarnJurorNeedMakeForm;
   end;
   OnNeedMakeForm := LeftChildDftAACLeftNeedMakeForm;
  end;
  with AddZone('Right', vcm_ztMain, fm_TextForm) do
  begin
   UserType := dftAACRight;
   OnNeedMakeForm := RightMainDftAACRightNeedMakeForm;
  end;
  OnNeedMakeForm := AACContainerParentAACContainerNeedMakeForm;
 end;
 Caption := str_fsAACCaption.AsCStr;
 OwnerForm := 13;
end;//Tfs_AAC.InitFields

{$If not defined(NoVCM)}
class function Tfs_AAC.GetInstance: TvcmFormSetFactoryPrim;
 {-}
begin
 Result := Self.Instance;
end;//Tfs_AAC.GetInstance
{$IfEnd} //not NoVCM

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_fsAACCaption
 str_fsAACCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.