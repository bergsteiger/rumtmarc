unit nsNodeStorable;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Модуль: "w:/common/components/gui/Garant/Nemesis/Tree/nsNodeStorable.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi For F1::Nemesis::TreeDataObjects::TnsNodeStorable
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
uses
  evNodeStorable,
  afwNavigation
  ;
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
type
 TnsNodeStorable = class(TevNodeStorable)
 protected
 // overridden protected methods
   procedure GetAddress(var Addr: TevAddress); override;
 end;//TnsNodeStorable
{$IfEnd} //Nemesis AND not DesignTimeLibrary

implementation

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
uses
  DocumentUnit,
  SysUtils,
  BaseTypesUnit,
  BaseTreeSupportUnit,
  nevTools,
  evdTypes,
  FoldersUnit
  ;
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}

// start class TnsNodeStorable

procedure TnsNodeStorable.GetAddress(var Addr: TevAddress);
//#UC START# *48F494F102DD_468271030094_var*
var
 l_Bookmark   : IBookmark;
 l_PID        : TPId;
 l_Entity     : IEntityBase;
 l_BaseEntity : IUnknown;
 l_Node       : INode;
 l_Sub        : IevSub;
//#UC END# *48F494F102DD_468271030094_var*
begin
//#UC START# *48F494F102DD_468271030094_impl*
 inherited;
 if (Addr{$IfDef XE4}.rTafwAddress{$EndIf}.TypeID = ev_NullAddressType) then
 begin
  if Supports(Node, INode, l_Node) then
   try
    if not (TFoldersItemType(l_Node.GetObjectType) in
     [FIT_FOLDER, FIT_CONSULTATION, FIT_OLD_HISTORY]) then
     // - если это папка или консультация, то вставляем только комментарий
    begin
     l_Node.Open(l_BaseEntity);
     if Supports(l_BaseEntity, IBookmark, l_Bookmark) then
      try
       l_Bookmark.GetPid(l_PID);
       Addr{$IfDef XE4}.rTafwAddress{$EndIf}.DocID := l_PID.rObjectId;
       Addr{$IfDef XE4}.rTafwAddress{$EndIf}.SubID := Integer(l_Bookmark.GetParagraph or POSITION_TYPE_PARA_ID);
       Addr{$IfDef XE4}.rTafwAddress{$EndIf}.TypeID := CI_Topic;
      finally
       l_Bookmark := nil;
      end//try..finall
     else
     if Supports(l_BaseEntity, IEntityBase, l_Entity) then
      try
       Addr{$IfDef XE4}.rTafwAddress{$EndIf}.DocID := l_Entity.GetEid;
       Addr{$IfDef XE4}.rTafwAddress{$EndIf}.SubID := 0;
       Addr{$IfDef XE4}.rTafwAddress{$EndIf}.TypeID := CI_FolderLink;
      finally
       l_Entity := nil;
      end;//try..finally
    end;//l_Node.GetObjectType <> otFolder
   finally
    l_Node := nil;
   end;//try..finally
 end;//Addr.TypeID = ev_NullAddressType
 if (Addr{$IfDef XE4}.rTafwAddress{$EndIf}.TypeID = ev_NullAddressType) then
 begin
  if Supports(Node, IevSub, l_Sub) then
   try
    if (l_Sub.LayerID = ev_sbtSub) then
    begin
     Addr{$IfDef XE4}.rTafwAddress{$EndIf}.DocID := l_Sub.Document.ExternalHandle;
     Addr{$IfDef XE4}.rTafwAddress{$EndIf}.SubID := l_Sub.ID;
     Addr{$IfDef XE4}.rTafwAddress{$EndIf}.TypeID := CI_Topic;
    end;//l_Sub.LayerID = ev_sbtSub
   finally
    l_Sub := nil;
   end;//try..finally
 end;//Result.TypeID = ev_NullAddressType
//#UC END# *48F494F102DD_468271030094_impl*
end;//TnsNodeStorable.GetAddress

{$IfEnd} //Nemesis AND not DesignTimeLibrary

end.