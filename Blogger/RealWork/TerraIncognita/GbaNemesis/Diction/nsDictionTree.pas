unit nsDictionTree;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Diction"
// Автор: Тучнин Д.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Diction/nsDictionTree.pas"
// Начат: 2004/02/20 08:36:17
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Встроенные продукты::Diction::Diction::Diction$Unit::TnsDictionTree
//
// Дерево толкового словаря.
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
  l3Interfaces,
  l3TreeInterfaces,
  nsDataResetTreeStruct,
  bsTypes,
  bsInterfaces,
  DynamicTreeUnit,
  afwInterfaces
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsDictionTree = class(TnsDataResetTreeStruct)
  {* Дерево толкового словаря. }
 protected
 // property methods
   function pm_GetLanguage: TbsLanguage; virtual;
 protected
 // realized methods
   function ReAqurieUnfilteredRoot: INodeBase; override;
 protected
 // overridden protected methods
   function MakeChildNode(const aChild: INodeBase): Il3SimpleNode; override;
   function MakeFilters: Il3TreeFilters; override;
   procedure FillFilters(const aFilters: Il3TreeFilters;
    const anAdapterFilters: InsAdapterFilters); override;
   function SettingsID: TafwSettingId; override;
   procedure BeforeReset; override;
 protected
 // protected methods
   function DictFilters: InsLayeredTreeFilters;
 public
 // public methods
   class function Make(aLang: TbsLanguage;
    const anActiveContext: Il3CString = nil;
    CalcPartialContext: Boolean = false): Il3SimpleTree;
 private
 // private properties
   property Language: TbsLanguage
     read pm_GetLanguage;
 end;//TnsDictionTree
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsDictListChild,
  bsConvert,
  nsDictCache,
  SysUtils,
  nsLayeredTreeFilters,
  nsConst,
  nsLayerFilter,
  l3String
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsDictionTree

function TnsDictionTree.pm_GetLanguage: TbsLanguage;
//#UC START# *490823D301BE_46836BA203A1get_var*
//#UC END# *490823D301BE_46836BA203A1get_var*
begin
//#UC START# *490823D301BE_46836BA203A1get_impl*
 Assert(Assigned(DictFilters.Layer));
 Result := bsAdapterToBusiness(DictFilters.Layer.LayerID);
//#UC END# *490823D301BE_46836BA203A1get_impl*
end;//TnsDictionTree.pm_GetLanguage

class function TnsDictionTree.Make(aLang: TbsLanguage;
  const anActiveContext: Il3CString = nil;
  CalcPartialContext: Boolean = false): Il3SimpleTree;
//#UC START# *490823A102D3_46836BA203A1_var*
var
 l_Tree        : TnsDictionTree;
 l_Filterable  : Il3FilterableTree;
 l_TreeFilters : InsLayeredTreeFilters;
 l_Current     : Integer;
//#UC END# *490823A102D3_46836BA203A1_var*
begin
//#UC START# *490823A102D3_46836BA203A1_impl*
 if TnsDictCache.Instance.ContainsLang(aLang) then
 begin
  l_Tree := Create(TnsDictCache.Instance.Root, False);
  try
   l_Filterable := l_Tree;
   Supports(l_Tree.CloneFilters, InsLayeredTreeFilters, l_TreeFilters);
   Result := l_Filterable.MakeFiltered(l_TreeFilters.
                                        SetLayer(TnsLayerFilter.Make(bsBusinessToAdapter(aLang))),
                                       nil,
                                       l_Current,
                                       True);
   if not l3IsNil(anActiveContext) and
      Supports(Result, Il3FilterableTree, l_Filterable) then
   begin
    Result := l_Filterable.MakeFiltered(l_Filterable.CloneFIlters.
                                         SetContext(anActiveContext),
                                        nil,
                                        l_Current,
                                        True,
                                        CalcPartialContext);
    if not Assigned(Result) or (Result.CountView <= 0) then
     Result := l_Filterable As Il3SimpleTree;
   end;
  finally;
   FreeAndNil(l_Tree);
  end;
 end
 else
  Result := nil;
//#UC END# *490823A102D3_46836BA203A1_impl*
end;//TnsDictionTree.Make

function TnsDictionTree.DictFilters: InsLayeredTreeFilters;
//#UC START# *4908241B0118_46836BA203A1_var*
//#UC END# *4908241B0118_46836BA203A1_var*
begin
//#UC START# *4908241B0118_46836BA203A1_impl*
 Supports(Filters, InsLayeredTreeFilters, Result);
//#UC END# *4908241B0118_46836BA203A1_impl*
end;//TnsDictionTree.DictFilters

function TnsDictionTree.ReAqurieUnfilteredRoot: INodeBase;
//#UC START# *48FF64F60078_46836BA203A1_var*
//#UC END# *48FF64F60078_46836BA203A1_var*
begin
//#UC START# *48FF64F60078_46836BA203A1_impl*
 Result := TnsDictCache.Instance.Root; 
//#UC END# *48FF64F60078_46836BA203A1_impl*
end;//TnsDictionTree.ReAqurieUnfilteredRoot

function TnsDictionTree.MakeChildNode(const aChild: INodeBase): Il3SimpleNode;
//#UC START# *48FEE50002EB_46836BA203A1_var*
//#UC END# *48FEE50002EB_46836BA203A1_var*
begin
//#UC START# *48FEE50002EB_46836BA203A1_impl*
 Result := TnsDictListChild.Make(aChild, Language);
//#UC END# *48FEE50002EB_46836BA203A1_impl*
end;//TnsDictionTree.MakeChildNode

function TnsDictionTree.MakeFilters: Il3TreeFilters;
//#UC START# *48FF4C25031E_46836BA203A1_var*
//#UC END# *48FF4C25031E_46836BA203A1_var*
begin
//#UC START# *48FF4C25031E_46836BA203A1_impl*
 Result := TnsLayeredTreeFilters.Make;
//#UC END# *48FF4C25031E_46836BA203A1_impl*
end;//TnsDictionTree.MakeFilters

procedure TnsDictionTree.FillFilters(const aFilters: Il3TreeFilters;
  const anAdapterFilters: InsAdapterFilters);
//#UC START# *48FF520E03A0_46836BA203A1_var*
var
 l_Filters: InsLayeredTreeFilters;
//#UC END# *48FF520E03A0_46836BA203A1_var*
begin
//#UC START# *48FF520E03A0_46836BA203A1_impl*
 inherited FillFilters(aFilters, anAdapterFilters);
 if Supports(aFilters, InsLayeredTreeFilters, l_Filters) and Assigned(l_Filters.Layer) then
  anAdapterFilters.Layer.SetLayer(l_Filters.Layer.LayerID);
//#UC END# *48FF520E03A0_46836BA203A1_impl*
end;//TnsDictionTree.FillFilters

function TnsDictionTree.SettingsID: TafwSettingId;
//#UC START# *48FF56D003E6_46836BA203A1_var*
//#UC END# *48FF56D003E6_46836BA203A1_var*
begin
//#UC START# *48FF56D003E6_46836BA203A1_impl*
 Result := gi_cpDiction;
//#UC END# *48FF56D003E6_46836BA203A1_impl*
end;//TnsDictionTree.SettingsID

procedure TnsDictionTree.BeforeReset;
//#UC START# *48FF64E700E5_46836BA203A1_var*
//#UC END# *48FF64E700E5_46836BA203A1_var*
begin
//#UC START# *48FF64E700E5_46836BA203A1_impl*
 inherited;
 TnsDictCache.Instance.ClearCache;
//#UC END# *48FF64E700E5_46836BA203A1_impl*
end;//TnsDictionTree.BeforeReset

{$IfEnd} //not Admin AND not Monitorings

end.