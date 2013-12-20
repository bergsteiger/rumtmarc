unit nscCustomChatMemo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Nemesis/nscCustomChatMemo.pas"
// Начат: 18.08.2009 14:48
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Nemesis::Memos::TnscCustomChatMemo
//
// Мемо-поле для чата F1
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis)}
uses
  nevBase,
  nevTools,
  evInternalInterfaces,
  evCustomChatMemo,
  evCustomMemo,
  evEditorWithOperations
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}
type
 TnscCustomChatMemo = class(TevCustomChatMemo, IevF1LikeEditor)
  {* Мемо-поле для чата F1 }
 protected
 // realized methods
   function CanInsertParaOnMove: Boolean;
     {* Можно ли вставлять параграфы при движении курсора }
   function IsInReadOnlyPara(const aPara: InevPara;
    NeedDeleteIfReadOnly: Boolean): Boolean;
     {* Находимся ли в параграфе, в котором запрещено редактирование }
 protected
 // overridden protected methods
   procedure InitFields; override;
   function DoBreakPara(aDrawLines: Boolean;
    const anOp: InevOp): Boolean; override;
   function TextSourceClass: RevCustomMemoTextSource; override;
   function DefineProvideOperations: TevEditorProvideOperationTypes; override;
     {* Какие операции публикуются компонентом. }
 public
 // overridden public methods
   function Paste: Boolean; override;
     {* вставить из буфера обмена. }
 protected
 // protected methods
   function ValidateInsertionPoint: Boolean;
     {* Проверить точку вставки на возможность оной, и если невозможно, то сместить курсор }
   function IsParaInF1Doc(const aPara: InevTag;
     out theDoc: InevPara): Boolean;
     {* Находится параграф ли в документе, скопированном из F1 }
   function IsInF1Doc(out theDoc: InevPara): Boolean;
     {* Находимся ли в документе, скопированном из F1 }
 end;//TnscCustomChatMemo
{$IfEnd} //Nemesis

implementation

{$If defined(Nemesis)}
uses
  evOp,
  TextPara_Const,
  k2Tags,
  Document_Const,
  Para_Const,
  evParaTools,
  nscCustomChatMemoTextSource,
  evMsgCode
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}

// start class TnscCustomChatMemo

function TnscCustomChatMemo.ValidateInsertionPoint: Boolean;
//#UC START# *4A8C12F70348_4A8A871B02ED_var*
//#UC END# *4A8C12F70348_4A8A871B02ED_var*
var
 l_Doc : InevPara;
 l_Point : InevBasePoint;
 l_Op : InevOp;
begin
//#UC START# *4A8C12F70348_4A8A871B02ED_impl*
 Result := true;
 if IsInF1Doc(l_Doc) then
 begin
  l_Op := StartOp;
  try
   l_Point := l_Doc.MakePoint;
   l_Point.Move(View, ev_ocBottomRight, l_Op);
   l_Point := l_Point.PointToParent;
   l_Point.Move(View, ev_ocParaDown, l_Op);
   InevSelection(Selection).SelectPoint(l_Point.PointToParentByLevel(MaxInt), false);
   if IsInF1Doc(l_Doc) then
   // - попали в ещё один документ
   begin
    l_Doc.OwnerPara.Modify.InsertDefaultPara(l_Doc.PID, l_Op);
    Selection.Cursor.Move(View, ev_ocParaUp, l_Op);
   end;//IsInF1Doc(l_Doc)
   with Selection.Cursor.MostInner do
    if Obj.InheritsFrom(k2_idTextPara) AND
       not evHasText(Obj^) then
     Result := false;  
  finally
   l_Op := nil;
  end;//try..finally
 end;//evInPara(Selection.Cursor.MostInner.Obj^, k2_idDocument, l_Doc)
//#UC END# *4A8C12F70348_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.ValidateInsertionPoint

function TnscCustomChatMemo.IsParaInF1Doc(const aPara: InevTag;
  out theDoc: InevPara): Boolean;
//#UC START# *4A8C16790143_4A8A871B02ED_var*
//#UC END# *4A8C16790143_4A8A871B02ED_var*
var
 l_Doc : InevTag;
begin
//#UC START# *4A8C16790143_4A8A871B02ED_impl*
 Result := false;
 if evInPara(aPara, k2_idDocument, l_Doc) then
 begin
  if l_Doc.Owner.InheritsFrom(k2_idPara) AND
     (l_Doc.rLong(k2_tiExternalHandle, -1) > 0) then
  begin
   if not l_Doc.QT(InevPara, theDoc) then
    Assert(false);
   Result := true;
  end;//not l_Doc.Owner.IneritsFrom(k2_idPara)..
 end;//evInPara(aPara, k2_idDocument, l_Doc)
//#UC END# *4A8C16790143_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.IsParaInF1Doc

function TnscCustomChatMemo.IsInF1Doc(out theDoc: InevPara): Boolean;
//#UC START# *4A8C249D02F4_4A8A871B02ED_var*
//#UC END# *4A8C249D02F4_4A8A871B02ED_var*
begin
//#UC START# *4A8C249D02F4_4A8A871B02ED_impl*
 Result := IsParaInF1Doc(Selection.Cursor.MostInner.Obj^, theDoc);
//#UC END# *4A8C249D02F4_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.IsInF1Doc

function TnscCustomChatMemo.CanInsertParaOnMove: Boolean;
//#UC START# *4A8C083300C3_4A8A871B02ED_var*
//#UC END# *4A8C083300C3_4A8A871B02ED_var*
begin
//#UC START# *4A8C083300C3_4A8A871B02ED_impl*
 Result := true;
//#UC END# *4A8C083300C3_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.CanInsertParaOnMove

function TnscCustomChatMemo.IsInReadOnlyPara(const aPara: InevPara;
  NeedDeleteIfReadOnly: Boolean): Boolean;
//#UC START# *4A8C24130193_4A8A871B02ED_var*
var
 l_Doc : InevPara;
//#UC END# *4A8C24130193_4A8A871B02ED_var*
begin
//#UC START# *4A8C24130193_4A8A871B02ED_impl*
 Result := IsParaInF1Doc(aPara, l_Doc);
 if Result then
  if NeedDeleteIfReadOnly then
   l_Doc.Edit.Delete(false, StartOp(ev_msgDeletePara));
//#UC END# *4A8C24130193_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.IsInReadOnlyPara

procedure TnscCustomChatMemo.InitFields;
//#UC START# *47A042E100E2_4A8A871B02ED_var*
//#UC END# *47A042E100E2_4A8A871B02ED_var*
begin
//#UC START# *47A042E100E2_4A8A871B02ED_impl*
 inherited;
 AutoSelect := false;
//#UC END# *47A042E100E2_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.InitFields

function TnscCustomChatMemo.DoBreakPara(aDrawLines: Boolean;
  const anOp: InevOp): Boolean;
//#UC START# *482BFCBF01F0_4A8A871B02ED_var*
var
 l_Op : InevOp;
//#UC END# *482BFCBF01F0_4A8A871B02ED_var*
begin
//#UC START# *482BFCBF01F0_4A8A871B02ED_impl*
 l_Op := StartOp(ev_msgInsertPara);
 try
  if not ValidateInsertionPoint then
   Result := true
  else
   Result := inherited DoBreakPara(aDrawLines, anOp);
 finally
  l_Op := nil;
 end;//try..finally
//#UC END# *482BFCBF01F0_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.DoBreakPara

function TnscCustomChatMemo.TextSourceClass: RevCustomMemoTextSource;
//#UC START# *482D9D1701E0_4A8A871B02ED_var*
//#UC END# *482D9D1701E0_4A8A871B02ED_var*
begin
//#UC START# *482D9D1701E0_4A8A871B02ED_impl*
 Result := TnscCustomChatMemoTextSource;
//#UC END# *482D9D1701E0_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.TextSourceClass

function TnscCustomChatMemo.DefineProvideOperations: TevEditorProvideOperationTypes;
//#UC START# *48735C4A03C3_4A8A871B02ED_var*
//#UC END# *48735C4A03C3_4A8A871B02ED_var*
begin
//#UC START# *48735C4A03C3_4A8A871B02ED_impl*
 Result := inherited DefineProvideOperations - [potPrint, potTable, potFontStyle];
//#UC END# *48735C4A03C3_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.DefineProvideOperations

function TnscCustomChatMemo.Paste: Boolean;
//#UC START# *48C7C1A2010C_4A8A871B02ED_var*
//#UC END# *48C7C1A2010C_4A8A871B02ED_var*
begin
//#UC START# *48C7C1A2010C_4A8A871B02ED_impl*
 ValidateInsertionPoint;
 Result := inherited Paste;
//#UC END# *48C7C1A2010C_4A8A871B02ED_impl*
end;//TnscCustomChatMemo.Paste

{$IfEnd} //Nemesis

end.