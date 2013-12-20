unit mmmInfoTree;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Medic"
// Автор: Морозов М.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Medic/mmmInfoTree.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Встроенные продукты::Inpharm::Medic::MedicMainMenu::TmmmInfoTree
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
  l3StringIDEx,
  l3Tree_TLB
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TmmmInfoTree = class(TmmmTree)
 protected
 // overridden protected methods
   function MakeRoot: Il3RootNode; override;
     {* Создаёт корень дерева }
 end;//TmmmInfoTree
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsTypes,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки Local }
  str_mmmiHelp : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'mmmiHelp'; rValue : 'Руководство пользователя');
   { 'Руководство пользователя' }

// start class TmmmInfoTree

function TmmmInfoTree.MakeRoot: Il3RootNode;
//#UC START# *4909EF6E0361_490C47190273_var*
const
 c_Documents: array [0..1] of Longint = (52390001, 52390004);
//#UC END# *4909EF6E0361_490C47190273_var*
begin
//#UC START# *4909EF6E0361_490C47190273_impl*
 Result := inherited MakeRoot;
 nsAddMainMenuDocumentItem(Result, Ord(ns_mntDocument), c_Documents);
 AddItem(Result, ns_mntHelp, str_mmmiHelp);
//#UC END# *4909EF6E0361_490C47190273_impl*
end;//TmmmInfoTree.MakeRoot

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_mmmiHelp
 str_mmmiHelp.Init;
{$IfEnd} //not Admin AND not Monitorings

end.