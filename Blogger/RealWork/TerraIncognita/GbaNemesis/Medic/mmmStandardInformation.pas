unit mmmStandardInformation;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Medic"
// Автор: Морозов М.А.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Medic/mmmStandardInformation.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Встроенные продукты::Inpharm::Medic::MedicMainMenu::TmmmStandardInformation
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
 TmmmStandardInformation = class(TmmmTree)
 protected
 // overridden protected methods
   function MakeRoot: Il3RootNode; override;
     {* Создаёт корень дерева }
 end;//TmmmStandardInformation
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  nsTypes,
  nsConst
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TmmmStandardInformation

function TmmmStandardInformation.MakeRoot: Il3RootNode;
//#UC START# *4909EF6E0361_490C4DB100E4_var*
const
 c_Documents: array [0..2] of Longint = (52390005, 52390002, 52390003);
//#UC END# *4909EF6E0361_490C4DB100E4_var*
begin
//#UC START# *4909EF6E0361_490C4DB100E4_impl*
 Result := inherited MakeRoot;
 nsAddMainMenuDocumentItem(Result, Ord(ns_mntDocument), c_Documents);
//#UC END# *4909EF6E0361_490C4DB100E4_impl*
end;//TmmmStandardInformation.MakeRoot

{$IfEnd} //not Admin AND not Monitorings

end.