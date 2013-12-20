unit nsDocumentContainerSub;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1DocumentProcessing"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1DocumentProcessing/nsDocumentContainerSub.pas"
// Начат: 2005/12/03 21:22:17
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Core::Common::F1DocumentProcessing::F1DocumentContainers::TnsDocumentContainerSub
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
  nevBase,
  nsSubPrim,
  nevTools,
  evdTypes,
  l3Interfaces
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsDocumentContainerSub = class(TnsSubPrim)
 private
 // private fields
   f_SubPara : InevTag;
 protected
 // overridden protected methods
   function Tag: InevTag; override;
   function SubPara: InevTag; override;
   procedure ClearFields; override;
 public
 // public methods
   constructor Create(const aDocument: InevTag;
     const aProcessor: InevProcessor;
     anID: Integer;
     aLayerID: Integer); reintroduce;
   class function Make(const aDocument: InevTag;
     const aProcessor: InevProcessor;
     anID: Integer;
     aLayerID: Integer): IevSub; reintroduce;
     {* Сигнатура фабрики TnsDocumentContainerSub.Make }
 end;//TnsDocumentContainerSub
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsTagNodeToolsNew,
  Block_Const,
  CommentPara_Const,
  Sub_Const,
  Mark_Const,
  k2Tags,
  Bookmark_Const
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsDocumentContainerSub

constructor TnsDocumentContainerSub.Create(const aDocument: InevTag;
  const aProcessor: InevProcessor;
  anID: Integer;
  aLayerID: Integer);
//#UC START# *4C9B0D0A035C_4A7AA075008F_var*
//#UC END# *4C9B0D0A035C_4A7AA075008F_var*
begin
//#UC START# *4C9B0D0A035C_4A7AA075008F_impl*
 inherited Create(aDocument, aProcessor, anID, aLayerID);
{ if not IsInIndex then
  CheckExists;}
 // Откручено. Ибо http://mdp.garant.ru/pages/viewpage.action?pageId=217683801&focusedCommentId=217686359#comment-217686359 
//#UC END# *4C9B0D0A035C_4A7AA075008F_impl*
end;//TnsDocumentContainerSub.Create

class function TnsDocumentContainerSub.Make(const aDocument: InevTag;
  const aProcessor: InevProcessor;
  anID: Integer;
  aLayerID: Integer): IevSub;
var
 l_Inst : TnsDocumentContainerSub;
begin
 l_Inst := Create(aDocument, aProcessor, anID, aLayerID);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsDocumentContainerSub.Tag: InevTag;
//#UC START# *4C9B0AD90093_4A7AA075008F_var*
var
 l_Para : InevTag;  
//#UC END# *4C9B0AD90093_4A7AA075008F_var*
begin
//#UC START# *4C9B0AD90093_4A7AA075008F_impl*
 l_Para := SubPara;
 if (l_Para = nil) OR not l_Para.IsValid then
  Result := nil
 else
 if l_Para.InheritsFrom(k2_idBlock) then
  Result := l_Para
 else
  Result := l_Para.rAtomEx([k2_tiSubs,
                          k2_tiChildren, k2_tiHandle, LayerID,
                          k2_tiChildren, k2_tiHandle, ID]);
//#UC END# *4C9B0AD90093_4A7AA075008F_impl*
end;//TnsDocumentContainerSub.Tag

function TnsDocumentContainerSub.SubPara: InevTag;
//#UC START# *4C9B0AEF009B_4A7AA075008F_var*
//#UC END# *4C9B0AEF009B_4A7AA075008F_var*
begin
//#UC START# *4C9B0AEF009B_4A7AA075008F_impl*
 Result := f_SubPara;
 if (Result = nil) then
 begin
  Case LayerID of
   ev_sbtSub :
   begin
    Result := nsFindTagByID(Document, k2_idBlock, ID);
    if (Result = nil) then
     Result := nsFindTagByID(Document, k2_idSub, ID);
   end;//ev_sbtSub
   ev_sbtBookmark :
    Result := nsFindTagByID(Document, k2_idBookmark, ID);
   ev_sbtMark :
   begin
    Result := nsFindTagByID(Document, k2_idCommentPara, ID);
(*    if (Result = nil) then
     Result := nsFindTagByID(Document, k2_idMark, ID);*)
// - всё равно мы это искать не умеем, а nsFindTagByID стоит Assert
//   ну и например тест K278135821 - падает
   end;//ev_sbtMark
   else
    Result := nsFindTagByID(Document, k2_idSub, ID);
  end;//Case LayerID
  f_SubPara := Result;
 end;//Result = nil
//#UC END# *4C9B0AEF009B_4A7AA075008F_impl*
end;//TnsDocumentContainerSub.SubPara

procedure TnsDocumentContainerSub.ClearFields;
 {-}
begin
 f_SubPara := nil;
 inherited;
end;//TnsDocumentContainerSub.ClearFields

{$IfEnd} //not Admin AND not Monitorings

end.