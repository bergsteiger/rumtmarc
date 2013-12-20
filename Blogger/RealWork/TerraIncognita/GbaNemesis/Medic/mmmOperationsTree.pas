unit mmmOperationsTree;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Medic"
// �����: ������� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/Medic/mmmOperationsTree.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ���������� ��������::Inpharm::Medic::MedicMainMenu::TmmmOperationsTree
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

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
 TmmmOperationsTree = class(TmmmTree)
 protected
 // overridden protected methods
   function MakeRoot: Il3RootNode; override;
     {* ������ ������ ������ }
 end;//TmmmOperationsTree
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsTypes,
  nsConst,
  DynamicTreeUnit
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TmmmOperationsTree

function TmmmOperationsTree.MakeRoot: Il3RootNode;
//#UC START# *4909EF6E0361_490C3EE8039D_var*
var
 l_Inpharm: INodeBase;
//#UC END# *4909EF6E0361_490C3EE8039D_var*
begin
//#UC START# *4909EF6E0361_490C3EE8039D_impl*
 Result := inherited MakeRoot;
 l_Inpharm := nsFindNavigatorItem(ns_nipInpharm);
 if l_Inpharm <> nil then
 begin
  nsAddMainMenuItem(Result,
                    Ord(ns_mntSearchDrug),
                    ns_nipInpharmSearch);
  nsAddMainMenuItem(Result,
                    Ord(ns_mntAllDrugList),
                    ns_nipInpharmDrugList,
                    l_Inpharm);
  nsAddMainMenuItem(Result,
                    Ord(ns_mntFirms),
                    ns_nipInpharmFirms,
                    l_Inpharm);
  nsAddMainMenuItem(Result,
                    Ord(ns_mntDiction),
                    ns_nipInpharmDiction,
                    l_Inpharm);
 end;//if l_Inpharm <> nil then
//#UC END# *4909EF6E0361_490C3EE8039D_impl*
end;//TmmmOperationsTree.MakeRoot

{$IfEnd} //not Admin AND not Monitorings

end.