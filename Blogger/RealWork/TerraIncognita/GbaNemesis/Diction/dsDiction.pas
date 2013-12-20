unit dsDiction;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Diction"
// Автор: Морозов М.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Diction/dsDiction.pas"
// Начат: 2005/10/07 17:03:27
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ViewAreaControllerImp::Class>> F1 Встроенные продукты::Diction::Diction::Diction::TdsDiction
//
// перевод толкового словаря на сборку
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
  bsTypes,
  DictionInterfaces,
  DocumentUnit,
  DynamicTreeUnit,
  l3TreeInterfaces,
  DocumentAndListInterfaces,
  CommonDictionInterfaces,
  DocumentInterfaces,
  l3InternalInterfaces,
  bsInterfaces,
  ExtCtrls,
  TreeInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmLocalInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3ProtoObjectWithCOMQI,
  l3Interfaces,
  l3NotifyPtrList,
  vcmControllers {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _FormDataSourceType_ = IdsDiction;
 _InitDataType_ = IdeDiction;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\CommonDiction\dsCommonDiction.imp.pas}
 TdsDiction = {final vac} class(_dsCommonDiction_, IdsDiction)
  {* перевод толкового словаря на сборку }
 private
 // private fields
   dDiction : IdDiction;
   ucc_Diction : IsdsDiction;
   f_Language : TbsLanguage;
    {* Поле для свойства Language}
 protected

  procedure InitRefs(const aDS: IvcmUseCaseController); override;
  procedure ClearRefs; override;
 protected
 // realized methods
   function MakeSimpleTree: Il3SimpleTree; override;
     {* Создать данные дерева }
   function MakeDocInfoForCurrentChanged(const aDoc: IDocument): IdeDocInfo; override;
   function pm_GetLanguage: TbsLanguage;
   procedure pm_SetLanguage(aValue: TbsLanguage);
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure FormSetDataChanged; override;
   {$IfEnd} //not NoVCM
   procedure AfterChangeCurrent; override;
   {$If not defined(NoVCM)}
   procedure GotData; override;
     {* - данные изменились. }
   {$IfEnd} //not NoVCM
   function ForceChangeInCurrentChanged: Boolean; override;
 private
 // private properties
   property Language: TbsLanguage
     read f_Language
     write f_Language;
 end;//TdsDiction
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils,
  deDiction,
  BaseTypesUnit,
  l3Base,
  vtUtils,
  vtStdRes,
  nsNewCachableNode,
  Windows,
  l3InterfacesMisc
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type _Instance_R_ = TdsDiction;

{$Include w:\garant6x\implementation\Garant\GbaNemesis\CommonDiction\dsCommonDiction.imp.pas}

// start class TdsDiction

function TdsDiction.MakeSimpleTree: Il3SimpleTree;
//#UC START# *47F4C2B9014A_4925526600D0_var*
//#UC END# *47F4C2B9014A_4925526600D0_var*
begin
//#UC START# *47F4C2B9014A_4925526600D0_impl*
 Result := nil;
 // Читаем http://mdp.garant.ru/pages/viewpage.action?pageId=135605187
//#UC END# *47F4C2B9014A_4925526600D0_impl*
end;//TdsDiction.MakeSimpleTree

function TdsDiction.MakeDocInfoForCurrentChanged(const aDoc: IDocument): IdeDocInfo;
//#UC START# *49254515003C_4925526600D0_var*
//#UC END# *49254515003C_4925526600D0_var*
begin
//#UC START# *49254515003C_4925526600D0_impl*
 Result := TdeDiction.Make(aDoc, Language);
//#UC END# *49254515003C_4925526600D0_impl*
end;//TdsDiction.MakeDocInfoForCurrentChanged

function TdsDiction.pm_GetLanguage: TbsLanguage;
//#UC START# *49254FF103A4_4925526600D0get_var*
//#UC END# *49254FF103A4_4925526600D0get_var*
begin
//#UC START# *49254FF103A4_4925526600D0get_impl*
 Result := f_Language;
//#UC END# *49254FF103A4_4925526600D0get_impl*
end;//TdsDiction.pm_GetLanguage

procedure TdsDiction.pm_SetLanguage(aValue: TbsLanguage);
//#UC START# *49254FF103A4_4925526600D0set_var*
//#UC END# *49254FF103A4_4925526600D0set_var*
begin
//#UC START# *49254FF103A4_4925526600D0set_impl*
 f_Language := aValue;
//#UC END# *49254FF103A4_4925526600D0set_impl*
end;//TdsDiction.pm_SetLanguage

{$If not defined(NoVCM)}
procedure TdsDiction.FormSetDataChanged;
//#UC START# *491482DC0216_4925526600D0_var*

  procedure lp_NotifyCurrentChanged;
  var
   l_Index    : Integer;
   l_Listener : IbsDictionListener;
   l_Item     : IUnknown;
  begin
   if (NotifiedObjList <> nil) and (NotifiedObjList.Count > 0) then
    for l_Index := 0 to Pred(NotifiedObjList.Count) do
    begin
     l_Item := NotifiedObjList.Items[l_Index];
     if Supports(l_Item, IbsDictionListener, l_Listener) and
       (l_Item = l_Listener) then
      with l_Listener do
      begin
       UpdateLanguage((dDiction.DocInfo as IdeDiction).DictLanguage);
       DictionNotify(l_Listener);
      end;//with l_Listener do
    end;//if (NotifiedObjList <> nil)
  end;//lp_NotifyCurrentChanged

//#UC END# *491482DC0216_4925526600D0_var*
begin
//#UC START# *491482DC0216_4925526600D0_impl*
 inherited;
 lp_NotifyCurrentChanged;
//#UC END# *491482DC0216_4925526600D0_impl*
end;//TdsDiction.FormSetDataChanged
{$IfEnd} //not NoVCM

procedure TdsDiction.AfterChangeCurrent;
//#UC START# *492546330316_4925526600D0_var*
//#UC END# *492546330316_4925526600D0_var*
begin
//#UC START# *492546330316_4925526600D0_impl*
 with dDiction do
  (DocInfo as IdeDiction).DictLanguage := Language;
 inherited;
//#UC END# *492546330316_4925526600D0_impl*
end;//TdsDiction.AfterChangeCurrent

{$If not defined(NoVCM)}
procedure TdsDiction.GotData;
//#UC START# *492ACF630072_4925526600D0_var*
//#UC END# *492ACF630072_4925526600D0_var*
begin
//#UC START# *492ACF630072_4925526600D0_impl*
 inherited;
 Language := PartData.DictLanguage;
//#UC END# *492ACF630072_4925526600D0_impl*
end;//TdsDiction.GotData
{$IfEnd} //not NoVCM

function TdsDiction.ForceChangeInCurrentChanged: Boolean;
//#UC START# *4A9E6599035A_4925526600D0_var*
//#UC END# *4A9E6599035A_4925526600D0_var*
begin
//#UC START# *4A9E6599035A_4925526600D0_impl*
 Result := (ucc_Diction <> nil) and ucc_Diction.IsShowLiteratureList;
//#UC END# *4A9E6599035A_4925526600D0_impl*
end;//TdsDiction.ForceChangeInCurrentChanged

procedure TdsDiction.InitRefs(const aDS: IvcmUseCaseController);
begin
 inherited;
 Supports(aDS, IdDiction, dDiction);
 Supports(aDS, IsdsDiction, ucc_Diction);
end;

procedure TdsDiction.ClearRefs;
begin
 inherited;
 dDiction := nil;
 ucc_Diction := nil;
end;

{$IfEnd} //not Admin AND not Monitorings

end.