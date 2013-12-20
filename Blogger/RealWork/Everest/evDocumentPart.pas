unit evDocumentPart;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evDocumentPart.pas"
// Начат: 18.10.2000 13:01
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::Everest::ParaUtils::evDocumentPart
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevBase,
  evConst,
  l3CustomString
  ;

const
  { Defaults }
 evDocumentPartMargin = evConst.evInchMul div 8;
 evDocumentPartLineSpace = evDocumentPartMargin div 2;
function EvGetBlockName(const aPara: InevTag): Tl3CustomString;
procedure EvDocumentPartSetShowLevel(const aDocument: InevTag;
  aLevel: LongInt;
  const aProcessor: InevProcessor);

implementation

uses
  k2Tags,
  TextPara_Const,
  TreePara_Const,
  Block_Const,
  Document_Const,
  ParaList_Const,
  k2Base
  ;

// unit methods

procedure EvParaListSetLevel(const aList: InevTag;
  aLevel: LongInt;
  aCurrentLevel: LongInt;
  const anOpPack: InevOp);
//#UC START# *4F7D72CD0155_4857B15A000E_var*

 function lp_SetChildLevel(const aChild: InevTag; anIndex: LongInt): Boolean; far;
 begin
  if aChild.InheritsFrom(k2_idParaList) then
   evParaListSetLevel(aChild, aLevel, aCurrentLevel, anOpPack);
  Result := true;
 end;

//#UC END# *4F7D72CD0155_4857B15A000E_var*
begin
//#UC START# *4F7D72CD0155_4857B15A000E_impl*
 with aList do begin
  if InheritsFrom(k2_idBlock) then begin
   if not InheritsFrom(k2_idDocument) then 
    BoolW[k2_tiCollapsed, anOpPack] := (aCurrentLevel >= aLevel);
   Inc(aCurrentLevel);
  end;//k2_idBlock
  if (aCurrentLevel <= aLevel) then
   IterateChildrenF(k2L2TIA(@lp_SetChildLevel));
 end;//with aList
//#UC END# *4F7D72CD0155_4857B15A000E_impl*
end;//EvParaListSetLevel

function EvGetBlockName(const aPara: InevTag): Tl3CustomString;
//#UC START# *4DFF31800349_4857B15A000E_var*
var
 l_Child  : InevTag;
 l_Parent : InevTag;
//#UC END# *4DFF31800349_4857B15A000E_var*
begin
//#UC START# *4DFF31800349_4857B15A000E_impl*
 with aPara.Attr[k2_tiShortName] do
  if IsValid then
  begin
   if (AsObject Is Tl3CustomString) then
    // - хакерская проверка для словарных статей
    Result := AsObject As Tl3CustomString
   else
   if (ChildrenCount > 0) then
   begin
    with Child[0] do
     if IsValid then
      Result := AsObject As Tl3CustomString
     else
      Result := nil;
   end//ChildrenCount > 0
   else
    Result := nil;
   if not Result.Empty then Exit;
  end//IsValid
  else
   Result := nil;
 if aPara.InheritsFrom(k2_idParaList) then
 begin
  l_Parent := aPara;
  while (l_Parent.ChildrenCount > 0) do
  begin
   l_Child := l_Parent.Child[0];
   {$IfDef evUseTreePara}
   if l_Child.InheritsFrom(k2_idTreePara) then
    if (l_Parent.ChildrenCount > 1) then
     l_Child := l_Parent.Child[1]
    else
     Exit;
   {$EndIf evUseTreePara}
   with l_Child.Attr[k2_tiText] do
    if IsValid then
     Result := AsObject As Tl3CustomString
    else
     Result := nil;
   if not Result.Empty then
    Break;
   if not l_Child.InheritsFrom(k2_idParaList) then
    Break;
   l_Parent := l_Child;
  end;//while true
 end// k2_idParaList ..
 else
 if aPara.InheritsFrom(k2_idTextPara) then
 begin
  with aPara.Attr[k2_tiText] do
   if IsValid then
    Result := AsObject As Tl3CustomString;
 end;//aPara.InheritsFrom(k2_idTextPara)
//#UC END# *4DFF31800349_4857B15A000E_impl*
end;//EvGetBlockName

procedure EvDocumentPartSetShowLevel(const aDocument: InevTag;
  aLevel: LongInt;
  const aProcessor: InevProcessor);
//#UC START# *4F7D70BC039D_4857B15A000E_var*
var
 l_OpPack : InevOp;
//#UC END# *4F7D70BC039D_4857B15A000E_var*
begin
//#UC START# *4F7D70BC039D_4857B15A000E_impl*
 if (aProcessor = nil) then
  l_OpPack := nil
 else
  l_OpPack := aProcessor.StartOp;
 try
  evParaListSetLevel(aDocument, aLevel, 0, l_OpPack);
 finally
  l_OpPack := nil;
 end;//try..finally
//#UC END# *4F7D70BC039D_4857B15A000E_impl*
end;//EvDocumentPartSetShowLevel

end.