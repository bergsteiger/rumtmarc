unit nsLeafParaDecorationsHolder;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsLeafParaDecorationsHolder.pas"
// Начат: 25.11.2010 18:50
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::TagDataProviders::TnsLeafParaDecorationsHolder
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  nevBase,
  LeafParaDecorationsHolder_Const,
  k2Interfaces,
  k2Prim,
  k2BaseTypes,
  l3Types,
  l3Interfaces,
  evNative_Schema
  ;

type
 TnsLeafParaDecorationsHolder = class(LeafParaDecorationsHolderTagClass)
 protected
 // overridden protected methods
   function DeleteChildPrim(anIndex: Integer;
    const aChild: Ik2Tag;
    const aContext: Ik2Op): Boolean; override;
   procedure CheckChildInsert(var anIndex: Integer;
     var aChild: Ik2Tag;
     const anOp: Ik2Op); override;
 public
 // public methods
   constructor Create; reintroduce;
   class function Make: InevTag; reintroduce;
     {* Сигнатура фабрики TnsLeafParaDecorationsHolder.Make }
 end;//TnsLeafParaDecorationsHolder

implementation

uses
  l3Base,
  CommentPara_Const,
  F1TagDataProviderInterface,
  SysUtils,
  nsNativeCommentPara,
  k2Tags
  ;

// start class TnsLeafParaDecorationsHolder

constructor TnsLeafParaDecorationsHolder.Create;
//#UC START# *4CEFDCD80253_4CEFD73403E4_var*
//#UC END# *4CEFDCD80253_4CEFD73403E4_var*
begin
//#UC START# *4CEFDCD80253_4CEFD73403E4_impl*
 inherited Create(k2_typLeafParaDecorationsHolder);
//#UC END# *4CEFDCD80253_4CEFD73403E4_impl*
end;//TnsLeafParaDecorationsHolder.Create

class function TnsLeafParaDecorationsHolder.Make: InevTag;
var
 l_Inst : TnsLeafParaDecorationsHolder;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsLeafParaDecorationsHolder.DeleteChildPrim(anIndex: Integer;
  const aChild: Ik2Tag;
  const aContext: Ik2Op): Boolean;
//#UC START# *4C6CE735026E_4CEFD73403E4_var*
var
 l_Sink : If1CommentSink;
//#UC END# *4C6CE735026E_4CEFD73403E4_var*
begin
//#UC START# *4C6CE735026E_4CEFD73403E4_impl*
 Assert((aContext <> nil) OR
        not aChild.InheritsFrom(k2_idCommentPara),
        'http://mdp.garant.ru/pages/viewpage.action?pageId=265391680 в TkwEditorDeleteUserComment.DoIt подавали nil и попадали в ветку else');
 if (aContext <> nil) AND aChild.InheritsFrom(k2_idCommentPara) then
 begin
  if Supports(aChild.Box, If1CommentSink, l_Sink) then
   try
    l_Sink.State := l_Sink.State - [ns_nsChanged];
    l_Sink.Store(nil);
    // - типа чтобы удалить комментарий из базы
    Result := inherited DeleteChildPrim(anIndex, aChild, aContext);
    Assert(Result);
    // - комментарий из базы уже удалили, поэтому мы не можем не удалить его из текста 
   finally
    l_Sink := nil;
   end//try..finally
  else
   Result := inherited DeleteChildPrim(anIndex, aChild, aContext);
 end//aContext <> nil
 else
  Result := inherited DeleteChildPrim(anIndex, aChild, aContext);
//#UC END# *4C6CE735026E_4CEFD73403E4_impl*
end;//TnsLeafParaDecorationsHolder.DeleteChildPrim

procedure TnsLeafParaDecorationsHolder.CheckChildInsert(var anIndex: Integer;
  var aChild: Ik2Tag;
  const anOp: Ik2Op);
//#UC START# *4CED66B8005F_4CEFD73403E4_var*
var
 l_Obj : TObject;
 l_Tag : InevTag;
//#UC END# *4CED66B8005F_4CEFD73403E4_var*
begin
//#UC START# *4CED66B8005F_4CEFD73403E4_impl*
 inherited;
 if aChild.IsValid AND aChild.InheritsFrom(k2_idCommentPara) then
 begin
  l_Obj := aChild.AsObject;
  if not l_Obj.InheritsFrom(TnsNativeCommentPara) then
  begin
   l_Tag := TnsNativeCommentPara.Make(aChild);
   Assert(anIndex > 0);
   l_Tag.IntA[k2_tiHandle] := Self.Child[anIndex - 1].IntA[k2_tiHandle];
   aChild := l_Tag;
  end//not l_Obj.InheritsFrom(TnsNativeCommentPara)
  else
   aChild.MarkModified;
 end;//aChild.IsValid
//#UC END# *4CED66B8005F_4CEFD73403E4_impl*
end;//TnsLeafParaDecorationsHolder.CheckChildInsert

end.