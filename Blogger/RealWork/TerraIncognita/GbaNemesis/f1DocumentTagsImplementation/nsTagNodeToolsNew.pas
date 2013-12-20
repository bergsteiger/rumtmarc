unit nsTagNodeToolsNew;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "f1DocumentTagsImplementation"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsTagNodeToolsNew.pas"
// Начат: 22.09.2010 14:51
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Базовые определения предметной области::LegalDomain::f1DocumentTagsImplementation::DocumentTagNodes::nsTagNodeToolsNew
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  DocumentUnit,
  DynamicTreeUnit,
  nevBase,
  k2Base
  ;

function NsFindTagByID(const aTag: InevTag;
  aType: Integer;
  anID: Integer): InevTag;
function NsTagByPath(const aDocument: InevTag;
  const aPath: INodeIndexPath;
  aNewSchool: Boolean): InevTag;

implementation

uses
  SysUtils,
  nsTagNodeTools,
  Block_Const,
  ParaList_Const,
  LeafPara_Const,
  Sub_Const,
  k2Facade,
  BaseTypesUnit,
  Bookmark_Const,
  k2Tags,
  evdTypes,
  CommentPara_Const,
  DecorTextPara_Const,
  LeafParaDecorationsHolder_Const
  ;

// unit methods

function NsFindTagByID(const aTag: InevTag;
  aType: Integer;
  anID: Integer): InevTag;
//#UC START# *4C99D9AF02E2_4C99DF8C0241_var*
var
 l_NeedCheckBookmark : Boolean;
 l_ProviderPrim : IDocumentTextProvider;
 l_AACLike : Boolean;
//#UC END# *4C99D9AF02E2_4C99DF8C0241_var*
var
 l_Path : INodeIndexPath;
 l_List : IFilterList;
 l_Provider : IDocumentTextProvider;
 l_Type : Tk2Type;
begin
//#UC START# *4C99D9AF02E2_4C99DF8C0241_impl*
 Result := nil;
 l_AACLike := false;
 l_ProviderPrim := nil;
 try
  if Supports(aTag, IDocumentTextProvider, l_ProviderPrim) then
   l_Provider := l_ProviderPrim
  else
  if Supports(aTag.Child[0], IDocumentTextProvider, l_ProviderPrim) then
  begin
   l_AACLike := true;
   l_Provider := l_ProviderPrim;
  end;//Supports(aTag.Child[0], IDocumentTextProvider, l_Provider)
 finally
  l_ProviderPrim := nil;
 end;//try..finally
 if (l_Provider <> nil) then
  try
   l_NeedCheckBookmark := false;
   l_Type := k2.TypeTable[aType];
   if l_Type.InheritsFrom(k2_idLeafPara) then
   begin
    try
     l_Provider.FindPara(anID, l_Path);
    except
     on ECannotFindData do
      Exit;
      // - ну нету такого параграфа, это не повод падать
    end;//try..except
   end//l_Type.InheritsFrom(k2_idLeafPara)
   else
   if l_Type.InheritsFrom(k2_idBlock) then
   begin
    if not l_Type.InheritsFrom(k2_idCommentPara) then
    begin
     if (anID = 0) then
     begin
      Result := aTag;
      Exit;
     end//anID = 0
     else
     try
      l_Provider.FindBlockOrSub(anID, l_Path);
     except
      on ECannotFindData do
       l_Path := nil;
       // - ну нету такого блока, это не повод падать
     end;//try..except
    end;//not l_Type.InheritsFrom(k2_idCommentPara)
   end//l_Type.InheritsFrom(k2_idBlock)
   else
   if l_Type.InheritsFrom(k2_idBookmark) then
   begin
    try
     l_Provider.FindPara(anID, l_Path);
    except
     on ECannotFindData do
      l_Path := nil;
      // - ну нету такого параграфа, это не повод падать
    end;//try..except
    l_NeedCheckBookmark := (l_Path <> nil);
   end//l_Type.InheritsFrom(k2_idBookmark)
   else
   if l_Type.InheritsFrom(k2_idSub) then
   begin
    try
     l_Provider.FindBlockOrSub(anID, l_Path);
    except
     on ECannotFindData do
      l_Path := nil;
      // - ну нету такого блока, это не повод падать
    end;//try..except
   end//l_Type.InheritsFrom(k2_idSub)
   else
   begin
    Assert(false);
    Exit;
   end;//l_Type.InheritsFrom(k2_idBlock)
   if l_AACLike then
    if (l_Path <> nil) then
    begin
     if (l_Path.Items[0] = aTag.Child[0].IntA[k2_tiExternalHandle]) then
      l_Path.Items[0] := 0
     else
     begin
      Result := nil;
      Exit;
     end;//l_Path.Items[0] = aTag.Child[0].IntA[k2_tiExternalHandle]
    end;//l_Path <> nil
   Result := nsTagByPath(aTag, l_Path, true);
   if l_NeedCheckBookmark then
   // - надо проверить, что такая закладка на параграфе действительно есть
   begin
(*    if not Result.rAtomEx([k2_tiSubs,
                       k2_tiChildren, k2_tiHandle, ev_sbtBookmark,
                       k2_tiChildren, k2_tiHandle, anID]).IsValid then
    // - на параграфе нет такой закладки
    begin
     Result := nil;
     Assert(false);
    end;//not Result.rAtomEx*)
    // - закомментировано, иначе падает при попытке удаления несуществующей закладки 
   end//l_NeedCheckBookmark
   else
   if (Result <> nil) AND
      not Result.InheritsFrom(aType) then
   // http://mdp.garant.ru/pages/viewpage.action?pageId=254945157&focusedCommentId=255492359#comment-255492359
   begin
    if l_Type.InheritsFrom(k2_idBlock) AND
       Result.InheritsFrom(k2_idLeafPara) then
    // - тут проверим, что блок превратился в Sub
    // http://mdp.garant.ru/pages/viewpage.action?pageId=254945157&focusedCommentId=255492365#comment-255492365
    begin
     if Result.rAtomEx([k2_tiSubs,
                        k2_tiChildren, k2_tiHandle, ev_sbtSub,
                        k2_tiChildren, k2_tiHandle, anID]).IsValid then
     // - действительно на параграфе есть такой саб                   
      Exit;                  
    end;//aType.InheritsFrom(k2_idBlock)
    //if not l_AACLike then
     Assert(false, Result.TagType.AsString + ' несовместим с ' + l_Type.AsString);
    Result := nil;
   end;//..not Result.InheritsFrom(aType)
  finally
   l_Provider := nil;
  end;//try..finally
//#UC END# *4C99D9AF02E2_4C99DF8C0241_impl*
end;//NsFindTagByID

function NsTagByPath(const aDocument: InevTag;
  const aPath: INodeIndexPath;
  aNewSchool: Boolean): InevTag;
//#UC START# *4C72558F00BC_4C99DF8C0241_var*
var
 l_J : Integer;
//#UC END# *4C72558F00BC_4C99DF8C0241_var*
var
 l_Index : Integer;
 l_Child : InevTag;
begin
//#UC START# *4C72558F00BC_4C99DF8C0241_impl*
 if (aPath <> nil) AND (aPath.Count > 0) then
 begin
  Result := aDocument;
  if aNewSchool then
  begin
   for l_Index := 0 to Pred(aPath.Count) do
   begin
    l_Child := Result.Child[aPath[l_Index]];
    if l_Child.IsValid then
    begin
     Result := l_Child;
     if Result.InheritsFrom(k2_idLeafParaDecorationsHolder) then
     begin
      Assert(l_Index = Pred(aPath.Count));
      for l_J := 0 to Pred(Result.ChildrenCount) do
      begin
       l_Child := Result.Child[l_J];
       if not l_Child.InheritsFrom(k2_idDecorTextPara) then
       begin
        Result := l_Child;
        break;
       end;//not l_Child.InheritsFrom(k2_idDecorTextPara)
      end;//for l_J
     end;//Result.InheritsFrom(k2_idLeafParaDecorationsHolder)
    end//l_Child.IsValid
    else
     break;
   end;//for l_Index
  end//aNewSchool
  else
  begin
   for l_Index := Pred(aPath.Count) - 2 downto 0 do
   begin
    l_Child := Result.Child[aPath[l_Index]];
    if l_Child.IsValid then
     Result := l_Child
    else
     break;
   end;//for l_Index
  end;//aNewSchool
 end//aPath <> nil
 else
  Result := nil;
//#UC END# *4C72558F00BC_4C99DF8C0241_impl*
end;//NsTagByPath

end.