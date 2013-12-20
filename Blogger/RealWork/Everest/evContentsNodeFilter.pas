unit evContentsNodeFilter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Everest/evContentsNodeFilter.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ContentsTree::TevContentsNodeFilter
//
// фильтр оглваления документа
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Interfaces,
  l3Base,
  k2TagList,
  nevTools,
  evInternalInterfaces,
  nevBase
  ;

type
 TevContentsNodeFilter = class(Tl3Base, InevContentsNodeFilter)
  {* фильтр оглваления документа }
 private
 // private fields
   f_FilteredNodeFlag : Integer;
   f_Document : Ik2Tag;
   f_FilterTagList : Tk2TagList;
    {* Список удаленных тегов.}
 private
 // private methods
   function NeedColor(const aNode: InevNode): Boolean;
 protected
 // realized methods
   procedure ColorNode(const aNode: InevNode);
   function pm_GetFilteredNodeFlag: Integer;
   procedure pm_SetFilteredNodeFlag(aValue: Integer);
   procedure CheckTagList;
   procedure AddFilterTag(const aTag: InevTag);
   procedure ChangeDocument(const aDocument: InevTag);
   function NeedCreate(const aTag: InevTag): Boolean;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // public methods
   constructor Create(const aDocument: Ik2Tag); reintroduce; virtual;
   class function Make(const aDocument: Ik2Tag): InevContentsNodeFilter;
 end;//TevContentsNodeFilter

implementation

uses
  evdTypes,
  l3TreeInterfaces,
  SysUtils,
  k2Tags,
  l3Bits,
  l3Types,
  l3MinMax
  ;

// start class TevContentsNodeFilter

function TevContentsNodeFilter.NeedColor(const aNode: InevNode): Boolean;
//#UC START# *4ECA574B02DB_4DFEF1DF009F_var*
var
 l_Level         : Integer;
 l_ParentNode    : InevNode;
 l_CurLevel      : Integer;
 l_ContentsLevel : Integer;
 l_Part          : IevDocumentPart;
//#UC END# *4ECA574B02DB_4DFEF1DF009F_var*
begin
//#UC START# *4ECA574B02DB_4DFEF1DF009F_impl*
 Result := False;
 with f_Document.Attr[k2_tiContentsLevel6] do
  if IsValid then
   l_ContentsLevel := AsLong
  else
   l_ContentsLevel := 0;
 if (l_ContentsLevel > 0) then
 begin
  Inc(l_ContentsLevel);
  l_CurLevel := aNode.GetLevel;
  l_ParentNode := aNode;
  l_Level := 0;
  while l_ParentNode.GetLevel > 1 do
  begin
   if (l_ParentNode <> nil) and Supports(l_ParentNode, IevDocumentPart, l_Part) then
    try
     if (l_Part.ContentsRec.rLevel6 < Pred(High(Long))) then
     begin
      l_Level := l_ParentNode.GetLevel;
      l_Level := l_Level + l_Part.ContentsRec.rLevel6;
     end; // if (l_Part.ContentsRec.rLevel6 < Pred(High(Long))) then
    finally
     l_Part := nil;
    end;//try..finally
   l_ContentsLevel := Max(l_Level, l_ContentsLevel);
   l_ParentNode := l_ParentNode.ParentNode;
  end; // while l_ParentNode.GetLevel > 1 do
  if (l_CurLevel > l_ContentsLevel) then
   Result := True;
 end // if l_ContentsLevel then
 else
  Result := True;
//#UC END# *4ECA574B02DB_4DFEF1DF009F_impl*
end;//TevContentsNodeFilter.NeedColor

constructor TevContentsNodeFilter.Create(const aDocument: Ik2Tag);
//#UC START# *4DFEF2F303DD_4DFEF1DF009F_var*
//#UC END# *4DFEF2F303DD_4DFEF1DF009F_var*
begin
//#UC START# *4DFEF2F303DD_4DFEF1DF009F_impl*
 f_FilteredNodeFlag := nfHidden;
 f_Document := aDocument;
 f_FilterTagList := Tk2TagList.Make;
//#UC END# *4DFEF2F303DD_4DFEF1DF009F_impl*
end;//TevContentsNodeFilter.Create

class function TevContentsNodeFilter.Make(const aDocument: Ik2Tag): InevContentsNodeFilter;
//#UC START# *4DFEF31A0273_4DFEF1DF009F_var*
var
 l_Filter: TevContentsNodeFilter;
//#UC END# *4DFEF31A0273_4DFEF1DF009F_var*
begin
//#UC START# *4DFEF31A0273_4DFEF1DF009F_impl*
 l_Filter := TevContentsNodeFilter.Create(aDocument);
 try
  Result := l_Filter;
 finally
  l3Free(l_Filter);
 end;
//#UC END# *4DFEF31A0273_4DFEF1DF009F_impl*
end;//TevContentsNodeFilter.Make

procedure TevContentsNodeFilter.ColorNode(const aNode: InevNode);
//#UC START# *4A2628130085_4DFEF1DF009F_var*
var
 l_Flags : Integer;
//#UC END# *4A2628130085_4DFEF1DF009F_var*
begin
//#UC START# *4A2628130085_4DFEF1DF009F_impl*
 if (aNode = nil) then
  Exit;
 l_Flags := aNode.Flags;
 if NeedColor(aNode) then
  l3SetMask(l_Flags, f_FilteredNodeFlag)
 else
  l3ClearMask(l_Flags, f_FilteredNodeFlag);
 aNode.Flags := l_Flags;
//#UC END# *4A2628130085_4DFEF1DF009F_impl*
end;//TevContentsNodeFilter.ColorNode

function TevContentsNodeFilter.pm_GetFilteredNodeFlag: Integer;
//#UC START# *4A26284D0339_4DFEF1DF009Fget_var*
//#UC END# *4A26284D0339_4DFEF1DF009Fget_var*
begin
//#UC START# *4A26284D0339_4DFEF1DF009Fget_impl*
 Result := f_FilteredNodeFlag;
//#UC END# *4A26284D0339_4DFEF1DF009Fget_impl*
end;//TevContentsNodeFilter.pm_GetFilteredNodeFlag

procedure TevContentsNodeFilter.pm_SetFilteredNodeFlag(aValue: Integer);
//#UC START# *4A26284D0339_4DFEF1DF009Fset_var*
//#UC END# *4A26284D0339_4DFEF1DF009Fset_var*
begin
//#UC START# *4A26284D0339_4DFEF1DF009Fset_impl*
 f_FilteredNodeFlag := aValue;
//#UC END# *4A26284D0339_4DFEF1DF009Fset_impl*
end;//TevContentsNodeFilter.pm_SetFilteredNodeFlag

procedure TevContentsNodeFilter.CheckTagList;
//#UC START# *4E09B99A0384_4DFEF1DF009F_var*
//#UC END# *4E09B99A0384_4DFEF1DF009F_var*
begin
//#UC START# *4E09B99A0384_4DFEF1DF009F_impl*
 if f_FilterTagList <> nil then
  f_FilterTagList.Clear;
//#UC END# *4E09B99A0384_4DFEF1DF009F_impl*
end;//TevContentsNodeFilter.CheckTagList

procedure TevContentsNodeFilter.AddFilterTag(const aTag: InevTag);
//#UC START# *4E09BCEA0004_4DFEF1DF009F_var*
//#UC END# *4E09BCEA0004_4DFEF1DF009F_var*
begin
//#UC START# *4E09BCEA0004_4DFEF1DF009F_impl*
 f_FilterTagList.Add(aTag);
//#UC END# *4E09BCEA0004_4DFEF1DF009F_impl*
end;//TevContentsNodeFilter.AddFilterTag

procedure TevContentsNodeFilter.ChangeDocument(const aDocument: InevTag);
//#UC START# *4EAE94530363_4DFEF1DF009F_var*
//#UC END# *4EAE94530363_4DFEF1DF009F_var*
begin
//#UC START# *4EAE94530363_4DFEF1DF009F_impl*
 f_Document := aDocument;
//#UC END# *4EAE94530363_4DFEF1DF009F_impl*
end;//TevContentsNodeFilter.ChangeDocument

function TevContentsNodeFilter.NeedCreate(const aTag: InevTag): Boolean;
//#UC START# *4ECA564903B7_4DFEF1DF009F_var*
//#UC END# *4ECA564903B7_4DFEF1DF009F_var*
begin
//#UC START# *4ECA564903B7_4DFEF1DF009F_impl*
 if aTag = nil then
  Result := True
 else
  Result := f_FilterTagList.IndexOf(aTag) < 0;
//#UC END# *4ECA564903B7_4DFEF1DF009F_impl*
end;//TevContentsNodeFilter.NeedCreate

procedure TevContentsNodeFilter.Cleanup;
//#UC START# *479731C50290_4DFEF1DF009F_var*
//#UC END# *479731C50290_4DFEF1DF009F_var*
begin
//#UC START# *479731C50290_4DFEF1DF009F_impl*
 f_Document := nil;
 CheckTagList;
 l3Free(f_FilterTagList);
 inherited;
//#UC END# *479731C50290_4DFEF1DF009F_impl*
end;//TevContentsNodeFilter.Cleanup

end.