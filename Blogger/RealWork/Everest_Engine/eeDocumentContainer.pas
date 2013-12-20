unit eeDocumentContainer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest Engine"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest_Engine/eeDocumentContainer.pas"
// Начат: 02.07.2003 22:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi For F1::Everest Engine::eeDocumentContainer::TeeDocumentContainer
//
// Контейнер документа.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest_Engine\eeDefine.inc}

interface

uses
  eeDocumentContainerPrim,
  nevTools,
  k2TagGen,
  nevBase
  ;

type
 TeeDocumentContainer = class(TeeDocumentContainerPrim)
  {* Контейнер документа. }
 protected
 // overridden protected methods
   function GetGeneratorPrim(const aView: InevView;
    const aGeneratorTarget: IUnknown): Tk2TagGenerator; override;
   procedure DoGetWriter(aFormat: TnevFormat;
    anInternal: Boolean;
    var theWriter: Tk2TagGenerator;
    aCodePage: Integer); override;
 end;//TeeDocumentContainer

implementation

uses
  evCommentParaDecorator,
  eeProcessor,
  evLeafParaDecorationsHolderEliminator,
  evBlocksEliminator,
  evdPageParamsFilter,
  evOp,
  evParaTools,
  CommentPara_Const,
  evTypes,
  evGeneratorsInterfaces,
  SysUtils,
  evUserCommentFilter,
  evCommentDecorator,
  evNestedDocumentEliminator,
  afwFacade,
  evCommentParaAdder,
  evPageBreakEliminator,
  evControlParaFilter,
  evTagsListFilter,
  k2Tags,
  LeafPara_Const,
  evBlocksButNotCommentsEliminator,
  evStrictContentsElementEliminator
  ;

// start class TeeDocumentContainer

function TeeDocumentContainer.GetGeneratorPrim(const aView: InevView;
  const aGeneratorTarget: IUnknown): Tk2TagGenerator;
//#UC START# *47F217080359_4680E83D00C8_var*
var
 l_Point     : InevBasePoint;
 l_Finish    : InevBasePoint;
 l_InComment : Boolean;
 l_Range     : InevRange;
 l_Next      : InevBasePoint;
 l_InsertToEditor : Boolean;
 l_NJG            : IevJoinGenerator;
//#UC END# *47F217080359_4680E83D00C8_var*
begin
//#UC START# *47F217080359_4680E83D00C8_impl*
 Result := inherited GetGeneratorPrim(aView, aGeneratorTarget);
 if (Result <> nil) then
 begin
  l_InComment := false;
  l_InsertToEditor := false;
  if Supports(aGeneratorTarget, InevRange, l_Range) {AND
     not l_Range.Collapsed}
     // - это проверка на то, что содержимое выделения уже удаляли
     then
   try
    l_InsertToEditor := true;
    l_Range.GetBorderPoints(l_Point, l_Finish);
    if (l_Point <> nil) then
    begin
     if (l_Finish = nil) then
      l_Point := nil
     else
     if not l_Point.MostInner.Obj.IsSame(l_Finish.MostInner.Obj^) then
      l_Point := nil;
    end//l_Point <> nil
    else
    if l_Range.Obj.InheritsFrom(k2_idCommentPara) then
     l_InComment := true;
   finally
    l_Range := nil;
   end//try..finally
  else//Supports(aGeneratorTarget, InevRange, l_Range)
   l_Point := nil;
  if (l_Point <> nil) OR
     Supports(aGeneratorTarget, InevBasePoint, l_Point) then
   // - если это не курсор, то наверное и дергаться не стоит
   try
    l_InsertToEditor := True;
    l_InComment := evInPara(l_Point.MostInner.Obj^, k2_idCommentPara);
    if not l_InComment then
    begin
     l_Next := l_Point.ClonePoint(aView);
     if l_Next.MostInner.Move(aView, ev_ocNextParaTopLeft{ev_ocParaDown}) then
     begin
      if evInPara(l_Next.MostInner.Obj^, k2_idCommentPara) then
      begin
       l_InComment := true;
       l_Point.AssignPoint(aView, l_Next);
       FreeAndNil(Result);
       Result := inherited GetGeneratorPrim(aView, l_Point);
       if Supports(Result, IevJoinGenerator, l_NJG) then
        try
         l_NJG.NeedJoin := false;
        finally
         l_NJG := nil;
        end;//try..finally
      end;//evInPara(l_Next.MostInner.Target, k2_idCommentPara)
     end;//l_Next.Move(ev_ocParaDown)
    end;//not l_InComment
   finally
    l_Point := nil;
   end;//try..finally
  if (aGeneratorTarget <> nil) then
  begin
   if l_InsertToEditor then
   // http://mdp.garant.ru/pages/viewpage.action?pageId=274825304
    with TevTagsListFilter do
     Result := SetTo(
                MakeAttrList(k2_idLeafPara,
                             [k2_tiHandle
                             , k2_tiSubs
                             // http://mdp.garant.ru/pages/viewpage.action?pageId=274825304&focusedCommentId=288788625#comment-288788625
                             ]),
                Result)
   else
    with TevTagsListFilter do
     Result := SetTo(
                MakeAttrList(k2_idLeafPara,
                             [k2_tiHandle
                             {, k2_tiSubs}
                             // http://mdp.garant.ru/pages/viewpage.action?pageId=274825304&focusedCommentId=288788625#comment-288788625
                             ]),
                Result);
    // - фильтр, отрезающий идентификаторы параграфов и прочую хренотень
   //Result := TevParaIDEliminator.SetTo(Result);
    // - фильтр, отрезающий идентификаторы параграфов
   if l_InsertToEditor AND not l_InComment then
    Result := TevCommentParaAdder.SetTo(Self, Result);
    // - фильтр, заворачивающий любой текст в комментарий пользователя
   Result := TevPageBreakEliminator.SetTo(Result);
   // - Фильтр превращающий контролы из КЗ в обычные параграфы
   Result := TevControlParaFilter.SetTo(Result);
   // - фильтр, отрезающий разрывы страниц и разделов
   if l_InsertToEditor then
   begin
    if l_InComment then
     Result := TevBlocksEliminator.SetTo(Result)
     // - фильтр, отрезающий блоки
    else
     Result := TevBlocksButNotCommentsEliminator.SetTo(Result);
     // - фильтр, отрезающий блоки, но не комментарии
    TevStrictContentsElementEliminator.SetTo(Result); 
   end;//l_InsertToEditor
  end;//aGeneratorTarget <> nil
 end;//Result <> nil
//#UC END# *47F217080359_4680E83D00C8_impl*
end;//TeeDocumentContainer.GetGeneratorPrim

procedure TeeDocumentContainer.DoGetWriter(aFormat: TnevFormat;
  anInternal: Boolean;
  var theWriter: Tk2TagGenerator;
  aCodePage: Integer);
//#UC START# *483E6C150277_4680E83D00C8_var*
//#UC END# *483E6C150277_4680E83D00C8_var*
begin
//#UC START# *483E6C150277_4680E83D00C8_impl*
 inherited;
 if not anInternal then
 begin
  //TddSectionRepairFilter.SetTo(theWriter);
  if (afw.Application <> nil) AND
     (afw.Application.PrintManager <> nil) then
   TevdPageParamsFilter.SetTo(afw.Application.PrintManager.PageSetup,
                              nil, theWriter);
  if (aFormat <> cf_EverestBin) and
     (aFormat <> cf_EverestBinForce) and
     (aFormat <> cf_EverestTxt) then
  begin
(*   TevCommentParaDecorator.SetTo(theWriter);
   TddVersionCommentDecorator.SetTo(theWriter);*)
   TevCommentDecorator.SetTo(theWriter);
   TevUserCommentFilter.SetTo(theWriter);
   TevNestedDocumentEliminator.SetTo(theWriter);
  end;//aFormat <> cf_EverestBin..
  TevLeafParaDecorationsHolderEliminator.SetTo(theWriter);
 end;//not anInternal
//#UC END# *483E6C150277_4680E83D00C8_impl*
end;//TeeDocumentContainer.DoGetWriter

end.