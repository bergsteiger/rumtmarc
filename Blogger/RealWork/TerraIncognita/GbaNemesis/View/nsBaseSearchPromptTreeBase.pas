unit nsBaseSearchPromptTreeBase;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsBaseSearchPromptTreeBase.pas"
// Начат: 2008/06/25 08:04:46
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Base Operations::View::BaseSearch::TnsBaseSearchPromptTreeBase
//
// Дерево подсказок для БП
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
  l3TreeInterfaces,
  nsDataResetTreeStruct,
  SysUtils,
  bsInterfaces,
  DynamicTreeUnit
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 EPromptTreeNotFound = class(Exception)
  {* Подсказки не найдены }
 end;//EPromptTreeNotFound

 TnsBaseSearchPromptTreeBase = class(TnsDataResetTreeStruct)
  {* Дерево подсказок для БП }
 protected
 // realized methods
   function ReAqurieUnfilteredRoot: INodeBase; override;
 protected
 // overridden protected methods
   function MakeFilters: Il3TreeFilters; override;
   procedure FillFilters(const aFilters: Il3TreeFilters;
    const anAdapterFilters: InsAdapterFilters); override;
   function MakeContextFilterParams: Il3ContextFilterParams; override;
 public
 // public methods
   constructor Create; reintroduce; // can raise EPromptTreeNotFound
   class function Make: Il3SimpleTree;
     {* Создаёт дерево подсказок }
 end;//TnsBaseSearchPromptTreeBase
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DataAdapter,
  nsPromptContextFilterParams,
  nsBaseSearchPromptFilters,
  nsCutToLeafFilter,
  nsTypes,
  nsConst,
  BaseTypesUnit,
  nsPromptForDocFilter,
  BaseSearchInterfaces
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

const
   { Внутрение константы }
  c_CutCount = 7;
   { Коллеги, это что? }

// start class TnsBaseSearchPromptTreeBase

constructor TnsBaseSearchPromptTreeBase.Create; // can raise EPromptTreeNotFound
//#UC START# *4906D20B0185_4906D1790319_var*
var
 l_Node : INodeBase;
//#UC END# *4906D20B0185_4906D1790319_var*
begin
//#UC START# *4906D20B0185_4906D1790319_impl*
 l_Node := ReAqurieUnfilteredRoot;
 if Assigned(l_Node) then
  inherited Create(l_Node, False)
 else
  raise EPromptTreeNotFound.Create('');
//#UC END# *4906D20B0185_4906D1790319_impl*
end;//TnsBaseSearchPromptTreeBase.Create

class function TnsBaseSearchPromptTreeBase.Make: Il3SimpleTree;
//#UC START# *4906D21E035B_4906D1790319_var*
var
 l_Tree        : TnsBaseSearchPromptTreeBase;
 l_TreeFilters : InsBaseSearchPromptFilters;
 l_Current     : Integer;
//#UC END# *4906D21E035B_4906D1790319_var*
begin
//#UC START# *4906D21E035B_4906D1790319_impl*
 try
  l_Tree := Create;
  try
   Result := l_Tree;
   if Supports(l_Tree.CloneFilters, InsBaseSearchPromptFilters, l_TreeFilters) then
    Result := l_Tree.MakeFiltered(l_TreeFilters.SetLeaf(TnsCutToLeafFilter.Make(c_CutCount)),
                           nil,
                           l_Current,
                           True);
  finally;
   FreeAndNil(l_Tree);
  end;//try..finally
 except
  on EPromptTreeNotFound do
   Result := nil;
 end;//try..except
//#UC END# *4906D21E035B_4906D1790319_impl*
end;//TnsBaseSearchPromptTreeBase.Make

function TnsBaseSearchPromptTreeBase.ReAqurieUnfilteredRoot: INodeBase;
//#UC START# *48FF64F60078_4906D1790319_var*
//#UC END# *48FF64F60078_4906D1790319_var*
begin
//#UC START# *48FF64F60078_4906D1790319_impl*
 try
  Result := DefDataAdapter.NativeAdapter.MakeNodeBase(nsAStr(AT_VARIANTS));
 except
  on ECanNotFindData do
   Result := nil;
 end;//try..except
//#UC END# *48FF64F60078_4906D1790319_impl*
end;//TnsBaseSearchPromptTreeBase.ReAqurieUnfilteredRoot

function TnsBaseSearchPromptTreeBase.MakeFilters: Il3TreeFilters;
//#UC START# *48FF4C25031E_4906D1790319_var*
//#UC END# *48FF4C25031E_4906D1790319_var*
begin
//#UC START# *48FF4C25031E_4906D1790319_impl*
 Result := TnsBaseSearchPromptFilters.Make;
//#UC END# *48FF4C25031E_4906D1790319_impl*
end;//TnsBaseSearchPromptTreeBase.MakeFilters

procedure TnsBaseSearchPromptTreeBase.FillFilters(const aFilters: Il3TreeFilters;
  const anAdapterFilters: InsAdapterFilters);
//#UC START# *48FF520E03A0_4906D1790319_var*
var
 l_Filters: InsBaseSearchPromptFilters;
 l_Node: INodeBase;
//#UC END# *48FF520E03A0_4906D1790319_var*
begin
//#UC START# *48FF520E03A0_4906D1790319_impl*
 inherited FillFilters(aFilters, anAdapterFilters);
 if Supports(aFilters, InsBaseSearchPromptFilters, l_Filters) then
 begin
  if Assigned(l_Filters.Leaf) and (l_Filters.Leaf.LeafCount > 0) then
   anAdapterFilters.CutToLeaf.SetLeafCount(l_Filters.Leaf.LeafCount);
  if Assigned(l_Filters.ForDoc) then
   anAdapterFilters.MakePromptsTreeFilter(l_Filters.ForDoc.InternalDocNumber);
 end;//Supports(aFilters, InsBaseSearchPromptFilters, l_Filters)
//#UC END# *48FF520E03A0_4906D1790319_impl*
end;//TnsBaseSearchPromptTreeBase.FillFilters

function TnsBaseSearchPromptTreeBase.MakeContextFilterParams: Il3ContextFilterParams;
//#UC START# *48FF52670038_4906D1790319_var*
//#UC END# *48FF52670038_4906D1790319_var*
begin
//#UC START# *48FF52670038_4906D1790319_impl*
 Result := TnsPromptContextFilterParams.Make; 
//#UC END# *48FF52670038_4906D1790319_impl*
end;//TnsBaseSearchPromptTreeBase.MakeContextFilterParams

{$IfEnd} //not Admin AND not Monitorings

end.