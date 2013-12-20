unit f1MultylinkResolver;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1DocumentProcessing"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1DocumentProcessing/f1MultylinkResolver.pas"
// Начат: 13.05.2011 21:18
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Common::F1DocumentProcessing::DocumentFilters::Tf1MultylinkResolver
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
  DocumentUnit,
  evdLeafParaFilter,
  k2Prim,
  k2Types,
  k2Interfaces
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 Tf1MultylinkResolver = class(TevdLeafParaFilter)
 private
 // private fields
   f_Doc : IDocument;
   f_ParaID : Integer;
 protected
 // overridden protected methods
   procedure StartChild(TypeID: Integer); override;
   procedure AddAtomEx(AtomIndex: Integer;
    const Value: Tk2Variant); override;
   function ParaTypeForFiltering: Integer; override;
     {* Функция, определяющая тип абзацев, для которых будет выполняться фильтрация }
   procedure DoWritePara(const aLeaf: Ik2Tag); override;
     {* Запись конкретного абзаца в генератор. Позволяет вносить изменения в содержание абзаца }
   procedure ClearFields; override;
 public
 // public methods
   class function SetTo(var theGenerator: Ik2TagGenerator;
     const aDoc: IDocument): Ik2TagGenerator;
   constructor Create(const aDoc: IDocument); reintroduce;
 end;//Tf1MultylinkResolver
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  HyperLink_Const,
  evdTypes,
  k2Tags,
  LeafPara_Const,
  SysUtils,
  BaseTypesUnit,
  k2Base
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class Tf1MultylinkResolver

class function Tf1MultylinkResolver.SetTo(var theGenerator: Ik2TagGenerator;
  const aDoc: IDocument): Ik2TagGenerator;
//#UC START# *4DCD5A9F022F_4DCD5932009E_var*
var
 l_G : Tf1MultylinkResolver;
//#UC END# *4DCD5A9F022F_4DCD5932009E_var*
begin
//#UC START# *4DCD5A9F022F_4DCD5932009E_impl*
 l_G := Create(aDoc);
 try
  l_G.Generator := theGenerator;
  theGenerator := l_G;
 finally
  FreeAndNil(l_G);
 end;//try..finally
 Result := theGenerator;
//#UC END# *4DCD5A9F022F_4DCD5932009E_impl*
end;//Tf1MultylinkResolver.SetTo

constructor Tf1MultylinkResolver.Create(const aDoc: IDocument);
//#UC START# *4DCD5AE3022C_4DCD5932009E_var*
//#UC END# *4DCD5AE3022C_4DCD5932009E_var*
begin
//#UC START# *4DCD5AE3022C_4DCD5932009E_impl*
 inherited Create;
 f_Doc := aDoc;
//#UC END# *4DCD5AE3022C_4DCD5932009E_impl*
end;//Tf1MultylinkResolver.Create

procedure Tf1MultylinkResolver.StartChild(TypeID: Integer);
//#UC START# *4836D4650177_4DCD5932009E_var*
//#UC END# *4836D4650177_4DCD5932009E_var*
begin
//#UC START# *4836D4650177_4DCD5932009E_impl*
 inherited;
 if CurrentType.InheritsFrom(k2_idLeafPara) then
  f_ParaID := -1;
//#UC END# *4836D4650177_4DCD5932009E_impl*
end;//Tf1MultylinkResolver.StartChild

procedure Tf1MultylinkResolver.AddAtomEx(AtomIndex: Integer;
  const Value: Tk2Variant);
//#UC START# *4836D52400D9_4DCD5932009E_var*
//#UC END# *4836D52400D9_4DCD5932009E_var*
begin
//#UC START# *4836D52400D9_4DCD5932009E_impl*
 inherited;
 if CurrentType.InheritsFrom(k2_idLeafPara) then
  if (AtomIndex = k2_tiHandle) then
   f_ParaID := Value.AsInteger;
//#UC END# *4836D52400D9_4DCD5932009E_impl*
end;//Tf1MultylinkResolver.AddAtomEx

function Tf1MultylinkResolver.ParaTypeForFiltering: Integer;
//#UC START# *49E488070386_4DCD5932009E_var*
//#UC END# *49E488070386_4DCD5932009E_var*
begin
//#UC START# *49E488070386_4DCD5932009E_impl*
 Result := k2_idHyperlink;
//#UC END# *49E488070386_4DCD5932009E_impl*
end;//Tf1MultylinkResolver.ParaTypeForFiltering

procedure Tf1MultylinkResolver.DoWritePara(const aLeaf: Ik2Tag);
//#UC START# *49E4883E0176_4DCD5932009E_var*
var
 l_T : TTopic;
 l_TID : Integer;
 l_A   : Ik2Tag;
 l_L   : IDocPointList;
 l_I   : Integer;
 l_P   : TDocPoint;
//#UC END# *49E4883E0176_4DCD5932009E_var*
begin
//#UC START# *49E4883E0176_4DCD5932009E_impl*
 if (aLeaf.ChildrenCount > 0) then
 begin
  l_A := aLeaf.Child[0];
  if l_A.IsValid then
  begin
   l_TID := l_A.IntA[k2_tiType];
   if (l_TID = CI_MULT) OR
      (l_TID = CI_PHARM_MULTI) then
   begin
    with l_T do
    begin
     rPid.rObjectId := TObjectId(f_ParaID);
     rPid.rClassId := TClassId(l_TID);
     rPosition.rPoint := Cardinal(l_A.IntA[k2_tiSubID]);
     rPosition.rType := PT_SUB;
    end;//with l_T
    f_Doc.GetMultiLinkInfo(f_Doc.GetInternalID{!!!}, l_T, l_L);
    if (l_L = nil) then
     Exit;
    aLeaf.DeleteChildren;
    for l_I := 0 to Pred(l_L.Count) do
    begin
     l_L.pm_GetItem(l_I, l_P);
     l_A := Tk2Type(aLeaf.TagType).ArrayProp[k2_tiChildren].ChildType.MakeTag;
     try
      l_A.IntA[k2_tiType] := CI_TOPIC;
      l_A.IntA[k2_tiDocID] := Integer(l_P.rDocID);
      l_A.IntA[k2_tiSubID] := Integer(l_P.rSubID);
      aLeaf.AddChild(l_A);
     finally
      l_A := nil;
     end;//try..finally
    end;//for l_I
   end;//l_TID = CI_MULT
  end;//l_A.IsValid
 end;//aLeaf.ChilrenCount > 0
 inherited;
//#UC END# *49E4883E0176_4DCD5932009E_impl*
end;//Tf1MultylinkResolver.DoWritePara

procedure Tf1MultylinkResolver.ClearFields;
 {-}
begin
 f_Doc := nil;
 inherited;
end;//Tf1MultylinkResolver.ClearFields

{$IfEnd} //not Admin AND not Monitorings

end.