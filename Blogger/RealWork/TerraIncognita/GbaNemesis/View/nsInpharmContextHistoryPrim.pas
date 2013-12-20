unit nsInpharmContextHistoryPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsInpharmContextHistoryPrim.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Base Operations::View::BaseSearch::TnsInpharmContextHistoryPrim
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
  l3SimpleObject,
  BaseSearchInterfaces,
  afwInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  InsContextSearchHistoryNotifierList
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _nsContextHistoryPrim_Parent_ = Tl3SimpleObject;
 {$Include ..\View\nsContextHistoryPrim.imp.pas}
 TnsInpharmContextHistoryPrim = class(_nsContextHistoryPrim_, InsContextSearchHistory)
 public
 // public methods
   constructor Create; reintroduce;
   class function Make: InsContextSearchHistory; reintroduce;
 end;//TnsInpharmContextHistoryPrim
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  afwFacade,
  nsConst
  {$If not defined(NoVCM)}
  ,
  vcmStringList
  {$IfEnd} //not NoVCM
  ,
  SysUtils,
  l3Types,
  l3String
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

{$Include ..\View\nsContextHistoryPrim.imp.pas}

// start class TnsInpharmContextHistoryPrim

constructor TnsInpharmContextHistoryPrim.Create;
//#UC START# *4AD846560013_4AD846290145_var*
//#UC END# *4AD846560013_4AD846290145_var*
begin
//#UC START# *4AD846560013_4AD846290145_impl*
 inherited Create(ns_chkInpharm);
//#UC END# *4AD846560013_4AD846290145_impl*
end;//TnsInpharmContextHistoryPrim.Create

class function TnsInpharmContextHistoryPrim.Make: InsContextSearchHistory;
var
 l_Inst : TnsInpharmContextHistoryPrim;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

{$IfEnd} //not Admin AND not Monitorings

end.