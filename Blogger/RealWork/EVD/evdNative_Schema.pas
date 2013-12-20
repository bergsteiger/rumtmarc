unit evdNative_Schema;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/evdNative_Schema.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TagTable::Class>> Shared Delphi::EVD::Standard::evdNative
//
// Собственно схема документа EVD
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  l3Interfaces,
  l3Types,
  evdTypes,
  evdStyles,
  Graphics,
  k2Native_Schema,
  k2Tag_Const,
  k2Long_Const,
  k2Enum_Const,
  k2Handle_Const,
  k2Inch_Const,
  k2Bool_Const,
  k2Color_Const,
  k2String_Const,
  k2OList_Const,
  Justification_Const,
  Position_Const,
  Date_Const,
  Time_Const,
  Type_Const,
  Address_Const,
  ObjectWithHandle_Const,
  SgLHandle_Const,
  SbLHandle_Const,
  FontName_Const,
  Font_Const,
  Style_Const,
  FramePart_Const,
  evdFrame_Const,
  evdTextStyle_Const,
  NSRCTag_Const,
  DictRec_Const,
  DictItem_Const,
  DictItemEx_Const,
  AutoClass_Const,
  Sub_Const,
  DocumentSub_Const,
  SubLayer_Const,
  Para_Const,
  Segment_Const,
  LogRecordPrim_Const,
  StagePrim_Const,
  TextSegment_Const,
  PageProperties_Const,
  LeafPara_Const,
  PageBreak_Const,
  k2SomeDataContainer_Const,
  Bullet_Const,
  Bookmark_Const,
  Mark_Const,
  DocSubLayer_Const,
  ActiveInterval_Const,
  Alarm_Const,
  LogRecord_Const,
  Stage_Const,
  NumANDDate_Const,
  Check_Const,
  PIRec_Const,
  TabStop_Const,
  HyperLink_Const,
  ObjectSegment_Const,
  SectionBreak_Const,
  SegmentsLayer_Const,
  k2Base {a},
  k2Interfaces {a},
  k2ParentedTypedSmallLeafTag {a}
  ;

type
 JustificationAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//JustificationAtom

 BulletAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//BulletAtom

 DateAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DateAtom

 PositionAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//PositionAtom

 TypeAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TypeAtom

 TimeAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TimeAtom

 ObjectWithHandleTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ObjectWithHandleTag

 AddressTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//AddressTag

 Address_ViewKind_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Address_ViewKind_Tag

 SbLHandleAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SbLHandleAtom

 FontNameTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//FontNameTag

 FontTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//FontTag

 Font_Index_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Font_Index_Tag

 Font_Pitch_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Font_Pitch_Tag

 StyleTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//StyleTag

 FramePartTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//FramePartTag

 FrameTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//FrameTag

 NSRCTagTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//NSRCTagTag

 DictRecTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DictRecTag

 DictItemTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DictItemTag

 DictItem_Flags_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//DictItem_Flags_Tag

 AutoClassTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//AutoClassTag

 DictItemExTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DictItemExTag

 SubTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SubTag

 Sub_Classes_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Sub_Classes_Tag

 Sub_AutoClasses_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Sub_AutoClasses_Tag

 Sub_Types_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Sub_Types_Tag

 Sub_KeyWords_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Sub_KeyWords_Tag

 Sub_Prefix_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Sub_Prefix_Tag

 Sub_ServiceInfo_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Sub_ServiceInfo_Tag

 SubLayerTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SubLayerTag

 DocumentSubTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DocumentSubTag

 BookmarkTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//BookmarkTag

 MarkTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//MarkTag

 ParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ParaTag

 Para_Subs_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Para_Subs_Tag

 DocSubLayerTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DocSubLayerTag

 TextStyleTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TextStyleTag

 TextStyle_Header_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//TextStyle_Header_Tag

 TextStyle_Footer_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//TextStyle_Footer_Tag

 SegmentTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SegmentTag

 ActiveIntervalTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ActiveIntervalTag

 AlarmTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//AlarmTag

 LogRecordPrimTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//LogRecordPrimTag

 LogRecordTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//LogRecordTag

 StagePrimTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//StagePrimTag

 StageTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//StageTag

 NumANDDateTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//NumANDDateTag

 CheckTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//CheckTag

 PIRecTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//PIRecTag

 TextSegmentTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
   function CompareTags(const A: Ik2Tag;
     const B: Ik2Tag;
     aSortIndex: Tl3SortIndex): Integer; override;
     {* Сравнивает теги }
   function CompareTagWithInt(const aTag: Ik2Tag;
     aValue: Integer;
     anIndex: Integer): Integer; override;
     {* Сравнивает тег с целым }
 end;//TextSegmentTag

 TabStopTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TabStopTag

 TabStop_Type_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//TabStop_Type_Tag

 SgLHandleAtom = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SgLHandleAtom

 HyperLinkTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
   function CompareTags(const A: Ik2Tag;
     const B: Ik2Tag;
     aSortIndex: Tl3SortIndex): Integer; override;
     {* Сравнивает теги }
   function CompareTagWithInt(const aTag: Ik2Tag;
     aValue: Integer;
     anIndex: Integer): Integer; override;
     {* Сравнивает тег с целым }
 end;//HyperLinkTag

 HyperLink_Children_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//HyperLink_Children_Tag

 ObjectSegmentTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
   function CompareTags(const A: Ik2Tag;
     const B: Ik2Tag;
     aSortIndex: Tl3SortIndex): Integer; override;
     {* Сравнивает теги }
   function CompareTagWithInt(const aTag: Ik2Tag;
     aValue: Integer;
     anIndex: Integer): Integer; override;
     {* Сравнивает тег с целым }
 end;//ObjectSegmentTag

 ObjectSegment_Children_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//ObjectSegment_Children_Tag

 PagePropertiesTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//PagePropertiesTag

 PageProperties_Orientation_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//PageProperties_Orientation_Tag

 LeafParaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "LeafPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//LeafParaTagClass

 LeafParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//LeafParaTag

 PageBreakTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "PageBreak" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//PageBreakTagClass

 PageBreakTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//PageBreakTag

 SectionBreakTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "SectionBreak" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//SectionBreakTagClass

 SectionBreakTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SectionBreakTag

 SegmentsLayerTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
   function CompareTagWithInt(const aTag: Ik2Tag;
     aValue: Integer;
     anIndex: Integer): Integer; override;
     {* Сравнивает тег с целым }
 end;//SegmentsLayerTag

 TevdNativeSchema = class(Tk2NativeSchema)
 public
 // типы, определённые в данной схеме:
   t_Justification : JustificationAtom;
   t_Bullet : BulletAtom;
   t_Date : DateAtom;
   t_Position : PositionAtom;
   t_Type : TypeAtom;
   t_Time : TimeAtom;
   t_ObjectWithHandle : ObjectWithHandleTag;
   t_Address : AddressTag;
   t_Address_ViewKind : Address_ViewKind_Tag;
   t_SbLHandle : SbLHandleAtom;
   t_FontName : FontNameTag;
   t_Font : FontTag;
   t_Font_Index : Font_Index_Tag;
   t_Font_Pitch : Font_Pitch_Tag;
   t_Style : StyleTag;
   t_FramePart : FramePartTag;
   t_Frame : FrameTag;
   t_NSRCTag : NSRCTagTag;
   t_DictRec : DictRecTag;
   t_DictItem : DictItemTag;
   t_DictItem_Flags : DictItem_Flags_Tag;
   t_AutoClass : AutoClassTag;
   t_DictItemEx : DictItemExTag;
   t_Sub : SubTag;
   t_Sub_Classes : Sub_Classes_Tag;
   t_Sub_AutoClasses : Sub_AutoClasses_Tag;
   t_Sub_Types : Sub_Types_Tag;
   t_Sub_KeyWords : Sub_KeyWords_Tag;
   t_Sub_Prefix : Sub_Prefix_Tag;
   t_Sub_ServiceInfo : Sub_ServiceInfo_Tag;
   t_SubLayer : SubLayerTag;
   t_DocumentSub : DocumentSubTag;
   t_Bookmark : BookmarkTag;
   t_Mark : MarkTag;
   t_Para : ParaTag;
   t_Para_Subs : Para_Subs_Tag;
   t_DocSubLayer : DocSubLayerTag;
   t_TextStyle : TextStyleTag;
   t_TextStyle_Header : TextStyle_Header_Tag;
   t_TextStyle_Footer : TextStyle_Footer_Tag;
   t_Segment : SegmentTag;
   t_ActiveInterval : ActiveIntervalTag;
   t_Alarm : AlarmTag;
   t_LogRecordPrim : LogRecordPrimTag;
   t_LogRecord : LogRecordTag;
   t_StagePrim : StagePrimTag;
   t_Stage : StageTag;
   t_NumANDDate : NumANDDateTag;
   t_Check : CheckTag;
   t_PIRec : PIRecTag;
   t_TextSegment : TextSegmentTag;
   t_TabStop : TabStopTag;
   t_TabStop_Type : TabStop_Type_Tag;
   t_SgLHandle : SgLHandleAtom;
   t_HyperLink : HyperLinkTag;
   t_HyperLink_Children : HyperLink_Children_Tag;
   t_ObjectSegment : ObjectSegmentTag;
   t_ObjectSegment_Children : ObjectSegment_Children_Tag;
   t_PageProperties : PagePropertiesTag;
   t_PageProperties_Orientation : PageProperties_Orientation_Tag;
   t_LeafPara : LeafParaTag;
   t_PageBreak : PageBreakTag;
   t_SectionBreak : SectionBreakTag;
   t_SegmentsLayer : SegmentsLayerTag;
 protected
 // определяем стандартные методы схемы
   function  pm_GetTypeByHandle(H: Integer): Tk2Type; override;
   procedure Cleanup; override;
 public
   constructor Create; override;
 end;//TevdNativeSchema

implementation

uses
  Classes,
  k2SmallTagObject,
  l3DataContainerWithoutIUnknown,
  l3FontManager,
  evdStyleContainer,
  k2ParentedTagObject,
  l3Base,
  l3Defaults,
  evdBasePara,
  l3Const,
  evdNative_AttrValues,
  SysUtils {a},
  TypInfo {a},
  k2Const {a},
  k2Tags {a},
  k2BaseStruct {a},
  l3String {a},
  evSbLHandle_Wrap,
  evFontName_Wrap,
  evFont_Wrap,
  evStyle_Wrap,
  evFramePart_Wrap,
  evFrame_Wrap,
  evdDictRec_Wrap,
  evSub_Wrap,
  evChangeLayer_Wrap,
  evPara_Wrap,
  evSgLHandle_Wrap,
  evLayer_Wrap,
  evStdInt,
  k2DictRec,
  k2DictItem,
  k2Layer,
  evBaseSegment,
  evHyperTextSegment,
  evdNativeObjectSegmentClass,
  evdSegmentsLayer
  ;


// start class JustificationAtom

function JustificationAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Justification'));
end;

function JustificationAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function JustificationAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Enum.DoMakeTag(aType);
end;

function BulletAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Bullet'));
end;

function BulletAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Long.InheritsFrom(anAtomType);
end;

function BulletAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Long.DoMakeTag(aType);
end;

function DateAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Date'));
end;

function DateAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Long.InheritsFrom(anAtomType);
end;

function DateAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Long.DoMakeTag(aType);
end;

function PositionAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Position'));
end;

function PositionAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Long.InheritsFrom(anAtomType);
end;

function PositionAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Long.DoMakeTag(aType);
end;

function TypeAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Type'));
end;

function TypeAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Long.InheritsFrom(anAtomType);
end;

function TypeAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Long.DoMakeTag(aType);
end;

function TimeAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Time'));
end;

function TimeAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Long.InheritsFrom(anAtomType);
end;

function TimeAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Long.DoMakeTag(aType);
end;

function ObjectWithHandleTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ObjectWithHandle'));
end;

function ObjectWithHandleTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег ObjectWithHandle');
end;

function Address_ViewKind_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Address_ViewKind'));
end;

function Address_ViewKind_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function AddressTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Address'));
end;

function AddressTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function AddressTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

function SbLHandleAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SbLHandle'));
end;

function SbLHandleAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Handle.InheritsFrom(anAtomType);
end;

function SbLHandleAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Handle.DoMakeTag(aType);
end;

function FontNameTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('FontName'));
end;

function FontNameTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_String.InheritsFrom(anAtomType);
end;

function FontNameTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := Wrapper.New(aType);
end;

function Font_Index_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Font_Index'));
end;

function Font_Index_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function Font_Pitch_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Font_Pitch'));
end;

function Font_Pitch_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function FontTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Font'));
end;

function FontTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function FontTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

function StyleStyleBeforeChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op): Boolean;
//#UC START# *484FD956009Evar_BeforeChange*
var
 A       : Ik2Tag;
 l_PredA : Ik2Tag;
//#UC END# *484FD956009Evar_BeforeChange*
begin
//#UC START# *484FD956009EBeforeChange*
 Result := false;
 A := V.rNew^;
 while (A <> nil) AND not A.IsNull do
 begin
  if A.IsSame(V.rTag^) then
   Exit
  else
  begin
   l_PredA := A;
   A := A.Attr[aProp.TagIndex];
   if A.IsSame(l_PredA) then break;
  end;//A.EQ(P)
 end;//while not A.IsNull
 Result := true;
//#UC END# *484FD956009EBeforeChange*
end;

function StyleTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Style'));
end;

function StyleTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_ObjectWithHandle.InheritsFrom(anAtomType);
end;

function StyleTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2DictRec.Create(aType)));
end;

function FramePartTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('FramePart'));
end;

function FramePartTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function FramePartTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

function FrameTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Frame'));
end;

function FrameTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType)
           OR
           TevdNativeSchema(TypeTable).t_ObjectWithHandle.InheritsFrom(anAtomType);
end;

function FrameTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2DictRec.Create(aType)));
end;

function NSRCTagTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('NSRCTag'));
end;

function NSRCTagTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function NSRCTagTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег NSRCTag');
end;

function DictRecTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DictRec'));
end;

function DictRecTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType)
           OR
           TevdNativeSchema(TypeTable).t_ObjectWithHandle.InheritsFrom(anAtomType);
end;

function DictRecTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег DictRec');
end;

function DictItem_Flags_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DictItem_Flags'));
end;

function DictItem_Flags_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function DictItemTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DictItem'));
end;

function DictItemTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_DictRec.InheritsFrom(anAtomType)
           OR
           TevdNativeSchema(TypeTable).t_NSRCTag.InheritsFrom(anAtomType);
end;

function DictItemTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2DictItem.Create(aType)));
end;

function AutoClassTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('AutoClass'));
end;

function AutoClassTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType)
           OR
           TevdNativeSchema(TypeTable).t_ObjectWithHandle.InheritsFrom(anAtomType);
end;

function AutoClassTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

function DictItemExTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DictItemEx'));
end;

function DictItemExTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_DictItem.InheritsFrom(anAtomType);
end;

function DictItemExTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_DictItem.DoMakeTag(aType);
end;

function Sub_Classes_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Sub_Classes'));
end;

function Sub_Classes_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Sub_AutoClasses_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Sub_AutoClasses'));
end;

function Sub_AutoClasses_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Sub_Types_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Sub_Types'));
end;

function Sub_Types_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Sub_KeyWords_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Sub_KeyWords'));
end;

function Sub_KeyWords_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Sub_Prefix_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Sub_Prefix'));
end;

function Sub_Prefix_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Sub_ServiceInfo_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Sub_ServiceInfo'));
end;

function Sub_ServiceInfo_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function SubFlagsStored(const aTag : Ik2Tag;
 const aValue   : Ik2Tag;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op): Boolean;
//#UC START# *484F9FC101B3var_stored*
//#UC END# *484F9FC101B3var_stored*
begin
//#UC START# *484F9FC101B3stored*
 {$IfDef Nemesis}
 Result := aTag.InheritsFrom(k2_idMark) OR aTag.InheritsFrom(k2_idBookmark);
 {$Else  Nemesis}
 Result := false;
 {$EndIf Nemesis}
//#UC END# *484F9FC101B3stored*
end;

function SubTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Sub'));
end;

function SubTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType)
           OR
           TevdNativeSchema(TypeTable).t_DictRec.InheritsFrom(anAtomType);
end;

function SubTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

function SubLayerChildStored(const aParent : Ik2Tag;
 const aChild   : Ik2Tag;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op): Boolean;
//#UC START# *484FB206020Cvar_childstored*
//#UC END# *484FB206020Cvar_childstored*
begin
//#UC START# *484FB206020Cchildstored*
 with aChild.Attr[k2_tiHandle] do
  Result := IsValid AND (AsLong <> 0); 
 {$IfDef Nemesis}
(* if Result then
 begin
  with P.rAtom(k2_tiHandle) do
   if IsValid AND (AsLong = ev_sbtMark) then
   begin
    with Value.rAtom(k2_tiFlags) do
     if not IsValid OR (AsLong <> ev_UserCommentFlags) then
      Result := false;
   end;//IsValid..
 end;//Result*)
 {$EndIf Nemesis}
//#UC END# *484FB206020Cchildstored*
end;

function SubLayerTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SubLayer'));
end;

function SubLayerTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType)
           OR
           TevdNativeSchema(TypeTable).t_ObjectWithHandle.InheritsFrom(anAtomType);
end;

function SubLayerTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2Layer.Create(aType)));
end;

function DocumentSubTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DocumentSub'));
end;

function DocumentSubTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Sub.InheritsFrom(anAtomType);
end;

function DocumentSubTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Sub.DoMakeTag(aType);
end;

function BookmarkTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Bookmark'));
end;

function BookmarkTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Sub.InheritsFrom(anAtomType);
end;

function BookmarkTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Sub.DoMakeTag(aType);
end;

function MarkTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Mark'));
end;

function MarkTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Sub.InheritsFrom(anAtomType);
end;

function MarkTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Sub.DoMakeTag(aType);
end;

function Para_Subs_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Para_Subs'));
end;

function Para_Subs_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function ParaSubsChildStored(const aParent : Ik2Tag;
 const aChild   : Ik2Tag;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op): Boolean;
//#UC START# *4856677F0179var_childstored*
var
 H : Integer;
//#UC END# *4856677F0179var_childstored*
begin
//#UC START# *4856677F0179childstored*
 if (aChild.ChildrenCount > 0) then
 begin
  H := aChild.IntA[k2_tiHandle];
  Result := (H = ev_sbtSub)
            {$IfDef Nemesis}
            OR (H = ev_sbtBookmark)
            OR (H = ev_sbtMark)
            {$EndIf Nemesis}
            ;
 end//aChild.ChildrenCount > 0
 else
  Result := false;
//#UC END# *4856677F0179childstored*
end;

function ParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Para'));
end;

function ParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function ParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег Para');
end;

function DocSubLayerTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DocSubLayer'));
end;

function DocSubLayerTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_SubLayer.InheritsFrom(anAtomType);
end;

function DocSubLayerTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_SubLayer.DoMakeTag(aType);
end;

function TextStyle_Header_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TextStyle_Header'));
end;

function TextStyle_Header_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function TextStyle_Footer_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TextStyle_Footer'));
end;

function TextStyle_Footer_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function TextStyleTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TextStyle'));
end;

function TextStyleTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Style.InheritsFrom(anAtomType);
end;

function TextStyleTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Style.DoMakeTag(aType);
end;

function SegmentTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Segment'));
end;

function SegmentTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function SegmentTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

function ActiveIntervalTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ActiveInterval'));
end;

function ActiveIntervalTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_NSRCTag.InheritsFrom(anAtomType);
end;

function ActiveIntervalTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2ParentedTagObject.Create(aType)));
end;

function AlarmTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Alarm'));
end;

function AlarmTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_NSRCTag.InheritsFrom(anAtomType);
end;

function AlarmTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2ParentedTagObject.Create(aType)));
end;

function LogRecordPrimTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('LogRecordPrim'));
end;

function LogRecordPrimTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_NSRCTag.InheritsFrom(anAtomType);
end;

function LogRecordPrimTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег LogRecordPrim');
end;

function LogRecordTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('LogRecord'));
end;

function LogRecordTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_LogRecordPrim.InheritsFrom(anAtomType);
end;

function LogRecordTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2ParentedTagObject.Create(aType)));
end;

function StagePrimTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('StagePrim'));
end;

function StagePrimTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_LogRecordPrim.InheritsFrom(anAtomType);
end;

function StagePrimTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег StagePrim');
end;

function StageTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Stage'));
end;

function StageTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_StagePrim.InheritsFrom(anAtomType);
end;

function StageTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2ParentedTagObject.Create(aType)));
end;

function NumANDDateTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('NumANDDate'));
end;

function NumANDDateTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_LogRecordPrim.InheritsFrom(anAtomType);
end;

function NumANDDateTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2ParentedTagObject.Create(aType)));
end;

function CheckTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Check'));
end;

function CheckTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_StagePrim.InheritsFrom(anAtomType);
end;

function CheckTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2ParentedTagObject.Create(aType)));
end;

function PIRecTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('PIRec'));
end;

function PIRecTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_NSRCTag.InheritsFrom(anAtomType);
end;

function PIRecTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2ParentedTagObject.Create(aType)));
end;

function TextSegmentTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TextSegment'));
end;

function TextSegmentTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Segment.InheritsFrom(anAtomType);
end;

function TextSegmentTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TevBaseSegment.Create(aType)));
end;

function TextSegmentTag.CompareTags(const A: Ik2Tag;
    const B: Ik2Tag;
    aSortIndex: Tl3SortIndex): Integer;
    {* Сравнивает теги }
//#UC START# *484FDC4F013FCompareTags_var*
var
 l_SStart, l_SFinish : Integer;
 l_FStart, l_FFinish : Integer;
//#UC END# *484FDC4F013FCompareTags_var*
begin
//#UC START# *484FDC4F013FCompareTags*
 if (aSortIndex = l3_siNative) then
 begin
  if (A.AsObject = B.AsObject) then
   Result := 0
  else
  begin
   with A do
   begin
    l_SStart := IntA[k2_tiStart];
    l_SFinish := IntA[k2_tiFinish];
   end;//with A
   with B do
   begin
    l_FStart := IntA[k2_tiStart];
    l_FFinish := IntA[k2_tiFinish];
   end;//with B
   Result := l_SStart - l_FFinish;
   if (Result < 0) then
   begin
    Result := l_SFinish - l_FStart;
    if (Result > 0) then
     Result := 0;
   end;//Result < 0
  end;//Self = AsObject
 end//aSortIndex = l3_siNative
 else
  Result := inherited CompareTags(A, B, aSortIndex);
//#UC END# *484FDC4F013FCompareTags*
end;

function TextSegmentTag.CompareTagWithInt(const aTag: Ik2Tag;
    aValue: Integer;
    anIndex: Integer): Integer;
    {* Сравнивает тег с целым }
//#UC START# *484FDC4F013FCompareTagWithInt_var*
//#UC END# *484FDC4F013FCompareTagWithInt_var*
begin
//#UC START# *484FDC4F013FCompareTagWithInt*
 if (anIndex = l3_siNative) then
 begin
  if (aValue < aTag.IntA[k2_tiStart]) then
   Result := 1
  else
  if (aValue <= aTag.IntA[k2_tiFinish]) then
   Result := 0
  else
   Result := -1;
 end//anIndex = l3_siNative
 else
  Result := inherited CompareTagWithInt(aTag, aValue, anIndex);
//#UC END# *484FDC4F013FCompareTagWithInt*
end;

function TabStop_Type_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TabStop_Type'));
end;

function TabStop_Type_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function TabStopTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TabStop'));
end;

function TabStopTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function TabStopTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

function SgLHandleAtom.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SgLHandle'));
end;

function SgLHandleAtom.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Handle.InheritsFrom(anAtomType);
end;

function SgLHandleAtom.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevdNativeSchema(TypeTable).t_Handle.DoMakeTag(aType);
end;

function HyperLink_Children_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('HyperLink_Children'));
end;

function HyperLink_Children_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function HyperLinkTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('HyperLink'));
end;

function HyperLinkTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_TextSegment.InheritsFrom(anAtomType)
           OR
           TevdNativeSchema(TypeTable).t_ObjectWithHandle.InheritsFrom(anAtomType);
end;

function HyperLinkTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TevHyperTextSegment.Create(aType)));
end;

function HyperLinkTag.CompareTags(const A: Ik2Tag;
    const B: Ik2Tag;
    aSortIndex: Tl3SortIndex): Integer;
    {* Сравнивает теги }
begin
 Result := TevdNativeSchema(TypeTable).t_TextSegment.CompareTags(A, B, aSortIndex);
end;

function HyperLinkTag.CompareTagWithInt(const aTag: Ik2Tag;
    aValue: Integer;
    anIndex: Integer): Integer;
    {* Сравнивает тег с целым }
begin
 Result := TevdNativeSchema(TypeTable).t_TextSegment.CompareTagWithInt(aTag, aValue, anIndex);
end;

function ObjectSegment_Children_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ObjectSegment_Children'));
end;

function ObjectSegment_Children_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function ObjectSegmentTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ObjectSegment'));
end;

function ObjectSegmentTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_TextSegment.InheritsFrom(anAtomType);
end;

function ObjectSegmentTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TevdNativeObjectSegmentClass.Create(aType)));
end;

function ObjectSegmentTag.CompareTags(const A: Ik2Tag;
    const B: Ik2Tag;
    aSortIndex: Tl3SortIndex): Integer;
    {* Сравнивает теги }
begin
 Result := TevdNativeSchema(TypeTable).t_TextSegment.CompareTags(A, B, aSortIndex);
end;

function ObjectSegmentTag.CompareTagWithInt(const aTag: Ik2Tag;
    aValue: Integer;
    anIndex: Integer): Integer;
    {* Сравнивает тег с целым }
begin
 Result := TevdNativeSchema(TypeTable).t_TextSegment.CompareTagWithInt(aTag, aValue, anIndex);
end;

function PageProperties_Orientation_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('PageProperties_Orientation'));
end;

function PageProperties_Orientation_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevdNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function PagePropertiesTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('PageProperties'));
end;

function PagePropertiesTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function PagePropertiesTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2ParentedTagObject.Create(aType)));
end;

function LeafParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typLeafPara;
end;//LeafParaTagClass.TagType

function LeafParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('LeafPara'));
end;

function LeafParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_Para.InheritsFrom(anAtomType);
end;

function LeafParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег LeafPara');
end;

function PageBreakTagClass.TagType: Tk2Type;
begin
 Result := k2_typPageBreak;
end;//PageBreakTagClass.TagType

function PageBreakTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('PageBreak'));
end;

function PageBreakTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_LeafPara.InheritsFrom(anAtomType);
end;

function PageBreakTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(PageBreakTagClass.Create(aType)));
end;

function SectionBreakTagClass.TagType: Tk2Type;
begin
 Result := k2_typSectionBreak;
end;//SectionBreakTagClass.TagType

function SectionBreakTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SectionBreak'));
end;

function SectionBreakTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_PageBreak.InheritsFrom(anAtomType);
end;

function SectionBreakTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(SectionBreakTagClass.Create(aType)));
end;

function SegmentsLayerTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SegmentsLayer'));
end;

function SegmentsLayerTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevdNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType)
           OR
           TevdNativeSchema(TypeTable).t_ObjectWithHandle.InheritsFrom(anAtomType);
end;

function SegmentsLayerTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TevdSegmentsLayer.Create(aType)));
end;

function SegmentsLayerTag.CompareTagWithInt(const aTag: Ik2Tag;
    aValue: Integer;
    anIndex: Integer): Integer;
    {* Сравнивает тег с целым }
//#UC START# *484FD1360343CompareTagWithInt_var*

 function Mangle(aHandle : Integer): Integer;
 const
  cMul = 10;
 begin
  if (aHandle = ev_slDiff) then
   Result := (ev_slHyperlinks * cMul) - (cMul div 2)
  else
   Result := aHandle * cMul;
 end;

//#UC END# *484FD1360343CompareTagWithInt_var*
begin
//#UC START# *484FD1360343CompareTagWithInt*
 Case anIndex of
  k2_tiHandle :
  begin
   Result := Mangle(aTag.IntA[anIndex]) - Mangle(aValue);
  end;//k2_tiHandle
  else
   Result := inherited CompareTagWithInt(aTag, aValue, anIndex);
 end;//Case anIndex
//#UC END# *484FD1360343CompareTagWithInt*
end;

constructor TevdNativeSchema.Create;
begin
 inherited;
 // Justification
 t_Justification := DefineType(7 {Justification}, [t_Enum], 'Выравнивание текста', JustificationAtom) As JustificationAtom;
 with t_Justification do
 begin
  AtomType := TypeInfo(TevIndentType);
 end;//Justification
 // Bullet
 t_Bullet := DefineType(111 {Bullet}, [t_Long], 'Тип маркера', BulletAtom) As BulletAtom;
 with t_Bullet do
 begin
 end;//Bullet
 // Date
 t_Date := DefineType(75 {Date}, [t_Long], 'Дата', DateAtom) As DateAtom;
 with t_Date do
 begin
 end;//Date
 // Position
 t_Position := DefineType(31 {Position}, [t_Long], 'Позиция в тексте', PositionAtom) As PositionAtom;
 with t_Position do
 begin
 end;//Position
 // Type
 t_Type := DefineType(76 {Type}, [t_Long], 'Тип объекта', TypeAtom) As TypeAtom;
 with t_Type do
 begin
 end;//Type
 // Time
 t_Time := DefineType(113 {Time}, [t_Long], 'Время', TimeAtom) As TimeAtom;
 with t_Time do
 begin
 end;//Time
 // ObjectWithHandle
 t_ObjectWithHandle := DefineType(32 {ObjectWithHandle}, [], 'Объект с идентификатором', ObjectWithHandleTag) As ObjectWithHandleTag;
 with t_ObjectWithHandle do
 begin
  with DefineProperty(k2_tiHandle, t_Handle, 'Идентификатор объекта') do
  begin
  end;//Handle
 end;//ObjectWithHandle
 // Address
 t_Address := DefineType(77 {Address}, [t_Tag], 'Адрес', AddressTag) As AddressTag;
 with t_Address do
 begin
  with DefineProperty(k2_tiDocID, t_Handle, 'Идентификатор документа') do
  begin
   DefaultValue := 0;
  end;//DocID
  with DefineProperty(k2_tiSubID, t_Handle, 'Идентификатор метки') do
  begin
   DefaultValue := 0;
  end;//SubID
  with DefineProperty(k2_tiType, t_Type, 'Тип объекта') do
  begin
   DefaultValue := ev_defAddressType;
  end;//Type
  with DefineProperty(k2_tiRevision, t_Long, 'Ревизия') do
  begin
   DefaultValue := 0;
  end;//Revision
  t_Address_ViewKind := Address_ViewKind_Tag.Create(Self, 'Адрес Вид ссылки');
  try
   t_Address_ViewKind.InheriteFrom(t_Enum);
   t_Address_ViewKind.StringID := g_InnerTypeID;
   k2_idAddress_ViewKind := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Address_ViewKind.AtomType := TypeInfo(TevLinkViewKind);
   DefineProperty(k2_tiViewKind, t_Address_ViewKind, 'Вид ссылки');
   t_Address_ViewKind.Recalc;
  except
   FreeAndNil(t_Address_ViewKind);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiViewKind]) do
  begin
   DefaultValue := Ord(ev_lvkUnknown);
   Stored := false;
  end;//ViewKind
  with DefineProperty(k2_tiShortName, t_String, 'Hint') do
  begin
   Stored := false;
  end;//ShortName
  with DefineProperty(k2_tiName, t_String, 'Name') do
  begin
  end;//Name
 end;//Address
 // SbLHandle
 t_SbLHandle := DefineType(34 {SbLHandle}, [t_Handle], 'Идентификатор слоя меток', SbLHandleAtom) As SbLHandleAtom;
 with t_SbLHandle do
 begin
  AtomType := TypeInfo(TevSubHandle);
  WrapperType := WevSbLHandle;
 end;//SbLHandle
 // FontName
 t_FontName := DefineType(35 {FontName}, [t_String], 'Гарнитура шрифта', FontNameTag) As FontNameTag;
 with t_FontName do
 begin
  AtomClass := Tl3LogFont;
  WrapperType := WevFontName;
  IDIndex := k2_tiSelfID;
//#UC START# *484CE9CE0107atom1*
//#UC END# *484CE9CE0107atom1*
//#UC START# *484CE9CE0107atom*
  ValueTable := l3FontManager.Fonts;
//#UC END# *484CE9CE0107atom*
 end;//FontName
 // Font
 t_Font := DefineType(36 {Font}, [t_Tag], 'Шрифт', FontTag) As FontTag;
 with t_Font do
 begin
  WrapperType := WevFont;
//#UC START# *484CEE9A0170atom1*
//#UC END# *484CEE9A0170atom1*
  t_Font_Index := Font_Index_Tag.Create(Self, 'Шрифт Верхний/нижний индекс');
  try
   t_Font_Index.InheriteFrom(t_Enum);
   t_Font_Index.StringID := g_InnerTypeID;
   k2_idFont_Index := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Font_Index.AtomType := TypeInfo(Tl3FontIndex);
   DefineProperty(k2_tiIndex, t_Font_Index, 'Верхний/нижний индекс');
   t_Font_Index.Recalc;
  except
   FreeAndNil(t_Font_Index);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiIndex]) do
  begin
   DefaultValue := Ord(l3_fiNone);
  end;//Index
  with DefineProperty(k2_tiBold, t_Bool, 'Жирный') do
  begin
  end;//Bold
  with DefineProperty(k2_tiItalic, t_Bool, 'Курсив') do
  begin
  end;//Italic
  with DefineProperty(k2_tiUnderline, t_Bool, 'Подчеркивание') do
  begin
  end;//Underline
  with DefineProperty(k2_tiStrikeout, t_Bool, 'Зачеркивание') do
  begin
  end;//Strikeout
  t_Font_Pitch := Font_Pitch_Tag.Create(Self, 'Шрифт Тип шрифта');
  try
   t_Font_Pitch.InheriteFrom(t_Enum);
   t_Font_Pitch.StringID := g_InnerTypeID;
   k2_idFont_Pitch := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Font_Pitch.AtomType := TypeInfo(TFontPitch);
   DefineProperty(k2_tiPitch, t_Font_Pitch, 'Тип шрифта');
   t_Font_Pitch.Recalc;
  except
   FreeAndNil(t_Font_Pitch);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiPitch]) do
  begin
  end;//Pitch
  with DefineProperty(k2_tiSize, t_Long, 'Кегль') do
  begin
  end;//Size
  with DefineProperty(k2_tiName, t_FontName, 'Гарнитура шрифта') do
  begin
   Shared := true;
  end;//Name
  with DefineProperty(k2_tiForeColor, t_Color, 'Цвет текста') do
  begin
  end;//ForeColor
  with DefineProperty(k2_tiBackColor, t_Color, 'Цвет фона') do
  begin
  end;//BackColor
//#UC START# *484CEE9A0170atom*
  Recalc;
//#UC END# *484CEE9A0170atom*
 end;//Font
 // Style
 t_Style := DefineType(38 {Style}, [t_ObjectWithHandle], 'Стиль оформления', StyleTag) As StyleTag;
 with t_Style do
 begin
  AtomClass := Tk2DictRec;
  WrapperType := WevStyle;
  IDIndex := k2_tiHandle;
  with DefineProperty(k2_tiStyle, t_Style, 'Родительский стиль') do
  begin
   Shared := true;
   BeforeChange := StyleStyleBeforeChange;
  end;//Style
  with DefineProperty(k2_tiName, t_String, 'Имя стиля') do
  begin
  end;//Name
 end;//Style
 // FramePart
 t_FramePart := DefineType(40 {FramePart}, [t_Tag], 'Часть рамки вокруг объекта', FramePartTag) As FramePartTag;
 with t_FramePart do
 begin
  WrapperType := WevFramePart;
//#UC START# *484D27FD005Datom1*
//#UC END# *484D27FD005Datom1*
  with DefineProperty(k2_tiForeColor, t_Color, 'Цвет линии') do
  begin
   DefaultValue := clBlack;
  end;//ForeColor
  with DefineProperty(k2_tiWidth, t_Inch, 'Ширина линии') do
  begin
   DefaultValue := def_FrameWidth;
  end;//Width
  with DefineProperty(k2_tiLineType, t_Long, 'Тип линии') do
  begin
   DefaultValue := 0;
  end;//LineType
  with DefineProperty(k2_tiSpaceBefore, t_Inch, 'Отступ сверху') do
  begin
   DefaultValue := 0;
  end;//SpaceBefore
  with DefineProperty(k2_tiSpaceAfter, t_Inch, 'Отступ снизу') do
  begin
   DefaultValue := 0;
  end;//SpaceAfter
//#UC START# *484D27FD005Datom*
  ParamsForClone := l3LongArray([k2_tiForeColor, k2_tiWidth, k2_tiLineType, k2_tiSpaceBefore, k2_tiSpaceAfter]);
  Recalc;
//#UC END# *484D27FD005Datom*
 end;//FramePart
 // Frame
 t_Frame := DefineType(41 {Frame}, [t_Tag, t_ObjectWithHandle], 'Рамка вокруг объекта', FrameTag) As FrameTag;
 with t_Frame do
 begin
  AtomClass := Tk2DictRec;
  WrapperType := WevFrame;
  IDIndex := k2_tiHandle;
//#UC START# *484D2BAB02BBatom1*
//#UC END# *484D2BAB02BBatom1*
  with Tk2CustomProperty(Prop[k2_tiHandle]) do
  begin
   Stored := false;
  end;//Handle
  with DefineProperty(k2_tiName, t_String, '') do
  begin
   Stored := false;
  end;//Name
  with DefineProperty(k2_tiForeColor, t_Color, '') do
  begin
   DefaultValue := clBlack;
  end;//ForeColor
  with DefineProperty(k2_tiFrameUp, t_FramePart, 'Рамка сверху') do
  begin
  end;//FrameUp
  with DefineProperty(k2_tiFrameDown, t_FramePart, 'Рамка снизу') do
  begin
  end;//FrameDown
  with DefineProperty(k2_tiFrameLeft, t_FramePart, 'Рамка слева') do
  begin
  end;//FrameLeft
  with DefineProperty(k2_tiFrameRight, t_FramePart, 'Рамка справа') do
  begin
  end;//FrameRight
//#UC START# *484D2BAB02BBatom*
  ParamsForClone := l3LongArray([k2_tiHandle, k2_tiFrameUp, k2_tiFrameDown, k2_tiFrameLeft, k2_tiFrameRight]);
//#UC END# *484D2BAB02BBatom*
  Recalc;
  // Пустая рамка
   with MakeTag do
   begin
    IntA[k2_tiHandle] := 0;
    StrA[k2_tiName] := str_Frame_Empty_Name_Value.AsStr;
    AddValue(Box);
   end;//with MakeTag
  // Цельная рамка
   with MakeTag do
   begin
    IntA[k2_tiHandle] := 1111;
    StrA[k2_tiName] := str_Frame_Solid_Name_Value.AsStr;
    with cAtom(k2_tiFrameLeft) do
    begin
    end;//with cAtom(k2_tiFrameLeft)
    with cAtom(k2_tiFrameRight) do
    begin
    end;//with cAtom(k2_tiFrameRight)
    with cAtom(k2_tiFrameUp) do
    begin
    end;//with cAtom(k2_tiFrameUp)
    with cAtom(k2_tiFrameDown) do
    begin
    end;//with cAtom(k2_tiFrameDown)
    AddValue(Box);
   end;//with MakeTag
  // Нижняя рамка
   with MakeTag do
   begin
    IntA[k2_tiHandle] := 0001;
    StrA[k2_tiName] := str_Frame_Down_Name_Value.AsStr;
    with cAtom(k2_tiFrameDown) do
    begin
    end;//with cAtom(k2_tiFrameDown)
    AddValue(Box);
   end;//with MakeTag
 end;//Frame
 // NSRCTag
 t_NSRCTag := DefineType(89 {NSRCTag}, [t_Tag], 'Атрибут точки входа', NSRCTagTag) As NSRCTagTag;
 with t_NSRCTag do
 begin
  AtomClass := Tk2ParentedTagObject;
  with DefineProperty(k2_tiName, t_String, 'Name') do
  begin
  end;//Name
 end;//NSRCTag
 // DictRec
 t_DictRec := DefineType(74 {DictRec}, [t_Tag, t_ObjectWithHandle], 'Словарная запись', DictRecTag) As DictRecTag;
 with t_DictRec do
 begin
  AtomClass := nil;
  WrapperType := WevdDictRec;
  with DefineProperty(k2_tiName, t_String, 'Имя') do
  begin
  end;//Name
  with DefineProperty(k2_tiShortName, t_String, 'Короткое имя') do
  begin
  end;//ShortName
 end;//DictRec
 // DictItem
 t_DictItem := DefineType(73 {DictItem}, [t_DictRec, t_NSRCTag], 'Элемент словаря', DictItemTag) As DictItemTag;
 with t_DictItem do
 begin
  AtomClass := Tk2DictItem;
  t_DictItem_Flags := DictItem_Flags_Tag.Create(Self, 'Элемент словаря Flags');
  try
   t_DictItem_Flags.InheriteFrom(t_Enum);
   t_DictItem_Flags.StringID := g_InnerTypeID;
   k2_idDictItem_Flags := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_DictItem_Flags.AtomType := TypeInfo(Tl3ItemFlag);
   DefineProperty(k2_tiFlags, t_DictItem_Flags, '');
   t_DictItem_Flags.Recalc;
  except
   FreeAndNil(t_DictItem_Flags);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiFlags]) do
  begin
   DefaultValue := Ord(l3_ifNone);
  end;//Flags
  SetNeedMarkModifiedAllExcept(k2_tiName);
 end;//DictItem
 // AutoClass
 t_AutoClass := DefineType(86 {AutoClass}, [t_Tag, t_ObjectWithHandle], 'Авто-класс', AutoClassTag) As AutoClassTag;
 with t_AutoClass do
 begin
  with DefineProperty(k2_tiFlags, t_Long, 'Флаги') do
  begin
  end;//Flags
  with DefineProperty(k2_tiWeight, t_Long, 'Вес') do
  begin
  end;//Weight
 end;//AutoClass
 // DictItemEx
 t_DictItemEx := DefineType(87 {DictItemEx}, [t_DictItem], 'Продвинутый элемент словаря', DictItemExTag) As DictItemExTag;
 with t_DictItemEx do
 begin
  with DefineProperty(k2_tiPrivate, t_Bool, '') do
  begin
   DefaultValue := Ord(false);
  end;//Private
 end;//DictItemEx
 // Sub
 t_Sub := DefineType(15 {Sub}, [t_Tag, t_DictRec], 'Метка', SubTag) As SubTag;
 with t_Sub do
 begin
  WrapperType := WevSub;
  t_Sub_Classes := Sub_Classes_Tag.Create(Self, 'Метка Классы');
  try
   t_Sub_Classes.InheriteFrom(t_OList);
   t_Sub_Classes.StringID := g_InnerTypeID;
   k2_idSub_Classes := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Sub_Classes.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiClasses, t_Sub_Classes, 'Классы');
   t_Sub_Classes.Recalc;
  except
   FreeAndNil(t_Sub_Classes);
  end;//try..except
  with t_Sub_Classes.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
  end;//Classes
  t_Sub_AutoClasses := Sub_AutoClasses_Tag.Create(Self, 'Метка Авто-классы');
  try
   t_Sub_AutoClasses.InheriteFrom(t_OList);
   t_Sub_AutoClasses.StringID := g_InnerTypeID;
   k2_idSub_AutoClasses := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Sub_AutoClasses.DefineChildrenPrim(t_AutoClass);
   DefineProperty(k2_tiAutoClasses, t_Sub_AutoClasses, 'Авто-классы');
   t_Sub_AutoClasses.Recalc;
  except
   FreeAndNil(t_Sub_AutoClasses);
  end;//try..except
  with t_Sub_AutoClasses.ArrayProp[k2_tiChildren] do
  begin
  end;//AutoClasses
  t_Sub_Types := Sub_Types_Tag.Create(Self, 'Метка Типы');
  try
   t_Sub_Types.InheriteFrom(t_OList);
   t_Sub_Types.StringID := g_InnerTypeID;
   k2_idSub_Types := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Sub_Types.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiTypes, t_Sub_Types, 'Типы');
   t_Sub_Types.Recalc;
  except
   FreeAndNil(t_Sub_Types);
  end;//try..except
  with t_Sub_Types.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
  end;//Types
  t_Sub_KeyWords := Sub_KeyWords_Tag.Create(Self, 'Метка Ключевые слова');
  try
   t_Sub_KeyWords.InheriteFrom(t_OList);
   t_Sub_KeyWords.StringID := g_InnerTypeID;
   k2_idSub_KeyWords := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Sub_KeyWords.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiKeyWords, t_Sub_KeyWords, 'Ключевые слова');
   t_Sub_KeyWords.Recalc;
  except
   FreeAndNil(t_Sub_KeyWords);
  end;//try..except
  with t_Sub_KeyWords.ArrayProp[k2_tiChildren] do
  begin
  end;//KeyWords
  t_Sub_Prefix := Sub_Prefix_Tag.Create(Self, 'Метка Префиксы');
  try
   t_Sub_Prefix.InheriteFrom(t_OList);
   t_Sub_Prefix.StringID := g_InnerTypeID;
   k2_idSub_Prefix := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Sub_Prefix.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiPrefix, t_Sub_Prefix, 'Префиксы');
   t_Sub_Prefix.Recalc;
  except
   FreeAndNil(t_Sub_Prefix);
  end;//try..except
  with t_Sub_Prefix.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
  end;//Prefix
  t_Sub_ServiceInfo := Sub_ServiceInfo_Tag.Create(Self, 'Метка Служебная информация');
  try
   t_Sub_ServiceInfo.InheriteFrom(t_OList);
   t_Sub_ServiceInfo.StringID := g_InnerTypeID;
   k2_idSub_ServiceInfo := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Sub_ServiceInfo.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiServiceInfo, t_Sub_ServiceInfo, 'Служебная информация');
   t_Sub_ServiceInfo.Recalc;
  except
   FreeAndNil(t_Sub_ServiceInfo);
  end;//try..except
  with t_Sub_ServiceInfo.ArrayProp[k2_tiChildren] do
  begin
  end;//ServiceInfo
  with DefineProperty(k2_tiFlags, t_Long, 'Флаги метки') do
  begin
   StoredProc := SubFlagsStored;
  end;//Flags
 end;//Sub
 // SubLayer
 t_SubLayer := DefineType(17 {SubLayer}, [t_OList, t_ObjectWithHandle], 'Слой меток', SubLayerTag) As SubLayerTag;
 with t_SubLayer do
 begin
  AtomClass := Tk2Layer;
  WrapperType := WevChangeLayer;
  with DefineChildrenPrim(t_Sub) do
  begin
   SortIndex := k2_tiHandle;
   StoredChildProc := SubLayerChildStored;
  end;//
  with Tk2CustomProperty(Prop[k2_tiHandle]) do
  begin
   AtomType := t_SbLHandle;
  end;//Handle
 end;//SubLayer
 // DocumentSub
 t_DocumentSub := DefineType(11 {DocumentSub}, [t_Sub], 'Метка в документе', DocumentSubTag) As DocumentSubTag;
 with t_DocumentSub do
 begin
  with DefineProperty(k2_tiObject, t_SomeDataContainer, 'Параграф на котором стоит метка') do
  begin
   Shared := true;
   Stored := false;
  end;//Object
 end;//DocumentSub
 // Bookmark
 t_Bookmark := DefineType(115 {Bookmark}, [t_Sub], 'Закладка', BookmarkTag) As BookmarkTag;
 with t_Bookmark do
 begin
 end;//Bookmark
 // Mark
 t_Mark := DefineType(116 {Mark}, [t_Sub], 'Вспомогательный значок', MarkTag) As MarkTag;
 with t_Mark do
 begin
  with Tk2CustomProperty(Prop[k2_tiFlags]) do
  begin
   DefaultValue := 0;
   Stored := true;
  end;//Flags
 end;//Mark
 // Para
 t_Para := DefineType(21 {Para}, [t_Tag], 'Базовый параграф', ParaTag) As ParaTag;
 with t_Para do
 begin
  AtomClass := TevdBasePara;
  WrapperType := WevPara;
  InterfaceFactoryType := TevParaInterfaceFactory;
  with DefineProperty(k2_tiRubber, t_Bool, '') do
  begin
   ReadOnly := true;
   DefaultValue := Ord(false);
   Stored := false;
  end;//Rubber
  with DefineProperty(k2_tiVisible, t_Bool, 'Видимый') do
  begin
   DefaultValue := Ord(true);
  end;//Visible
  with DefineProperty(k2_tiWidth, t_Inch, 'Ширина') do
  begin
  end;//Width
  with DefineProperty(k2_tiLeftIndent, t_Inch, 'Отступ слева') do
  begin
  end;//LeftIndent
  with DefineProperty(k2_tiRightIndent, t_Inch, 'Отступ справа') do
  begin
   DefaultValue := 0;
  end;//RightIndent
  with DefineProperty(k2_tiSpaceBefore, t_Inch, 'Отступ сверху') do
  begin
   DefaultValue := 0;
  end;//SpaceBefore
  with DefineProperty(k2_tiSpaceAfter, t_Inch, 'Отступ снизу') do
  begin
   DefaultValue := 0;
  end;//SpaceAfter
  with DefineProperty(k2_tiBackColor, t_Color, 'Цвет фона') do
  begin
   DefaultValue := clDefault;
  end;//BackColor
  with DefineProperty(k2_tiFrame, t_Frame, 'Рамка') do
  begin
  end;//Frame
  t_Para_Subs := Para_Subs_Tag.Create(Self, 'Базовый параграф Метки');
  try
   t_Para_Subs.InheriteFrom(t_OList);
   t_Para_Subs.StringID := g_InnerTypeID;
   k2_idPara_Subs := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Para_Subs.DefineChildrenPrim(t_SubLayer);
   DefineProperty(k2_tiSubs, t_Para_Subs, 'Метки');
   t_Para_Subs.Recalc;
  except
   FreeAndNil(t_Para_Subs);
  end;//try..except
  with t_Para_Subs.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiHandle;
   StoredChildProc := ParaSubsChildStored;
   Duplicates := l3_dupChange;
  end;//Subs
 end;//Para
 // DocSubLayer
 t_DocSubLayer := DefineType(18 {DocSubLayer}, [t_SubLayer], 'Слой меток документа', DocSubLayerTag) As DocSubLayerTag;
 with t_DocSubLayer do
 begin
  with ArrayProp[k2_tiChildren] do
  begin
   Duplicates := l3_dupAssign;
   ChildType := t_DocumentSub;
  end;//
 end;//DocSubLayer
 // TextStyle
 t_TextStyle := DefineType(39 {TextStyle}, [t_Style], 'Стиль оформления текста', TextStyleTag) As TextStyleTag;
 with t_TextStyle do
 begin
//#UC START# *484D2CBA0213atom1*
//#UC END# *484D2CBA0213atom1*
  with DefineProperty(k2_tiJustification, t_Justification, 'Выравнивание текста') do
  begin
   DefaultValue := Ord(ev_itLeft);
   EmptyMapping := k2_tiStyle;
  end;//Justification
  with DefineProperty(k2_tiVisible, t_Bool, 'Видимый') do
  begin
   DefaultValue := Ord(true);
   EmptyMapping := k2_tiStyle;
  end;//Visible
  with DefineProperty(k2_tiApply2Para, t_Bool, 'Параграфный') do
  begin
   DefaultValue := Ord(true);
   EmptyMapping := k2_tiStyle;
  end;//Apply2Para
  with DefineProperty(k2_tiLeftIndent, t_Inch, 'Левый отступ') do
  begin
   DefaultValue := 0;
   EmptyMapping := k2_tiStyle;
  end;//LeftIndent
  with DefineProperty(k2_tiRightIndent, t_Inch, 'Правый отступ') do
  begin
   DefaultValue := 0;
   EmptyMapping := k2_tiStyle;
  end;//RightIndent
  with DefineProperty(k2_tiFirstIndent, t_Inch, 'Отступ красной строки') do
  begin
   DefaultValue := def_FirstIndent;
   EmptyMapping := k2_tiStyle;
  end;//FirstIndent
  with DefineProperty(k2_tiFirstLineIndent, t_Inch, 'Отступ красной строки относительно левого отступа (пока не поддерживается)') do
  begin
   DefaultValue := def_FirstLineIndent;
   EmptyMapping := k2_tiStyle;
  end;//FirstLineIndent
  with DefineProperty(k2_tiWidth, t_Inch, 'Ширина (устарело)') do
  begin
   DefaultValue := def_inchNormalParaStyleWidth;
   EmptyMapping := k2_tiStyle;
  end;//Width
  with DefineProperty(k2_tiSpaceBefore, t_Inch, 'Отступ от предыдущего') do
  begin
   DefaultValue := 0;
   EmptyMapping := k2_tiStyle;
  end;//SpaceBefore
  with DefineProperty(k2_tiSpaceAfter, t_Inch, 'Отступ до следующего') do
  begin
   DefaultValue := 0;
   EmptyMapping := k2_tiStyle;
  end;//SpaceAfter
  with DefineProperty(k2_tiAllowHyphen, t_Bool, 'Разрешены переносы') do
  begin
   DefaultValue := Ord(false);
  end;//AllowHyphen
  with Tk2CustomProperty(Prop[k2_tiStyle]) do
  begin
   Shared := true;
   AtomType := t_TextStyle;
  end;//Style
  with DefineProperty(k2_tiCollapsable, t_Bool, '') do
  begin
   DefaultValue := Ord(false);
   EmptyMapping := k2_tiStyle;
  end;//Collapsable
  t_TextStyle_Header := TextStyle_Header_Tag.Create(Self, 'Стиль оформления текста Верхний колонтитул');
  try
   t_TextStyle_Header.InheriteFrom(t_OList);
   t_TextStyle_Header.StringID := g_InnerTypeID;
   k2_idTextStyle_Header := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_TextStyle_Header.DefineChildrenPrim(t_Para);
   DefineProperty(k2_tiHeader, t_TextStyle_Header, 'Верхний колонтитул');
   t_TextStyle_Header.Recalc;
  except
   FreeAndNil(t_TextStyle_Header);
  end;//try..except
  with t_TextStyle_Header.ArrayProp[k2_tiChildren] do
  begin
   EmptyMapping := k2_tiStyle;
  end;//Header
  t_TextStyle_Footer := TextStyle_Footer_Tag.Create(Self, 'Стиль оформления текста Нижний колонтитул');
  try
   t_TextStyle_Footer.InheriteFrom(t_OList);
   t_TextStyle_Footer.StringID := g_InnerTypeID;
   k2_idTextStyle_Footer := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_TextStyle_Footer.DefineChildrenPrim(t_Para);
   DefineProperty(k2_tiFooter, t_TextStyle_Footer, 'Нижний колонтитул');
   t_TextStyle_Footer.Recalc;
  except
   FreeAndNil(t_TextStyle_Footer);
  end;//try..except
  with t_TextStyle_Footer.ArrayProp[k2_tiChildren] do
  begin
   EmptyMapping := k2_tiStyle;
  end;//Footer
  with DefineProperty(k2_tiHeaderHasOwnSpace, t_Bool, '') do
  begin
   DefaultValue := Ord(true);
   EmptyMapping := k2_tiStyle;
  end;//HeaderHasOwnSpace
  with DefineProperty(k2_tiLineSpacing, t_Long, 'Интерлиньяж') do
  begin
   DefaultValue := Pred(High(Integer));
   EmptyMapping := k2_tiStyle;
  end;//LineSpacing
  with DefineProperty(k2_tiIsChangeableFont, t_Bool, 'Можно ли изменять шрифт стиля кнопками на тулбаре') do
  begin
   DefaultValue := Ord(true);
   EmptyMapping := k2_tiStyle;
  end;//IsChangeableFont
  with DefineProperty(k2_tiVisibleToUser, t_Bool, 'Включать ли в таблицу стилей для пользователя') do
  begin
   DefaultValue := Ord(true);
   EmptyMapping := k2_tiStyle;
  end;//VisibleToUser
  with DefineProperty(k2_tiFont, t_Font, 'Шрифт') do
  begin
   EmptyMapping := k2_tiStyle;
  end;//Font
  with DefineProperty(k2_tiShortName, t_String, 'Заголовок, рисуемый перед параграфом данного стиля. Для {RequestLink:235050009}') do
  begin
  end;//ShortName
  with DefineProperty(k2_tiFrame, t_Frame, '') do
  begin
  end;//Frame
//#UC START# *484D2CBA0213atom*
  TevdStyleContainer.CheckValueTable(t_TextStyle);
//#UC END# *484D2CBA0213atom*
  Recalc;
  // Нормальный
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -1;
    StrA[k2_tiName] := str_TextStyle_TxtNormalANSI_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itWidth);
    AddValue(Box);
   end;//with MakeTag
  // псевдо-стиль, для объектных сегментов
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -35;
    StrA[k2_tiName] := str_TextStyle_Object_Name_Value.AsStr;
    BoolA[k2_tiVisibleToUser] := false;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := k2_TransparentValue;
     IntA[k2_tiBold] := k2_TransparentValue;
     IntA[k2_tiItalic] := k2_TransparentValue;
     IntA[k2_tiUnderline] := k2_TransparentValue;
     IntA[k2_tiStrikeout] := k2_TransparentValue;
     IntA[k2_tiForeColor] := k2_TransparentValue;
     IntA[k2_tiBackColor] := k2_TransparentValue;
     StrA[k2_tiName] := str_TextStyle_Object_Font_Name_Value.AsStr;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Слово с опечаткой
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -36;
    StrA[k2_tiName] := str_TextStyle_Mistake_Name_Value.AsStr;
    BoolA[k2_tiApply2Para] := false;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := k2_TransparentValue;
     IntA[k2_tiBold] := k2_TransparentValue;
     IntA[k2_tiItalic] := k2_TransparentValue;
     IntA[k2_tiUnderline] := k2_TransparentValue;
     IntA[k2_tiStrikeout] := k2_TransparentValue;
     IntA[k2_tiForeColor] := clRed;
     IntA[k2_tiBackColor] := k2_TransparentValue;
     IntA[k2_tiName] := k2_TransparentValue;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Цветовое выделение
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -10;
    StrA[k2_tiName] := str_TextStyle_ColorSelection_Name_Value.AsStr;
    IntA[k2_tiVisible] := k2_TransparentValue;
    BoolA[k2_tiApply2Para] := false;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiName] := k2_TransparentValue;
     IntA[k2_tiPitch] := k2_TransparentValue;
     IntA[k2_tiSize] := k2_TransparentValue;
     IntA[k2_tiBold] := k2_TransparentValue;
     IntA[k2_tiItalic] := k2_TransparentValue;
     IntA[k2_tiUnderline] := k2_TransparentValue;
     IntA[k2_tiStrikeout] := k2_TransparentValue;
     IntA[k2_tiForeColor] := clBlue;
     IntA[k2_tiBackColor] := k2_TransparentValue;
     IntA[k2_tiIndex] := k2_TransparentValue;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Гипертекстовая ссылка
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -10;
    IntA[k2_tiHandle] := -8;
    StrA[k2_tiName] := str_TextStyle_HyperLink_Name_Value.AsStr;
    BoolA[k2_tiApply2Para] := false;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := clGreen;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Стиль для интерфейсных элементов
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -38;
    StrA[k2_tiName] := str_TextStyle_Interface_Name_Value.AsStr;
    BoolA[k2_tiVisible] := true;
    BoolA[k2_tiIsChangeableFont] := false;
    BoolA[k2_tiVisibleToUser] := false;
    with cAtom(k2_tiFont) do
    begin
     StrA[k2_tiName] := str_TextStyle_Interface_Font_Name_Value.AsStr;
     IntA[k2_tiSize] := 10;
     IntA[k2_tiForeColor] := clWindowText;
     IntA[k2_tiBackColor] := clWindow;
     BoolA[k2_tiBold] := false;
     BoolA[k2_tiItalic] := false;
     BoolA[k2_tiUnderline] := false;
     BoolA[k2_tiStrikeout] := false;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Активная гиперссылка
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -8;
    IntA[k2_tiHandle] := -39;
    StrA[k2_tiName] := str_TextStyle_ActiveHyperLink_Name_Value.AsStr;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiUnderline] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Нормальный для таблиц
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -17;
    StrA[k2_tiName] := str_TextStyle_NormalTable_Name_Value.AsStr;
    IntA[k2_tiFirstIndent] := 0;
    IntA[k2_tiJustification] := Ord(ev_itWidth);
    AddValue(Box);
   end;//with MakeTag
  // Центрированный в таблице
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -17;
    IntA[k2_tiHandle] := -40;
    StrA[k2_tiName] := str_TextStyle_CenteredTable_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itCenter);
    AddValue(Box);
   end;//with MakeTag
  // Выделение для Базового Поиска
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -10;
    StrA[k2_tiName] := str_TextStyle_ColorSelectionForBaseSearch_Name_Value.AsStr;
    IntA[k2_tiHandle] := -51;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := $00A95800;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Выделение для Базового Поиска (курсив)
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -51;
    IntA[k2_tiHandle] := Ord(ev_saItalicColorSelectionForBaseSearch);
    StrA[k2_tiName] := str_TextStyle_ItalicColorSelectionForBaseSearch_Name_Value.AsStr;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiItalic] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Текст диалогов
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -38;
    StrA[k2_tiName] := str_TextStyle_Dialogs_Name_Value.AsStr;
    IntA[k2_tiHandle] := Ord(ev_saDialogs);
    BoolA[k2_tiIsChangeableFont] := false;
    BoolA[k2_tiVisibleToUser] := false;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiBackColor] := clDefault;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -38;
    StrA[k2_tiName] := str_TextStyle_TOC_Name_Value.AsStr;
    IntA[k2_tiHandle] := Ord(ev_saTOC);
    BoolA[k2_tiIsChangeableFont] := false;
    BoolA[k2_tiVisibleToUser] := false;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 10;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Внимание
   with MakeTag do
   begin
    StrA[k2_tiName] := str_TextStyle_Attention_Name_Value.AsStr;
    StrA[k2_tiShortName] := str_TextStyle_Attention_ShortName_Value.AsStr;
    IntA[k2_tiHandle] := Ord(ev_saAttention);
    IntA[k2_tiLeftIndent] := 420;
    IntA[k2_tiRightIndent] := 420;
    IntA[k2_tiSpaceBefore] := 240;
    IntA[k2_tiSpaceAfter] := 240;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiBackColor] := $DAF3F5;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Напишите нам
   with MakeTag do
   begin
    IntA[k2_tiHandle] := Ord(ev_saWriteToUs);
    StrA[k2_tiName] := str_TextStyle_WriteToUs_Name_Value.AsStr;
    BoolA[k2_tiIsChangeableFont] := false;
    BoolA[k2_tiVisibleToUser] := false;
    BoolA[k2_tiCollapsable] := true;
    IntA[k2_tiLeftIndent] := l3Inch div 8;
    IntA[k2_tiFirstIndent] := l3Inch div 8;
    IntA[k2_tiRightIndent] := l3Inch div 8;
    IntA[k2_tiFirstLineIndent] := l3Inch div 8;
    IntA[k2_tiSpaceBefore] := l3Inch div 16;
    IntA[k2_tiSpaceAfter] := l3Inch div 16;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiBackColor] := $ADFFEF;
     IntA[k2_tiSize] := 10;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
 end;//TextStyle
 // Segment
 t_Segment := DefineType(12 {Segment}, [t_Tag], 'Отрезок оформления', SegmentTag) As SegmentTag;
 with t_Segment do
 begin
  with DefineProperty(k2_tiStart, t_Position, 'Начало отрезка') do
  begin
   DefaultValue := 1;
  end;//Start
  with DefineProperty(k2_tiFinish, t_Position, 'Конец отрезка') do
  begin
   DefaultValue := Pred(High(Integer));
  end;//Finish
  with DefineProperty(k2_tiApply2Para, t_Bool, 'Применим к параграфу (не используется)') do
  begin
   DefaultValue := Ord(true);
   EmptyMapping := k2_tiStyle;
  end;//Apply2Para
  with DefineProperty(k2_tiStyle, t_Style, 'Стиль') do
  begin
   Shared := true;
  end;//Style
 end;//Segment
 // ActiveInterval
 t_ActiveInterval := DefineType(84 {ActiveInterval}, [t_NSRCTag], 'Интервал действия', ActiveIntervalTag) As ActiveIntervalTag;
 with t_ActiveInterval do
 begin
  with DefineProperty(k2_tiHandle, t_Handle, 'Идентификатор') do
  begin
  end;//Handle
  with DefineProperty(k2_tiStart, t_Date, 'Дата начала') do
  begin
  end;//Start
  with DefineProperty(k2_tiComment, t_String, 'Комментарий') do
  begin
  end;//Comment
  with DefineProperty(k2_tiType, t_Type, 'Тип') do
  begin
  end;//Type
  with DefineProperty(k2_tiFinish, t_Date, 'Дата завершения') do
  begin
  end;//Finish
 end;//ActiveInterval
 // Alarm
 t_Alarm := DefineType(85 {Alarm}, [t_NSRCTag], 'Интервал действия', AlarmTag) As AlarmTag;
 with t_Alarm do
 begin
  with DefineProperty(k2_tiHandle, t_Handle, 'Идентификатор') do
  begin
  end;//Handle
  with DefineProperty(k2_tiStart, t_Date, 'Дата начала') do
  begin
  end;//Start
  with DefineProperty(k2_tiComment, t_String, 'Комментарий') do
  begin
  end;//Comment
  SetNeedMarkModifiedAllExcept(k2_tiName);
 end;//Alarm
 // LogRecordPrim
 t_LogRecordPrim := DefineType(112 {LogRecordPrim}, [t_NSRCTag], '', LogRecordPrimTag) As LogRecordPrimTag;
 with t_LogRecordPrim do
 begin
  with DefineProperty(k2_tiType, t_Type, 'Тип') do
  begin
  end;//Type
  with DefineProperty(k2_tiStart, t_Date, 'Дата начала') do
  begin
  end;//Start
 end;//LogRecordPrim
 // LogRecord
 t_LogRecord := DefineType(78 {LogRecord}, [t_LogRecordPrim], '', LogRecordTag) As LogRecordTag;
 with t_LogRecord do
 begin
  with DefineProperty(k2_tiUser, t_DictItem, 'Пользователь') do
  begin
  end;//User
  with DefineProperty(k2_tiTime, t_Time, 'Время') do
  begin
  end;//Time
  SetNeedMarkModifiedAllExcept(k2_tiName);
 end;//LogRecord
 // StagePrim
 t_StagePrim := DefineType(79 {StagePrim}, [t_LogRecordPrim], '', StagePrimTag) As StagePrimTag;
 with t_StagePrim do
 begin
  with DefineProperty(k2_tiUser, t_DictItem, 'Пользователь') do
  begin
  end;//User
 end;//StagePrim
 // Stage
 t_Stage := DefineType(80 {Stage}, [t_StagePrim], 'Этап', StageTag) As StageTag;
 with t_Stage do
 begin
  with DefineProperty(k2_tiFinish, t_Date, 'Дата окончания') do
  begin
  end;//Finish
  SetNeedMarkModifiedAllExcept(k2_tiName);
 end;//Stage
 // NumANDDate
 t_NumANDDate := DefineType(82 {NumANDDate}, [t_LogRecordPrim], 'Дата/номер', NumANDDateTag) As NumANDDateTag;
 with t_NumANDDate do
 begin
  with DefineProperty(k2_tiHandle, t_Handle, 'Идентификатор') do
  begin
  end;//Handle
  with DefineProperty(k2_tiNumber, t_String, 'Номер') do
  begin
  end;//Number
  with DefineProperty(k2_tiComment, t_String, 'Комментарий') do
  begin
  end;//Comment
  with DefineProperty(k2_tiDocID, t_Handle, 'Ссылка на документ (точнее - к Вовану)') do
  begin
  end;//DocID
  with DefineProperty(k2_tiLinkAddress, t_Address, '') do
  begin
  end;//LinkAddress
  SetNeedMarkModifiedAllExcept(k2_tiName);
 end;//NumANDDate
 // Check
 t_Check := DefineType(81 {Check}, [t_StagePrim], 'Вычитка', CheckTag) As CheckTag;
 with t_Check do
 begin
  with DefineProperty(k2_tiHandle, t_Handle, 'Идентификатор') do
  begin
  end;//Handle
  with DefineProperty(k2_tiSource, t_Long, 'Источник') do
  begin
  end;//Source
  with DefineProperty(k2_tiComment, t_String, 'Комментарий') do
  begin
  end;//Comment
  SetNeedMarkModifiedAllExcept(k2_tiName);
 end;//Check
 // PIRec
 t_PIRec := DefineType(88 {PIRec}, [t_NSRCTag], 'Источник опубликования', PIRecTag) As PIRecTag;
 with t_PIRec do
 begin
  with DefineProperty(k2_tiHandle, t_Handle, 'Идентификатор') do
  begin
  end;//Handle
  with DefineProperty(k2_tiSource, t_DictItemEx, 'Источник') do
  begin
  end;//Source
  with DefineProperty(k2_tiStart, t_Date, 'Дата начала') do
  begin
  end;//Start
  with DefineProperty(k2_tiFinish, t_Date, 'Дата окончания') do
  begin
  end;//Finish
  with DefineProperty(k2_tiNumber, t_String, 'Номер') do
  begin
  end;//Number
  with DefineProperty(k2_tiComment, t_String, 'Комментарий') do
  begin
  end;//Comment
  with DefineProperty(k2_tiPages, t_String, 'Страницы') do
  begin
  end;//Pages
  with DefineProperty(k2_tiLinkComment, t_String, 'Комментарий к связи документ->издание') do
  begin
  end;//LinkComment
  with DefineProperty(k2_tiIsPeriodic, t_Bool, '') do
  begin
   DefaultValue := Ord(true);
  end;//IsPeriodic
  with DefineProperty(k2_tiFlags, t_Long, 'http://mdp.garant.ru/pages/viewpage.action?pageId=336135727') do
  begin
  end;//Flags
  SetNeedMarkModifiedAllExcept(k2_tiName);
 end;//PIRec
 // TextSegment
 t_TextSegment := DefineType(13 {TextSegment}, [t_Segment], 'Отрезок оформления текста', TextSegmentTag) As TextSegmentTag;
 with t_TextSegment do
 begin
  AtomClass := TevBaseSegment;
//#UC START# *484FDC4F013Fatom1*
//#UC END# *484FDC4F013Fatom1*
  with Tk2CustomProperty(Prop[k2_tiStyle]) do
  begin
   AtomType := t_TextStyle;
  end;//Style
  with DefineProperty(k2_tiFont, t_Font, 'Шрифт') do
  begin
   EmptyMapping := k2_tiStyle;
  end;//Font
  with DefineProperty(k2_tiVisible, t_Bool, 'Видимый') do
  begin
   DefaultValue := Ord(true);
   EmptyMapping := k2_tiStyle;
  end;//Visible
//#UC START# *484FDC4F013Fatom*
  ParamsForClone := l3LongArray([k2_tiStyle, k2_tiFont, k2_tiVisible]);
//#UC END# *484FDC4F013Fatom*
 end;//TextSegment
 // TabStop
 t_TabStop := DefineType(114 {TabStop}, [t_Tag], 'Позиция табуляции', TabStopTag) As TabStopTag;
 with t_TabStop do
 begin
  with DefineProperty(k2_tiStart, t_Inch, 'Позиция') do
  begin
  end;//Start
  t_TabStop_Type := TabStop_Type_Tag.Create(Self, 'Позиция табуляции Тип');
  try
   t_TabStop_Type.InheriteFrom(t_Enum);
   t_TabStop_Type.StringID := g_InnerTypeID;
   k2_idTabStop_Type := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_TabStop_Type.AtomType := TypeInfo(Tl3TabStopStyle);
   DefineProperty(k2_tiType, t_TabStop_Type, 'Тип');
   t_TabStop_Type.Recalc;
  except
   FreeAndNil(t_TabStop_Type);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiType]) do
  begin
   DefaultValue := Ord(l3_tssLeft);
  end;//Type
  with DefineProperty(k2_tiText, t_String, 'Символ заполнитель') do
  begin
  end;//Text
 end;//TabStop
 // SgLHandle
 t_SgLHandle := DefineType(33 {SgLHandle}, [t_Handle], 'Идентификатор слоя отрезков оформления.', SgLHandleAtom) As SgLHandleAtom;
 with t_SgLHandle do
 begin
  WrapperType := WevSgLHandle;
 end;//SgLHandle
 // HyperLink
 t_HyperLink := DefineType(14 {HyperLink}, [t_TextSegment, t_ObjectWithHandle], 'Гипертекстовая ссылка', HyperLinkTag) As HyperLinkTag;
 with t_HyperLink do
 begin
  AtomClass := TevHyperTextSegment;
//#UC START# *485649E10305atom1*
//#UC END# *485649E10305atom1*
  with Tk2CustomProperty(Prop[k2_tiApply2Para]) do
  begin
   DefaultValue := Ord(false);
  end;//Apply2Para
  with Tk2CustomProperty(Prop[k2_tiStyle]) do
  begin
   DefaultValue := ev_saHyperlink;
  end;//Style
  with DefineProperty(k2_tiURL, t_String, 'Путь') do
  begin
  end;//URL
  t_HyperLink_Children := HyperLink_Children_Tag.Create(Self, 'Гипертекстовая ссылка Address');
  try
   t_HyperLink_Children.InheriteFrom(t_OList);
   t_HyperLink_Children.StringID := g_InnerTypeID;
   k2_idHyperLink_Children := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_HyperLink_Children.DefineChildrenPrim(t_Address);
   DefineChildrenPrim(t_Address, t_HyperLink_Children);
   t_HyperLink_Children.Recalc;
  except
   FreeAndNil(t_HyperLink_Children);
  end;//try..except
  with ArrayProp[k2_tiChildren] do
  begin
  end;//Address
//#UC START# *485649E10305atom*
  //ParamsForClone := l3CatLongArray(t_TextSegment.ParamsForClone, [k2_tiViewKind]);
  ArrayProp[k2_tiChildren].SetSortTags([k2_tiDocID, k2_tiSubID]);
//#UC END# *485649E10305atom*
 end;//HyperLink
 // ObjectSegment
 t_ObjectSegment := DefineType(51 {ObjectSegment}, [t_TextSegment], 'Контейнер для объекта', ObjectSegmentTag) As ObjectSegmentTag;
 with t_ObjectSegment do
 begin
  AtomClass := TevdNativeObjectSegmentClass;
//#UC START# *48564C5800DDatom1*
//#UC END# *48564C5800DDatom1*
  with Tk2CustomProperty(Prop[k2_tiStyle]) do
  begin
   ReadOnly := true;
   DefaultValue := ev_saObject;
  end;//Style
  t_ObjectSegment_Children := ObjectSegment_Children_Tag.Create(Self, 'Контейнер для объекта ');
  try
   t_ObjectSegment_Children.InheriteFrom(t_OList);
   t_ObjectSegment_Children.StringID := g_InnerTypeID;
   k2_idObjectSegment_Children := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_ObjectSegment_Children.DefineChildrenPrim(t_Para);
   DefineChildrenPrim(t_Para, t_ObjectSegment_Children);
   t_ObjectSegment_Children.Recalc;
  except
   FreeAndNil(t_ObjectSegment_Children);
  end;//try..except
  with ArrayProp[k2_tiChildren] do
  begin
  end;//
  with DefineProperty(k2_tiBaseLine, t_Inch, 'Базовая линия') do
  begin
  end;//BaseLine
//#UC START# *48564C5800DDatom*
  ParamsForClone := l3CatLongArray(t_TextSegment.ParamsForClone, [k2_tiChildren]);
//#UC END# *48564C5800DDatom*
 end;//ObjectSegment
 // PageProperties
 t_PageProperties := DefineType(106 {PageProperties}, [t_Tag], 'Свойства страницы', PagePropertiesTag) As PagePropertiesTag;
 with t_PageProperties do
 begin
  AtomClass := Tk2ParentedTagObject;
  t_PageProperties_Orientation := PageProperties_Orientation_Tag.Create(Self, 'Свойства страницы Ориентация');
  try
   t_PageProperties_Orientation.InheriteFrom(t_Enum);
   t_PageProperties_Orientation.StringID := g_InnerTypeID;
   k2_idPageProperties_Orientation := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_PageProperties_Orientation.AtomType := TypeInfo(TevPageOrientation);
   DefineProperty(k2_tiOrientation, t_PageProperties_Orientation, 'Ориентация');
   t_PageProperties_Orientation.Recalc;
  except
   FreeAndNil(t_PageProperties_Orientation);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiOrientation]) do
  begin
   DefaultValue := Ord(ev_poPortrait);
  end;//Orientation
  with DefineProperty(k2_tiWidth, t_Inch, 'Ширина') do
  begin
   DefaultValue := def_inchPaperWidth;
  end;//Width
  with DefineProperty(k2_tiHeight, t_Inch, 'Высота') do
  begin
   DefaultValue := def_inchPaperHeight;
  end;//Height
  with DefineProperty(k2_tiLeftIndent, t_Inch, 'Отступ слева') do
  begin
   DefaultValue := def_inchPaperLeft;
  end;//LeftIndent
  with DefineProperty(k2_tiRightIndent, t_Inch, 'Отступ справа') do
  begin
   DefaultValue := def_inchPaperRight;
  end;//RightIndent
  with DefineProperty(k2_tiSpaceBefore, t_Inch, 'Отступ сверху') do
  begin
   DefaultValue := def_inchPaperTop;
  end;//SpaceBefore
  with DefineProperty(k2_tiSpaceAfter, t_Inch, 'Отступ снизу') do
  begin
   DefaultValue := def_inchPaperBottom;
  end;//SpaceAfter
 end;//PageProperties
 // LeafPara
 t_LeafPara := DefineType(117 {LeafPara}, [t_Para], '"Листьевой" параграф', LeafParaTag) As LeafParaTag;
 with t_LeafPara do
 begin
  AtomClass := LeafParaTagClass;
  InterfaceFactoryType := TevLeafParaInterfaceFactory;
  with DefineProperty(k2_tiContentsLevel, t_Long, 'Уровень оглавления') do
  begin
   DefaultValue := Pred(High(Integer));
  end;//ContentsLevel
  with Tk2CustomProperty(Prop[k2_tiRubber]) do
  begin
   DefaultValue := Ord(true);
  end;//Rubber
 end;//LeafPara
 // PageBreak
 t_PageBreak := DefineType(103 {PageBreak}, [t_LeafPara], 'Разрыв страницы', PageBreakTag) As PageBreakTag;
 with t_PageBreak do
 begin
  AtomClass := PageBreakTagClass;
  InterfaceFactoryType := TevPageBreakInterfaceFactory;
//#UC START# *48566A8103C1atom1*
//#UC END# *48566A8103C1atom1*
  with DefineProperty(k2_tiHeight, t_Inch, '') do
  begin
   ReadOnly := true;
   DefaultValue := l3Inch div 6;
  end;//Height
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   ReadOnly := true;
   DefaultValue := 0;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   ReadOnly := true;
   DefaultValue := def_inchNormalParaStyleWidth;
  end;//Width
//#UC START# *48566A8103C1atom*
  UndefineProperties([k2_tiFrame, k2_tiSpaceBefore,
                      k2_tiSpaceAfter, k2_tiVisible, k2_tiRightIndent,
                      k2_tiBackColor]);
//#UC END# *48566A8103C1atom*
 end;//PageBreak
 // SectionBreak
 t_SectionBreak := DefineType(104 {SectionBreak}, [t_PageBreak], 'Разрыв раздела', SectionBreakTag) As SectionBreakTag;
 with t_SectionBreak do
 begin
  AtomClass := SectionBreakTagClass;
  InterfaceFactoryType := TevSectionBreakInterfaceFactory;
  with DefineProperty(k2_tiParas, t_PageProperties, 'Параметры страницы') do
  begin
  end;//Paras
 end;//SectionBreak
 // SegmentsLayer
 t_SegmentsLayer := DefineType(19 {SegmentsLayer}, [t_OList, t_ObjectWithHandle], 'Слой отрезков оформления', SegmentsLayerTag) As SegmentsLayerTag;
 with t_SegmentsLayer do
 begin
  AtomClass := TevdSegmentsLayer;
  WrapperType := WevLayer;
  with DefineChildrenPrim(t_TextSegment) do
  begin
   SortIndex := k2_tiNative;
  end;//
  with Tk2CustomProperty(Prop[k2_tiHandle]) do
  begin
   AtomType := t_SgLHandle;
  end;//Handle
 end;//SegmentsLayer
 t_Justification.Recalc;
 t_Bullet.Recalc;
 t_Date.Recalc;
 t_Position.Recalc;
 t_Type.Recalc;
 t_Time.Recalc;
 t_ObjectWithHandle.Recalc;
 t_Address.Recalc;
 t_SbLHandle.Recalc;
 t_FontName.Recalc;
 t_Font.Recalc;
 t_Style.Recalc;
 t_FramePart.Recalc;
 t_Frame.Recalc;
 t_NSRCTag.Recalc;
 t_DictRec.Recalc;
 t_DictItem.Recalc;
 t_AutoClass.Recalc;
 t_DictItemEx.Recalc;
 t_Sub.Recalc;
 t_SubLayer.Recalc;
 t_DocumentSub.Recalc;
 t_Bookmark.Recalc;
 t_Mark.Recalc;
 t_Para.Recalc;
 t_DocSubLayer.Recalc;
 t_TextStyle.Recalc;
 t_Segment.Recalc;
 t_ActiveInterval.Recalc;
 t_Alarm.Recalc;
 t_LogRecordPrim.Recalc;
 t_LogRecord.Recalc;
 t_StagePrim.Recalc;
 t_Stage.Recalc;
 t_NumANDDate.Recalc;
 t_Check.Recalc;
 t_PIRec.Recalc;
 t_TextSegment.Recalc;
 t_TabStop.Recalc;
 t_SgLHandle.Recalc;
 t_HyperLink.Recalc;
 t_ObjectSegment.Recalc;
 t_PageProperties.Recalc;
 t_LeafPara.Recalc;
 t_PageBreak.Recalc;
 t_SectionBreak.Recalc;
 t_SegmentsLayer.Recalc;
end;

// определяем стандартные методы схемы


function TevdNativeSchema.pm_GetTypeByHandle(H: Integer): Tk2Type;
begin
 Case H of
  7 {Justification}:
   Result := t_Justification;
  111 {Bullet}:
   Result := t_Bullet;
  75 {Date}:
   Result := t_Date;
  31 {Position}:
   Result := t_Position;
  76 {Type}:
   Result := t_Type;
  113 {Time}:
   Result := t_Time;
  32 {ObjectWithHandle}:
   Result := t_ObjectWithHandle;
  77 {Address}:
   Result := t_Address;
  34 {SbLHandle}:
   Result := t_SbLHandle;
  35 {FontName}:
   Result := t_FontName;
  36 {Font}:
   Result := t_Font;
  38 {Style}:
   Result := t_Style;
  40 {FramePart}:
   Result := t_FramePart;
  41 {Frame}:
   Result := t_Frame;
  89 {NSRCTag}:
   Result := t_NSRCTag;
  74 {DictRec}:
   Result := t_DictRec;
  73 {DictItem}:
   Result := t_DictItem;
  86 {AutoClass}:
   Result := t_AutoClass;
  87 {DictItemEx}:
   Result := t_DictItemEx;
  15 {Sub}:
   Result := t_Sub;
  17 {SubLayer}:
   Result := t_SubLayer;
  11 {DocumentSub}:
   Result := t_DocumentSub;
  115 {Bookmark}:
   Result := t_Bookmark;
  116 {Mark}:
   Result := t_Mark;
  21 {Para}:
   Result := t_Para;
  18 {DocSubLayer}:
   Result := t_DocSubLayer;
  39 {TextStyle}:
   Result := t_TextStyle;
  12 {Segment}:
   Result := t_Segment;
  84 {ActiveInterval}:
   Result := t_ActiveInterval;
  85 {Alarm}:
   Result := t_Alarm;
  112 {LogRecordPrim}:
   Result := t_LogRecordPrim;
  78 {LogRecord}:
   Result := t_LogRecord;
  79 {StagePrim}:
   Result := t_StagePrim;
  80 {Stage}:
   Result := t_Stage;
  82 {NumANDDate}:
   Result := t_NumANDDate;
  81 {Check}:
   Result := t_Check;
  88 {PIRec}:
   Result := t_PIRec;
  13 {TextSegment}:
   Result := t_TextSegment;
  114 {TabStop}:
   Result := t_TabStop;
  33 {SgLHandle}:
   Result := t_SgLHandle;
  14 {HyperLink}:
   Result := t_HyperLink;
  51 {ObjectSegment}:
   Result := t_ObjectSegment;
  106 {PageProperties}:
   Result := t_PageProperties;
  117 {LeafPara}:
   Result := t_LeafPara;
  103 {PageBreak}:
   Result := t_PageBreak;
  104 {SectionBreak}:
   Result := t_SectionBreak;
  19 {SegmentsLayer}:
   Result := t_SegmentsLayer;
  else
  begin
   if (t_Address_ViewKind <> nil) AND (t_Address_ViewKind.StringID = H) then
    Result := t_Address_ViewKind
   else
   if (t_Font_Index <> nil) AND (t_Font_Index.StringID = H) then
    Result := t_Font_Index
   else
   if (t_Font_Pitch <> nil) AND (t_Font_Pitch.StringID = H) then
    Result := t_Font_Pitch
   else
   if (t_DictItem_Flags <> nil) AND (t_DictItem_Flags.StringID = H) then
    Result := t_DictItem_Flags
   else
   if (t_Sub_Classes <> nil) AND (t_Sub_Classes.StringID = H) then
    Result := t_Sub_Classes
   else
   if (t_Sub_AutoClasses <> nil) AND (t_Sub_AutoClasses.StringID = H) then
    Result := t_Sub_AutoClasses
   else
   if (t_Sub_Types <> nil) AND (t_Sub_Types.StringID = H) then
    Result := t_Sub_Types
   else
   if (t_Sub_KeyWords <> nil) AND (t_Sub_KeyWords.StringID = H) then
    Result := t_Sub_KeyWords
   else
   if (t_Sub_Prefix <> nil) AND (t_Sub_Prefix.StringID = H) then
    Result := t_Sub_Prefix
   else
   if (t_Sub_ServiceInfo <> nil) AND (t_Sub_ServiceInfo.StringID = H) then
    Result := t_Sub_ServiceInfo
   else
   if (t_Para_Subs <> nil) AND (t_Para_Subs.StringID = H) then
    Result := t_Para_Subs
   else
   if (t_TextStyle_Header <> nil) AND (t_TextStyle_Header.StringID = H) then
    Result := t_TextStyle_Header
   else
   if (t_TextStyle_Footer <> nil) AND (t_TextStyle_Footer.StringID = H) then
    Result := t_TextStyle_Footer
   else
   if (t_TabStop_Type <> nil) AND (t_TabStop_Type.StringID = H) then
    Result := t_TabStop_Type
   else
   if (t_HyperLink_Children <> nil) AND (t_HyperLink_Children.StringID = H) then
    Result := t_HyperLink_Children
   else
   if (t_ObjectSegment_Children <> nil) AND (t_ObjectSegment_Children.StringID = H) then
    Result := t_ObjectSegment_Children
   else
   if (t_PageProperties_Orientation <> nil) AND (t_PageProperties_Orientation.StringID = H) then
    Result := t_PageProperties_Orientation
   else
    Result := inherited pm_GetTypeByHandle(H);
  end;//else
 end;//Case H
end;

procedure TevdNativeSchema.Cleanup;
begin
 t_Justification.InterfaceFactory := nil;
 t_Justification.ToolFactory := nil;
 t_Bullet.InterfaceFactory := nil;
 t_Bullet.ToolFactory := nil;
 t_Date.InterfaceFactory := nil;
 t_Date.ToolFactory := nil;
 t_Position.InterfaceFactory := nil;
 t_Position.ToolFactory := nil;
 t_Type.InterfaceFactory := nil;
 t_Type.ToolFactory := nil;
 t_Time.InterfaceFactory := nil;
 t_Time.ToolFactory := nil;
 t_ObjectWithHandle.InterfaceFactory := nil;
 t_ObjectWithHandle.ToolFactory := nil;
 t_Address.InterfaceFactory := nil;
 t_Address.ToolFactory := nil;
 t_Address_ViewKind.InterfaceFactory := nil;
 t_SbLHandle.InterfaceFactory := nil;
 t_SbLHandle.ToolFactory := nil;
 t_FontName.InterfaceFactory := nil;
 t_FontName.ToolFactory := nil;
 t_Font.InterfaceFactory := nil;
 t_Font.ToolFactory := nil;
 t_Font_Index.InterfaceFactory := nil;
 t_Font_Pitch.InterfaceFactory := nil;
 t_Style.InterfaceFactory := nil;
 t_Style.ToolFactory := nil;
 t_FramePart.InterfaceFactory := nil;
 t_FramePart.ToolFactory := nil;
 t_Frame.InterfaceFactory := nil;
 t_Frame.ToolFactory := nil;
 t_NSRCTag.InterfaceFactory := nil;
 t_NSRCTag.ToolFactory := nil;
 t_DictRec.InterfaceFactory := nil;
 t_DictRec.ToolFactory := nil;
 t_DictItem.InterfaceFactory := nil;
 t_DictItem.ToolFactory := nil;
 t_DictItem_Flags.InterfaceFactory := nil;
 t_AutoClass.InterfaceFactory := nil;
 t_AutoClass.ToolFactory := nil;
 t_DictItemEx.InterfaceFactory := nil;
 t_DictItemEx.ToolFactory := nil;
 t_Sub.InterfaceFactory := nil;
 t_Sub.ToolFactory := nil;
 t_Sub_Classes.InterfaceFactory := nil;
 t_Sub_AutoClasses.InterfaceFactory := nil;
 t_Sub_Types.InterfaceFactory := nil;
 t_Sub_KeyWords.InterfaceFactory := nil;
 t_Sub_Prefix.InterfaceFactory := nil;
 t_Sub_ServiceInfo.InterfaceFactory := nil;
 t_SubLayer.InterfaceFactory := nil;
 t_SubLayer.ToolFactory := nil;
 t_DocumentSub.InterfaceFactory := nil;
 t_DocumentSub.ToolFactory := nil;
 t_Bookmark.InterfaceFactory := nil;
 t_Bookmark.ToolFactory := nil;
 t_Mark.InterfaceFactory := nil;
 t_Mark.ToolFactory := nil;
 t_Para.InterfaceFactory := nil;
 t_Para.ToolFactory := nil;
 t_Para_Subs.InterfaceFactory := nil;
 t_DocSubLayer.InterfaceFactory := nil;
 t_DocSubLayer.ToolFactory := nil;
 t_TextStyle.InterfaceFactory := nil;
 t_TextStyle.ToolFactory := nil;
 t_TextStyle_Header.InterfaceFactory := nil;
 t_TextStyle_Footer.InterfaceFactory := nil;
 t_Segment.InterfaceFactory := nil;
 t_Segment.ToolFactory := nil;
 t_ActiveInterval.InterfaceFactory := nil;
 t_ActiveInterval.ToolFactory := nil;
 t_Alarm.InterfaceFactory := nil;
 t_Alarm.ToolFactory := nil;
 t_LogRecordPrim.InterfaceFactory := nil;
 t_LogRecordPrim.ToolFactory := nil;
 t_LogRecord.InterfaceFactory := nil;
 t_LogRecord.ToolFactory := nil;
 t_StagePrim.InterfaceFactory := nil;
 t_StagePrim.ToolFactory := nil;
 t_Stage.InterfaceFactory := nil;
 t_Stage.ToolFactory := nil;
 t_NumANDDate.InterfaceFactory := nil;
 t_NumANDDate.ToolFactory := nil;
 t_Check.InterfaceFactory := nil;
 t_Check.ToolFactory := nil;
 t_PIRec.InterfaceFactory := nil;
 t_PIRec.ToolFactory := nil;
 t_TextSegment.InterfaceFactory := nil;
 t_TextSegment.ToolFactory := nil;
 t_TabStop.InterfaceFactory := nil;
 t_TabStop.ToolFactory := nil;
 t_TabStop_Type.InterfaceFactory := nil;
 t_SgLHandle.InterfaceFactory := nil;
 t_SgLHandle.ToolFactory := nil;
 t_HyperLink.InterfaceFactory := nil;
 t_HyperLink.ToolFactory := nil;
 t_HyperLink_Children.InterfaceFactory := nil;
 t_ObjectSegment.InterfaceFactory := nil;
 t_ObjectSegment.ToolFactory := nil;
 t_ObjectSegment_Children.InterfaceFactory := nil;
 t_PageProperties.InterfaceFactory := nil;
 t_PageProperties.ToolFactory := nil;
 t_PageProperties_Orientation.InterfaceFactory := nil;
 t_LeafPara.InterfaceFactory := nil;
 t_LeafPara.ToolFactory := nil;
 t_PageBreak.InterfaceFactory := nil;
 t_PageBreak.ToolFactory := nil;
 t_SectionBreak.InterfaceFactory := nil;
 t_SectionBreak.ToolFactory := nil;
 t_SegmentsLayer.InterfaceFactory := nil;
 t_SegmentsLayer.ToolFactory := nil;
 FreeAndNil(t_Justification);
 FreeAndNil(t_Bullet);
 FreeAndNil(t_Date);
 FreeAndNil(t_Position);
 FreeAndNil(t_Type);
 FreeAndNil(t_Time);
 FreeAndNil(t_ObjectWithHandle);
 FreeAndNil(t_Address);
 FreeAndNil(t_Address_ViewKind);
 FreeAndNil(t_SbLHandle);
 FreeAndNil(t_FontName);
 FreeAndNil(t_Font);
 FreeAndNil(t_Font_Index);
 FreeAndNil(t_Font_Pitch);
 FreeAndNil(t_Style);
 FreeAndNil(t_FramePart);
 FreeAndNil(t_Frame);
 FreeAndNil(t_NSRCTag);
 FreeAndNil(t_DictRec);
 FreeAndNil(t_DictItem);
 FreeAndNil(t_DictItem_Flags);
 FreeAndNil(t_AutoClass);
 FreeAndNil(t_DictItemEx);
 FreeAndNil(t_Sub);
 FreeAndNil(t_Sub_Classes);
 FreeAndNil(t_Sub_AutoClasses);
 FreeAndNil(t_Sub_Types);
 FreeAndNil(t_Sub_KeyWords);
 FreeAndNil(t_Sub_Prefix);
 FreeAndNil(t_Sub_ServiceInfo);
 FreeAndNil(t_SubLayer);
 FreeAndNil(t_DocumentSub);
 FreeAndNil(t_Bookmark);
 FreeAndNil(t_Mark);
 FreeAndNil(t_Para);
 FreeAndNil(t_Para_Subs);
 FreeAndNil(t_DocSubLayer);
 FreeAndNil(t_TextStyle);
 FreeAndNil(t_TextStyle_Header);
 FreeAndNil(t_TextStyle_Footer);
 FreeAndNil(t_Segment);
 FreeAndNil(t_ActiveInterval);
 FreeAndNil(t_Alarm);
 FreeAndNil(t_LogRecordPrim);
 FreeAndNil(t_LogRecord);
 FreeAndNil(t_StagePrim);
 FreeAndNil(t_Stage);
 FreeAndNil(t_NumANDDate);
 FreeAndNil(t_Check);
 FreeAndNil(t_PIRec);
 FreeAndNil(t_TextSegment);
 FreeAndNil(t_TabStop);
 FreeAndNil(t_TabStop_Type);
 FreeAndNil(t_SgLHandle);
 FreeAndNil(t_HyperLink);
 FreeAndNil(t_HyperLink_Children);
 FreeAndNil(t_ObjectSegment);
 FreeAndNil(t_ObjectSegment_Children);
 FreeAndNil(t_PageProperties);
 FreeAndNil(t_PageProperties_Orientation);
 FreeAndNil(t_LeafPara);
 FreeAndNil(t_PageBreak);
 FreeAndNil(t_SectionBreak);
 FreeAndNil(t_SegmentsLayer);
 inherited;
end;


initialization
 TevdNativeSchema.SetAsDefault;

end.