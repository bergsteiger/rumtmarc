unit mmmReferencesTree;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Medic"
// Автор: Морозов М.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Medic/mmmReferencesTree.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Встроенные продукты::Inpharm::Medic::MedicMainMenu::TmmmReferencesTree
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
  mmmTree,
  l3Tree_TLB
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TmmmReferencesTree = class(TmmmTree)
 protected
 // overridden protected methods
   function MakeRoot: Il3RootNode; override;
     {* Создаёт корень дерева }
 end;//TmmmReferencesTree
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsTypes,
  DynamicTreeUnit,
  nsConst,
  nsMainMenuNode
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TmmmReferencesTree

function TmmmReferencesTree.MakeRoot: Il3RootNode;
//#UC START# *4909EF6E0361_490C422B0022_var*
var
 l_ParentNode, l_Node, l_Temp: INodeBase;
//#UC END# *4909EF6E0361_490C422B0022_var*
begin
//#UC START# *4909EF6E0361_490C422B0022_impl*
 Result := inherited MakeRoot;
 l_ParentNode := nsFindNavigatorItem(ns_nipInpharm);
 if l_ParentNode <> nil then
 begin
  l_Temp := nsFindNavigatorItem(ns_nipInpharmBasicSection, l_ParentNode);
  if l_Temp <> nil then
  begin
   l_Temp.GetFirstChild(l_Node);
   while l_Node <> nil do
   begin
    Result.InsertChild(TnsMainMenuNode.Make(Ord(ns_mntDrugList), nil, l_Node));
    l_Node.GetNext(l_Temp);
    l_Node := l_Temp;
   end;
  end;
 end;
//#UC END# *4909EF6E0361_490C422B0022_impl*
end;//TmmmReferencesTree.MakeRoot

{$IfEnd} //not Admin AND not Monitorings

end.