unit nsBaseTagNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsBaseTagNode.pas"
// Начат: 19.08.2010 14:33
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::DocumentTagNodes::TnsBaseTagNode
//
// Базовая реализация тега на уровне оболочки
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  k2Interfaces,
  k2HugeTagObject,
  nevTools,
  k2Prim
  ;

type
 TnsBaseTagNode = {abstract} class(Tk2HugeTagObject)
  {* Базовая реализация тега на уровне оболочки }
 protected
 // overridden protected methods
   function DeleteChildPrim(anIndex: Integer;
    const aChild: Ik2Tag;
    const aContext: Ik2Op): Boolean; override;
   function AddChild(var aChild: Ik2Tag;
    const aContext: Ik2Op = nil): Integer; override;
   procedure InsertChild(anIndex: Integer;
    var aChild: Ik2Tag;
    const aContext: Ik2Op = nil); override;
 protected
 // protected methods
   procedure BaseInsertChild(anIndex: Integer;
     var aChild: Ik2Tag;
     const aContext: Ik2Op);
   function BaseDeleteChild(anIndex: Integer;
     const aContext: Ik2Op): Boolean;
   function Op(aCode: Integer;
     aNeedUndo: Boolean): Ik2Op;
   procedure ChildInserted(const aChild: Ik2Tag;
    const anOp: Ik2Op); virtual;
   procedure CheckChildDelete(anIndex: Integer;
    const aChild: Ik2Tag); virtual;
   procedure DoInsertChild(anIndex: Integer;
    var aChild: Ik2Tag;
    const aContext: Ik2Op); virtual;
   function DoDeleteChild(anIndex: Integer;
    const aContext: Ik2Op): Boolean; virtual;
 end;//TnsBaseTagNode

implementation

// start class TnsBaseTagNode

procedure TnsBaseTagNode.BaseInsertChild(anIndex: Integer;
  var aChild: Ik2Tag;
  const aContext: Ik2Op);
//#UC START# *4C6CED6D03CC_467FCA4701F9_var*
//#UC END# *4C6CED6D03CC_467FCA4701F9_var*
begin
//#UC START# *4C6CED6D03CC_467FCA4701F9_impl*
 inherited InsertChild(anIndex, aChild, aContext);
//#UC END# *4C6CED6D03CC_467FCA4701F9_impl*
end;//TnsBaseTagNode.BaseInsertChild

function TnsBaseTagNode.BaseDeleteChild(anIndex: Integer;
  const aContext: Ik2Op): Boolean;
//#UC START# *4C6CEDA601C5_467FCA4701F9_var*
//#UC END# *4C6CEDA601C5_467FCA4701F9_var*
begin
//#UC START# *4C6CEDA601C5_467FCA4701F9_impl*
 Result := inherited DeleteChildPrim(anIndex, nil, aContext);
//#UC END# *4C6CEDA601C5_467FCA4701F9_impl*
end;//TnsBaseTagNode.BaseDeleteChild

function TnsBaseTagNode.Op(aCode: Integer;
  aNeedUndo: Boolean): Ik2Op;
//#UC START# *4C6CEDD103A4_467FCA4701F9_var*
//#UC END# *4C6CEDD103A4_467FCA4701F9_var*
var
 l_Para : InevPara;
 l_Cont : InevDocumentContainer;
begin
//#UC START# *4C6CEDD103A4_467FCA4701F9_impl*
 if not QT(InevPara, l_Para) then
  Assert(false);
 l_Cont := l_Para.DocumentContainer;
 if (l_Cont = nil) then
  Result := nil
 else
 begin
  Result := l_Cont.Processor.StartOp(aCode);
  if (Result <> nil) then
   Result.SaveUndo := aNeedUndo;
 end;//l_Cont = nil
//#UC END# *4C6CEDD103A4_467FCA4701F9_impl*
end;//TnsBaseTagNode.Op

procedure TnsBaseTagNode.ChildInserted(const aChild: Ik2Tag;
  const anOp: Ik2Op);
//#UC START# *4C6CECF7035E_467FCA4701F9_var*
//#UC END# *4C6CECF7035E_467FCA4701F9_var*
begin
//#UC START# *4C6CECF7035E_467FCA4701F9_impl*
//#UC END# *4C6CECF7035E_467FCA4701F9_impl*
end;//TnsBaseTagNode.ChildInserted

procedure TnsBaseTagNode.CheckChildDelete(anIndex: Integer;
  const aChild: Ik2Tag);
//#UC START# *4C6CED10018F_467FCA4701F9_var*
//#UC END# *4C6CED10018F_467FCA4701F9_var*
begin
//#UC START# *4C6CED10018F_467FCA4701F9_impl*
//#UC END# *4C6CED10018F_467FCA4701F9_impl*
end;//TnsBaseTagNode.CheckChildDelete

procedure TnsBaseTagNode.DoInsertChild(anIndex: Integer;
  var aChild: Ik2Tag;
  const aContext: Ik2Op);
//#UC START# *4C6CED28025A_467FCA4701F9_var*
//#UC END# *4C6CED28025A_467FCA4701F9_var*
begin
//#UC START# *4C6CED28025A_467FCA4701F9_impl*
 BaseInsertChild(anIndex, aChild, aContext);
//#UC END# *4C6CED28025A_467FCA4701F9_impl*
end;//TnsBaseTagNode.DoInsertChild

function TnsBaseTagNode.DoDeleteChild(anIndex: Integer;
  const aContext: Ik2Op): Boolean;
//#UC START# *4C6CED4C009B_467FCA4701F9_var*
//#UC END# *4C6CED4C009B_467FCA4701F9_var*
begin
//#UC START# *4C6CED4C009B_467FCA4701F9_impl*
 Result := BaseDeleteChild(anIndex, aContext);
//#UC END# *4C6CED4C009B_467FCA4701F9_impl*
end;//TnsBaseTagNode.DoDeleteChild

function TnsBaseTagNode.DeleteChildPrim(anIndex: Integer;
  const aChild: Ik2Tag;
  const aContext: Ik2Op): Boolean;
//#UC START# *4C6CE735026E_467FCA4701F9_var*
//#UC END# *4C6CE735026E_467FCA4701F9_var*
begin
//#UC START# *4C6CE735026E_467FCA4701F9_impl*
 CheckChildDelete(anIndex, aChild);
 Result := DoDeleteChild(anIndex, aContext);
//#UC END# *4C6CE735026E_467FCA4701F9_impl*
end;//TnsBaseTagNode.DeleteChildPrim

function TnsBaseTagNode.AddChild(var aChild: Ik2Tag;
  const aContext: Ik2Op = nil): Integer;
//#UC START# *4C6CE8F703AD_467FCA4701F9_var*
//#UC END# *4C6CE8F703AD_467FCA4701F9_var*
begin
//#UC START# *4C6CE8F703AD_467FCA4701F9_impl*
 Result := inherited AddChild(aChild, aContext);
 ChildInserted(aChild, aContext);
//#UC END# *4C6CE8F703AD_467FCA4701F9_impl*
end;//TnsBaseTagNode.AddChild

procedure TnsBaseTagNode.InsertChild(anIndex: Integer;
  var aChild: Ik2Tag;
  const aContext: Ik2Op = nil);
//#UC START# *4C6CE91903A5_467FCA4701F9_var*
//#UC END# *4C6CE91903A5_467FCA4701F9_var*
begin
//#UC START# *4C6CE91903A5_467FCA4701F9_impl*
 DoInsertChild(anIndex, aChild, aContext);
 ChildInserted(aChild, aContext);
//#UC END# *4C6CE91903A5_467FCA4701F9_impl*
end;//TnsBaseTagNode.InsertChild

end.