unit dDocument;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Document"
// Автор: Морозов М.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Document/dDocument.pas"
// Начат: 12.07.2006
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Контроллер работы с документом и абстрактная фабрика документа::F1 Document Processing::Document::Document::TdDocument
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
  WorkWithDocumentInterfaces,
  ExternalObjectUnit,
  l3Types,
  bsInterfaces,
  DocInfoInterfaces,
  BaseDocumentWithAttributesInterfaces,
  DocumentInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3ProtoObject
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _IvcmRealData_ = IdDocument;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\Business\Document\dDocInfo.imp.pas}
 TdDocument = class(_dDocInfo_, IdDocument)
 private
 // private fields
   f_ContentsTree : IdeSimpleTree;
   f_ContextSearched : Boolean;
   f_CRToPartPosList : IPositionList;
   f_CRToPartType : TlstCRType;
   f_CRToPartList : IDynList;
   f_CRToPartFilter : INodeBase;
   f_dsContentsRef : IvcmFormDataSourceRef;
    {* Поле для свойства dsContentsRef}
   f_dsWarningRef : IvcmFormDataSourceRef;
    {* Поле для свойства dsWarningRef}
   f_dsCRToPartRef : IvcmFormDataSourceRef;
    {* Поле для свойства dsCRToPartRef}
   f_dsEditionsRef : IvcmFormDataSourceRef;
    {* Поле для свойства dsEditionsRef}
 protected
 // realized methods
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
   function pm_GetDsContentsRef: IvcmFormDataSourceRef;
   function pm_GetDsWarningRef: IvcmFormDataSourceRef;
   function pm_GetDsCRToPartRef: IvcmFormDataSourceRef;
   function pm_GetDsEditionsRef: IvcmFormDataSourceRef;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   {$If not defined(NoVCM)}
   procedure AssignData(const aData: _IvcmRealData_); override;
   {$IfEnd} //not NoVCM
   procedure ClearFields; override;
 public
 // public methods
   class function Make: IdDocument; reintroduce;
 end;//TdDocument
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmFormDataSourceRef
  {$IfEnd} //not NoVCM
  ,
  bsUserCRListInfo,
  l3Utils
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type _Instance_R_ = TdDocument;

{$Include w:\garant6x\implementation\Garant\GbaNemesis\Business\Document\dDocInfo.imp.pas}

// start class TdDocument

class function TdDocument.Make: IdDocument;
var
 l_Inst : TdDocument;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TdDocument.pm_GetCRToPartFilter: INodeBase;
//#UC START# *49528B5D0055_493E5E7202F1get_var*
//#UC END# *49528B5D0055_493E5E7202F1get_var*
begin
//#UC START# *49528B5D0055_493E5E7202F1get_impl*
 Result := f_CRToPartFilter;
//#UC END# *49528B5D0055_493E5E7202F1get_impl*
end;//TdDocument.pm_GetCRToPartFilter

procedure TdDocument.pm_SetCRToPartFilter(const aValue: INodeBase);
//#UC START# *49528B5D0055_493E5E7202F1set_var*
//#UC END# *49528B5D0055_493E5E7202F1set_var*
begin
//#UC START# *49528B5D0055_493E5E7202F1set_impl*
 f_CRToPartFilter := aValue;
//#UC END# *49528B5D0055_493E5E7202F1set_impl*
end;//TdDocument.pm_SetCRToPartFilter

function TdDocument.pm_GetCRToPartList: IDynList;
//#UC START# *49528B68021D_493E5E7202F1get_var*
//#UC END# *49528B68021D_493E5E7202F1get_var*
begin
//#UC START# *49528B68021D_493E5E7202F1get_impl*
 Result := f_CRToPartList;
//#UC END# *49528B68021D_493E5E7202F1get_impl*
end;//TdDocument.pm_GetCRToPartList

procedure TdDocument.pm_SetCRToPartList(const aValue: IDynList);
//#UC START# *49528B68021D_493E5E7202F1set_var*
//#UC END# *49528B68021D_493E5E7202F1set_var*
begin
//#UC START# *49528B68021D_493E5E7202F1set_impl*
 f_CRToPartList := aValue;
//#UC END# *49528B68021D_493E5E7202F1set_impl*
end;//TdDocument.pm_SetCRToPartList

function TdDocument.pm_GetCRToPartType: TlstCRType;
//#UC START# *49528B7603AF_493E5E7202F1get_var*
//#UC END# *49528B7603AF_493E5E7202F1get_var*
begin
//#UC START# *49528B7603AF_493E5E7202F1get_impl*
 Result := f_CRToPartType;
//#UC END# *49528B7603AF_493E5E7202F1get_impl*
end;//TdDocument.pm_GetCRToPartType

procedure TdDocument.pm_SetCRToPartType(aValue: TlstCRType);
//#UC START# *49528B7603AF_493E5E7202F1set_var*
//#UC END# *49528B7603AF_493E5E7202F1set_var*
begin
//#UC START# *49528B7603AF_493E5E7202F1set_impl*
 f_CRToPartType := aValue;
//#UC END# *49528B7603AF_493E5E7202F1set_impl*
end;//TdDocument.pm_SetCRToPartType

function TdDocument.pm_GetCRToPartPosList: IPositionList;
//#UC START# *49528B830160_493E5E7202F1get_var*
//#UC END# *49528B830160_493E5E7202F1get_var*
begin
//#UC START# *49528B830160_493E5E7202F1get_impl*
 Result := f_CRToPartPosList;
//#UC END# *49528B830160_493E5E7202F1get_impl*
end;//TdDocument.pm_GetCRToPartPosList

procedure TdDocument.pm_SetCRToPartPosList(const aValue: IPositionList);
//#UC START# *49528B830160_493E5E7202F1set_var*
//#UC END# *49528B830160_493E5E7202F1set_var*
begin
//#UC START# *49528B830160_493E5E7202F1set_impl*
 f_CRToPartPosList := aValue;
//#UC END# *49528B830160_493E5E7202F1set_impl*
end;//TdDocument.pm_SetCRToPartPosList

function TdDocument.pm_GetContentsTree: IdeSimpleTree;
//#UC START# *4B1D2DBF0367_493E5E7202F1get_var*
//#UC END# *4B1D2DBF0367_493E5E7202F1get_var*
begin
//#UC START# *4B1D2DBF0367_493E5E7202F1get_impl*
 Result := f_ContentsTree;
//#UC END# *4B1D2DBF0367_493E5E7202F1get_impl*
end;//TdDocument.pm_GetContentsTree

procedure TdDocument.pm_SetContentsTree(const aValue: IdeSimpleTree);
//#UC START# *4B1D2DBF0367_493E5E7202F1set_var*
//#UC END# *4B1D2DBF0367_493E5E7202F1set_var*
begin
//#UC START# *4B1D2DBF0367_493E5E7202F1set_impl*
 f_ContentsTree := aValue;
//#UC END# *4B1D2DBF0367_493E5E7202F1set_impl*
end;//TdDocument.pm_SetContentsTree

function TdDocument.pm_GetDsContentsRef: IvcmFormDataSourceRef;
 {-}
begin
 Result := vcmCheckAndMake(f_dsContentsRef);
end;//TdDocument.pm_GetDsContentsRef

function TdDocument.pm_GetDsWarningRef: IvcmFormDataSourceRef;
 {-}
begin
 Result := vcmCheckAndMake(f_dsWarningRef);
end;//TdDocument.pm_GetDsWarningRef

function TdDocument.pm_GetDsCRToPartRef: IvcmFormDataSourceRef;
 {-}
begin
 Result := vcmCheckAndMake(f_dsCRToPartRef);
end;//TdDocument.pm_GetDsCRToPartRef

function TdDocument.pm_GetDsEditionsRef: IvcmFormDataSourceRef;
 {-}
begin
 Result := vcmCheckAndMake(f_dsEditionsRef);
end;//TdDocument.pm_GetDsEditionsRef

procedure TdDocument.Cleanup;
//#UC START# *479731C50290_493E5E7202F1_var*
//#UC END# *479731C50290_493E5E7202F1_var*
begin
//#UC START# *479731C50290_493E5E7202F1_impl*
 f_CRToPartType := crtNone;
 inherited;
//#UC END# *479731C50290_493E5E7202F1_impl*
end;//TdDocument.Cleanup

{$If not defined(NoVCM)}
procedure TdDocument.AssignData(const aData: _IvcmRealData_);
//#UC START# *4B16B8CF0307_493E5E7202F1_var*
//#UC END# *4B16B8CF0307_493E5E7202F1_var*
begin
//#UC START# *4B16B8CF0307_493E5E7202F1_impl*
 f_CRToPartFilter := aData.CRToPartFilter;
 f_CRToPartList := aData.CRToPartList;
 f_CRToPartType := aData.CRToPartType;
 f_CRToPartPosList := aData.CRToPartPosList;
 f_ContentsTree := aData.ContentsTree;
 pm_GetdsUserCR1Ref.Assign(aData.dsUserCR1Ref);
 pm_GetdsUserCR2Ref.Assign(aData.dsUserCR2Ref);
 pm_GetdsEditionsRef.Assign(aData.dsEditionsRef);
 pm_GetdsContentsRef.Assign(aData.dsContentsRef);
 pm_GetdsCRToPartRef.Assign(aData.dsCRToPartRef);
 pm_GetdsWarningRef.Assign(aData.dsWarningRef);
 inherited;
//#UC END# *4B16B8CF0307_493E5E7202F1_impl*
end;//TdDocument.AssignData
{$IfEnd} //not NoVCM

procedure TdDocument.ClearFields;
 {-}
begin
 f_ContentsTree := nil;
 f_CRToPartPosList := nil;
 f_CRToPartList := nil;
 f_CRToPartFilter := nil;
 f_dsContentsRef := nil;
 f_dsWarningRef := nil;
 f_dsCRToPartRef := nil;
 f_dsEditionsRef := nil;
 inherited;
end;//TdDocument.ClearFields

{$IfEnd} //not Admin AND not Monitorings

end.