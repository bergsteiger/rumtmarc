unit nsDictionDocumentContainer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "DictionLikeDocumentProcessing"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/DictionLikeDocumentProcessing/nsDictionDocumentContainer.pas"
// Начат: 19.11.2010 14:43
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Встроенные продукты::DictionLike::DictionLikeDocumentProcessing::DocumentContainers::TnsDictionDocumentContainer
//
// Контейнер документа толкового словаря
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
  eeDocumentContainer,
  DocumentUnit,
  nevTools,
  DocumentInterfaces,
  F1TagDataProviderInterface,
  afwInterfaces,
  l3Interfaces,
  nevBase,
  k2Base,
  Classes,
  nevPrintableDocumentContainer,
  l3IID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 _nsDocumentContainer_Parent_ = TeeDocumentContainer;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\F1DocumentProcessing\nsDocumentContainer.imp.pas}
 TnsDictionDocumentContainer = class(_nsDocumentContainer_)
  {* Контейнер документа толкового словаря }
 protected
 // overridden protected methods
   function GetDocument: InevTag; override;
 end;//TnsDictionDocumentContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Document_Const,
  Block_Const,
  k2Tags,
  nsF1DocumentTagNode,
  DictEntry_Const,
  SysUtils,
  nsIDocumentDataObject,
  nsDocumentPreview,
  nsHAFPainter,
  LoggingInterfaces,
  nsDocumentPrintEvent,
  deDocInfo,
  DataAdapter,
  evdTypes,
  nsTypes,
  LeafPara_Const,
  nsTagString,
  evParaTools,
  afwFacade
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

type _Instance_R_ = TnsDictionDocumentContainer;

{$Include w:\garant6x\implementation\Garant\GbaNemesis\F1DocumentProcessing\nsDocumentContainer.imp.pas}

// start class TnsDictionDocumentContainer

function TnsDictionDocumentContainer.GetDocument: InevTag;
//#UC START# *47F27DA80172_4CE662B803DA_var*
var
 l_D : InevTag;
 l_ID : Integer;
 l_Index : Integer;
 l_B : InevTag;
 l_P : IDocumentTextProvider;
//#UC END# *47F27DA80172_4CE662B803DA_var*
begin
//#UC START# *47F27DA80172_4CE662B803DA_impl*
 Result := inherited GetDocument;
 if (Result = nil) then
 begin
  Result := k2_typDictEntry.MakeTag;
  //Result := k2_typDocument.MakeTag;
  try
   l_ID := Ord(f_DocumentInfo.Language) + 101;
   f_DocumentInfo.Doc.GetTextProvider(false, l_P);
   Assert(l_P <> nil);
   l_D := TnsF1DocumentTagNode.Make(l_P);
   Assert(l_D <> nil);
   Result.IntA[k2_tiExternalHandle] := l_D.IntA[k2_tiExternalHandle];
   with l_D do
   begin
    Assert(IsValid);
    for l_Index := 0 to Pred(ChildrenCount) do
    begin
     l_B := Child[l_Index];
     if l_B.InheritsFrom(k2_idBlock) then
      if (l_B.IntA[k2_tiHandle] = l_ID) then
      begin
       Result.AddChild(l_B);
       Assert(l_B.Owner.IsSame(Result));
       Exit;
      end;//l_B.IntA[k2_tiHandle] = l_ID
    end;//for l_Index
    Assert(false, 'Не найден блок языка - ' + IntToStr(l_ID));
   end;//with l_D
  finally
   Document := Result;
   // - это СПЕЦИАЛЬНО ПОСЛЕ создания оглавления
  end;//try..finally
 end;//Result = nil
//#UC END# *47F27DA80172_4CE662B803DA_impl*
end;//TnsDictionDocumentContainer.GetDocument

{$IfEnd} //not Admin AND not Monitorings

end.