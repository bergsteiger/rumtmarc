unit nsLeafParaNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsLeafParaNode.pas"
// Начат: 2005/06/23 16:38:20
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::DocumentTagNodes::TnsLeafParaNode
//
// Листьевой параграф
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  nsParentedTagNode,
  k2Base,
  k2Interfaces
  ;

type
 TnsLeafParaNode = class(TnsParentedTagNode)
  {* Листьевой параграф }
 protected
 // overridden protected methods
   procedure IterateProperties(Action: Ik2Tag_IterateProperties_Action;
    All: Boolean); override;
   function DoGetSubAtom(aProp: Tk2Prop;
    out Data: Integer): Boolean; override;
   procedure DoLoad; override;
 protected
 // protected methods
   procedure BuildSubs(aProp: Tk2Prop);
 end;//TnsLeafParaNode

implementation

uses
  f1AtomChecker,
  F1TagDataProviderInterface,
  k2Tags
  ;

// start class TnsLeafParaNode

procedure TnsLeafParaNode.BuildSubs(aProp: Tk2Prop);
//#UC START# *4C722F3D02EE_467FCDA10044_var*
//#UC END# *4C722F3D02EE_467FCDA10044_var*
begin
//#UC START# *4C722F3D02EE_467FCDA10044_impl*
 if not (ns_nsSubsBuilt in f_State) then
 begin
  Include(f_State, ns_nsSubsBuilt);
  TagDataProvider.BuildSubs(aProp, Tf1AtomChecker.Make(Self));
 end;//not (ns_nsSubsBuilt in f_State)
//#UC END# *4C722F3D02EE_467FCDA10044_impl*
end;//TnsLeafParaNode.BuildSubs

procedure TnsLeafParaNode.IterateProperties(Action: Ik2Tag_IterateProperties_Action;
  All: Boolean);
//#UC START# *49A545D501F6_467FCDA10044_var*
//#UC END# *49A545D501F6_467FCDA10044_var*
begin
//#UC START# *49A545D501F6_467FCDA10044_impl*
 if not All then
 begin
  Attr[k2_tiSubs];
  Attr[k2_tiFrame];
  Attr[k2_tiText];
  Attr[k2_tiData];
 end;//not All
 inherited;
//#UC END# *49A545D501F6_467FCDA10044_impl*
end;//TnsLeafParaNode.IterateProperties

function TnsLeafParaNode.DoGetSubAtom(aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *4C6D1D450332_467FCDA10044_var*
//#UC END# *4C6D1D450332_467FCDA10044_var*
begin
//#UC START# *4C6D1D450332_467FCDA10044_impl*
 Case aProp.TagIndex of
  k2_tiSubs :
  begin
   ParseStyle;
   BuildSubs(aProp);
   Result := BaseGetSubAtom(aProp, Data);
  end;//k2_tiSubs
  k2_tiFrame :
  begin
   ParseStyle;
   Result := BaseGetSubAtom(aProp, Data);
  end;//k2_tiFrame
  else
   Result := inherited DoGetSubAtom(aProp, Data);
 end;//Case aProp.TagIndex
//#UC END# *4C6D1D450332_467FCDA10044_impl*
end;//TnsLeafParaNode.DoGetSubAtom

procedure TnsLeafParaNode.DoLoad;
//#UC START# *4CEFA0BA0233_467FCDA10044_var*
//#UC END# *4CEFA0BA0233_467FCDA10044_var*
begin
//#UC START# *4CEFA0BA0233_467FCDA10044_impl*
 ParseStyle;
 inherited;
//#UC END# *4CEFA0BA0233_467FCDA10044_impl*
end;//TnsLeafParaNode.DoLoad

end.