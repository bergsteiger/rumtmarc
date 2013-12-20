unit vcmFormSetFactory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM$Visual"
// Автор: Морозов
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Visual/vcmFormSetFactory.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VCM$Visual::FormSets::TvcmFormSetFactory
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\VCM\vcmDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  l3Interfaces,
  vcmInterfaces,
  vcmBase,
  vcmFormSetFormsCollectionItem,
  vcmFormSetFormsCollection,
  vcmFormSetFormsCollectionItemPrim,
  vcmFormSetFormsCollectionItemModelPart,
  vcmFormSetFactoryPrim,
  vcmExternalInterfaces
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 TsfsOnGetMainCaption = procedure (aSender: TObject;
  const aDataSource: IvcmFormSetDataSource;
  var aCaption: Il3CString) of object;

 TsfsOnGetMainImageIndex = procedure (aSender: TObject;
  const aDataSource: IvcmFormSetDataSource;
  var aImageIndex: Integer) of object;

 RvcmFormSetFactory = class of TvcmFormSetFactory;

 TvcmFormSetFactory = class(TvcmFormSetFactoryPrim, IvcmFormSetFactory)
 private
 // private fields
   f_FormSetId : TvcmFormSetID;
   f_DefaultStatusForm : Integer;
   f_MainCaption : Il3CString;
   f_MainImageIndex : Integer;
   f_RefreshStack : TvcmInterfaceList;
   f_RefreshFromStack : Boolean;
   f_SaveToHistoryWasStarted : Boolean;
   f_OwnerForm : Integer;
    {* Поле для свойства OwnerForm}
   f_OnGetMainImageIndex : TsfsOnGetMainImageIndex;
    {* Поле для свойства OnGetMainImageIndex}
   f_OnGetMainCaption : TsfsOnGetMainCaption;
    {* Поле для свойства OnGetMainCaption}
   f_Forms : TvcmFormSetFormsCollection;
    {* Поле для свойства Forms}
 private
 // private methods
   function FormSetItem(aItem: TvcmFormSetFormsCollectionItemPrim): TvcmFormSetFormsCollectionItem;
   function IsOwnerItem(aItem: TvcmFormSetFormsCollectionItem): Boolean;
     {* определяет описывать ли элемент форму-собственник сборки }
   procedure SaveToHistoryClosedForm(aItem: TvcmFormSetFormsCollectionItem;
     aSubUserType: Integer = vcm_utAny);
     {* сохранить закрытую форму в историю }
   function IsLikeFormSet(const aDataSource: IvcmFormSetDataSource;
     const aContainer: IvcmContainer): Boolean;
     {* определяет являются ли сборка и данные одними и теми же }
 protected
 // property methods
   procedure pm_SetOwnerForm(aValue: Integer); virtual;
   function pm_GetDefaultStatusForm: Integer; virtual;
   procedure pm_SetDefaultStatusForm(aValue: Integer); virtual;
 protected
 // realized methods
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
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 protected
 // protected methods
   procedure MakeFormSet(const aDataSource: IvcmFormSetDataSource;
     const aContainer: IvcmContainer;
     aSaveToHistory: Boolean);
     {* Создает сборку }
   function IsFormSetExists(const aContainer: IvcmContainer;
     out aFormSet: IvcmFormSet): Boolean;
 public
 // public methods
   constructor Create; reintroduce;
     {* Сигнатура метода Create }
   class function Id: TvcmFormSetID;
   class procedure Make(const aDataSource: IvcmFormSetDataSource;
     const aContainer: IvcmContainer;
     aSaveToHistory: Boolean = True);
   function AddZone(const aName: AnsiString;
     aZoneType: TvcmZoneType;
     const aFormDescriptor: TvcmFormDescriptor): TvcmFormSetFormsCollectionItemModelPart;
 public
 // public properties
   property OwnerForm: Integer
     read f_OwnerForm
     write pm_SetOwnerForm;
   property OnGetMainImageIndex: TsfsOnGetMainImageIndex
     read f_OnGetMainImageIndex
     write f_OnGetMainImageIndex;
   property OnGetMainCaption: TsfsOnGetMainCaption
     read f_OnGetMainCaption
     write f_OnGetMainCaption;
   property Forms: TvcmFormSetFormsCollection
     read f_Forms;
   property DefaultStatusForm: Integer
     read pm_GetDefaultStatusForm
     write pm_SetDefaultStatusForm;
 end;//TvcmFormSetFactory
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  vcmFormSet,
  vcmFormSetDataSource,
  vcmFormSetRefreshParams,
  l3Base,
  SysUtils,
  Classes,
  vcmUserControls,
  vcmEntityForm,
  vcmHistory
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}

// start class TvcmFormSetFactory

function TvcmFormSetFactory.FormSetItem(aItem: TvcmFormSetFormsCollectionItemPrim): TvcmFormSetFormsCollectionItem;
//#UC START# *50856A350071_47B97312006D_var*
//#UC END# *50856A350071_47B97312006D_var*
begin
//#UC START# *50856A350071_47B97312006D_impl*
 Result := TvcmFormSetFormsCollectionItem(aItem);
//#UC END# *50856A350071_47B97312006D_impl*
end;//TvcmFormSetFactory.FormSetItem

function TvcmFormSetFactory.IsOwnerItem(aItem: TvcmFormSetFormsCollectionItem): Boolean;
//#UC START# *50856A5800E1_47B97312006D_var*
//#UC END# *50856A5800E1_47B97312006D_var*
begin
//#UC START# *50856A5800E1_47B97312006D_impl*
 Result := aItem = FormSetItem(Forms.Items[OwnerForm]);
//#UC END# *50856A5800E1_47B97312006D_impl*
end;//TvcmFormSetFactory.IsOwnerItem

procedure TvcmFormSetFactory.SaveToHistoryClosedForm(aItem: TvcmFormSetFormsCollectionItem;
  aSubUserType: Integer = vcm_utAny);
//#UC START# *50856AA1034E_47B97312006D_var*
//#UC END# *50856AA1034E_47B97312006D_var*
begin
//#UC START# *50856AA1034E_47B97312006D_impl*
 with aItem do
  g_Dispatcher.History.SaveClose(nil,
                                 FormId,
                                 UserType,
                                 ZoneType,
                                 aSubUserType);
//#UC END# *50856AA1034E_47B97312006D_impl*
end;//TvcmFormSetFactory.SaveToHistoryClosedForm

function TvcmFormSetFactory.IsLikeFormSet(const aDataSource: IvcmFormSetDataSource;
  const aContainer: IvcmContainer): Boolean;
//#UC START# *50856AE501F6_47B97312006D_var*
var
 l_Form: IvcmEntityForm;
//#UC END# *50856AE501F6_47B97312006D_var*
begin
//#UC START# *50856AE501F6_47B97312006D_impl*
 Result := False;
 if OwnerForm <> -1 then
 begin
  with FormSetItem(f_Forms.Items[OwnerForm]) do
   aContainer.HasForm(FormId,
                      MakeZoneType,
                      True,
                      @l_Form,
                      UserType);
  try
   if Assigned(l_Form) and Assigned(l_Form.DataSource) and
     Assigned(l_Form.DataSource.UseCaseController) and Assigned(l_Form.FormSet) and
     l_Form.FormSet.Factory.FormSetId.EQ(Self.ID) then
    Result := l_Form.DataSource.UseCaseController.IsLikeUseCaseController(aDataSource);
  finally
   l_Form := nil;
  end;//try..finally
 end;//if OwnerForm <> -1 then
//#UC END# *50856AE501F6_47B97312006D_impl*
end;//TvcmFormSetFactory.IsLikeFormSet

procedure TvcmFormSetFactory.MakeFormSet(const aDataSource: IvcmFormSetDataSource;
  const aContainer: IvcmContainer;
  aSaveToHistory: Boolean);
//#UC START# *508569C001A9_47B97312006D_var*
var
 l_FormSet    : IvcmFormSet;
 l_DataSource : IvcmFormSetDataSource;
//#UC END# *508569C001A9_47B97312006D_var*
begin
//#UC START# *508569C001A9_47B97312006D_impl*
 l_FormSet := TvcmFormSet.Make(aContainer, Self);
 try
  Assert(aDataSource <> nil);
  if (aDataSource <> nil) then
   l_DataSource := aDataSource
  else
  begin
   Assert(false);
   l_DataSource := TvcmFormSetDataSource.Make;
  end;//aDataSource <> nil
  // Если данные не изменились, то ничего не делаем. Например, открываем одну и
  // ту же закладку, один и тот же документ по номеру и т.д.
  if aSaveToHistory and not IsLikeFormSet(l_DataSource, aContainer) then
   SaveHistory(aContainer, true);
  l_DataSource.FormSet := l_FormSet;
  Refresh(vcmMakeRefreshParams(nil, l_DataSource, l_FormSet));
 finally
  l_FormSet := nil;
 end;//try..finally
//#UC END# *508569C001A9_47B97312006D_impl*
end;//TvcmFormSetFactory.MakeFormSet

function TvcmFormSetFactory.IsFormSetExists(const aContainer: IvcmContainer;
  out aFormSet: IvcmFormSet): Boolean;
//#UC START# *50856C290117_47B97312006D_var*
var
 l_Form: IvcmEntityForm;
//#UC END# *50856C290117_47B97312006D_var*
begin
//#UC START# *50856C290117_47B97312006D_impl*
 Assert(OwnerForm >= 0, 'Не определена форма собственник.');
 with FormSetItem(Forms.Items[OwnerForm]) do
  Result := aContainer.HasForm(FormId, ZoneType, True, @l_Form, UserType) and
   l_Form.FormSet.Factory.FormSetId.EQ(Self.ID);
 if (l_Form = nil) then
  aFormSet := nil
 else 
  aFormSet := l_Form.FormSet;
//#UC END# *50856C290117_47B97312006D_impl*
end;//TvcmFormSetFactory.IsFormSetExists

constructor TvcmFormSetFactory.Create;
//#UC START# *50856C81008E_47B97312006D_var*
//#UC END# *50856C81008E_47B97312006D_var*
begin
//#UC START# *50856C81008E_47B97312006D_impl*
 inherited;
 f_Forms := TvcmFormSetFormsCollection.Create;
 f_OwnerForm := -1;
 f_DefaultStatusForm := -1;
 f_MainCaption := nil;
 f_MainImageIndex := -1;
//#UC END# *50856C81008E_47B97312006D_impl*
end;//TvcmFormSetFactory.Create

class function TvcmFormSetFactory.Id: TvcmFormSetID;
//#UC START# *50856C9C00A5_47B97312006D_var*
//#UC END# *50856C9C00A5_47B97312006D_var*
begin
//#UC START# *50856C9C00A5_47B97312006D_impl*
 l3FillChar(Result, SizeOf(Result));
 Result.rName := Copy(ClassName, 2, Length(ClassName) - 1);
//#UC END# *50856C9C00A5_47B97312006D_impl*
end;//TvcmFormSetFactory.Id

class procedure TvcmFormSetFactory.Make(const aDataSource: IvcmFormSetDataSource;
  const aContainer: IvcmContainer;
  aSaveToHistory: Boolean = True);
//#UC START# *50856D0401EB_47B97312006D_var*
var
 l_Factory : TvcmFormSetFactory;
//#UC END# *50856D0401EB_47B97312006D_var*
begin
//#UC START# *50856D0401EB_47B97312006D_impl*
 Assert((g_Dispatcher.History = nil) OR
        not g_Dispatcher.History.InBF, 'Нельзя создавать сборки при навигации по истории');
// Assert(not g_InMake, 'Нельзя создавать вложенные сборки');
// g_InMake := true;
 try
  l_Factory := GetInstance As TvcmFormSetFactory;
  l_Factory.MakeFormSet(aDataSource, aContainer, aSaveToHistory)
 finally
//  g_InMake := false;
 end;//try..finally
//#UC END# *50856D0401EB_47B97312006D_impl*
end;//TvcmFormSetFactory.Make

function TvcmFormSetFactory.AddZone(const aName: AnsiString;
  aZoneType: TvcmZoneType;
  const aFormDescriptor: TvcmFormDescriptor): TvcmFormSetFormsCollectionItemModelPart;
//#UC START# *50857FD0030B_47B97312006D_var*
//#UC END# *50857FD0030B_47B97312006D_var*
begin
//#UC START# *50857FD0030B_47B97312006D_impl*
 Result := Forms.AddZone(aName, aZoneType, aFormDescriptor);
//#UC END# *50857FD0030B_47B97312006D_impl*
end;//TvcmFormSetFactory.AddZone

procedure TvcmFormSetFactory.pm_SetOwnerForm(aValue: Integer);
//#UC START# *508566D70343_47B97312006Dset_var*
var
 l_OldOwner: Integer;
//#UC END# *508566D70343_47B97312006Dset_var*
begin
//#UC START# *508566D70343_47B97312006Dset_impl*
 if (aValue <> f_OwnerForm) then
 begin
  l_OldOwner := OwnerForm;
  f_OwnerForm := aValue;
  if (l_OldOwner = DefaultStatusForm) then
   DefaultStatusForm := aValue;
 end;//Value <> f_OwnerForm
//#UC END# *508566D70343_47B97312006Dset_impl*
end;//TvcmFormSetFactory.pm_SetOwnerForm

function TvcmFormSetFactory.pm_GetDefaultStatusForm: Integer;
//#UC START# *508569960368_47B97312006Dget_var*
//#UC END# *508569960368_47B97312006Dget_var*
begin
//#UC START# *508569960368_47B97312006Dget_impl*
 if f_DefaultStatusForm = -1 then
  Result := OwnerForm
 else
  Result := f_DefaultStatusForm;
//#UC END# *508569960368_47B97312006Dget_impl*
end;//TvcmFormSetFactory.pm_GetDefaultStatusForm

procedure TvcmFormSetFactory.pm_SetDefaultStatusForm(aValue: Integer);
//#UC START# *508569960368_47B97312006Dset_var*
//#UC END# *508569960368_47B97312006Dset_var*
begin
//#UC START# *508569960368_47B97312006Dset_impl*
 if f_DefaultStatusForm <> aValue then
  f_DefaultStatusForm := aValue;
//#UC END# *508569960368_47B97312006Dset_impl*
end;//TvcmFormSetFactory.pm_SetDefaultStatusForm

function TvcmFormSetFactory.pm_GetFormSetId: PvcmFormSetID;
//#UC START# *499570D3028C_47B97312006Dget_var*
//#UC END# *499570D3028C_47B97312006Dget_var*
begin
//#UC START# *499570D3028C_47B97312006Dget_impl*
 f_FormSetId := ID;
 Result := @f_FormSetId;
//#UC END# *499570D3028C_47B97312006Dget_impl*
end;//TvcmFormSetFactory.pm_GetFormSetId

procedure TvcmFormSetFactory.Refresh(const aParams: IvcmFormSetRefreshParams);
//#UC START# *49957114002A_47B97312006D_var*
  procedure lp_SaveIfDataSourceChanged(const aItem        : TvcmFormSetFormsCollectionItem;
                                       const aForm        : IvcmEntityForm = nil;
                                       const aNew         : IvcmFormDataSource = nil;
                                       const aSubUserType : Integer = vcm_utAny);

   procedure lp_StartSaveToHistory;
   var
    l_Form: IvcmEntityForm;
   begin
    if not f_SaveToHistoryWasStarted and
     Supports(aParams.FormSet.Container, IvcmEntityForm, l_Form) then
    begin
     g_Dispatcher.History.Start(l_Form);
     if Assigned(aParams.DataForHistory) then
      g_Dispatcher.History.Add(TvcmObjectWithDataHistoryItem.Make(aParams.DataSource, aParams.DataForHistory));
     f_SaveToHistoryWasStarted := True;
    end;//if not f_SaveToHistoryWasStarted 
   end;//lp_StartSaveToHistory

  begin//lp_SaveIfDataSourceChanged
   if (aParams.SaveToHistory = sfsOnlyIfDataSourceChanged) and
     not f_RefreshFromStack and
     (not Assigned(aForm) or
     (not Assigned(aForm.DataSource) or not aForm.DataSource.IsSame(aNew))) then
   begin
    // Инициируем начало сохранения форм:
    lp_StartSaveToHistory;
    // Сохраним форму:
    if Assigned(aForm) then
     g_Dispatcher.History.ForceSaveState(aForm)
    else
     SaveToHistoryClosedForm(aItem, aSubUserType);
   end;//if (aParams.SaveToHistory = sfsOnlyIfDataSourceChanged)...
  end;//lp_SaveIfDataSourceChanged

  function lp_DefineDS(aItem        : TvcmFormSetFormsCollectionItem;
                       const aSDS   : IvcmFormSetDataSource;
                         out aNewDS : IvcmFormDataSource;
                       aSubUserType : Integer): Boolean;
  begin//lp_DefineDS
   // Обработчик определен на элементе коллекции
   if Assigned(aItem.OnNeedMakeForm) then
    Result := aItem.OnNeedMakeForm(aSDS,
                                   aNewDS,
                                   aSubUserType)
   // Отдадим на обработку бизнес объекту
   else
   begin
    Result := false;
    Assert(false);
   end;//Assigned(aItem.OnNeedMakeForm)
  end;//lp_DefineDS

var
 l_ChangePosition: Boolean;
   {* - сборку не нужно заменять, только изменить позицию. }
 l_ModalForm: IvcmEntityForm;
   {* - модальная форма сборки. }
 l_OwnerItemForm: TComponent;
   {* - форма собственник для форм корневого списка. }

  procedure lp_MakeForm(aForms : TvcmFormSetFormsCollection;
                        const aContainer   : IvcmContainer;
                        const aOwner       : TComponent;
                        const aItem        : TvcmFormSetFormsCollectionItem;
                        const aFormUpdated : TvcmLongintList);

   function lp_HasActiveForm(const aForm: IvcmEntityForm): Boolean;
   {* - определим нет ли уже активной формы с признаком ActivateIfUpdate. }
   var
    l_Index : Integer;
    l_Form  : IvcmEntityForm;
    l_Item  : TvcmFormSetFormsCollectionItem;
   begin
    Result := False;
    if aItem.ActivateIfUpdate = wafIfNotActivated then
    begin
     for l_Index := 0 to Pred(aParams.FormSet.EntitiesCount) do
      if Supports(aParams.FormSet.Entity[l_Index], IvcmEntityForm, l_Form) and
       (aForm <> l_Form) then
      try
       l_Item := TvcmFormSetFormsCollectionItem(aForms.FindItemByForm(l_Form));
       if Assigned(l_Item) and
          (l_Item.ActivateIfUpdate = aItem.ActivateIfUpdate) and
          (aForm.ZoneType = l_Form.ZoneType) and
          (aForm.FormSet = l_Form.FormSet) and
          (l_Form.IsActiveInParent) then
       begin
        Result := True;
        Break;
       end;//if (l_Form.IsActiveInParent)
      finally
       l_Form := nil;
      end;{try..finally}
    end;//if aItem.ActivateIfUpdate = wafIfNotActivated then
   end;//lp_HasActiveForm

  var
   l_Container   : IvcmContainer;
   l_Form        : IvcmEntityForm;
   l_New         : IvcmFormDataSource;
   l_Old         : IvcmFormDataSource;
   l_I           : Integer;
   l_FormCount   : Integer;
   l_Index       : Integer;
   l_SubUserType : TvcmUserType;
   l_IsCreate    : Boolean;
   l_FormUpdated : TvcmLongintList;
     {* - зоны в которых обновлены формы. }
   l_Weight      : Integer;
   l_Forms       : TvcmFormSetFormsCollection;
  begin//lp_MakeForm
   //if (aItem.FormName <> '') then
   begin
    // Получим данные
    with aItem do
    begin
     l_New := nil;
     l_Old := nil;
     // Одна форма это минимум
     l_FormCount := 1;
     // Получим количество дубликатов
     if Assigned(aItem.OnFormCount) then
      aItem.OnFormCount(aParams.DataSource, l_FormCount);
     for l_Index := 0 to Pred(l_FormCount) do
     begin
      l_Form := nil;
      if l_FormCount = 1 then
       l_SubUserType := vcm_utAny
      else
       l_SubUserType := TvcmUserType(l_Index);
      // Поищем форму
      Assert(FormId.rName <> '');
      Assert(Assigned(aContainer), 'Не определен контейнер сборки.');
      aContainer.HasForm(FormId,
                         MakeZoneType,
                         True,
                         @l_Form,
                         UserType,
                         nil,
                         l_SubUserType);
      if Assigned(l_Form) then
       l_Old := l_Form.DataSource;
      // Определим, что сборку пересоздвать не нужно, только изменить позицию
      if aParams.DataSource.InInit and IsOwnerItem(aItem) then
        l_ChangePosition := IsLikeFormSet(aParams.DataSource, aContainer);
      // Определим новый источник данных
      l_IsCreate := lp_DefineDS(aItem, aParams.DataSource, l_New,
       l_SubUserType);
      // Нужно изменить позицию
      if l_ChangePosition then
      begin
       if Assigned(l_Form) and Assigned(l_Form.DataSource) and
          l_Form.DataSource.IsLikeViewAreaController(l_New) then
       begin
        (l_Form.VCLWinControl As TvcmEntityForm).SetPositionByDS;
        // - http://mdp.garant.ru/pages/viewpage.action?pageId=135136020&focusedCommentId=136258455#comment-136258455
        if aParams.DataSource.InInit and IsOwnerItem(aItem) then
         l_Form.VCLWinControl.SetFocus;
       end;//Assigned(l_Form) and Assigned(l_Form.DataSource)
      end//if l_ChangePosition then
      // Нужно обновить источник данных
      else
      begin
       // Закрыть форму
       if not l_IsCreate then
       begin
        if Assigned(l_Form) then
        begin
         l_Form.SafeClose;
         l_Form := nil;
        end;
       end//if not l_IsCreate then
       else
       begin
        // Создадим форму
        if not Assigned(l_Form) then
        begin
(*         Assert(Assigned(aItem.FormClass), 'Класс формы не определен. ' +
          'Зарегистрируйте форму.');
         l_Form := aItem.FormClass.Make(vcmMakeParams(aParams.FormSet, aContainer, aOwner),
                                        MakeZoneType,
                                        UserType,
                                        nil,
                                        l_New,
                                        l_SubUserType);*)
         l_Form := aItem.FormDescriptor.MakeForm(vcmMakeParams(aParams.FormSet, aContainer, aOwner),
                                        MakeZoneType,
                                        UserType,
                                        nil,
                                        l_New,
                                        l_SubUserType,
                                        nil);
         if MakeZoneType = vcm_ztManualModal then
          l_ModalForm := l_Form;
        end//if not Assigned(l_Form) then
        // Установим данные
        else
        begin
         // Если сборка создается, а формы остаются прежними, то устанавливаем
         // фокус в главной форме.
         if aParams.DataSource.InInit and IsOwnerItem(aItem) then
          l_Form.VCLWinControl.SetFocus;
         // Если утилизируем форму снесем ей сначала DataSource
         // чтоб эмулировать удаление/создание K-136262540
         if (l_New <> nil) then
         // - http://mdp.garant.ru/pages/viewpage.action?pageId=138969784&focusedCommentId=138971203#comment-138971203
          if not l_New.IsSame(l_Form.DataSource) then
           l_Form.DataSource := nil;
         l_Form.DataSource := l_New;
        end;//not Assigned(l_Form)
        // Определим вес формы
        if Assigned((l_Form.VCLWinControl As TvcmEntityForm).CurUserType) and
          Assigned(OnFormWeight) and OnFormWeight(l_Weight) then
         (l_Form.VCLWinControl As TvcmEntityForm).CurUserType.Weight := l_Weight;
        // Если сборка не пересоздавалась, что нужно активировать первую закладку
        if (aFormUpdated.IndexOf(Ord(MakeZoneType)) = -1) and
          aParams.DataSource.InInit then
        begin
         l_Form.SetFirstActiveInParent;
         aFormUpdated.Add(Ord(MakeZoneType));
        end;//if (aFormUpdated.IndexOf(Ord(aItem.ZoneType)) = -1) and
        // Форма - собственник для форм корневого списка
        if IsOwnerItem(aItem) then
        begin
         l_OwnerItemForm := l_Form.VCLWinControl;
         // Установим иконки для фиктивной закладки
         if (l_Form.UserType <> vcm_utAny) then
          with (l_Form.VCLWinControl As TvcmEntityForm).UserTypes[UserType] do
          begin
           f_MainCaption := Self.Caption;
           f_MainImageIndex := ImageIndex;
          end;//with TvcmEntityForm(l_Form.VCLForm).UserTypes[UserType] do
        end;//if aItem = TvcmFormSetFormsCollectionItem(
        // Активируем форму если установлен флаг и изменился источник данных, а
        // также при первом обновлении.
        if (aItem.ActivateIfUpdate <> wafNone) and ((l_Old <> l_New) or
          aParams.DataSource.InInit) and not lp_HasActiveForm(l_Form) then
         l_Form.SetActiveInParent;
       end;//if not l_IsCreate then
      end;//if l_ChangePosition then
      // Определим новый контейнер
      l_Forms := aItem.Childs As TvcmFormSetFormsCollection;
      if (l_Forms <> nil) then
       if Supports(l_Form, IvcmContainer, l_Container) then
       begin
        // Дочерние формы
        l_FormUpdated := TvcmLongintList.Create(nil);
        try
         for l_I := 0 to Pred(l_Forms.Count) do
          lp_MakeForm(l_Forms,
                      l_Container,
                      l_Form.VCLWinControl,
                      TvcmFormSetFormsCollectionItem(l_Forms.Items[l_I]),
                      l_FormUpdated);
        finally
         vcmFree(l_FormUpdated);
        end;//try..finally
       end;//if Supports(l_Form, IvcmContainer, l_Container) then
     end;//for l_Index := 0 to Pred(l_FormCount) do
    end;//with aItem
   end;//aItem.FormName <> ''
  end;//lp_MakeForm

var  
 l_DSCache: TvcmInterfaceList;
   {* - кеш для источников данных, необходим в случае частичной записи в
        историю. Т.к. перед обновлением нужно сохранить формы у которых
        источники данных изменятся, то новые источники получаются у aDataSource,
        если их не сохранять до присвоения формам, то при выходе из процедуры
        lp_SaveFormIfDataSourceChanged они освободятся и почистятся ссылки на
        них на IvcmFormSetDataSource, в результате чего некоторые формы
        закроются. }

  procedure lp_AddDSToCache(const aItem: IvcmFormDataSource);
  begin//lp_AddDSToCache
   if not Assigned(l_DSCache) then
    l_DSCache := TvcmInterfaceList.Make;
   l_DSCache.Add(aItem);
  end;//lp_AddDSToCache

  procedure lp_SaveFormIfDataSourceChanged(const aForms: TvcmFormSetFormsCollection);
  var
   l_Index       : Integer;
   l_Form        : IvcmEntityForm;
   l_Item        : TvcmFormSetFormsCollectionItem;
   l_FormCount   : Integer;
   l_FormIndex   : Integer;
   l_SubUserType : TvcmUserType;
   l_New         : IvcmFormDataSource;
  begin
   if (aForms = nil) then
    Exit;
   for l_Index := 0 to Pred(aForms.Count) do
   begin
    l_Item := TvcmFormSetFormsCollectionItem(aForms.Items[l_Index]);
    l_FormCount := 1;
    if Assigned(l_Item.OnFormCount) then
     l_Item.OnFormCount(aParams.DataSource, l_FormCount);
    for l_FormIndex := 0 to Pred(l_FormCount) do
    begin
     l_New := nil;
     l_Form := nil;
     if l_FormCount = 1 then
      l_SubUserType := vcm_utAny
     else
      l_SubUserType := TvcmUserType(l_FormIndex);
     with l_Item do
      aParams.FormSet.Container.HasForm(FormId,
                                 MakeZoneType,
                                 True,
                                 @l_Form,
                                 UserType,
                                 nil,
                                 l_SubUserType);
     lp_DefineDS(l_Item, aParams.DataSource, l_New, l_SubUserType);
     if Assigned(l_New) then
      lp_AddDSToCache(l_New);
     lp_SaveIfDataSourceChanged(l_Item, l_Form, l_New, l_SubUserType);
    end;
    lp_SaveFormIfDataSourceChanged(l_Item.Childs As TvcmFormSetFormsCollection);
   end;//for l_Index := 0 to Pred(aForms.Count) do
  end;//lp_SaveFormsIfDataSourceChanged

  procedure lp_SaveToHistory;
  var
   l_Entity: IvcmEntityForm;
  begin//lp_SaveToHistory
   // Первое обновление сборки, это не случай когда обновление вызвали внутри
   // обновления:
   if not f_RefreshFromStack then
    case aParams.SaveToHistory of
     sfsAllForms:
      SaveHistory(aParams.FormSet.Container, false);
     sfsOnlyIfDataSourceChanged:
     begin
      lp_SaveFormIfDataSourceChanged(f_Forms);
      // Завершим частичное сохранение форм в историю:
      if f_SaveToHistoryWasStarted and
       Supports(aParams.FormSet.Container, IvcmEntityForm, l_Entity) then
      begin
       g_Dispatcher.History.Finish(l_Entity);
       f_SaveToHistoryWasStarted := False;
      end;//if f_SaveToHistoryWasStarted
     end;//sfsOnlyIfDataSourceChanged
    end;//case aParams.SaveToHistory of
  end;//lp_SaveToHistory

  function lp_MakeOwner: TComponent;
  var
   l_Entity: IvcmEntityForm;
  begin//lp_MakeOwner
   if Supports(aParams.FormSet.Container, IvcmEntityForm, l_Entity) then
   try
    Result := l_Entity.VCLWinControl;
   finally
    l_Entity := nil;
   end//if Supports(aParams.FormSet.Container
   else
    Result := nil;
  end;//lp_MakeOwner

  procedure lp_MakeForms(aOwner: TComponent);
  const
   cUndefinedOwnerForm = 'Неопределена форма-собственник.';
   cInvaliedFormZone   = 'Неправильно определена зона для формы-собственника.';
  var
   l_Index       : Integer;
   l_FormUpdated : TvcmLongintList;
   l_Item        : TvcmFormSetFormsCollectionItem;
  begin//lp_MakeForms
   if Assigned(aOwner) then
   begin
    Assert(OwnerForm <> -1, cUndefinedOwnerForm);
    l_Item := FormSetItem(f_Forms.Items[OwnerForm]);
    Assert(((l_Item.ZoneType in [vcm_ztParent, vcm_ztModal, vcm_ztManualModal]) or
            (f_Forms.Count = 1)),
           cInvaliedFormZone);
    l_FormUpdated := TvcmLongintList.Create(nil);
    try
     // Первой всегда создается OwnerForm, он является собственником для
     // остальных форм:
     lp_MakeForm(f_Forms,
                 aParams.FormSet.Container,
                aOwner,
                l_Item,
                l_FormUpdated);
     // Создадим все остальные формы
     for l_Index := 0 to Pred(f_Forms.Count) do
      // OwnerForm уже создан
      if l_Index <> OwnerForm then
       lp_MakeForm(f_Forms,
                   aParams.FormSet.Container,
                  l_OwnerItemForm,
                  FormSetItem(f_Forms.Items[l_Index]),
                  l_FormUpdated);
    finally
     vcmFree(l_FormUpdated);
    end;{try..finally}
   end;//if Assigned(aOwner) then
  end;//lp_MakeForms

  procedure lp_PushUpdateFromStack;
  var
   l_Params: IvcmFormSetRefreshParams;
  begin//lp_PushUpdateFromStack
   if (f_RefreshSTack <> nil) then
    with f_RefreshStack do
     if Count > 0 then
     begin
      if Supports(f_RefreshStack.Items[0], IvcmFormSetRefreshParams, l_Params) then
      try
       f_RefreshStack.Delete(0);
       f_RefreshFromStack := True;
       try
        Refresh(l_Params);
       finally
        f_RefreshFromStack := False;
       end;
      finally
       l_Params := nil;
      end//try..finally
      else
       Assert(False);
     end;//if Count > 0 then
  end;//lp_PushUpdateFromStack
//#UC END# *49957114002A_47B97312006D_var*
begin
//#UC START# *49957114002A_47B97312006D_impl*
 l_DSCache := nil;
 // Сборка находится в состоянии обновления положим обновления в очередь
 if aParams.DataSource.IsRefreshing then
 begin
  if (f_RefreshStack = nil) then
   f_RefreshStack := TvcmInterfaceList.Create;
  f_RefreshStack.Add(aParams);
  Exit;
 end;//if aParams.DataSource.IsRefreshing then
 lp_SaveToHistory;
 g_Dispatcher.FormDispatcher.Lock;
 try
  aParams.DataSource.BeginRefresh;
  try
   l_ChangePosition := False;
   // Получим owner-а для OwnerForm и создадим сборку:
   lp_MakeForms(lp_MakeOwner);
  finally
   aParams.DataSource.EndRefresh;
  end;//aParams.DataSource.BeginRefresh
  // Проверим стек обновлений
  lp_PushUpdateFromStack;
  // Освободим источники данных
  FreeAndNil(l_DSCache);
  // Поднимем модальный диалог
  if Assigned(l_ModalForm) then
   l_ModalForm.ShowModal;
 finally
  g_Dispatcher.FormDispatcher.Unlock;
 end;//try..finally
//#UC END# *49957114002A_47B97312006D_impl*
end;//TvcmFormSetFactory.Refresh

procedure TvcmFormSetFactory.SaveHistory(const aContainer: IvcmContainer;
  aNeedSaveUseCaseData: Boolean);
//#UC START# *499571240004_47B97312006D_var*
 procedure lp_SaveItem(aItem: TvcmFormSetFormsCollectionItem);
 var
  l_Form: IvcmEntityForm;
 begin//lp_SaveItem
  with aItem do
   aContainer.HasForm(FormId, ZoneType, True, @l_Form, UserType);
  // Сохраним форму в историю
  if Assigned(l_Form) then
  try
   g_Dispatcher.History.ForceSaveState(l_Form);
  finally
   l_Form := nil;
  end//if Assigned(l_Form) then
   // При возврате по истории форма должна быть закрыта
  else
   SaveToHistoryClosedForm(aItem);
 end;//lp_SaveItem

 procedure lp_Save(const aForms: TvcmFormSetFormsCollection);
 var
  l_Item  : TvcmFormSetFormsCollectionItem;
  l_Index : Integer;
 begin
  if (aForms <> nil) then
   for l_Index := 0 to Pred(aForms.Count) do
   begin
    l_Item := FormSetItem(aForms.Items[l_Index]);
    if not IsOwnerItem(l_Item) then
    begin
     lp_SaveItem(l_Item);
     lp_Save(l_Item.Childs As TvcmFormSetFormsCollection);
    end;//not IsOwnerItem(l_Item)
   end;//for l_Index
 end;//lp_Save

 procedure lp_SaveOwnerForm;
  // - сначала сохраняем форму-собственник, чтобы при возврате по истории
  //   форма создавалась первой и устанавливалась всех остальным в качестве
  //   Owner-а;
 begin//lp_SaveOwnerForm
  lp_SaveItem(FormSetItem(Forms.Items[OwnerForm]));
  lp_Save(FormSetItem(Forms.Items[OwnerForm]).Childs As TvcmFormSetFormsCollection);
 end;//lp_SaveOwnerForm

var
 l_Form    : IvcmEntityForm;
 l_FormSet : IvcmFormSet;
//#UC END# *499571240004_47B97312006D_var*
begin
//#UC START# *499571240004_47B97312006D_impl*
 // Сохраняем только при обновлении текущей сборки, когда произойдет замена
 // сборки, то сохранение произойдет перед закрытием главной формы
 if IsFormSetExists(aContainer, l_FormSet) and
   Assigned(g_Dispatcher.History) then
 begin
  l_FormSet.PopToHistory;
  with g_Dispatcher.History do
  begin
   if Supports(aContainer, IvcmEntityForm, l_Form) then
   try
    Start(l_Form, nil, True);
    try
(*     if aNeedSaveUseCaseData then
      Add(TvcmObjectWithDataHistoryItem.
       Make(l_FormSet.DataSource, l_FormSet.DataSource.Data));*)
  // Это всё попытки залечить http://mdp.garant.ru/pages/viewpage.action?pageId=267324195
  // но дело оказалось не в этом
     lp_SaveOwnerForm;
     lp_Save(Forms);
    finally
     Finish(l_Form);
    end;//try..finally
   finally
    l_Form := nil;
   end;//try..finally
  end;//with g_Dispatcher.History
 end;//IsFormSetExists(aContainer, l_FormSet)..
//#UC END# *499571240004_47B97312006D_impl*
end;//TvcmFormSetFactory.SaveHistory

function TvcmFormSetFactory.IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
//#UC START# *4995712D0357_47B97312006D_var*
//#UC END# *4995712D0357_47B97312006D_var*
begin
//#UC START# *4995712D0357_47B97312006D_impl*
 Result := False;
 if OwnerForm >= 0 then
  with FormSetItem(Forms.Items[OwnerForm]) do
   Result := (aForm.UserType = UserType) and (aForm.ZoneType = ZoneType) and
    (aForm.SameName(FormId));
//#UC END# *4995712D0357_47B97312006D_impl*
end;//TvcmFormSetFactory.IsMainInFormSet

function TvcmFormSetFactory.IsDefaultStatusForm(const aForm: IvcmEntityForm): Boolean;
//#UC START# *4995714803CC_47B97312006D_var*
//#UC END# *4995714803CC_47B97312006D_var*
begin
//#UC START# *4995714803CC_47B97312006D_impl*
 Result := False;
 if DefaultStatusForm >= 0 then
  if (DefaultStatusForm < Forms.Count) then
  begin
   //Assert(false, 'А попадаем ли сюда вообще');
   // попадаем, регулярно, когда DefaultStatusForm = OwnerForm
   with FormSetItem(Forms.Items[DefaultStatusForm]) do
   begin
    Result := (aForm.UserType = UserType) and (aForm.ZoneType = ZoneType) and
     (aForm.SameName(FormId));
   end;//with FormSetItem(Forms.Items[DefaultStatusForm])
  end;//DefaultStatusForm < Forms.Count
//#UC END# *4995714803CC_47B97312006D_impl*
end;//TvcmFormSetFactory.IsDefaultStatusForm

function TvcmFormSetFactory.MakeMainCaption(const aDataSource: IvcmFormSetDataSource): IvcmCString;
//#UC START# *4995716A0078_47B97312006D_var*
var
 l_Temp: IvcmCString;
//#UC END# *4995716A0078_47B97312006D_var*
begin
//#UC START# *4995716A0078_47B97312006D_impl*
 l_Temp := f_MainCaption;
 if Assigned(f_OnGetMainCaption) then
  f_OnGetMainCaption(Self, aDataSource, l_Temp);
 Result := l_Temp;
//#UC END# *4995716A0078_47B97312006D_impl*
end;//TvcmFormSetFactory.MakeMainCaption

function TvcmFormSetFactory.MakeMainImageIndex(const aDataSource: IvcmFormSetDataSource): Integer;
//#UC START# *4995717E0290_47B97312006D_var*
var
 l_Temp: Integer;
//#UC END# *4995717E0290_47B97312006D_var*
begin
//#UC START# *4995717E0290_47B97312006D_impl*
 l_Temp := f_MainImageIndex;
 if Assigned(f_OnGetMainImageIndex) then
  f_OnGetMainImageIndex(Self, aDataSource, l_Temp);
 Result := l_Temp;
//#UC END# *4995717E0290_47B97312006D_impl*
end;//TvcmFormSetFactory.MakeMainImageIndex

procedure TvcmFormSetFactory.Cleanup;
//#UC START# *479731C50290_47B97312006D_var*
//#UC END# *479731C50290_47B97312006D_var*
begin
//#UC START# *479731C50290_47B97312006D_impl*
 vcmFree(f_RefreshStack);
 vcmFree(f_Forms);
 inherited;
//#UC END# *479731C50290_47B97312006D_impl*
end;//TvcmFormSetFactory.Cleanup

{$IfEnd} //not NoVCM

end.