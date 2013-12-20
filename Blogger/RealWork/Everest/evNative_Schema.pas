unit evNative_Schema;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evNative_Schema.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TagTable::Class>> Shared Delphi::Everest::Standard::evNative
//
// Родная схема EVD-документов
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  l3Interfaces,
  evdTypes,
  ExprDraw,
  evdStyles,
  evQueryCardInt,
  l3Tree,
  k2Tag_Const,
  k2IUnknown_Const,
  k2Long_Const,
  k2Handle_Const,
  k2Inch_Const,
  k2Bool_Const,
  k2Color_Const,
  k2String_Const,
  k2RawData_Const,
  Justification_Const,
  Date_Const,
  Bullet_Const,
  Type_Const,
  Address_Const,
  evdNative_Schema,
  ObjectWithHandle_Const,
  SbLHandle_Const,
  Font_Const,
  evdFrame_Const,
  evdTextStyle_Const,
  DictItem_Const,
  Sub_Const,
  DocSubLayer_Const,
  Para_Const,
  ActiveInterval_Const,
  Alarm_Const,
  LogRecord_Const,
  Stage_Const,
  NumANDDate_Const,
  Check_Const,
  PIRec_Const,
  SegmentsLayer_Const,
  TabStop_Const,
  HyperLink_Const,
  ObjectSegment_Const,
  PageProperties_Const,
  LeafPara_Const,
  StyledLeafPara_Const,
  TextPara_Const,
  ControlPara_Const,
  ParaList_Const,
  HFParent_Const,
  Header_Const,
  Footer_Const,
  Block_Const,
  Document_Const,
  SimpleDocument_Const,
  DictEntryBlock_Const,
  TableCell_Const,
  SBSCell_Const,
  TableRow_Const,
  SBSRow_Const,
  Table_Const,
  ReqCell_Const,
  ReqRow_Const,
  ControlsBlock_Const,
  BitmapPara_Const,
  evBitmapParaBitmapContainer,
  XMLTag_Const,
  AttrName_Const,
  evTextStyle_Const,
  Participant_Const,
  ContentsElement_Const,
  TableTextPara_Const,
  SimpleDocumentTextPara_Const,
  Version_Const,
  ImageListBitmap_Const,
  k2Int64_Const,
  DecorTextPara_Const,
  Formula_Const,
  Division_Const,
  AnnoTopic_Const,
  QueryCard_Const,
  XML_Const,
  ExtDataPara_Const,
  AttrValue_Const,
  Attr_Const,
  TagName_Const,
  TagBody_Const,
  TreePara_Const,
  CommentPara_Const,
  SBS_Const,
  TinyDocument_Const,
  LeafParaDecorationsHolder_Const,
  ReqGroup_Const,
  AutoreferatDocument_Const,
  DictEntry_Const,
  Cloak_Const,
  NodeGroup_Const,
  k2Base {a},
  k2Interfaces {a},
  k2ParentedTypedSmallLeafTag {a},
  k2ParentedTypedHugeLeafTag {a},
  k2ParentedTypedSmallListTag {a},
  k2ParentedTypedHugeListTag {a}
  ;

type
 StyledLeafParaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "StyledLeafPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//StyledLeafParaTagClass

 StyledLeafParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//StyledLeafParaTag

 TextParaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "TextPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//TextParaTagClass

 TextParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TextParaTag

 TextPara_Segments_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//TextPara_Segments_Tag

 TextPara_TabStops_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//TextPara_TabStops_Tag

 DecorTextParaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "DecorTextPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//DecorTextParaTagClass

 DecorTextParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DecorTextParaTag

 ControlParaTagClass = class(Tk2ParentedTypedHugeLeafTag)
  {* Класс реализации тега "ControlPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//ControlParaTagClass

 ControlParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ControlParaTag

 ControlPara_Type_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//ControlPara_Type_Tag

 FormulaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "Formula" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//FormulaTagClass

 FormulaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//FormulaTag

 Formula_Data_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//Formula_Data_Tag

 ParaListTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "ParaList" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//ParaListTagClass

 ParaListTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ParaListTag

 ParaList_Orientation_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//ParaList_Orientation_Tag

 ParaList_Children_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//ParaList_Children_Tag

 HFParentTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "HFParent" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//HFParentTagClass

 HFParentTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//HFParentTag

 HFParent_Type_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//HFParent_Type_Tag

 HeaderTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "Header" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//HeaderTagClass

 HeaderTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//HeaderTag

 FooterTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "Footer" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//FooterTagClass

 FooterTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//FooterTag

 DivisionTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "Division" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//DivisionTagClass

 DivisionTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DivisionTag

 Division_Headers_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Division_Headers_Tag

 Division_Footers_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Division_Footers_Tag

 ContentsElementTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "ContentsElement" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//ContentsElementTagClass

 ContentsElementTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ContentsElementTag

 ContentsElement_InContents_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//ContentsElement_InContents_Tag

 ParticipantTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ParticipantTag

 BlockTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "Block" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//BlockTagClass

 BlockTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//BlockTag

 Block_ViewKind_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Block_ViewKind_Tag

 VersionTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//VersionTag

 DictEntryBlockTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "DictEntryBlock" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//DictEntryBlockTagClass

 DictEntryBlockTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DictEntryBlockTag

 DocumentTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DocumentTag

 Document_Subs_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Subs_Tag

 Document_Groups_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Groups_Tag

 Document_AccGroups_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_AccGroups_Tag

 Document_Sources_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Sources_Tag

 Document_Warnings_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Warnings_Tag

 Document_NumANDDates_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_NumANDDates_Tag

 Document_LogRecords_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_LogRecords_Tag

 Document_SysLogRecords_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_SysLogRecords_Tag

 Document_Versions_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Versions_Tag

 Document_Stages_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Stages_Tag

 Document_Checks_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Checks_Tag

 Document_PublishedIn_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_PublishedIn_Tag

 Document_Territory_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Territory_Tag

 Document_Norm_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Norm_Tag

 Document_ActiveIntervals_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_ActiveIntervals_Tag

 Document_Alarms_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_Alarms_Tag

 Document_AnnoClasses_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_AnnoClasses_Tag

 Document_LinkedDocuments_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_LinkedDocuments_Tag

 Document_CaseDocParticipants_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//Document_CaseDocParticipants_Tag

 SimpleDocumentTextParaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "SimpleDocumentTextPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//SimpleDocumentTextParaTagClass

 SimpleDocumentTextParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SimpleDocumentTextParaTag

 AnnoTopicTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//AnnoTopicTag

 TableTextParaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "TableTextPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//TableTextParaTagClass

 TableTextParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TableTextParaTag

 TableCellTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "TableCell" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//TableCellTagClass

 TableCellTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TableCellTag

 TableCell_MergeStatus_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//TableCell_MergeStatus_Tag

 TableCell_VerticalAligment_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//TableCell_VerticalAligment_Tag

 TableRowTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "TableRow" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//TableRowTagClass

 TableRowTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TableRowTag

 SBSCellTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "SBSCell" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//SBSCellTagClass

 SBSCellTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SBSCellTag

 TableTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "Table" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//TableTagClass

 TableTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TableTag

 SBSRowTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "SBSRow" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//SBSRowTagClass

 SBSRowTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SBSRowTag

 QueryCardTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//QueryCardTag

 QueryCard_CardType_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//QueryCard_CardType_Tag

 ReqCellTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "ReqCell" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//ReqCellTagClass

 ReqCellTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ReqCellTag

 ReqRowTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "ReqRow" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//ReqRowTagClass

 ReqRowTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ReqRowTag

 ReqRow_ReqKind_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//ReqRow_ReqKind_Tag

 ControlsBlockTagClass = class(Tk2ParentedTypedHugeListTag)
  {* Класс реализации тега "ControlsBlock" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//ControlsBlockTagClass

 ControlsBlockTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ControlsBlockTag

 BitmapParaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "BitmapPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//BitmapParaTagClass

 BitmapParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//BitmapParaTag

 BitmapPara_Object_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//BitmapPara_Object_Tag

 XMLTagTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "XMLTag" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//XMLTagTagClass

 XMLTagTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//XMLTagTag

 XMLTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//XMLTag

 ExtDataParaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "ExtDataPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//ExtDataParaTagClass

 ExtDataParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ExtDataParaTag

 AttrValueTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "AttrValue" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//AttrValueTagClass

 AttrValueTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//AttrValueTag

 AttrNameTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "AttrName" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//AttrNameTagClass

 AttrNameTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//AttrNameTag

 AttrTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "Attr" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//AttrTagClass

 AttrTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//AttrTag

 TagNameTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "TagName" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//TagNameTagClass

 TagNameTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TagNameTag

 TagBodyTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "TagBody" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//TagBodyTagClass

 TagBodyTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TagBodyTag

 TreeParaTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "TreePara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//TreeParaTagClass

 TreeParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TreeParaTag

 TreePara_Object_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TreePara_Object_Tag

 ImageListBitmapTagClass = class(Tk2ParentedTypedSmallLeafTag)
  {* Класс реализации тега "ImageListBitmap" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//ImageListBitmapTagClass

 ImageListBitmapTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ImageListBitmapTag

 SimpleDocumentTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SimpleDocumentTag

 CommentParaTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "CommentPara" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//CommentParaTagClass

 CommentParaTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//CommentParaTag

 SBSTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "SBS" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//SBSTagClass

 SBSTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//SBSTag

 TinyDocumentTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//TinyDocumentTag

 LeafParaDecorationsHolderTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "LeafParaDecorationsHolder" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//LeafParaDecorationsHolderTagClass

 LeafParaDecorationsHolderTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//LeafParaDecorationsHolderTag

 ReqGroupTagClass = class(Tk2ParentedTypedSmallListTag)
  {* Класс реализации тега "ReqGroup" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//ReqGroupTagClass

 ReqGroupTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//ReqGroupTag

 AutoreferatDocumentTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//AutoreferatDocumentTag

 DictEntryTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//DictEntryTag

 DictEntry_ShortName_Tag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 end;//DictEntry_ShortName_Tag

 CloakTagClass = class(Tk2ParentedTypedHugeListTag)
  {* Класс реализации тега "Cloak" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//CloakTagClass

 CloakTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//CloakTag

 NodeGroupTagClass = class(Tk2ParentedTypedHugeListTag)
  {* Класс реализации тега "NodeGroup" }
 protected
 // realized methods
   function TagType: Tk2Type; override;
     {* Тип параграфа }
 end;//NodeGroupTagClass

 NodeGroupTag = class(Tk2Type)
 protected
   function GetAsPCharLen: Tl3PCharLenPrim; override;
   function InheritsFrom(anAtomType: Tk2TypePrim): Boolean; override;
 public
   function DoMakeTag(aType: Tk2Type): Ik2Tag; override;
 end;//NodeGroupTag

 TevNativeSchema = class(TevdNativeSchema)
 public
 // типы, определённые в данной схеме:
   t_StyledLeafPara : StyledLeafParaTag;
   t_TextPara : TextParaTag;
   t_TextPara_Segments : TextPara_Segments_Tag;
   t_TextPara_TabStops : TextPara_TabStops_Tag;
   t_DecorTextPara : DecorTextParaTag;
   t_ControlPara : ControlParaTag;
   t_ControlPara_Type : ControlPara_Type_Tag;
   t_Formula : FormulaTag;
   t_Formula_Data : Formula_Data_Tag;
   t_ParaList : ParaListTag;
   t_ParaList_Orientation : ParaList_Orientation_Tag;
   t_ParaList_Children : ParaList_Children_Tag;
   t_HFParent : HFParentTag;
   t_HFParent_Type : HFParent_Type_Tag;
   t_Header : HeaderTag;
   t_Footer : FooterTag;
   t_Division : DivisionTag;
   t_Division_Headers : Division_Headers_Tag;
   t_Division_Footers : Division_Footers_Tag;
   t_ContentsElement : ContentsElementTag;
   t_ContentsElement_InContents : ContentsElement_InContents_Tag;
   t_Participant : ParticipantTag;
   t_Block : BlockTag;
   t_Block_ViewKind : Block_ViewKind_Tag;
   t_Version : VersionTag;
   t_DictEntryBlock : DictEntryBlockTag;
   t_Document : DocumentTag;
   t_Document_Subs : Document_Subs_Tag;
   t_Document_Groups : Document_Groups_Tag;
   t_Document_AccGroups : Document_AccGroups_Tag;
   t_Document_Sources : Document_Sources_Tag;
   t_Document_Warnings : Document_Warnings_Tag;
   t_Document_NumANDDates : Document_NumANDDates_Tag;
   t_Document_LogRecords : Document_LogRecords_Tag;
   t_Document_SysLogRecords : Document_SysLogRecords_Tag;
   t_Document_Versions : Document_Versions_Tag;
   t_Document_Stages : Document_Stages_Tag;
   t_Document_Checks : Document_Checks_Tag;
   t_Document_PublishedIn : Document_PublishedIn_Tag;
   t_Document_Territory : Document_Territory_Tag;
   t_Document_Norm : Document_Norm_Tag;
   t_Document_ActiveIntervals : Document_ActiveIntervals_Tag;
   t_Document_Alarms : Document_Alarms_Tag;
   t_Document_AnnoClasses : Document_AnnoClasses_Tag;
   t_Document_LinkedDocuments : Document_LinkedDocuments_Tag;
   t_Document_CaseDocParticipants : Document_CaseDocParticipants_Tag;
   t_SimpleDocumentTextPara : SimpleDocumentTextParaTag;
   t_AnnoTopic : AnnoTopicTag;
   t_TableTextPara : TableTextParaTag;
   t_TableCell : TableCellTag;
   t_TableCell_MergeStatus : TableCell_MergeStatus_Tag;
   t_TableCell_VerticalAligment : TableCell_VerticalAligment_Tag;
   t_TableRow : TableRowTag;
   t_SBSCell : SBSCellTag;
   t_Table : TableTag;
   t_SBSRow : SBSRowTag;
   t_QueryCard : QueryCardTag;
   t_QueryCard_CardType : QueryCard_CardType_Tag;
   t_ReqCell : ReqCellTag;
   t_ReqRow : ReqRowTag;
   t_ReqRow_ReqKind : ReqRow_ReqKind_Tag;
   t_ControlsBlock : ControlsBlockTag;
   t_BitmapPara : BitmapParaTag;
   t_BitmapPara_Object : BitmapPara_Object_Tag;
   t_XMLTag : XMLTagTag;
   t_XML : XMLTag;
   t_ExtDataPara : ExtDataParaTag;
   t_AttrValue : AttrValueTag;
   t_AttrName : AttrNameTag;
   t_Attr : AttrTag;
   t_TagName : TagNameTag;
   t_TagBody : TagBodyTag;
   t_TreePara : TreeParaTag;
   t_TreePara_Object : TreePara_Object_Tag;
   t_ImageListBitmap : ImageListBitmapTag;
   t_SimpleDocument : SimpleDocumentTag;
   t_CommentPara : CommentParaTag;
   t_SBS : SBSTag;
   t_TinyDocument : TinyDocumentTag;
   t_LeafParaDecorationsHolder : LeafParaDecorationsHolderTag;
   t_ReqGroup : ReqGroupTag;
   t_AutoreferatDocument : AutoreferatDocumentTag;
   t_DictEntry : DictEntryTag;
   t_DictEntry_ShortName : DictEntry_ShortName_Tag;
   t_Cloak : CloakTag;
   t_NodeGroup : NodeGroupTag;
 protected
 // определяем стандартные методы схемы
   function  pm_GetTypeByHandle(H: Integer): Tk2Type; override;
   procedure Cleanup; override;
 public
   constructor Create; override;
 end;//TevNativeSchema

//#UC START# *484CD009023Dttintf*
{$IfDef DesignTimeLibrary}
 {$R evttStd.Unicode.res evttStd.Unicode.rc}
{$Else DesignTimeLibrary}
 {$IfDef evMyEditor}
  {$R evttStd.My.res evttStd.My.rc}
 {$Else}
  {$IfDef nsTest}
   {$R NemesisStyles.res NemesisStyles.rc}
   //{$R evttStd.Unicode.res evttStd.Unicode.rc}
  {$Else  nsTest}
   {$IfDef Nemesis}
    {$R NemesisStyles.res NemesisStyles.rc}
   {$Else}
    {$R evttStd.Unicode.res evttStd.Unicode.rc}
   {$EndIf}
  {$EndIf nsTest}
 {$EndIf evMyEditor}
{$EndIf DesignTimeLibrary}
//#UC END# *484CD009023Dttintf*

implementation

uses
  nevTools,
  evStyleInterfaceEx,
  l3Stream,
  Classes,
  Graphics,
  nevBase,
  k2SmallTagObject,
  evdBasePara,
  l3DataContainerWithoutIUnknown,
  l3Base,
  evDocumentPart,
  l3Defaults,
  l3Const,
  evControlsBlockConst,
  evDef,
  nevFacade,
  l3Units,
  Bookmark_Const,
  Mark_Const,
  evParaTools,
  evNative_AttrValues,
  SysUtils {a},
  TypInfo {a},
  k2Const {a},
  k2Tags {a},
  k2BaseStruct {a},
  l3Types {a},
  l3String {a},
  evTextPara_Wrap,
  evControlPara_Wrap,
  evFormula_Wrap,
  evDocument_Wrap,
  evReqRow_Wrap,
  evBitmapPara_Wrap,
  evTreePara_Wrap,
  evCommentPara_Wrap,
  evReqGroup_Wrap,
  evStdInt,
  evReqGroup_InterfaceFactory,
  evAutoreferatDocument_InterfaceFactory,
  evBaseDocument,
  evBitmapPara,
  evTreePara
  ;

//#UC START# *484CD009023Dtt*

procedure CreateStandardTextStyles(StyleType: Tk2Type);
var
 SI : TevStyleInterfaceEx;
 S  : TStream;
begin
 SI := TevStyleInterfaceEx.Create;
 try
  SI.TagType := StyleType;
  S := Tl3ResourceStream.Create(hInstance,
   {$IfDef evMyEditor}
   'MYSTANDARDTEXTSTYLETABLE'
   {$Else  evMyEditor}
   'EVSTANDARDTEXTSTYLETABLE'
   {$EndIf evMyEditor}
  );
  try
   g_InCreateDocumentSchema := true;
   try
    SI.Load(S);
   finally
    g_InCreateDocumentSchema := false;
   end;//try..finally
  finally
   FreeAndNil(S);
  end;//try..finally
 finally
  FreeAndNil(SI);
 end;//try..finally
end;

procedure BlockHeaderUpdate(const V       : Tk2Values;
                            const aProp   : Tk2Prop;
                            const Context : Ik2Op);
var
 l_NShape : InevObject;
begin
 if V.rTag.IsValid then
 begin
  if (Context = nil) then
  begin
   if V.rTag.QT(InevObject, l_NShape, nil) then
    try
     l_NShape.Invalidate([]);
    finally
     l_NShape := nil;
    end;//try..finally
  end//Context = nil
  else
  begin
   if not Context.InIOProcess then
    if V.rTag.QT(InevObject, l_NShape, Context.Processor) then
     try
      l_NShape.Invalidate([]);
     finally
      l_NShape := nil;
     end;//try..finally
  end;//Context = nil
 end;//V.rTag.IsValid
end;

procedure SubLayerChildType(const aParent : Ik2Tag;
                            var theType   : Tk2Type);
begin
 Case aParent.IntA[k2_tiHandle] of
  ev_sbtBookmark:
   theType := k2_typBookmark;
  ev_sbtMark:
   theType := k2_typMark;
 end;//Case aParent.IntA[k2_tiHandle]
end;

procedure SBSRowValidateChild(const aParent : Ik2Tag;
                              var aChild    : Ik2Tag;
                              var aValid    : Boolean);
var
 l_C : Ik2Tag;                              
begin
 if not aValid then
 begin
  aValid := aChild.InheritsFrom(k2_idTableCell);
  if aValid then
  begin
   l_C := k2_typSBSCell.MakeTag;
   l_C.AssignTag(aChild);
   aChild := l_C;
  end;//aValid
 end;//not aValid
end;

procedure SBSValidateChild(const aParent : Ik2Tag;
                           var aChild    : Ik2Tag;
                           var aValid    : Bool);
var
 l_C : Ik2Tag;
begin
 if not aValid then
 begin
  aValid := aChild.InheritsFrom(k2_idTableRow);
  if aValid then
  begin
   l_C := k2_typSBSRow.MakeTag;
   l_C.AssignTag(aChild);
   aChild := l_C;
  end;//aValid
 end;//not aValid
end;

//#UC END# *484CD009023Dtt*


// unit methods

procedure StyledLeafParaStyleAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *48567D5F0064var_AfterChange*
var
 l_Para : InevObject;
//#UC END# *48567D5F0064var_AfterChange*
begin
//#UC START# *48567D5F0064AfterChange*
 if (aContext <> nil) AND not aContext.InIOProcess AND V.rTag.IsValid then
  if V.rTag.QT(InevObject, l_Para, aContext.Processor) then
   l_Para.Invalidate([nev_spExtent]);
//#UC END# *48567D5F0064AfterChange*
end;

procedure StyledLeafParaJustificationAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *485680D50229var_AfterChange*
var
 l_Para : InevObject;
//#UC END# *485680D50229var_AfterChange*
begin
//#UC START# *485680D50229AfterChange*
 if (aContext <> nil) AND not aContext.InIOProcess AND V.rTag.IsValid then
  if V.rTag.QT(InevObject, l_Para, aContext.Processor) then
   l_Para.Invalidate([]);
//#UC END# *485680D50229AfterChange*
end;

procedure StyledLeafParaWidthAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *48568328038Fvar_AfterChange*
//#UC END# *48568328038Fvar_AfterChange*
begin
//#UC START# *48568328038FAfterChange*
 StyledLeafParaJustificationAfterChange(V, aProp, aContext);
//#UC END# *48568328038FAfterChange*
end;

procedure StyledLeafParaLeftIndentAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4856834700B0var_AfterChange*
//#UC END# *4856834700B0var_AfterChange*
begin
//#UC START# *4856834700B0AfterChange*
 StyledLeafParaJustificationAfterChange(V, aProp, aContext);
//#UC END# *4856834700B0AfterChange*
end;

procedure StyledLeafParaRightIndentAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4856835E0282var_AfterChange*
//#UC END# *4856835E0282var_AfterChange*
begin
//#UC START# *4856835E0282AfterChange*
 StyledLeafParaJustificationAfterChange(V, aProp, aContext);
//#UC END# *4856835E0282AfterChange*
end;

function StyledLeafParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typStyledLeafPara;
end;//StyledLeafParaTagClass.TagType

function StyledLeafParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('StyledLeafPara'));
end;

function StyledLeafParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_LeafPara.InheritsFrom(anAtomType);
end;

function StyledLeafParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег StyledLeafPara');
end;

procedure TextParaFontAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *485784AF0369var_AfterChange*
{$WriteableConst On}
const
 g_WasSize : Boolean = false;
 g_Para    : InevObject = nil;
{$WriteableConst Off}
var
 l_Para : InevObject;
//#UC END# *485784AF0369var_AfterChange*
begin
//#UC START# *485784AF0369AfterChange*
 if (aContext <> nil) AND not aContext.InIOProcess AND V.rTag.IsValid then
  if V.rTag.InheritsFrom(k2_idFont) then
   begin
    if g_Para <> nil then
     g_Para.Invalidate([nev_spExtent])
    else
     g_WasSize := True;
    g_Para := nil;
   end
   else
    if V.rTag.QT(InevObject, l_Para, aContext.Processor) then
     if g_WasSize then
     begin
      l_Para.Invalidate([nev_spExtent]);
      g_WasSize := False;
     end
     else
      g_Para := l_Para;
//#UC END# *485784AF0369AfterChange*
end;

function TextPara_Segments_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TextPara_Segments'));
end;

function TextPara_Segments_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function TextParaSegmentsChildStored(const aParent : Ik2Tag;
 const aChild   : Ik2Tag;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op): Boolean;
//#UC START# *485787650374var_childstored*
var
 H : Integer;
//#UC END# *485787650374var_childstored*
begin
//#UC START# *485787650374childstored*
 if (aChild.ChildrenCount > 0) then
 begin
  H := aChild.IntA[k2_tiHandle];
  Result := (H > ev_slSuperposition) AND (H <> ev_slFound) AND
            (H <> ev_slFoundWords) AND (H <> ev_slMistakes);
 end//aChild.ChildrenCount > 0
 else
  Result := false; 
//#UC END# *485787650374childstored*
end;

function TextPara_TabStops_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TextPara_TabStops'));
end;

function TextPara_TabStops_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function TextParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typTextPara;
end;//TextParaTagClass.TagType

function TextParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TextPara'));
end;

function TextParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_StyledLeafPara.InheritsFrom(anAtomType);
end;

function TextParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TextParaTagClass.Create(aType)));
end;

function DecorTextParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typDecorTextPara;
end;//DecorTextParaTagClass.TagType

function DecorTextParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DecorTextPara'));
end;

function DecorTextParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TextPara.InheritsFrom(anAtomType);
end;

function DecorTextParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(DecorTextParaTagClass.Create(aType)));
end;

function ControlPara_Type_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ControlPara_Type'));
end;

function ControlPara_Type_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

procedure ControlParaCollapsedAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4858022A024Dvar_AfterChange*
var
 l_P : InevObject;
//#UC END# *4858022A024Dvar_AfterChange*
begin
//#UC START# *4858022A024DAfterChange*
 if (aContext = nil) OR not aContext.InIOProcess then
 begin
  if not V.rTag.QT(InevObject, l_P) then
   Assert(false);
  l_P.Invalidate([nev_spExtent, nev_spSegments]);
 end;//aContext = nil..
//#UC END# *4858022A024DAfterChange*
end;

procedure ControlParaValidAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *485803DA0295var_AfterChange*
//#UC END# *485803DA0295var_AfterChange*
begin
//#UC START# *485803DA0295AfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *485803DA0295AfterChange*
end;

procedure ControlParaVisibleAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4858041B00D6var_AfterChange*
//#UC END# *4858041B00D6var_AfterChange*
begin
//#UC START# *4858041B00D6AfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *4858041B00D6AfterChange*
end;

procedure ControlParaStateIndexAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4858042A01B7var_AfterChange*
//#UC END# *4858042A01B7var_AfterChange*
begin
//#UC START# *4858042A01B7AfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *4858042A01B7AfterChange*
end;

procedure ControlParaCheckedAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4858047602E3var_AfterChange*
//#UC END# *4858047602E3var_AfterChange*
begin
//#UC START# *4858047602E3AfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *4858047602E3AfterChange*
end;

function ControlParaEnabledStored(const aTag : Ik2Tag;
 const aValue   : Ik2Tag;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op): Boolean;
//#UC START# *485804B3009Evar_stored*
var
 l_ReqGroup : Ik2Tag;
//#UC END# *485804B3009Evar_stored*
begin
//#UC START# *485804B3009Estored*
 if evInPara(aTag, k2_idReqGroup, l_ReqGroup) then
  Result := l_ReqGroup.BoolA[k2_tiChecked]
 else
  Result := true; 
//#UC END# *485804B3009Estored*
end;

procedure ControlParaEnabledAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *485804B3009Evar_AfterChange*
//#UC END# *485804B3009Evar_AfterChange*
begin
//#UC START# *485804B3009EAfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *485804B3009EAfterChange*
end;

procedure ControlParaUpperAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *485804D403A4var_AfterChange*
//#UC END# *485804D403A4var_AfterChange*
begin
//#UC START# *485804D403A4AfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *485804D403A4AfterChange*
end;

procedure ControlParaFlatAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *485804F501E9var_AfterChange*
//#UC END# *485804F501E9var_AfterChange*
begin
//#UC START# *485804F501E9AfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *485804F501E9AfterChange*
end;

function ControlParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typControlPara;
end;//ControlParaTagClass.TagType

function ControlParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ControlPara'));
end;

function ControlParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TextPara.InheritsFrom(anAtomType);
end;

function ControlParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(ControlParaTagClass.Create(aType)));
end;

procedure FormulaTextAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857964E013Cvar_AfterChange*
var
 l_P : InevObject;
//#UC END# *4857964E013Cvar_AfterChange*
begin
//#UC START# *4857964E013CAfterChange*
 if (aContext = nil) OR not aContext.InIOProcess then
 begin
  V.rTag.AttrW[k2_tiData, aContext] := nil;
  V.rTag.AttrW[k2_tiObject, aContext] := nil;
  if (aContext <> nil) then
   aContext.MarkModified(V.rTag^);
  if not V.rTag.QT(InevObject, l_P) then
   Assert(false);
  l_P.Invalidate([nev_spExtent]);
 end;//Context = nil..
//#UC END# *4857964E013CAfterChange*
end;

function Formula_Data_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Formula_Data'));
end;

function Formula_Data_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_l3Base.InheritsFrom(anAtomType);
end;

function Formula_Data_Tag.DoMakeTag(aType: Tk2Type): Ik2Tag;
var
 l_Inst : Tl3Expr;
begin
 l_Inst := Tl3Expr.Create;
 try
  Result := TagFromIntRef(Integer(l_Inst));
 finally
  FreeAndNil(l_Inst);
 end;//try..finally
end;

function FormulaTagClass.TagType: Tk2Type;
begin
 Result := k2_typFormula;
end;//FormulaTagClass.TagType

function FormulaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Formula'));
end;

function FormulaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TextPara.InheritsFrom(anAtomType);
end;

function FormulaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(FormulaTagClass.Create(aType)));
end;

function ParaListWidthStored(const aTag : Ik2Tag;
 const aValue   : Ik2Tag;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op): Boolean;
//#UC START# *48579FA203ADvar_stored*
//#UC END# *48579FA203ADvar_stored*
begin
//#UC START# *48579FA203ADstored*
 Result := aTag.BoolA[k2_tiFixedWidth];
//#UC END# *48579FA203ADstored*
end;

function ParaList_Orientation_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ParaList_Orientation'));
end;

function ParaList_Orientation_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function ParaList_Children_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ParaList_Children'));
end;

function ParaList_Children_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function ParaListTagClass.TagType: Tk2Type;
begin
 Result := k2_typParaList;
end;//ParaListTagClass.TagType

function ParaListTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ParaList'));
end;

function ParaListTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Para.InheritsFrom(anAtomType);
end;

function ParaListTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег ParaList');
end;

function HFParent_Type_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('HFParent_Type'));
end;

function HFParent_Type_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function HFParentTagClass.TagType: Tk2Type;
begin
 Result := k2_typHFParent;
end;//HFParentTagClass.TagType

function HFParentTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('HFParent'));
end;

function HFParentTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ParaList.InheritsFrom(anAtomType);
end;

function HFParentTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Assert(false,'Невозможно создать абстрактный тег HFParent');
end;

function HeaderTagClass.TagType: Tk2Type;
begin
 Result := k2_typHeader;
end;//HeaderTagClass.TagType

function HeaderTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Header'));
end;

function HeaderTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_HFParent.InheritsFrom(anAtomType);
end;

function HeaderTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(HeaderTagClass.Create(aType)));
end;

function FooterTagClass.TagType: Tk2Type;
begin
 Result := k2_typFooter;
end;//FooterTagClass.TagType

function FooterTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Footer'));
end;

function FooterTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_HFParent.InheritsFrom(anAtomType);
end;

function FooterTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(FooterTagClass.Create(aType)));
end;

function Division_Headers_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Division_Headers'));
end;

function Division_Headers_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Division_Footers_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Division_Footers'));
end;

function Division_Footers_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function DivisionTagClass.TagType: Tk2Type;
begin
 Result := k2_typDivision;
end;//DivisionTagClass.TagType

function DivisionTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Division'));
end;

function DivisionTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ParaList.InheritsFrom(anAtomType);
end;

function DivisionTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(DivisionTagClass.Create(aType)));
end;

function ContentsElement_InContents_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ContentsElement_InContents'));
end;

function ContentsElement_InContents_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function ContentsElementTagClass.TagType: Tk2Type;
begin
 Result := k2_typContentsElement;
end;//ContentsElementTagClass.TagType

function ContentsElementTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ContentsElement'));
end;

function ContentsElementTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ParaList.InheritsFrom(anAtomType)
           OR
           TevNativeSchema(TypeTable).t_ObjectWithHandle.InheritsFrom(anAtomType);
end;

function ContentsElementTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(ContentsElementTagClass.Create(aType)));
end;

function ParticipantTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Participant'));
end;

function ParticipantTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Tag.InheritsFrom(anAtomType);
end;

function ParticipantTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(Tk2SmallTagObject.Create(aType)));
end;

procedure BlockCollapsedAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857B0230374var_AfterChange*
var
 l_SubCache : IevSubCache;
 l_Para     : InevPara;
//#UC END# *4857B0230374var_AfterChange*
begin
//#UC START# *4857B0230374AfterChange*
 if (aContext = nil) OR not aContext.InIOProcess then
 begin
  if (aContext = nil) then
  begin
   if V.rTag.QT(InevPara, l_Para, nil) then
    try
     l_Para.Invalidate([nev_spExtent]);
    finally
     l_Para := nil;
    end;//try..finally
  end//aContext = nil
  else
  begin
   if V.rTag.QT(InevPara, l_Para, aContext.Processor) then
    try
     l_Para.Invalidate([nev_spExtent]);
    finally
     l_Para := nil;
    end;//try..finally
  end;//aContext = nil
  if Supports(aContext, IevSubCache, l_SubCache) then
   try
    l_SubCache.ClearSubs;
   finally
    l_SubCache := nil;
   end;//try..finally
 end;{aContext <> nil..}
//#UC END# *4857B0230374AfterChange*
end;

procedure BlockStyleAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4FBB8CF301A4var_AfterChange*
var
 l_Para : InevObject;
//#UC END# *4FBB8CF301A4var_AfterChange*
begin
//#UC START# *4FBB8CF301A4AfterChange*
 if (aContext <> nil) AND not aContext.InIOProcess AND V.rTag.IsValid then
  if V.rTag.QT(InevObject, l_Para, aContext.Processor) then
   l_Para.Invalidate([nev_spExtent]);
//#UC END# *4FBB8CF301A4AfterChange*
end;

function Block_ViewKind_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Block_ViewKind'));
end;

function Block_ViewKind_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function BlockTagClass.TagType: Tk2Type;
begin
 Result := k2_typBlock;
end;//BlockTagClass.TagType

function BlockTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Block'));
end;

function BlockTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ParaList.InheritsFrom(anAtomType)
           OR
           TevNativeSchema(TypeTable).t_Sub.InheritsFrom(anAtomType) OR 
           TevNativeSchema(TypeTable).t_ContentsElement.InheritsFrom(anAtomType);
end;

function BlockTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(BlockTagClass.Create(aType)));
end;

function VersionTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Version'));
end;

function VersionTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_DictItem.InheritsFrom(anAtomType);
end;

function VersionTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevNativeSchema(TypeTable).t_DictItem.DoMakeTag(aType);
end;

function DictEntryBlockTagClass.TagType: Tk2Type;
begin
 Result := k2_typDictEntryBlock;
end;//DictEntryBlockTagClass.TagType

function DictEntryBlockTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DictEntryBlock'));
end;

function DictEntryBlockTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Block.InheritsFrom(anAtomType);
end;

function DictEntryBlockTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(DictEntryBlockTagClass.Create(aType)));
end;

procedure DocumentSpaceAfterAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857BB4B00D0var_AfterChange*
//#UC END# *4857BB4B00D0var_AfterChange*
begin
//#UC START# *4857BB4B00D0AfterChange*
 if (aContext <> nil) AND not aContext.InIOProcess then
 begin
  if aContext.SaveUndo then
   aContext.MarkModified(V.rTag^);
 end;//Context <> nil..
//#UC END# *4857BB4B00D0AfterChange*
end;

procedure DocumentLeftIndentAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857BC220259var_AfterChange*
//#UC END# *4857BC220259var_AfterChange*
begin
//#UC START# *4857BC220259AfterChange*
 DocumentSpaceAfterAfterChange(V, aProp, aContext);
//#UC END# *4857BC220259AfterChange*
end;

procedure DocumentRightIndentAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857BCC3024Avar_AfterChange*
//#UC END# *4857BCC3024Avar_AfterChange*
begin
//#UC START# *4857BCC3024AAfterChange*
 DocumentSpaceAfterAfterChange(V, aProp, aContext);
//#UC END# *4857BCC3024AAfterChange*
end;

procedure DocumentWidthAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857BDF9035Avar_AfterChange*
//#UC END# *4857BDF9035Avar_AfterChange*
begin
//#UC START# *4857BDF9035AAfterChange*
 DocumentSpaceAfterAfterChange(V, aProp, aContext);
//#UC END# *4857BDF9035AAfterChange*
end;

function Document_Subs_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Subs'));
end;

function Document_Subs_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function DocumentSubsChildStored(const aParent : Ik2Tag;
 const aChild   : Ik2Tag;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op): Boolean;
//#UC START# *4857B957011Dvar_childstored*
var
 H : Integer;
//#UC END# *4857B957011Dvar_childstored*
begin
//#UC START# *4857B957011Dchildstored*
 if (aChild.ChildrenCount > 0) then
 begin
  H := aChild.IntA[k2_tiHandle];
  Result := (H = ev_sbtSub) 
            {$IfDef Nemesis}
            OR (H = ev_sbtBookmark)
            OR (H = ev_sbtMark)
            {$EndIf Nemesis}
            ;
 end else
  Result := false;
//#UC END# *4857B957011Dchildstored*
end;

function Document_Groups_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Groups'));
end;

function Document_Groups_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_AccGroups_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_AccGroups'));
end;

function Document_AccGroups_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_Sources_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Sources'));
end;

function Document_Sources_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_Warnings_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Warnings'));
end;

function Document_Warnings_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_NumANDDates_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_NumANDDates'));
end;

function Document_NumANDDates_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_LogRecords_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_LogRecords'));
end;

function Document_LogRecords_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_SysLogRecords_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_SysLogRecords'));
end;

function Document_SysLogRecords_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_Versions_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Versions'));
end;

function Document_Versions_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_Stages_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Stages'));
end;

function Document_Stages_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_Checks_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Checks'));
end;

function Document_Checks_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_PublishedIn_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_PublishedIn'));
end;

function Document_PublishedIn_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_Territory_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Territory'));
end;

function Document_Territory_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_Norm_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Norm'));
end;

function Document_Norm_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_ActiveIntervals_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_ActiveIntervals'));
end;

function Document_ActiveIntervals_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_Alarms_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_Alarms'));
end;

function Document_Alarms_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_AnnoClasses_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_AnnoClasses'));
end;

function Document_AnnoClasses_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_LinkedDocuments_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_LinkedDocuments'));
end;

function Document_LinkedDocuments_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function Document_CaseDocParticipants_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document_CaseDocParticipants'));
end;

function Document_CaseDocParticipants_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function DocumentTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Document'));
end;

function DocumentTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Block.InheritsFrom(anAtomType);
end;

function DocumentTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := Wrapper.New(aType);
end;

function SimpleDocumentTextParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typSimpleDocumentTextPara;
end;//SimpleDocumentTextParaTagClass.TagType

function SimpleDocumentTextParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SimpleDocumentTextPara'));
end;

function SimpleDocumentTextParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TextPara.InheritsFrom(anAtomType);
end;

function SimpleDocumentTextParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(SimpleDocumentTextParaTagClass.Create(aType)));
end;

function AnnoTopicTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('AnnoTopic'));
end;

function AnnoTopicTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Document.InheritsFrom(anAtomType);
end;

function AnnoTopicTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevNativeSchema(TypeTable).t_Document.DoMakeTag(aType);
end;

function TableTextParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typTableTextPara;
end;//TableTextParaTagClass.TagType

function TableTextParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TableTextPara'));
end;

function TableTextParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TextPara.InheritsFrom(anAtomType);
end;

function TableTextParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TableTextParaTagClass.Create(aType)));
end;

procedure TableCellWidthAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857CE0D022Evar_AfterChange*
var
 l_Para : InevObject;
//#UC END# *4857CE0D022Evar_AfterChange*
begin
//#UC START# *4857CE0D022EAfterChange*
 DocumentSpaceAfterAfterChange(V, aProp, aContext);
 if (aContext <> nil) AND not aContext.InIOProcess AND V.rTag.IsValid then
  if V.rTag.QT(InevObject, l_Para, aContext.Processor) then
   l_Para.Invalidate([nev_spExtent]);
//#UC END# *4857CE0D022EAfterChange*
end;

procedure TableCellLeftIndentAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857CEC601BBvar_AfterChange*
//#UC END# *4857CEC601BBvar_AfterChange*
begin
//#UC START# *4857CEC601BBAfterChange*
 DocumentSpaceAfterAfterChange(V, aProp, aContext);
//#UC END# *4857CEC601BBAfterChange*
end;

procedure TableCellRightIndentAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857CEED02A3var_AfterChange*
//#UC END# *4857CEED02A3var_AfterChange*
begin
//#UC START# *4857CEED02A3AfterChange*
 DocumentSpaceAfterAfterChange(V, aProp, aContext);
//#UC END# *4857CEED02A3AfterChange*
end;

function TableCell_MergeStatus_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TableCell_MergeStatus'));
end;

function TableCell_MergeStatus_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

procedure TableCellMergeStatusAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857CF8C0050var_AfterChange*
var
 l_ParaList : InevParaList;
//#UC END# *4857CF8C0050var_AfterChange*
begin
//#UC START# *4857CF8C0050AfterChange*
 if (aContext <> nil) AND not aContext.InIOProcess AND V.rTag.IsValid then
  if V.rTag.QT(InevParaList, l_ParaList, aContext.Processor) then
   l_ParaList.Invalidate([nev_spCellExtent]);
//#UC END# *4857CF8C0050AfterChange*
end;

function TableCell_VerticalAligment_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TableCell_VerticalAligment'));
end;

function TableCell_VerticalAligment_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

procedure TableCellVerticalAligmentAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4857D0750068var_AfterChange*
//#UC END# *4857D0750068var_AfterChange*
begin
//#UC START# *4857D0750068AfterChange*
 TableCellMergeStatusAfterChange(V, aProp, aContext);
//#UC END# *4857D0750068AfterChange*
end;

function TableCellTagClass.TagType: Tk2Type;
begin
 Result := k2_typTableCell;
end;//TableCellTagClass.TagType

function TableCellTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TableCell'));
end;

function TableCellTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ParaList.InheritsFrom(anAtomType);
end;

function TableCellTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TableCellTagClass.Create(aType)));
end;

function TableRowTagClass.TagType: Tk2Type;
begin
 Result := k2_typTableRow;
end;//TableRowTagClass.TagType

function TableRowTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TableRow'));
end;

function TableRowTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ParaList.InheritsFrom(anAtomType);
end;

function TableRowTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TableRowTagClass.Create(aType)));
end;

function SBSCellTagClass.TagType: Tk2Type;
begin
 Result := k2_typSBSCell;
end;//SBSCellTagClass.TagType

function SBSCellTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SBSCell'));
end;

function SBSCellTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TableCell.InheritsFrom(anAtomType);
end;

function SBSCellTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(SBSCellTagClass.Create(aType)));
end;

function TableTagClass.TagType: Tk2Type;
begin
 Result := k2_typTable;
end;//TableTagClass.TagType

function TableTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Table'));
end;

function TableTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ParaList.InheritsFrom(anAtomType);
end;

function TableTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TableTagClass.Create(aType)));
end;

function SBSRowTagClass.TagType: Tk2Type;
begin
 Result := k2_typSBSRow;
end;//SBSRowTagClass.TagType

function SBSRowTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SBSRow'));
end;

function SBSRowTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TableRow.InheritsFrom(anAtomType);
end;

function SBSRowTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(SBSRowTagClass.Create(aType)));
end;

function QueryCard_CardType_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('QueryCard_CardType'));
end;

function QueryCard_CardType_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

function QueryCardTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('QueryCard'));
end;

function QueryCardTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Document.InheritsFrom(anAtomType);
end;

function QueryCardTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevNativeSchema(TypeTable).t_Document.DoMakeTag(aType);
end;

function ReqCellTagClass.TagType: Tk2Type;
begin
 Result := k2_typReqCell;
end;//ReqCellTagClass.TagType

function ReqCellTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ReqCell'));
end;

function ReqCellTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TableCell.InheritsFrom(anAtomType);
end;

function ReqCellTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(ReqCellTagClass.Create(aType)));
end;

function ReqRow_ReqKind_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ReqRow_ReqKind'));
end;

function ReqRow_ReqKind_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_Enum.InheritsFrom(anAtomType);
end;

procedure ReqRowStateIndexAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4CD0018201EBvar_AfterChange*
var
 l_Req      : IevReq;
 l_Button   : IevEditorControlButton;
 l_StateBtn : IevEditorStateButton;
//#UC END# *4CD0018201EBvar_AfterChange*
begin
//#UC START# *4CD0018201EBAfterChange*
 if V.rTag.IsValid then
  if V.rTag.QT(IevReq, l_Req) then
   try
    l_Button := l_Req.FirstField.FindButton(ev_btLogical);
    if Supports(l_Button, IevEditorStateButton, l_StateBtn) then
     l_StateBtn.CurrentIndex := l_StateBtn.ImageIndex + V.rNew.AsLong;
   finally
    l_Req := nil;
   end;//try..finally
//#UC END# *4CD0018201EBAfterChange*
end;

function ReqRowTagClass.TagType: Tk2Type;
begin
 Result := k2_typReqRow;
end;//ReqRowTagClass.TagType

function ReqRowTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ReqRow'));
end;

function ReqRowTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TableRow.InheritsFrom(anAtomType);
end;

function ReqRowTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(ReqRowTagClass.Create(aType)));
end;

procedure ControlsBlockEnabledAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *485810AE033Cvar_AfterChange*
//#UC END# *485810AE033Cvar_AfterChange*
begin
//#UC START# *485810AE033CAfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *485810AE033CAfterChange*
end;

procedure ControlsBlockUpperAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *485810C80074var_AfterChange*
//#UC END# *485810C80074var_AfterChange*
begin
//#UC START# *485810C80074AfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *485810C80074AfterChange*
end;

procedure ControlsBlockFlatAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *485811030276var_AfterChange*
//#UC END# *485811030276var_AfterChange*
begin
//#UC START# *485811030276AfterChange*
 BlockHeaderUpdate(V, aProp, aContext);
//#UC END# *485811030276AfterChange*
end;

function ControlsBlockTagClass.TagType: Tk2Type;
begin
 Result := k2_typControlsBlock;
end;//ControlsBlockTagClass.TagType

function ControlsBlockTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ControlsBlock'));
end;

function ControlsBlockTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Block.InheritsFrom(anAtomType);
end;

function ControlsBlockTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(ControlsBlockTagClass.Create(aType)));
end;

procedure BitmapParaLeftIndentAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *4858158D0254var_AfterChange*
var
 l_Para : InevObject;
//#UC END# *4858158D0254var_AfterChange*
begin
//#UC START# *4858158D0254AfterChange*
 if (aContext <> nil) AND not aContext.InIOProcess AND V.rTag.IsValid then
  if V.rTag.QT(InevObject, l_Para, aContext.Processor) then
   l_Para.Invalidate([]);
//#UC END# *4858158D0254AfterChange*
end;

procedure BitmapParaHeightAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *486D23B00263var_AfterChange*
//#UC END# *486D23B00263var_AfterChange*
begin
//#UC START# *486D23B00263AfterChange*
 StyledLeafParaJustificationAfterChange(V, aProp, aContext);
//#UC END# *486D23B00263AfterChange*
end;

function BitmapPara_Object_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('BitmapPara_Object'));
end;

function BitmapPara_Object_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_l3Base.InheritsFrom(anAtomType);
end;

function BitmapPara_Object_Tag.DoMakeTag(aType: Tk2Type): Ik2Tag;
var
 l_Inst : TevBitmapParaBitmapContainer;
begin
 l_Inst := TevBitmapParaBitmapContainer.Create;
 try
  Result := TagFromIntRef(Integer(l_Inst));
 finally
  FreeAndNil(l_Inst);
 end;//try..finally
end;

function BitmapParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typBitmapPara;
end;//BitmapParaTagClass.TagType

function BitmapParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('BitmapPara'));
end;

function BitmapParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_StyledLeafPara.InheritsFrom(anAtomType);
end;

function BitmapParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(BitmapParaTagClass.Create(aType)));
end;

function XMLTagTagClass.TagType: Tk2Type;
begin
 Result := k2_typXMLTag;
end;//XMLTagTagClass.TagType

function XMLTagTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('XMLTag'));
end;

function XMLTagTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Block.InheritsFrom(anAtomType);
end;

function XMLTagTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(XMLTagTagClass.Create(aType)));
end;

function XMLTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('XML'));
end;

function XMLTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Document.InheritsFrom(anAtomType);
end;

function XMLTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevNativeSchema(TypeTable).t_Document.DoMakeTag(aType);
end;

function ExtDataParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typExtDataPara;
end;//ExtDataParaTagClass.TagType

function ExtDataParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ExtDataPara'));
end;

function ExtDataParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_LeafPara.InheritsFrom(anAtomType);
end;

function ExtDataParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(ExtDataParaTagClass.Create(aType)));
end;

function AttrValueTagClass.TagType: Tk2Type;
begin
 Result := k2_typAttrValue;
end;//AttrValueTagClass.TagType

function AttrValueTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('AttrValue'));
end;

function AttrValueTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TextPara.InheritsFrom(anAtomType);
end;

function AttrValueTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(AttrValueTagClass.Create(aType)));
end;

function AttrNameTagClass.TagType: Tk2Type;
begin
 Result := k2_typAttrName;
end;//AttrNameTagClass.TagType

function AttrNameTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('AttrName'));
end;

function AttrNameTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TextPara.InheritsFrom(anAtomType);
end;

function AttrNameTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(AttrNameTagClass.Create(aType)));
end;

function AttrTagClass.TagType: Tk2Type;
begin
 Result := k2_typAttr;
end;//AttrTagClass.TagType

function AttrTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Attr'));
end;

function AttrTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Block.InheritsFrom(anAtomType);
end;

function AttrTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(AttrTagClass.Create(aType)));
end;

function TagNameTagClass.TagType: Tk2Type;
begin
 Result := k2_typTagName;
end;//TagNameTagClass.TagType

function TagNameTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TagName'));
end;

function TagNameTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TextPara.InheritsFrom(anAtomType);
end;

function TagNameTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TagNameTagClass.Create(aType)));
end;

function TagBodyTagClass.TagType: Tk2Type;
begin
 Result := k2_typTagBody;
end;//TagBodyTagClass.TagType

function TagBodyTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TagBody'));
end;

function TagBodyTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_TextPara.InheritsFrom(anAtomType);
end;

function TagBodyTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TagBodyTagClass.Create(aType)));
end;

function TreePara_Object_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TreePara_Object'));
end;

function TreePara_Object_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_l3Base.InheritsFrom(anAtomType);
end;

function TreePara_Object_Tag.DoMakeTag(aType: Tk2Type): Ik2Tag;
var
 l_Inst : Tl3Tree;
begin
 l_Inst := Tl3Tree.Create;
 try
  Result := TagFromIntRef(Integer(l_Inst));
 finally
  FreeAndNil(l_Inst);
 end;//try..finally
end;

function TreeParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typTreePara;
end;//TreeParaTagClass.TagType

function TreeParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TreePara'));
end;

function TreeParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_StyledLeafPara.InheritsFrom(anAtomType);
end;

function TreeParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(TreeParaTagClass.Create(aType)));
end;

function ImageListBitmapTagClass.TagType: Tk2Type;
begin
 Result := k2_typImageListBitmap;
end;//ImageListBitmapTagClass.TagType

function ImageListBitmapTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ImageListBitmap'));
end;

function ImageListBitmapTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_BitmapPara.InheritsFrom(anAtomType);
end;

function ImageListBitmapTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(ImageListBitmapTagClass.Create(aType)));
end;

procedure PagePropertiesOrientationAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *49A403F203B7var_AfterChange*

 procedure UnformatDocument(const aTagFromDocument: InevTag;
   const anOpPack: InevOp);
 var
  l_TagOwner : InevTag;
  l_Para     : InevPara;
 begin//UnformatDocument
  anOpPack.MarkModified(aTagFromDocument);
  l_TagOwner := aTagFromDocument;
  while l_TagOwner.IsValid do
  begin
   if l_TagOwner.InheritsFrom(k2_idDocument) then
   begin
    if l_TagOwner.QT(InevPara, l_Para) then 
     l_Para.Invalidate([nev_spExtent]);
    Break;
   end//l_TagOwner.InheritsFrom(k2_idDocument)
   else
    l_TagOwner := l_TagOwner.Owner;
  end;//l_TagOwner.IsValid
 end;//UnformatDocument

//#UC END# *49A403F203B7var_AfterChange*
begin
//#UC START# *49A403F203B7AfterChange*
 if (aContext <> nil) AND not aContext.InIOProcess then
  UnformatDocument(V.rTag.Owner, aContext);
//#UC END# *49A403F203B7AfterChange*
end;



procedure PagePropertiesWidthAfterChange(const V : Tk2Values;
 const aProp    : Tk2Prop;
 const aContext : Ik2Op);
//#UC START# *49A4040D0395var_AfterChange*
//#UC END# *49A4040D0395var_AfterChange*
begin
//#UC START# *49A4040D0395AfterChange*
 PagePropertiesOrientationAfterChange(V, aProp, aContext);
//#UC END# *49A4040D0395AfterChange*
end;

function SimpleDocumentTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SimpleDocument'));
end;

function SimpleDocumentTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Document.InheritsFrom(anAtomType);
end;

function SimpleDocumentTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevNativeSchema(TypeTable).t_Document.DoMakeTag(aType);
end;

function CommentParaTagClass.TagType: Tk2Type;
begin
 Result := k2_typCommentPara;
end;//CommentParaTagClass.TagType

function CommentParaTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('CommentPara'));
end;

function CommentParaTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Block.InheritsFrom(anAtomType);
end;

function CommentParaTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(CommentParaTagClass.Create(aType)));
end;

function SBSTagClass.TagType: Tk2Type;
begin
 Result := k2_typSBS;
end;//SBSTagClass.TagType

function SBSTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('SBS'));
end;

function SBSTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Table.InheritsFrom(anAtomType);
end;

function SBSTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(SBSTagClass.Create(aType)));
end;

function TinyDocumentTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('TinyDocument'));
end;

function TinyDocumentTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_SimpleDocument.InheritsFrom(anAtomType);
end;

function TinyDocumentTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevNativeSchema(TypeTable).t_SimpleDocument.DoMakeTag(aType);
end;

function LeafParaDecorationsHolderTagClass.TagType: Tk2Type;
begin
 Result := k2_typLeafParaDecorationsHolder;
end;//LeafParaDecorationsHolderTagClass.TagType

function LeafParaDecorationsHolderTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('LeafParaDecorationsHolder'));
end;

function LeafParaDecorationsHolderTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ParaList.InheritsFrom(anAtomType);
end;

function LeafParaDecorationsHolderTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(LeafParaDecorationsHolderTagClass.Create(aType)));
end;

function ReqGroupTagClass.TagType: Tk2Type;
begin
 Result := k2_typReqGroup;
end;//ReqGroupTagClass.TagType

function ReqGroupTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('ReqGroup'));
end;

function ReqGroupTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Table.InheritsFrom(anAtomType);
end;

function ReqGroupTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(ReqGroupTagClass.Create(aType)));
end;

function AutoreferatDocumentTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('AutoreferatDocument'));
end;

function AutoreferatDocumentTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Document.InheritsFrom(anAtomType);
end;

function AutoreferatDocumentTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevNativeSchema(TypeTable).t_Document.DoMakeTag(aType);
end;

function DictEntry_ShortName_Tag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DictEntry_ShortName'));
end;

function DictEntry_ShortName_Tag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR TevNativeSchema(TypeTable).t_OList.InheritsFrom(anAtomType);
end;

function DictEntryTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('DictEntry'));
end;

function DictEntryTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_Document.InheritsFrom(anAtomType);
end;

function DictEntryTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := TevNativeSchema(TypeTable).t_Document.DoMakeTag(aType);
end;

function CloakTagClass.TagType: Tk2Type;
begin
 Result := k2_typCloak;
end;//CloakTagClass.TagType

function CloakTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('Cloak'));
end;

function CloakTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ControlsBlock.InheritsFrom(anAtomType);
end;

function CloakTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(CloakTagClass.Create(aType)));
end;

function NodeGroupTagClass.TagType: Tk2Type;
begin
 Result := k2_typNodeGroup;
end;//NodeGroupTagClass.TagType

function NodeGroupTag.GetAsPCharLen: Tl3PCharLenPrim;
begin
 Result := l3PCharLen(AnsiString('NodeGroup'));
end;

function NodeGroupTag.InheritsFrom(anAtomType: Tk2TypePrim): Boolean;
begin
 Result := (Self = anAtomType) OR 
           TevNativeSchema(TypeTable).t_ControlsBlock.InheritsFrom(anAtomType);
end;

function NodeGroupTag.DoMakeTag(aType: Tk2Type): Ik2Tag;
begin
 Result := nil;
 Pointer(Result) := Pointer(Ik2Tag(NodeGroupTagClass.Create(aType)));
end;

constructor TevNativeSchema.Create;
var
 l_ChangesInfo_Header_HeaderC : Ik2Tag;
 l_HeaderC_Segments_Hyperlinks : Ik2Tag;
 l_Segments_Hyperlinks_Hyperlink : Ik2Tag;
 l_HeaderC_Segments_Objects : Ik2Tag;
 l_Segments_Objects_Collapser : Ik2Tag;
 l_Objects_Collapser_Bitmap : Ik2Tag;
 l_ChangesInfo_Footer_FooterC : Ik2Tag;
 l_FooterC_Segments_Hyperlinks : Ik2Tag;
 l_Hyperlinks_Hyperlink_Address : Ik2Tag;
 l_LinkToPublication_Header_FooterC : Ik2Tag;
begin
 inherited;
//#UC START# *484CD009023Dttimpl*
//#UC END# *484CD009023Dttimpl*
 // StyledLeafPara
 t_StyledLeafPara := DefineType(118 {StyledLeafPara}, [t_LeafPara], '"Листьевой" параграф с оформлением', StyledLeafParaTag) As StyledLeafParaTag;
 with t_StyledLeafPara do
 begin
  AtomClass := StyledLeafParaTagClass;
//#UC START# *48567D1900F6atom1*
//#UC END# *48567D1900F6atom1*
  with DefineProperty(k2_tiStyle, t_TextStyle, 'Стиль') do
  begin
   Shared := true;
   AfterChange := StyledLeafParaStyleAfterChange;
  end;//Style
  with Tk2CustomProperty(Prop[k2_tiVisible]) do
  begin
   EmptyMapping := k2_tiStyle;
  end;//Visible
  with Tk2CustomProperty(Prop[k2_tiSpaceBefore]) do
  begin
   EmptyMapping := k2_tiStyle;
  end;//SpaceBefore
  with Tk2CustomProperty(Prop[k2_tiSpaceAfter]) do
  begin
   EmptyMapping := k2_tiStyle;
  end;//SpaceAfter
  with DefineProperty(k2_tiJustification, t_Justification, 'Выравнивание текста') do
  begin
   EmptyMapping := k2_tiStyle;
   AfterChange := StyledLeafParaJustificationAfterChange;
  end;//Justification
  with DefineProperty(k2_tiHandle, t_Handle, 'Идентификатор') do
  begin
   DefaultValue := 0;
  end;//Handle
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   AfterChange := StyledLeafParaWidthAfterChange;
  end;//Width
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   EmptyMapping := k2_tiStyle;
   AfterChange := StyledLeafParaLeftIndentAfterChange;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiRightIndent]) do
  begin
   EmptyMapping := k2_tiStyle;
   AfterChange := StyledLeafParaRightIndentAfterChange;
  end;//RightIndent
  with DefineProperty(k2_tiLineSpacing, t_Long, 'Интерлиньяж') do
  begin
   EmptyMapping := k2_tiStyle;
  end;//LineSpacing
//#UC START# *48567D1900F6atom*
  DefineChildrenPath(t_Sub, [k2_tiSubs, k2_tiChildren,
                             k2_tiHandle, ev_sbtSub]);
  DefineChildrenPath(t_Bookmark, [k2_tiSubs, k2_tiChildren,
                                  k2_tiHandle, ev_sbtBookmark]);
  DefineChildrenPath(t_Mark, [k2_tiSubs, k2_tiChildren,
                              k2_tiHandle, ev_sbtMark]);
//#UC END# *48567D1900F6atom*
 end;//StyledLeafPara
 // TextPara
 t_TextPara := DefineType(22 {TextPara}, [t_StyledLeafPara], 'Текстовый параграф', TextParaTag) As TextParaTag;
 with t_TextPara do
 begin
  AtomClass := TextParaTagClass;
  WrapperType := WevTextPara;
  InterfaceFactoryType := TevTextParaInterfaceFactory;
//#UC START# *485683750360atom1*
//#UC END# *485683750360atom1*
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   DefaultValue := 0;
   EmptyMapping := k2_tiMask;
   Stored := false;
  end;//Width
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   AfterChange := nil;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiRightIndent]) do
  begin
   AfterChange := nil;
  end;//RightIndent
  with DefineProperty(k2_tiAllowHyphen, t_Bool, 'Разрешены переносы') do
  begin
   DefaultValue := Ord(false);
   EmptyMapping := k2_tiStyle;
  end;//AllowHyphen
  with DefineProperty(k2_tiFirstIndent, t_Inch, 'Отступ красной строки') do
  begin
   EmptyMapping := k2_tiStyle;
  end;//FirstIndent
  with DefineProperty(k2_tiFirstLineIndent, t_Inch, 'Отступ красной строки относительно левого отступа (пока не используется)') do
  begin
   EmptyMapping := k2_tiStyle;
  end;//FirstLineIndent
  with DefineProperty(k2_tiBullet, t_Bullet, 'Тип маркера') do
  begin
   DefaultValue := 0;
  end;//Bullet
  with DefineProperty(k2_tiPrintFontSize, t_Long, 'Размер шрифта при печати') do
  begin
   DefaultValue := 11;
  end;//PrintFontSize
  with DefineProperty(k2_tiCollapsed, t_Bool, '') do
  begin
   DefaultValue := Ord(false);
  end;//Collapsed
  with DefineProperty(k2_tiText, t_String, 'Текст') do
  begin
  end;//Text
  with DefineProperty(k2_tiFont, t_Font, '') do
  begin
   EmptyMapping := k2_tiStyle;
   AfterChange := TextParaFontAfterChange;
//#UC START# *485784AF0369attr*
   Tk2Prop(Tk2TypePrim(AtomType).Prop[k2_tiSize]).AfterChange := TextParaFontAfterChange;
//#UC END# *485784AF0369attr*
  end;//Font
  with Tk2CustomProperty(Prop[k2_tiBackColor]) do
  begin
   ReadOnly := true;
   EmptyMapping := k2_tiFont;
   AtomType := t_Color;
  end;//BackColor
  t_TextPara_Segments := TextPara_Segments_Tag.Create(Self, 'Текстовый параграф Segments');
  try
   t_TextPara_Segments.InheriteFrom(t_OList);
   t_TextPara_Segments.StringID := g_InnerTypeID;
   k2_idTextPara_Segments := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_TextPara_Segments.DefineChildrenPrim(t_SegmentsLayer);
   DefineProperty(k2_tiSegments, t_TextPara_Segments, '');
   t_TextPara_Segments.Recalc;
  except
   FreeAndNil(t_TextPara_Segments);
  end;//try..except
  with t_TextPara_Segments.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiHandle;
   StoredChildProc := TextParaSegmentsChildStored;
  end;//Segments
  t_TextPara_TabStops := TextPara_TabStops_Tag.Create(Self, 'Текстовый параграф Позиции табуляции');
  try
   t_TextPara_TabStops.InheriteFrom(t_OList);
   t_TextPara_TabStops.StringID := g_InnerTypeID;
   k2_idTextPara_TabStops := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_TextPara_TabStops.DefineChildrenPrim(t_TabStop);
   DefineProperty(k2_tiTabStops, t_TextPara_TabStops, 'Позиции табуляции');
   t_TextPara_TabStops.Recalc;
  except
   FreeAndNil(t_TextPara_TabStops);
  end;//try..except
  with t_TextPara_TabStops.ArrayProp[k2_tiChildren] do
  begin
  end;//TabStops
  with Tk2CustomProperty(Prop[k2_tiFrame]) do
  begin
   EmptyMapping := k2_tiStyle;
   AtomType := t_Frame;
  end;//Frame
//#UC START# *485683750360atom*
  ParamsForClone := l3LongArray([k2_tiStyle,
                                 k2_tiFont,
                                 k2_tiFirstIndent,
                                 k2_tiFirstLineIndent,
                                 k2_tiLeftIndent,
                                 k2_tiRightIndent,
                                 k2_tiSpaceBefore,
                                 k2_tiSpaceAfter,
                                 k2_tiJustification,
                                 k2_tiVisible,
                                 k2_tiFrame,
                                 k2_tiBullet,
                                 k2_tiTabStops,
                                 k2_tiPrintFontSize]);
  DefineChildrenPath(t_Hyperlink,
                     [k2_tiSegments, k2_tiChildren,
                      k2_tiHandle, ev_slHyperlinks]);
  DefineChildrenPath(t_ObjectSegment,
                     [k2_tiSegments, k2_tiChildren,
                      k2_tiHandle, ev_slObjects]);
  DefineChildrenPath(t_TextSegment,
                     [k2_tiSegments, k2_tiChildren,
                      k2_tiHandle, ev_slView]);
  SetNeedMarkModified([k2_tiLeftIndent,
                       k2_tiRightIndent,
                       k2_tiFirstIndent,
                       k2_tiFirstLineIndent]);
  t_TextPara.Recalc;                     
//#UC END# *485683750360atom*
 end;//TextPara
 // DecorTextPara
 t_DecorTextPara := DefineType(72 {DecorTextPara}, [t_TextPara], 'Текстовый параграф - оформление, не редактируется, не участвует в поиске', DecorTextParaTag) As DecorTextParaTag;
 with t_DecorTextPara do
 begin
  AtomClass := DecorTextParaTagClass;
 end;//DecorTextPara
 // ControlPara
 t_ControlPara := DefineType(119 {ControlPara}, [t_TextPara], 'Параграф представляющий собой контрол ввода', ControlParaTag) As ControlParaTag;
 with t_ControlPara do
 begin
  AtomClass := ControlParaTagClass;
  WrapperType := WevControlPara;
  InterfaceFactoryType := TevControlParaInterfaceFactory;
//#UC START# *4857923F0186atom1*
//#UC END# *4857923F0186atom1*
  with DefineProperty(k2_tiName, t_String, 'Имя контрола') do
  begin
  end;//Name
  with DefineProperty(k2_tiShortName, t_String, 'Подсказка контрола') do
  begin
  end;//ShortName
  with DefineProperty(k2_tiAlternateText, t_TextPara, 'Альтернативный текст (с оформлением)') do
  begin
  end;//AlternateText
  with DefineProperty(k2_tiMaxTextLength, t_Long, 'Максимальная длина текста для контрола') do
  begin
   DefaultValue := Pred(High(Integer));
  end;//MaxTextLength
  t_ControlPara_Type := ControlPara_Type_Tag.Create(Self, 'Параграф представляющий собой контрол ввода Тип контрола');
  try
   t_ControlPara_Type.InheriteFrom(t_Enum);
   t_ControlPara_Type.StringID := g_InnerTypeID;
   k2_idControlPara_Type := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_ControlPara_Type.AtomType := TypeInfo(TevControlType);
   DefineProperty(k2_tiType, t_ControlPara_Type, 'Тип контрола');
   t_ControlPara_Type.Recalc;
  except
   FreeAndNil(t_ControlPara_Type);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiType]) do
  begin
   DefaultValue := Ord(ev_ctLabel);
  end;//Type
  with Tk2CustomProperty(Prop[k2_tiCollapsed]) do
  begin
   DefaultValue := Ord(false);
   Stored := false;
   AfterChange := ControlParaCollapsedAfterChange;
   AtomType := t_Bool;
  end;//Collapsed
  with DefineProperty(k2_tiValid, t_Bool, 'Корректность данных') do
  begin
   DefaultValue := Ord(true);
   AfterChange := ControlParaValidAfterChange;
  end;//Valid
  with Tk2CustomProperty(Prop[k2_tiVisible]) do
  begin
   AfterChange := ControlParaVisibleAfterChange;
  end;//Visible
  with DefineProperty(k2_tiStateIndex, t_Long, 'Текущее состояние') do
  begin
   DefaultValue := -1;
   AfterChange := ControlParaStateIndexAfterChange;
  end;//StateIndex
  with DefineProperty(k2_tiStateCount, t_Long, 'Количество состояний') do
  begin
   DefaultValue := 2;
  end;//StateCount
  with DefineProperty(k2_tiImageIndex, t_Long, 'Индекс картинки') do
  begin
   DefaultValue := -1;
  end;//ImageIndex
  with DefineProperty(k2_tiChecked, t_Bool, 'Кнопка нажата/отпущена') do
  begin
   DefaultValue := Ord(false);
   AfterChange := ControlParaCheckedAfterChange;
  end;//Checked
  with DefineProperty(k2_tiEnabled, t_Bool, 'Доступность контрола') do
  begin
   DefaultValue := Ord(true);
   AfterChange := ControlParaEnabledAfterChange;
   StoredProc := ControlParaEnabledStored;
  end;//Enabled
  with DefineProperty(k2_tiUpper, t_Bool, 'Мышь над кнопкой') do
  begin
   DefaultValue := Ord(false);
   AfterChange := ControlParaUpperAfterChange;
  end;//Upper
  with DefineProperty(k2_tiFlat, t_Bool, 'Режим Flat') do
  begin
   DefaultValue := Ord(false);
   AfterChange := ControlParaFlatAfterChange;
  end;//Flat
  with DefineProperty(k2_tiScript, t_String, 'Скрипт') do
  begin
  end;//Script
  with DefineProperty(k2_tiObject, t_IUnknown, 'Данные для контрола') do
  begin
   Stored := false;
  end;//Object
  with DefineProperty(k2_tiModelControl, t_Long, 'Ссылка на контрол модели') do
  begin
   Stored := false;
  end;//ModelControl
  with DefineProperty(k2_tiNodeVisibleIndex, t_Long, 'VisibleIndex для выбранного в дереве узла - гнусный хак') do
  begin
   DefaultValue := -1;
   Stored := false;
  end;//NodeVisibleIndex
  with Tk2CustomProperty(Prop[k2_tiSpaceBefore]) do
  begin
   ReadOnly := true;
  end;//SpaceBefore
  with Tk2CustomProperty(Prop[k2_tiSpaceAfter]) do
  begin
   ReadOnly := true;
  end;//SpaceAfter
  with Tk2CustomProperty(Prop[k2_tiRightIndent]) do
  begin
   ReadOnly := true;
  end;//RightIndent
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   ReadOnly := true;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiFirstIndent]) do
  begin
   ReadOnly := true;
  end;//FirstIndent
  with Tk2CustomProperty(Prop[k2_tiFirstLineIndent]) do
  begin
   ReadOnly := true;
  end;//FirstLineIndent
//#UC START# *4857923F0186atom*
  UndefineProperties([k2_tiPrintFontSize]);
  Recalc;
  ParamsForClone := l3CatLongArray(ParamsForClone, [k2_tiType, k2_tiChecked, k2_tiUpper]);
//#UC END# *4857923F0186atom*
 end;//ControlPara
 // Formula
 t_Formula := DefineType(110 {Formula}, [t_TextPara], 'Формула', FormulaTag) As FormulaTag;
 with t_Formula do
 begin
  AtomClass := FormulaTagClass;
  WrapperType := WevFormula;
  InterfaceFactoryType := TevFormulaInterfaceFactory;
//#UC START# *4857926501CBatom1*
//#UC END# *4857926501CBatom1*
  with Tk2CustomProperty(Prop[k2_tiCollapsed]) do
  begin
   DefaultValue := Ord(true);
   AtomType := t_Bool;
  end;//Collapsed
  with Tk2CustomProperty(Prop[k2_tiText]) do
  begin
   AfterChange := FormulaTextAfterChange;
  end;//Text
  t_Formula_Data := Formula_Data_Tag.Create(Self, 'Формула Data');
  try
   t_Formula_Data.InheriteFrom(t_l3Base);
   t_Formula_Data.StringID := g_InnerTypeID;
   k2_idFormula_Data := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Formula_Data.AtomType := TypeInfo(Tl3Expr);
   DefineProperty(k2_tiData, t_Formula_Data, '');
   t_Formula_Data.Recalc;
  except
   FreeAndNil(t_Formula_Data);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiData]) do
  begin
   Stored := false;
  end;//Data
//#UC START# *4857926501CBatom*
  UndefineProperties([k2_tiHeight, k2_tiWidth]);
  Recalc;
//#UC END# *4857926501CBatom*
 end;//Formula
 // ParaList
 t_ParaList := DefineType(23 {ParaList}, [t_Para], 'Список параграфов', ParaListTag) As ParaListTag;
 with t_ParaList do
 begin
  AtomClass := ParaListTagClass;
  InterfaceFactoryType := TevParaListInterfaceFactory;
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   DefaultValue := 0;
   StoredProc := ParaListWidthStored;
  end;//Width
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   DefaultValue := 0;
  end;//LeftIndent
  t_ParaList_Orientation := ParaList_Orientation_Tag.Create(Self, 'Список параграфов Ориентация');
  try
   t_ParaList_Orientation.InheriteFrom(t_Enum);
   t_ParaList_Orientation.StringID := g_InnerTypeID;
   k2_idParaList_Orientation := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_ParaList_Orientation.AtomType := TypeInfo(Tl3Orientation);
   DefineProperty(k2_tiOrientation, t_ParaList_Orientation, 'Ориентация');
   t_ParaList_Orientation.Recalc;
  except
   FreeAndNil(t_ParaList_Orientation);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiOrientation]) do
  begin
   ReadOnly := true;
   DefaultValue := Ord(ev_orVertical);
  end;//Orientation
  with DefineProperty(k2_tiAllChildrenCount, t_Long, 'Общее число детей') do
  begin
   DefaultValue := 0;
   Stored := false;
  end;//AllChildrenCount
  with DefineProperty(k2_tiFixedWidth, t_Bool, 'Фиксированная ширина') do
  begin
   ReadOnly := true;
   DefaultValue := Ord(false);
  end;//FixedWidth
  with DefineProperty(k2_tiLineSpacing, t_Long, '') do
  begin
   DefaultValue := Pred(High(Integer));
  end;//LineSpacing
  t_ParaList_Children := ParaList_Children_Tag.Create(Self, 'Список параграфов ');
  try
   t_ParaList_Children.InheriteFrom(t_OList);
   t_ParaList_Children.StringID := g_InnerTypeID;
   k2_idParaList_Children := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_ParaList_Children.DefineChildrenPrim(t_Para);
   DefineChildrenPrim(t_Para, t_ParaList_Children);
   t_ParaList_Children.Recalc;
  except
   FreeAndNil(t_ParaList_Children);
  end;//try..except
  with ArrayProp[k2_tiChildren] do
  begin
  end;//
  ArrayProp[k2_tiChildren].DefaultChildType := t_TextPara;
 end;//ParaList
 // HFParent
 t_HFParent := DefineType(99 {HFParent}, [t_ParaList], '', HFParentTag) As HFParentTag;
 with t_HFParent do
 begin
  AtomClass := HFParentTagClass;
  with Tk2CustomProperty(Prop[k2_tiOrientation]) do
  begin
   ReadOnly := true;
  end;//Orientation
  t_HFParent_Type := HFParent_Type_Tag.Create(Self, 'HFParent Type');
  try
   t_HFParent_Type.InheriteFrom(t_Enum);
   t_HFParent_Type.StringID := g_InnerTypeID;
   k2_idHFParent_Type := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_HFParent_Type.AtomType := TypeInfo(TevHFType);
   DefineProperty(k2_tiType, t_HFParent_Type, '');
   t_HFParent_Type.Recalc;
  except
   FreeAndNil(t_HFParent_Type);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiType]) do
  begin
   DefaultValue := Ord(evd_hftOrdinal);
  end;//Type
 end;//HFParent
 // Header
 t_Header := DefineType(100 {Header}, [t_HFParent], 'Верхний колонтитул', HeaderTag) As HeaderTag;
 with t_Header do
 begin
  AtomClass := HeaderTagClass;
 end;//Header
 // Footer
 t_Footer := DefineType(101 {Footer}, [t_HFParent], 'Нижний колонтитул', FooterTag) As FooterTag;
 with t_Footer do
 begin
  AtomClass := FooterTagClass;
 end;//Footer
 // Division
 t_Division := DefineType(102 {Division}, [t_ParaList], 'Раздел документа (не используется)', DivisionTag) As DivisionTag;
 with t_Division do
 begin
  AtomClass := DivisionTagClass;
  with Tk2CustomProperty(Prop[k2_tiOrientation]) do
  begin
   ReadOnly := true;
  end;//Orientation
  t_Division_Headers := Division_Headers_Tag.Create(Self, 'Раздел документа (не используется) Верхние колонтитулы');
  try
   t_Division_Headers.InheriteFrom(t_OList);
   t_Division_Headers.StringID := g_InnerTypeID;
   k2_idDivision_Headers := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Division_Headers.DefineChildrenPrim(t_Header);
   DefineProperty(k2_tiHeaders, t_Division_Headers, 'Верхние колонтитулы');
   t_Division_Headers.Recalc;
  except
   FreeAndNil(t_Division_Headers);
  end;//try..except
  with t_Division_Headers.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiType;
  end;//Headers
  t_Division_Footers := Division_Footers_Tag.Create(Self, 'Раздел документа (не используется) Нижние колонтитулы');
  try
   t_Division_Footers.InheriteFrom(t_OList);
   t_Division_Footers.StringID := g_InnerTypeID;
   k2_idDivision_Footers := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Division_Footers.DefineChildrenPrim(t_Footer);
   DefineProperty(k2_tiFooters, t_Division_Footers, 'Нижние колонтитулы');
   t_Division_Footers.Recalc;
  except
   FreeAndNil(t_Division_Footers);
  end;//try..except
  with t_Division_Footers.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiType;
  end;//Footers
 end;//Division
 // ContentsElement
 t_ContentsElement := DefineType(133 {ContentsElement}, [t_ParaList, t_ObjectWithHandle], 'элемент структуры документа', ContentsElementTag) As ContentsElementTag;
 with t_ContentsElement do
 begin
  AtomClass := ContentsElementTagClass;
  t_ContentsElement_InContents := ContentsElement_InContents_Tag.Create(Self, 'элемент структуры документа InContents');
  try
   t_ContentsElement_InContents.InheriteFrom(t_Enum);
   t_ContentsElement_InContents.StringID := g_InnerTypeID;
   k2_idContentsElement_InContents := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_ContentsElement_InContents.AtomType := TypeInfo(TevSubPlace);
   DefineProperty(k2_tiInContents, t_ContentsElement_InContents, '');
   t_ContentsElement_InContents.Recalc;
  except
   FreeAndNil(t_ContentsElement_InContents);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiInContents]) do
  begin
   DefaultValue := Ord(ev_spNoWhere);
  end;//InContents
  with Tk2CustomProperty(Prop[k2_tiRubber]) do
  begin
   DefaultValue := Ord(true);
  end;//Rubber
  with DefineProperty(k2_tiName, t_String, 'Имя') do
  begin
  end;//Name
  with DefineProperty(k2_tiShortName, t_String, 'Короткое имя') do
  begin
  end;//ShortName
 end;//ContentsElement
 // Participant
 t_Participant := DefineType(90 {Participant}, [t_Tag], 'Участник', ParticipantTag) As ParticipantTag;
 with t_Participant do
 begin
  with DefineProperty(k2_tiType, t_Long, '') do
  begin
  end;//Type
  with DefineProperty(k2_tiName, t_String, '') do
  begin
  end;//Name
 end;//Participant
 // Block
 t_Block := DefineType(50 {Block}, [t_ParaList, t_Sub, t_ContentsElement], 'Элемент структуры документа', BlockTag) As BlockTag;
 with t_Block do
 begin
  AtomClass := BlockTagClass;
  InterfaceFactoryType := TevBlockInterfaceFactory;
  with Tk2CustomProperty(Prop[k2_tiSpaceBefore]) do
  begin
   DefaultValue := 0;
   EmptyMapping := k2_tiStyle;
   Stored := false;
  end;//SpaceBefore
  with Tk2CustomProperty(Prop[k2_tiSpaceAfter]) do
  begin
   DefaultValue := 0;
   EmptyMapping := k2_tiStyle;
   Stored := false;
  end;//SpaceAfter
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   DefaultValue := 0;
   EmptyMapping := k2_tiStyle;
   Stored := false;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiRightIndent]) do
  begin
   DefaultValue := 0;
   EmptyMapping := k2_tiStyle;
   Stored := false;
  end;//RightIndent
  with Tk2CustomProperty(Prop[k2_tiFixedWidth]) do
  begin
   DefaultValue := Ord(false);
  end;//FixedWidth
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   ReadOnly := true;
  end;//Width
  with DefineProperty(k2_tiExternalHandle, t_Handle, 'Идентификатор внешнего объекта') do
  begin
   NeedMarkModified := true;
  end;//ExternalHandle
  with DefineProperty(k2_tiType, t_Long, 'Тип внешнего объекта') do
  begin
   DefaultValue := 0;
   NeedMarkModified := true;
  end;//Type
  with DefineProperty(k2_tiCollapsed, t_Bool, 'Раскрыт') do
  begin
   DefaultValue := Ord(false);
   Stored := false;
   AfterChange := BlockCollapsedAfterChange;
  end;//Collapsed
  with DefineProperty(k2_tiContentsLevel, t_Long, 'Уровень оглавления') do
  begin
   DefaultValue := Pred(High(Integer));
  end;//ContentsLevel
  with DefineProperty(k2_tiContentsLevel5, t_Long, 'Уровень оглавления для 5.х') do
  begin
   DefaultValue := 0;
  end;//ContentsLevel5
  with DefineProperty(k2_tiLayerID, t_SbLHandle, 'Слой блока') do
  begin
   ReadOnly := true;
   DefaultValue := ev_sbtSub;
  end;//LayerID
  with DefineProperty(k2_tiStyle, t_TextStyle, '') do
  begin
   DefaultValue := k2_TransparentValue;
   NeedMarkModified := true;
   AfterChange := BlockStyleAfterChange;
  end;//Style
  with Tk2CustomProperty(Prop[k2_tiFrame]) do
  begin
   EmptyMapping := k2_tiStyle;
  end;//Frame
  with Tk2CustomProperty(Prop[k2_tiBackColor]) do
  begin
   ReadOnly := false;
   DefaultValue := k2_TransparentValue;
   EmptyMapping := k2_tiFont;
  end;//BackColor
  with DefineProperty(k2_tiCompareContentsLevel, t_Long, 'http://mdp.garant.ru/pages/viewpage.action?pageId=332563400') do
  begin
  end;//CompareContentsLevel
  with DefineProperty(k2_tiFont, t_Font, '') do
  begin
   EmptyMapping := k2_tiStyle;
  end;//Font
  t_Block_ViewKind := Block_ViewKind_Tag.Create(Self, 'Элемент структуры документа http://mdp.garant.ru/pages/viewpage.action?pageId=360022952');
  try
   t_Block_ViewKind.InheriteFrom(t_Enum);
   t_Block_ViewKind.StringID := g_InnerTypeID;
   k2_idBlock_ViewKind := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Block_ViewKind.AtomType := TypeInfo(TevBlockViewKind);
   DefineProperty(k2_tiViewKind, t_Block_ViewKind, 'http://mdp.garant.ru/pages/viewpage.action?pageId=360022952');
   t_Block_ViewKind.Recalc;
  except
   FreeAndNil(t_Block_ViewKind);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiViewKind]) do
  begin
  end;//ViewKind
 end;//Block
 // Version
 t_Version := DefineType(136 {Version}, [t_DictItem], 'Версия', VersionTag) As VersionTag;
 with t_Version do
 begin
  with DefineProperty(k2_tiIsActive, t_Bool, 'http://mdp.garant.ru/pages/viewpage.action?pageId=269083814') do
  begin
  end;//IsActive
  with DefineProperty(k2_tiType, t_Long, 'http://mdp.garant.ru/pages/viewpage.action?pageId=269083814') do
  begin
  end;//Type
 end;//Version
 // DictEntryBlock
 t_DictEntryBlock := DefineType(48 {DictEntryBlock}, [t_Block], 'Элемент словарной статьи', DictEntryBlockTag) As DictEntryBlockTag;
 with t_DictEntryBlock do
 begin
  AtomClass := DictEntryBlockTagClass;
 end;//DictEntryBlock
 // Document
 t_Document := DefineType(20 {Document}, [t_Block], 'Документ', DocumentTag) As DocumentTag;
 with t_Document do
 begin
  AtomClass := TevBaseDocument;
  WrapperType := WevDocument;
  InterfaceFactoryType := TevDocumentInterfaceFactory;
//#UC START# *4857B5260267atom1*
  UndefineProperties([k2_tiSubs, k2_tiType]);
//#UC END# *4857B5260267atom1*
  with Tk2CustomProperty(Prop[k2_tiOrientation]) do
  begin
   ReadOnly := true;
  end;//Orientation
  with Tk2CustomProperty(Prop[k2_tiCollapsed]) do
  begin
   ReadOnly := true;
  end;//Collapsed
  with Tk2CustomProperty(Prop[k2_tiSpaceAfter]) do
  begin
   DefaultValue := 0;
   Stored := true;
   AfterChange := DocumentSpaceAfterAfterChange;
  end;//SpaceAfter
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   Stored := true;
   AfterChange := DocumentLeftIndentAfterChange;
//#UC START# *4857BC220259attr*
   {$IfDef Nemesis}
   DefaultValue := l3NilLong;
   {$Else  Nemesis}
   DefaultValue := def_inchPaperLeft;
   {$EndIf Nemesis}
//#UC END# *4857BC220259attr*
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiRightIndent]) do
  begin
   DefaultValue := def_inchPaperRight;
   EmptyMapping := k2_tiMask;
   Stored := true;
   AfterChange := DocumentRightIndentAfterChange;
  end;//RightIndent
  with DefineProperty(k2_tiHeight, t_Inch, '') do
  begin
   DefaultValue := 0;
  end;//Height
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   ReadOnly := false;
   DefaultValue := def_inchPaperWidth;
   EmptyMapping := k2_tiParas;
   AfterChange := DocumentWidthAfterChange;
  end;//Width
  with Tk2CustomProperty(Prop[k2_tiHandle]) do
  begin
   ReadOnly := true;
   DefaultValue := 0;
  end;//Handle
  with DefineProperty(k2_tiType, t_Type, 'Тип') do
  begin
  end;//Type
  with DefineProperty(k2_tiUserType, t_Type, 'Пользовательский тип') do
  begin
  end;//UserType
  with DefineProperty(k2_tiInternalHandle, t_Handle, 'Внутренний номер') do
  begin
  end;//InternalHandle
  with DefineProperty(k2_tiSortDate, t_Date, 'Дата сортировки') do
  begin
  end;//SortDate
  with DefineProperty(k2_tiRelExternalHandle, t_Handle, 'Внешний номер справки') do
  begin
  end;//RelExternalHandle
  with DefineProperty(k2_tiRelInternalHandle, t_Handle, 'Внутренний номер справки') do
  begin
  end;//RelInternalHandle
  with DefineProperty(k2_tiPriority, t_Long, 'Приоритет') do
  begin
  end;//Priority
  with DefineProperty(k2_tiExternalPath, t_String, '') do
  begin
  end;//ExternalPath
  with DefineProperty(k2_tiPriceLevel, t_Long, '') do
  begin
  end;//PriceLevel
  with DefineProperty(k2_tiComment, t_String, 'Комментарий') do
  begin
  end;//Comment
  with DefineProperty(k2_tiInternalVerLink, t_Handle, 'Предыдущая версия') do
  begin
  end;//InternalVerLink
  with DefineProperty(k2_tiExternalVerLink, t_Handle, 'Предыдущая версия') do
  begin
  end;//ExternalVerLink
  with DefineProperty(k2_tiMaxHyperlinkHandle, t_Long, 'Максимальное значение идентификатора ссылки') do
  begin
   DefaultValue := 0;
   Stored := false;
  end;//MaxHyperlinkHandle
  with DefineProperty(k2_tiInternalNextVerLink, t_Handle, '') do
  begin
  end;//InternalNextVerLink
  with DefineProperty(k2_tiExternalNextVerLink, t_Handle, '') do
  begin
  end;//ExternalNextVerLink
  with DefineProperty(k2_tiUrgency, t_Long, 'Срочность') do
  begin
  end;//Urgency
  with DefineProperty(k2_tiLanguage, t_Long, 'Язык. Подробности  - [$135594063]') do
  begin
   DefaultValue := 1049;
  end;//Language
  with Tk2CustomProperty(Prop[k2_tiLineSpacing]) do
  begin
   EmptyMapping := k2_tiStyle;
  end;//LineSpacing
  with DefineProperty(k2_tiParas, t_PageProperties, 'Параметры страницы') do
  begin
  end;//Paras
  t_Document_Subs := Document_Subs_Tag.Create(Self, 'Документ Метки документа');
  try
   t_Document_Subs.InheriteFrom(t_OList);
   t_Document_Subs.StringID := g_InnerTypeID;
   k2_idDocument_Subs := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Subs.DefineChildrenPrim(t_DocSubLayer);
   DefineProperty(k2_tiSubs, t_Document_Subs, 'Метки документа');
   t_Document_Subs.Recalc;
  except
   FreeAndNil(t_Document_Subs);
  end;//try..except
  with t_Document_Subs.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiHandle;
   StoredChildProc := DocumentSubsChildStored;
   Duplicates := l3_dupAssign;
//#UC START# *4857B957011Dattr*
   {$IfNDef evStoreSubsIndex}
   Stored := false;
   {$EndIf  evStoreSubsIndex}
//#UC END# *4857B957011Dattr*
  end;//Subs
  t_Document_Groups := Document_Groups_Tag.Create(Self, 'Документ Группы');
  try
   t_Document_Groups.InheriteFrom(t_OList);
   t_Document_Groups.StringID := g_InnerTypeID;
   k2_idDocument_Groups := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Groups.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiGroups, t_Document_Groups, 'Группы');
   t_Document_Groups.Recalc;
  except
   FreeAndNil(t_Document_Groups);
  end;//try..except
  with t_Document_Groups.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
  end;//Groups
  t_Document_AccGroups := Document_AccGroups_Tag.Create(Self, 'Документ Группы доступа');
  try
   t_Document_AccGroups.InheriteFrom(t_OList);
   t_Document_AccGroups.StringID := g_InnerTypeID;
   k2_idDocument_AccGroups := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_AccGroups.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiAccGroups, t_Document_AccGroups, 'Группы доступа');
   t_Document_AccGroups.Recalc;
  except
   FreeAndNil(t_Document_AccGroups);
  end;//try..except
  with t_Document_AccGroups.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
   MaxChildrenCount := 1;
  end;//AccGroups
  t_Document_Sources := Document_Sources_Tag.Create(Self, 'Документ Источники');
  try
   t_Document_Sources.InheriteFrom(t_OList);
   t_Document_Sources.StringID := g_InnerTypeID;
   k2_idDocument_Sources := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Sources.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiSources, t_Document_Sources, 'Источники');
   t_Document_Sources.Recalc;
  except
   FreeAndNil(t_Document_Sources);
  end;//try..except
  with t_Document_Sources.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
  end;//Sources
  t_Document_Warnings := Document_Warnings_Tag.Create(Self, 'Документ Предупреждения');
  try
   t_Document_Warnings.InheriteFrom(t_OList);
   t_Document_Warnings.StringID := g_InnerTypeID;
   k2_idDocument_Warnings := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Warnings.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiWarnings, t_Document_Warnings, 'Предупреждения');
   t_Document_Warnings.Recalc;
  except
   FreeAndNil(t_Document_Warnings);
  end;//try..except
  with t_Document_Warnings.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
   MaxChildrenCount := 1;
  end;//Warnings
  t_Document_NumANDDates := Document_NumANDDates_Tag.Create(Self, 'Документ Даты/номера');
  try
   t_Document_NumANDDates.InheriteFrom(t_OList);
   t_Document_NumANDDates.StringID := g_InnerTypeID;
   k2_idDocument_NumANDDates := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_NumANDDates.DefineChildrenPrim(t_NumANDDate);
   DefineProperty(k2_tiNumANDDates, t_Document_NumANDDates, 'Даты/номера');
   t_Document_NumANDDates.Recalc;
  except
   FreeAndNil(t_Document_NumANDDates);
  end;//try..except
  with t_Document_NumANDDates.ArrayProp[k2_tiChildren] do
  begin
   SetSortTags([k2_tiType, k2_tiStart, k2_tiNumber]);
   Duplicates := l3_dupAccept;
  end;//NumANDDates
  t_Document_LogRecords := Document_LogRecords_Tag.Create(Self, 'Документ Юридические изменения');
  try
   t_Document_LogRecords.InheriteFrom(t_OList);
   t_Document_LogRecords.StringID := g_InnerTypeID;
   k2_idDocument_LogRecords := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_LogRecords.DefineChildrenPrim(t_LogRecord);
   DefineProperty(k2_tiLogRecords, t_Document_LogRecords, 'Юридические изменения');
   t_Document_LogRecords.Recalc;
  except
   FreeAndNil(t_Document_LogRecords);
  end;//try..except
  with t_Document_LogRecords.ArrayProp[k2_tiChildren] do
  begin
   SetSortTags([-k2_tiStart, -k2_tiTime, k2_tiType]);
  end;//LogRecords
  t_Document_SysLogRecords := Document_SysLogRecords_Tag.Create(Self, 'Документ Системные изменения');
  try
   t_Document_SysLogRecords.InheriteFrom(t_OList);
   t_Document_SysLogRecords.StringID := g_InnerTypeID;
   k2_idDocument_SysLogRecords := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_SysLogRecords.DefineChildrenPrim(t_LogRecord);
   DefineProperty(k2_tiSysLogRecords, t_Document_SysLogRecords, 'Системные изменения');
   t_Document_SysLogRecords.Recalc;
  except
   FreeAndNil(t_Document_SysLogRecords);
  end;//try..except
  with t_Document_SysLogRecords.ArrayProp[k2_tiChildren] do
  begin
   SetSortTags([-k2_tiStart, -k2_tiTime, k2_tiType]);
  end;//SysLogRecords
  t_Document_Versions := Document_Versions_Tag.Create(Self, 'Документ Versions');
  try
   t_Document_Versions.InheriteFrom(t_OList);
   t_Document_Versions.StringID := g_InnerTypeID;
   k2_idDocument_Versions := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Versions.DefineChildrenPrim(t_Version);
   DefineProperty(k2_tiVersions, t_Document_Versions, '');
   t_Document_Versions.Recalc;
  except
   FreeAndNil(t_Document_Versions);
  end;//try..except
  with t_Document_Versions.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
  end;//Versions
  t_Document_Stages := Document_Stages_Tag.Create(Self, 'Документ Этапы');
  try
   t_Document_Stages.InheriteFrom(t_OList);
   t_Document_Stages.StringID := g_InnerTypeID;
   k2_idDocument_Stages := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Stages.DefineChildrenPrim(t_Stage);
   DefineProperty(k2_tiStages, t_Document_Stages, 'Этапы');
   t_Document_Stages.Recalc;
  except
   FreeAndNil(t_Document_Stages);
  end;//try..except
  with t_Document_Stages.ArrayProp[k2_tiChildren] do
  begin
   SetSortTags([k2_tiType, -k2_tiFinish]);
   Duplicates := l3_dupAccept;
  end;//Stages
  t_Document_Checks := Document_Checks_Tag.Create(Self, 'Документ Вычитка');
  try
   t_Document_Checks.InheriteFrom(t_OList);
   t_Document_Checks.StringID := g_InnerTypeID;
   k2_idDocument_Checks := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Checks.DefineChildrenPrim(t_Check);
   DefineProperty(k2_tiChecks, t_Document_Checks, 'Вычитка');
   t_Document_Checks.Recalc;
  except
   FreeAndNil(t_Document_Checks);
  end;//try..except
  with t_Document_Checks.ArrayProp[k2_tiChildren] do
  begin
   SetSortTags([k2_tiStart, k2_tiUser]);
   Duplicates := l3_dupAccept;
  end;//Checks
  t_Document_PublishedIn := Document_PublishedIn_Tag.Create(Self, 'Документ Источники опубликования');
  try
   t_Document_PublishedIn.InheriteFrom(t_OList);
   t_Document_PublishedIn.StringID := g_InnerTypeID;
   k2_idDocument_PublishedIn := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_PublishedIn.DefineChildrenPrim(t_PIRec);
   DefineProperty(k2_tiPublishedIn, t_Document_PublishedIn, 'Источники опубликования');
   t_Document_PublishedIn.Recalc;
  except
   FreeAndNil(t_Document_PublishedIn);
  end;//try..except
  with t_Document_PublishedIn.ArrayProp[k2_tiChildren] do
  begin
   SetSortTags([k2_tiSource, k2_tiStart, k2_tiNumber]);
   Duplicates := l3_dupAccept;
  end;//PublishedIn
  t_Document_Territory := Document_Territory_Tag.Create(Self, 'Документ Территории');
  try
   t_Document_Territory.InheriteFrom(t_OList);
   t_Document_Territory.StringID := g_InnerTypeID;
   k2_idDocument_Territory := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Territory.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiTerritory, t_Document_Territory, 'Территории');
   t_Document_Territory.Recalc;
  except
   FreeAndNil(t_Document_Territory);
  end;//try..except
  with t_Document_Territory.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
  end;//Territory
  t_Document_Norm := Document_Norm_Tag.Create(Self, 'Документ Нормы права');
  try
   t_Document_Norm.InheriteFrom(t_OList);
   t_Document_Norm.StringID := g_InnerTypeID;
   k2_idDocument_Norm := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Norm.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiNorm, t_Document_Norm, 'Нормы права');
   t_Document_Norm.Recalc;
  except
   FreeAndNil(t_Document_Norm);
  end;//try..except
  with t_Document_Norm.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
   MaxChildrenCount := 1;
  end;//Norm
  t_Document_ActiveIntervals := Document_ActiveIntervals_Tag.Create(Self, 'Документ Интервалы активности');
  try
   t_Document_ActiveIntervals.InheriteFrom(t_OList);
   t_Document_ActiveIntervals.StringID := g_InnerTypeID;
   k2_idDocument_ActiveIntervals := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_ActiveIntervals.DefineChildrenPrim(t_ActiveInterval);
   DefineProperty(k2_tiActiveIntervals, t_Document_ActiveIntervals, 'Интервалы активности');
   t_Document_ActiveIntervals.Recalc;
  except
   FreeAndNil(t_Document_ActiveIntervals);
  end;//try..except
  with t_Document_ActiveIntervals.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiStart;
   NeedMarkModified := true;
   SetSortTags([k2_tiStart, k2_tiType]);
   Duplicates := l3_dupAccept;
  end;//ActiveIntervals
  t_Document_Alarms := Document_Alarms_Tag.Create(Self, 'Документ Звонки');
  try
   t_Document_Alarms.InheriteFrom(t_OList);
   t_Document_Alarms.StringID := g_InnerTypeID;
   k2_idDocument_Alarms := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_Alarms.DefineChildrenPrim(t_Alarm);
   DefineProperty(k2_tiAlarms, t_Document_Alarms, 'Звонки');
   t_Document_Alarms.Recalc;
  except
   FreeAndNil(t_Document_Alarms);
  end;//try..except
  with t_Document_Alarms.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiStart;
   NeedMarkModified := true;
   Duplicates := l3_dupAccept;
  end;//Alarms
  t_Document_AnnoClasses := Document_AnnoClasses_Tag.Create(Self, 'Документ Классы');
  try
   t_Document_AnnoClasses.InheriteFrom(t_OList);
   t_Document_AnnoClasses.StringID := g_InnerTypeID;
   k2_idDocument_AnnoClasses := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_AnnoClasses.DefineChildrenPrim(t_DictItem);
   DefineProperty(k2_tiAnnoClasses, t_Document_AnnoClasses, 'Классы');
   t_Document_AnnoClasses.Recalc;
  except
   FreeAndNil(t_Document_AnnoClasses);
  end;//try..except
  with t_Document_AnnoClasses.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiName;
   Duplicates := l3_dupAccept;
  end;//AnnoClasses
  t_Document_LinkedDocuments := Document_LinkedDocuments_Tag.Create(Self, 'Документ Связанные документы');
  try
   t_Document_LinkedDocuments.InheriteFrom(t_OList);
   t_Document_LinkedDocuments.StringID := g_InnerTypeID;
   k2_idDocument_LinkedDocuments := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_LinkedDocuments.DefineChildrenPrim(t_Address);
   DefineProperty(k2_tiLinkedDocuments, t_Document_LinkedDocuments, 'Связанные документы');
   t_Document_LinkedDocuments.Recalc;
  except
   FreeAndNil(t_Document_LinkedDocuments);
  end;//try..except
  with t_Document_LinkedDocuments.ArrayProp[k2_tiChildren] do
  begin
   SortIndex := k2_tiType;
   Duplicates := l3_dupAccept;
  end;//LinkedDocuments
  with DefineProperty(k2_tiNameComment, t_String, 'Комментарий. [$140286072]') do
  begin
  end;//NameComment
  t_Document_CaseDocParticipants := Document_CaseDocParticipants_Tag.Create(Self, 'Документ Участники судебного дела. [$145097085]');
  try
   t_Document_CaseDocParticipants.InheriteFrom(t_OList);
   t_Document_CaseDocParticipants.StringID := g_InnerTypeID;
   k2_idDocument_CaseDocParticipants := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_Document_CaseDocParticipants.DefineChildrenPrim(t_Participant);
   DefineProperty(k2_tiCaseDocParticipants, t_Document_CaseDocParticipants, 'Участники судебного дела. [$145097085]');
   t_Document_CaseDocParticipants.Recalc;
  except
   FreeAndNil(t_Document_CaseDocParticipants);
  end;//try..except
  with t_Document_CaseDocParticipants.ArrayProp[k2_tiChildren] do
  begin
  end;//CaseDocParticipants
  with DefineProperty(k2_tiNoCompare, t_Bool, 'Документ не участвует в стравнении редакций') do
  begin
  end;//NoCompare
  with DefineProperty(k2_tiMDPPageID, t_Int64, '{RequestLink:275780190}.') do
  begin
  end;//MDPPageID
  with DefineProperty(k2_tiHasAnno, t_Bool, 'Показывает наличие аннотации у документа') do
  begin
  end;//HasAnno
  with DefineProperty(k2_tiMaxSubID, t_Long, '') do
  begin
  end;//MaxSubID
  with DefineProperty(k2_tiData, t_RawData, 'http://mdp.garant.ru/pages/viewpage.action?pageId=356073879') do
  begin
  end;//Data
//#UC START# *4857B5260267atom*
  {$IfDef Nemesis}
  Tk2Prop(Prop[k2_tiSpaceBefore]).DefaultValue := l3Inch div 16;
  {$EndIf Nemesis}
  SetNeedMarkModified([k2_tiExternalHandle,
                       k2_tiInternalHandle,
                       k2_tiRelExternalHandle,
                       k2_tiRelInternalHandle,
                       k2_tiInternalVerLink,
                       k2_tiExternalVerLink,

                       k2_tiName,
                       k2_tiShortName,

                       k2_tiPriceLevel,
                       k2_tiPriority,
                       k2_tiType,
                       k2_tiUserType]);

  { устанавливаем порядок }
  SetTagOrder([k2_tiHandle,
               k2_tiInternalHandle,
               k2_tiExternalHandle,
               k2_tiLanguage,
               k2_tiType,
               k2_tiUserType,
               k2_tiShortName,
               k2_tiName,
               k2_tiNameComment,
               k2_tiComment,
               k2_tiAccGroups,
               k2_tiGroups]);
//#UC END# *4857B5260267atom*
 end;//Document
 // SimpleDocumentTextPara
 t_SimpleDocumentTextPara := DefineType(52 {SimpleDocumentTextPara}, [t_TextPara], 'текстовый параграф в "простых документах"', SimpleDocumentTextParaTag) As SimpleDocumentTextParaTag;
 with t_SimpleDocumentTextPara do
 begin
  AtomClass := SimpleDocumentTextParaTagClass;
  with Tk2CustomProperty(Prop[k2_tiFirstIndent]) do
  begin
   DefaultValue := 0;
  end;//FirstIndent
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   DefaultValue := 0;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiFirstLineIndent]) do
  begin
   DefaultValue := 0;
  end;//FirstLineIndent
  with Tk2CustomProperty(Prop[k2_tiStyle]) do
  begin
   DefaultValue := ev_saToLeft;
  end;//Style
 end;//SimpleDocumentTextPara
 // AnnoTopic
 t_AnnoTopic := DefineType(54 {AnnoTopic}, [t_Document], 'Аннотация', AnnoTopicTag) As AnnoTopicTag;
 with t_AnnoTopic do
 begin
 end;//AnnoTopic
 // TableTextPara
 t_TableTextPara := DefineType(53 {TableTextPara}, [t_TextPara], 'Текстовый параграф в таблице', TableTextParaTag) As TableTextParaTag;
 with t_TableTextPara do
 begin
  AtomClass := TableTextParaTagClass;
  with Tk2CustomProperty(Prop[k2_tiStyle]) do
  begin
   DefaultValue := evd_saNormalTable;
  end;//Style
 end;//TableTextPara
 // TableCell
 t_TableCell := DefineType(27 {TableCell}, [t_ParaList], 'Ячейка таблицы', TableCellTag) As TableCellTag;
 with t_TableCell do
 begin
  AtomClass := TableCellTagClass;
  InterfaceFactoryType := TevTableCellInterfaceFactory;
  with Tk2CustomProperty(Prop[k2_tiOrientation]) do
  begin
   ReadOnly := true;
  end;//Orientation
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   AfterChange := TableCellWidthAfterChange;
  end;//Width
  with Tk2CustomProperty(Prop[k2_tiFixedWidth]) do
  begin
   DefaultValue := Ord(true);
  end;//FixedWidth
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   DefaultValue := def_inchSBSIndent div 2;
   AfterChange := TableCellLeftIndentAfterChange;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiRightIndent]) do
  begin
   DefaultValue := def_inchSBSIndent div 2;
   AfterChange := TableCellRightIndentAfterChange;
  end;//RightIndent
  with Tk2CustomProperty(Prop[k2_tiSpaceBefore]) do
  begin
   DefaultValue := def_inchSBSIndent div 3;
  end;//SpaceBefore
  with Tk2CustomProperty(Prop[k2_tiSpaceAfter]) do
  begin
   DefaultValue := def_inchSBSIndent div 3;
  end;//SpaceAfter
  with DefineProperty(k2_tiStateCount, t_Long, 'Вычисление ширины по верхним ячейкам') do
  begin
   DefaultValue := 0;
   Stored := false;
  end;//StateCount
  t_TableCell_MergeStatus := TableCell_MergeStatus_Tag.Create(Self, 'Ячейка таблицы Признак объединения');
  try
   t_TableCell_MergeStatus.InheriteFrom(t_Enum);
   t_TableCell_MergeStatus.StringID := g_InnerTypeID;
   k2_idTableCell_MergeStatus := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_TableCell_MergeStatus.AtomType := TypeInfo(TevMergeStatus);
   DefineProperty(k2_tiMergeStatus, t_TableCell_MergeStatus, 'Признак объединения');
   t_TableCell_MergeStatus.Recalc;
  except
   FreeAndNil(t_TableCell_MergeStatus);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiMergeStatus]) do
  begin
   DefaultValue := Ord(ev_msNone);
   AfterChange := TableCellMergeStatusAfterChange;
  end;//MergeStatus
  t_TableCell_VerticalAligment := TableCell_VerticalAligment_Tag.Create(Self, 'Ячейка таблицы Выравнивание по вертикали');
  try
   t_TableCell_VerticalAligment.InheriteFrom(t_Enum);
   t_TableCell_VerticalAligment.StringID := g_InnerTypeID;
   k2_idTableCell_VerticalAligment := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_TableCell_VerticalAligment.AtomType := TypeInfo(TevVerticalAligment);
   DefineProperty(k2_tiVerticalAligment, t_TableCell_VerticalAligment, 'Выравнивание по вертикали');
   t_TableCell_VerticalAligment.Recalc;
  except
   FreeAndNil(t_TableCell_VerticalAligment);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiVerticalAligment]) do
  begin
   DefaultValue := Ord(ev_valTop);
   NeedMarkModified := true;
   AfterChange := TableCellVerticalAligmentAfterChange;
  end;//VerticalAligment
  with Tk2CustomProperty(Prop[k2_tiFrame]) do
  begin
   DefaultValue := evd_fvSolid;
  end;//Frame
  ArrayProp[k2_tiChildren].DefaultChildType := t_TableTextPara;
  AddDisabledChildTypeID(t_Block.ID);
 end;//TableCell
 // TableRow
 t_TableRow := DefineType(26 {TableRow}, [t_ParaList], 'Строка таблицы', TableRowTag) As TableRowTag;
 with t_TableRow do
 begin
  AtomClass := TableRowTagClass;
  InterfaceFactoryType := TevTableRowInterfaceFactory;
  with Tk2CustomProperty(Prop[k2_tiOrientation]) do
  begin
   ReadOnly := true;
   DefaultValue := Ord(ev_orHorizontal);
  end;//Orientation
  with ArrayProp[k2_tiChildren] do
  begin
   ChildType := t_TableCell;
  end;//
 end;//TableRow
 // SBSCell
 t_SBSCell := DefineType(109 {SBSCell}, [t_TableCell], 'Ячейка подписи', SBSCellTag) As SBSCellTag;
 with t_SBSCell do
 begin
  AtomClass := SBSCellTagClass;
  InterfaceFactoryType := TevSBSCellInterfaceFactory;
  with Tk2CustomProperty(Prop[k2_tiVerticalAligment]) do
  begin
   DefaultValue := Ord(ev_valBottom);
  end;//VerticalAligment
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   DefaultValue := 0;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiFrame]) do
  begin
   DefaultValue := evd_fvEmpty;
  end;//Frame
 end;//SBSCell
 // Table
 t_Table := DefineType(24 {Table}, [t_ParaList], 'Таблица', TableTag) As TableTag;
 with t_Table do
 begin
  AtomClass := TableTagClass;
  InterfaceFactoryType := TevTableInterfaceFactory;
//#UC START# *4857D48E00F4atom1*
//#UC END# *4857D48E00F4atom1*
  with Tk2CustomProperty(Prop[k2_tiSpaceBefore]) do
  begin
   DefaultValue := def_inchSBSIndent div 3;
  end;//SpaceBefore
  with Tk2CustomProperty(Prop[k2_tiSpaceAfter]) do
  begin
   DefaultValue := def_inchSBSIndent div 3;
  end;//SpaceAfter
  with Tk2CustomProperty(Prop[k2_tiRubber]) do
  begin
   DefaultValue := Ord(true);
  end;//Rubber
  with DefineProperty(k2_tiOldNSRC, t_Bool, 'Писать в старом формате NSRC') do
  begin
   DefaultValue := Ord(false);
   NeedMarkModified := true;
  end;//OldNSRC
  with DefineProperty(k2_tiZoom, t_Long, 'Масштаб') do
  begin
   DefaultValue := 100;
  end;//Zoom
  with ArrayProp[k2_tiChildren] do
  begin
   ChildType := t_TableRow;
  end;//
//#UC START# *4857D48E00F4atom*
  SetTagOrder([k2_tiOldNSRC, k2_tiZoom]);
//#UC END# *4857D48E00F4atom*
 end;//Table
 // SBSRow
 t_SBSRow := DefineType(108 {SBSRow}, [t_TableRow], 'Строка подписи', SBSRowTag) As SBSRowTag;
 with t_SBSRow do
 begin
  AtomClass := SBSRowTagClass;
  InterfaceFactoryType := TevSBSRowInterfaceFactory;
  with Tk2CustomProperty(Prop[k2_tiRubber]) do
  begin
   DefaultValue := Ord(true);
  end;//Rubber
  with ArrayProp[k2_tiChildren] do
  begin
   ChildType := t_SBSCell;
//#UC START# *4857DF07030Dattr*
   OnValidateChild := SBSRowValidateChild;
//#UC END# *4857DF07030Dattr*
  end;//
 end;//SBSRow
 // QueryCard
 t_QueryCard := DefineType(129 {QueryCard}, [t_Document], 'Новая КЗ', QueryCardTag) As QueryCardTag;
 with t_QueryCard do
 begin
  InterfaceFactoryType := TevQueryCardInterfaceFactory;
  t_QueryCard_CardType := QueryCard_CardType_Tag.Create(Self, 'Новая КЗ Тип КЗ');
  try
   t_QueryCard_CardType.InheriteFrom(t_Enum);
   t_QueryCard_CardType.StringID := g_InnerTypeID;
   k2_idQueryCard_CardType := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_QueryCard_CardType.AtomType := TypeInfo(TevQueryType);
   DefineProperty(k2_tiCardType, t_QueryCard_CardType, 'Тип КЗ');
   t_QueryCard_CardType.Recalc;
  except
   FreeAndNil(t_QueryCard_CardType);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiCardType]) do
  begin
   DefaultValue := Ord(ev_qtAttributeSearch);
  end;//CardType
 end;//QueryCard
 // ReqCell
 t_ReqCell := DefineType(131 {ReqCell}, [t_TableCell], 'Ячейка с контролом', ReqCellTag) As ReqCellTag;
 with t_ReqCell do
 begin
  AtomClass := ReqCellTagClass;
  InterfaceFactoryType := TevReqCellInterfaceFactory;
  with ArrayProp[k2_tiChildren] do
  begin
   ChildType := t_ControlPara;
  end;//
  with Tk2CustomProperty(Prop[k2_tiFrame]) do
  begin
   DefaultValue := evd_fvEmpty;
  end;//Frame
 end;//ReqCell
 // ReqRow
 t_ReqRow := DefineType(130 {ReqRow}, [t_TableRow], 'Строка контролов', ReqRowTag) As ReqRowTag;
 with t_ReqRow do
 begin
  AtomClass := ReqRowTagClass;
  WrapperType := WevReqRow;
  InterfaceFactoryType := TevReqRowInterfaceFactory;
//#UC START# *4857EA97011Datom1*
//#UC END# *4857EA97011Datom1*
  with DefineProperty(k2_tiReqID, t_String, 'Идентификатор реквизита') do
  begin
  end;//ReqID
  with DefineProperty(k2_tiEnabled, t_Bool, 'Информационный реквизит') do
  begin
   DefaultValue := Ord(true);
  end;//Enabled
  with DefineProperty(k2_tiRequired, t_Bool, 'Обязательное значение') do
  begin
   DefaultValue := Ord(false);
  end;//Required
  with DefineProperty(k2_tiFilterType, t_Long, 'Тип фильтрации атрибута') do
  begin
   DefaultValue := 0;
  end;//FilterType
  t_ReqRow_ReqKind := ReqRow_ReqKind_Tag.Create(Self, 'Строка контролов Тип реквизита');
  try
   t_ReqRow_ReqKind.InheriteFrom(t_Enum);
   t_ReqRow_ReqKind.StringID := g_InnerTypeID;
   k2_idReqRow_ReqKind := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_ReqRow_ReqKind.AtomType := TypeInfo(TevReqKind);
   DefineProperty(k2_tiReqKind, t_ReqRow_ReqKind, 'Тип реквизита');
   t_ReqRow_ReqKind.Recalc;
  except
   FreeAndNil(t_ReqRow_ReqKind);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiReqKind]) do
  begin
   DefaultValue := Ord(ev_rkSimple);
  end;//ReqKind
  with DefineProperty(k2_tiMulty, t_Bool, 'Множественный выбор') do
  begin
   DefaultValue := Ord(true);
  end;//Multy
  with DefineProperty(k2_tiNumList, t_Bool, 'Номера') do
  begin
   DefaultValue := Ord(false);
  end;//NumList
  with DefineProperty(k2_tiModelControl, t_Long, 'Ссылка на контрол модели') do
  begin
   Stored := false;
  end;//ModelControl
  with DefineProperty(k2_tiDefaultText, t_String, 'Значение текста по-молчанию') do
  begin
   Stored := false;
  end;//DefaultText
  with DefineProperty(k2_tiDefaultNode, t_IUnknown, 'Значение узла по-молчанию') do
  begin
   Stored := false;
  end;//DefaultNode
  with DefineProperty(k2_tiModified, t_Bool, 'Атрибут модифицирован') do
  begin
   DefaultValue := Ord(false);
   Stored := false;
  end;//Modified
  with DefineProperty(k2_tiOperations, t_Long, 'Набор разрешенных операций') do
  begin
   DefaultValue := 0;
   Stored := false;
  end;//Operations
  ArrayProp[k2_tiChildren].DefaultChildType := t_ReqCell;
  with DefineProperty(k2_tiStateIndex, t_Long, 'Значение состояния кнопки по-умолчнию') do
  begin
   Stored := false;
   AfterChange := ReqRowStateIndexAfterChange;
  end;//StateIndex
  with Tk2CustomProperty(Prop[k2_tiFrame]) do
  begin
   DefaultValue := evd_fvEmpty;
  end;//Frame
//#UC START# *4857EA97011Datom*
  ParamsForClone := l3CatLongArray(ParamsForClone, [k2_tiDefaultText, k2_tiOperations]);
//#UC END# *4857EA97011Datom*
 end;//ReqRow
 // ControlsBlock
 t_ControlsBlock := DefineType(121 {ControlsBlock}, [t_Block], 'Блок контролов', ControlsBlockTag) As ControlsBlockTag;
 with t_ControlsBlock do
 begin
  AtomClass := ControlsBlockTagClass;
  InterfaceFactoryType := TevControlsBlockInterfaceFactory;
  with Tk2CustomProperty(Prop[k2_tiHandle]) do
  begin
   DefaultValue := Pred(High(Integer));
  end;//Handle
  with DefineProperty(k2_tiModelControl, t_Long, 'Ссылка на контрол модели') do
  begin
   Stored := false;
  end;//ModelControl
  with Tk2CustomProperty(Prop[k2_tiSpaceBefore]) do
  begin
   ReadOnly := true;
   DefaultValue := evControlBlockBefore;
  end;//SpaceBefore
  with Tk2CustomProperty(Prop[k2_tiSpaceAfter]) do
  begin
   ReadOnly := true;
   DefaultValue := 0;
  end;//SpaceAfter
  with DefineProperty(k2_tiEnabled, t_Bool, 'Доступность блока') do
  begin
   DefaultValue := Ord(true);
   AfterChange := ControlsBlockEnabledAfterChange;
  end;//Enabled
  with DefineProperty(k2_tiUpper, t_Bool, 'Мышь над кнопкой') do
  begin
   DefaultValue := Ord(false);
   AfterChange := ControlsBlockUpperAfterChange;
  end;//Upper
  with DefineProperty(k2_tiFlat, t_Bool, 'Режим Flat') do
  begin
   DefaultValue := Ord(true);
   AfterChange := ControlsBlockFlatAfterChange;
  end;//Flat
  with DefineProperty(k2_tiChecked, t_Bool, 'Кнопка нажата/отпущена') do
  begin
   DefaultValue := Ord(false);
  end;//Checked
 end;//ControlsBlock
 // BitmapPara
 t_BitmapPara := DefineType(97 {BitmapPara}, [t_StyledLeafPara], 'Картинка в тексте', BitmapParaTag) As BitmapParaTag;
 with t_BitmapPara do
 begin
  AtomClass := BitmapParaTagClass;
  WrapperType := WevBitmapPara;
  InterfaceFactoryType := TevBitmapParaInterfaceFactory;
//#UC START# *4858116B0355atom1*
//#UC END# *4858116B0355atom1*
  with DefineProperty(k2_tiExternalHandle, t_Handle, 'Идентификатор картинки') do
  begin
  end;//ExternalHandle
  with DefineProperty(k2_tiInternalHandle, t_Handle, 'Идентификатор потока картинки - необходимость заведения смотрим тут http://mdp.garant.ru/pages/viewpage.action?pageId=86479913') do
  begin
  end;//InternalHandle
  with DefineProperty(k2_tiExternalPath, t_String, 'Путь к картинке') do
  begin
  end;//ExternalPath
  with DefineProperty(k2_tiName, t_String, 'Имя') do
  begin
  end;//Name
  with DefineProperty(k2_tiShortName, t_String, 'Короткое имя') do
  begin
  end;//ShortName
  with DefineProperty(k2_tiDPI, t_Long, '') do
  begin
  end;//DPI
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   DefaultValue := 0;
   AfterChange := BitmapParaLeftIndentAfterChange;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
  end;//Width
  with DefineProperty(k2_tiHeight, t_Inch, '') do
  begin
   AfterChange := BitmapParaHeightAfterChange;
  end;//Height
  with DefineProperty(k2_tiData, t_RawData, 'Картинка') do
  begin
  end;//Data
  t_BitmapPara_Object := BitmapPara_Object_Tag.Create(Self, 'Картинка в тексте Object');
  try
   t_BitmapPara_Object.InheriteFrom(t_l3Base);
   t_BitmapPara_Object.StringID := g_InnerTypeID;
   k2_idBitmapPara_Object := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_BitmapPara_Object.AtomType := TypeInfo(TevBitmapParaBitmapContainer);
   DefineProperty(k2_tiObject, t_BitmapPara_Object, '');
   t_BitmapPara_Object.Recalc;
  except
   FreeAndNil(t_BitmapPara_Object);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiObject]) do
  begin
   Stored := false;
  end;//Object
//#UC START# *4858116B0355atom*
  t_BitmapPara.Recalc;
//#UC END# *4858116B0355atom*
 end;//BitmapPara
 // XMLTag
 t_XMLTag := DefineType(123 {XMLTag}, [t_Block], 'XML-тег', XMLTagTag) As XMLTagTag;
 with t_XMLTag do
 begin
  AtomClass := XMLTagTagClass;
  with Tk2CustomProperty(Prop[k2_tiHandle]) do
  begin
   DefaultValue := 1;
  end;//Handle
 end;//XMLTag
 // XML
 t_XML := DefineType(122 {XML}, [t_Document], 'XML-документ', XMLTag) As XMLTag;
 with t_XML do
 begin
  ArrayProp[k2_tiChildren].DefaultChildType := t_XMLTag;
 end;//XML
 // ExtDataPara
 t_ExtDataPara := DefineType(132 {ExtDataPara}, [t_LeafPara], 'Параграф с данными во внешнем формате', ExtDataParaTag) As ExtDataParaTag;
 with t_ExtDataPara do
 begin
  AtomClass := ExtDataParaTagClass;
  with DefineProperty(k2_tiExternalPath, t_String, 'Путь к данным') do
  begin
  end;//ExternalPath
  with DefineProperty(k2_tiType, t_Long, 'Тип данных') do
  begin
  end;//Type
  with DefineProperty(k2_tiInternalHandle, t_Handle, 'Идентификатор потока данных - необходимость заведения смотрим тут http://mdp.garant.ru/pages/viewpage.action?pageId=86479913') do
  begin
  end;//InternalHandle
  with DefineProperty(k2_tiData, t_RawData, 'Данные') do
  begin
  end;//Data
 end;//ExtDataPara
 // AttrValue
 t_AttrValue := DefineType(127 {AttrValue}, [t_TextPara], 'Значение атрибута', AttrValueTag) As AttrValueTag;
 with t_AttrValue do
 begin
  AtomClass := AttrValueTagClass;
 end;//AttrValue
 // AttrName
 t_AttrName := DefineType(126 {AttrName}, [t_TextPara], 'Имя атрибута', AttrNameTag) As AttrNameTag;
 with t_AttrName do
 begin
  AtomClass := AttrNameTagClass;
 end;//AttrName
 // Attr
 t_Attr := DefineType(125 {Attr}, [t_Block], 'Атрибут тега', AttrTag) As AttrTag;
 with t_Attr do
 begin
  AtomClass := AttrTagClass;
  with Tk2CustomProperty(Prop[k2_tiHandle]) do
  begin
   DefaultValue := 1;
  end;//Handle
  ArrayProp[k2_tiChildren].DefaultChildType := t_AttrName;
 end;//Attr
 // TagName
 t_TagName := DefineType(124 {TagName}, [t_TextPara], 'Имя тега', TagNameTag) As TagNameTag;
 with t_TagName do
 begin
  AtomClass := TagNameTagClass;
 end;//TagName
 // TagBody
 t_TagBody := DefineType(128 {TagBody}, [t_TextPara], 'Тело тега', TagBodyTag) As TagBodyTag;
 with t_TagBody do
 begin
  AtomClass := TagBodyTagClass;
 end;//TagBody
 // TreePara
 t_TreePara := DefineType(107 {TreePara}, [t_StyledLeafPara], 'Дерево', TreeParaTag) As TreeParaTag;
 with t_TreePara do
 begin
  AtomClass := TreeParaTagClass;
  WrapperType := WevTreePara;
  InterfaceFactoryType := TevTreeParaInterfaceFactory;
  with Tk2CustomProperty(Prop[k2_tiBackColor]) do
  begin
   DefaultValue := $C0F0C0;
  end;//BackColor
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   DefaultValue := 0;
   AfterChange := nil;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiRightIndent]) do
  begin
   DefaultValue := 0;
   AfterChange := nil;
  end;//RightIndent
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   AfterChange := nil;
  end;//Width
  t_TreePara_Object := TreePara_Object_Tag.Create(Self, 'Дерево Object');
  try
   t_TreePara_Object.InheriteFrom(t_l3Base);
   t_TreePara_Object.StringID := g_InnerTypeID;
   k2_idTreePara_Object := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_TreePara_Object.AtomType := TypeInfo(Tl3Tree);
   DefineProperty(k2_tiObject, t_TreePara_Object, '');
   t_TreePara_Object.Recalc;
  except
   FreeAndNil(t_TreePara_Object);
  end;//try..except
  with Tk2CustomProperty(Prop[k2_tiObject]) do
  begin
   Stored := false;
  end;//Object
 end;//TreePara
 // ImageListBitmap
 t_ImageListBitmap := DefineType(137 {ImageListBitmap}, [t_BitmapPara], 'Картинка из списка картинок', ImageListBitmapTag) As ImageListBitmapTag;
 with t_ImageListBitmap do
 begin
  AtomClass := ImageListBitmapTagClass;
 end;//ImageListBitmap
 // PageProperties
 with t_PageProperties do
 begin
  with Tk2CustomProperty(Prop[k2_tiOrientation]) do
  begin
   AfterChange := PagePropertiesOrientationAfterChange;
  end;//Orientation
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   AfterChange := PagePropertiesWidthAfterChange;
  end;//Width
 end;//PageProperties
 // SimpleDocument
 t_SimpleDocument := DefineType(105 {SimpleDocument}, [t_Document], 'Простой документ', SimpleDocumentTag) As SimpleDocumentTag;
 with t_SimpleDocument do
 begin
  with Tk2CustomProperty(Prop[k2_tiWidth]) do
  begin
   DefaultValue := def_inchMemoWidth;
  end;//Width
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   DefaultValue := 0;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiRightIndent]) do
  begin
   DefaultValue := 0;
  end;//RightIndent
  with Tk2CustomProperty(Prop[k2_tiLineSpacing]) do
  begin
   DefaultValue := 100;
  end;//LineSpacing
  ArrayProp[k2_tiChildren].DefaultChildType := t_SimpleDocumentTextPara;
 end;//SimpleDocument
 // CommentPara
 t_CommentPara := DefineType(120 {CommentPara}, [t_Block], 'Блок пользовательского комментария', CommentParaTag) As CommentParaTag;
 with t_CommentPara do
 begin
  AtomClass := CommentParaTagClass;
  WrapperType := WevCommentPara;
  InterfaceFactoryType := TevCommentParaInterfaceFactory;
  with Tk2CustomProperty(Prop[k2_tiHandle]) do
  begin
   DefaultValue := Pred(High(Integer));
  end;//Handle
  with Tk2CustomProperty(Prop[k2_tiSpaceBefore]) do
  begin
   ReadOnly := true;
   DefaultValue := evDocumentPartMargin { * 3} + (evDocumentPartMargin * 2) div 3;
  end;//SpaceBefore
  with Tk2CustomProperty(Prop[k2_tiSpaceAfter]) do
  begin
   ReadOnly := true;
   DefaultValue := evDocumentPartMargin;
  end;//SpaceAfter
  with Tk2CustomProperty(Prop[k2_tiLeftIndent]) do
  begin
   ReadOnly := true;
   DefaultValue := evDocumentPartMargin;
  end;//LeftIndent
  with Tk2CustomProperty(Prop[k2_tiLayerID]) do
  begin
   DefaultValue := ev_sbtMark;
  end;//LayerID
  with Tk2CustomProperty(Prop[k2_tiFlags]) do
  begin
   DefaultValue := ev_cUserCommentFlags;
   Stored := false;
  end;//Flags
 end;//CommentPara
 // SBS
 t_SBS := DefineType(25 {SBS}, [t_Table], 'Подпись', SBSTag) As SBSTag;
 with t_SBS do
 begin
  AtomClass := SBSTagClass;
  InterfaceFactoryType := TevSBSInterfaceFactory;
  with ArrayProp[k2_tiChildren] do
  begin
   ChildType := t_SBSRow;
//#UC START# *4857E2C00005attr*
   OnValidateChild := SBSValidateChild;
//#UC END# *4857E2C00005attr*
  end;//
 end;//SBS
 // TinyDocument
 t_TinyDocument := DefineType(83 {TinyDocument}, [t_SimpleDocument], 'Простой документ', TinyDocumentTag) As TinyDocumentTag;
 with t_TinyDocument do
 begin
  with Tk2CustomProperty(Prop[k2_tiSpaceBefore]) do
  begin
   DefaultValue := nev.CrtIC.DP2LP(PointX(1)).X;
  end;//SpaceBefore
  with ArrayProp[k2_tiChildren] do
  begin
   ChildType := t_TextPara;
  end;//
  ArrayProp[k2_tiChildren].DefaultChildType := t_SimpleDocumentTextPara;
 end;//TinyDocument
 // LeafParaDecorationsHolder
 t_LeafParaDecorationsHolder := DefineType(134 {LeafParaDecorationsHolder}, [t_ParaList], 'Контейнер декораций', LeafParaDecorationsHolderTag) As LeafParaDecorationsHolderTag;
 with t_LeafParaDecorationsHolder do
 begin
  AtomClass := LeafParaDecorationsHolderTagClass;
  with Tk2CustomProperty(Prop[k2_tiRubber]) do
  begin
   DefaultValue := Ord(true);
  end;//Rubber
 end;//LeafParaDecorationsHolder
 // ReqGroup
 t_ReqGroup := DefineType(55 {ReqGroup}, [t_Table], 'Группа реквизитов', ReqGroupTag) As ReqGroupTag;
 with t_ReqGroup do
 begin
  AtomClass := ReqGroupTagClass;
  WrapperType := WevReqGroup;
  InterfaceFactoryType := TevReqGroupInterfaceFactory;
  with DefineProperty(k2_tiChecked, t_Bool, '') do
  begin
   DefaultValue := Ord(true);
  end;//Checked
  ArrayProp[k2_tiChildren].DefaultChildType := t_ReqRow;
 end;//ReqGroup
 // AutoreferatDocument
 t_AutoreferatDocument := DefineType(135 {AutoreferatDocument}, [t_Document], '', AutoreferatDocumentTag) As AutoreferatDocumentTag;
 with t_AutoreferatDocument do
 begin
  InterfaceFactoryType := TevAutoreferatDocumentInterfaceFactory;
 end;//AutoreferatDocument
 // DictEntry
 t_DictEntry := DefineType(49 {DictEntry}, [t_Document], 'Словарная статья', DictEntryTag) As DictEntryTag;
 with t_DictEntry do
 begin
//#UC START# *4857CB7D0340atom1*
  UndefineProperties([k2_tiShortName]);
//#UC END# *4857CB7D0340atom1*
  t_DictEntry_ShortName := DictEntry_ShortName_Tag.Create(Self, 'Словарная статья Заголовки');
  try
   t_DictEntry_ShortName.InheriteFrom(t_OList);
   t_DictEntry_ShortName.StringID := g_InnerTypeID;
   k2_idDictEntry_ShortName := g_InnerTypeID;
   Inc(g_InnerTypeID);
   t_DictEntry_ShortName.DefineChildrenPrim(t_String);
   DefineProperty(k2_tiShortName, t_DictEntry_ShortName, 'Заголовки');
   t_DictEntry_ShortName.Recalc;
  except
   FreeAndNil(t_DictEntry_ShortName);
  end;//try..except
  with t_DictEntry_ShortName.ArrayProp[k2_tiChildren] do
  begin
  end;//ShortName
  ArrayProp[k2_tiChildren].DefaultChildType := t_DictEntryBlock;
//#UC START# *4857CB7D0340atom*
  Tk2Prop(Prop[k2_tiShortName]).OrderKey := Tk2Prop(Prop[k2_tiUserType]).OrderKey.Succ;
//#UC END# *4857CB7D0340atom*
 end;//DictEntry
 // Cloak
 t_Cloak := DefineType(47 {Cloak}, [t_ControlsBlock], 'Схлопывающаяся группа параграфов', CloakTag) As CloakTag;
 with t_Cloak do
 begin
  AtomClass := CloakTagClass;
 end;//Cloak
 // TextStyle
 with t_TextStyle do
 begin
  Recalc;
  // Прижатый влево
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -16;
    IntA[k2_tiFirstIndent] := 0;
    IntA[k2_tiFirstLineIndent] := 0;
    StrA[k2_tiName] := str_TextStyle_ToLeft_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itLeft);
    AddValue(Box);
   end;//with MakeTag
  // Заголовок 1
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -3;
    StrA[k2_tiName] := str_TextStyle_TxtHeader1_Name_Value.AsStr;
    IntA[k2_tiSpaceBefore] := 75;
    IntA[k2_tiFirstIndent] := 0;
    IntA[k2_tiFirstLineIndent] := 0;
    IntA[k2_tiLeftIndent] := 0;
    IntA[k2_tiJustification] := Ord(ev_itCenter);
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 12;
     BoolA[k2_tiBold] := true;
     BoolA[k2_tiUnderline] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовок 2
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -3;
    IntA[k2_tiHandle] := -4;
    StrA[k2_tiName] := str_TextStyle_TxtHeader2_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiItalic] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовок 3
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -4;
    IntA[k2_tiHandle] := -5;
    StrA[k2_tiName] := str_TextStyle_TxtHeader3_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 10;
     BoolA[k2_tiItalic] := false;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовок 4
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -5;
    IntA[k2_tiHandle] := -6;
    StrA[k2_tiName] := str_TextStyle_TxtHeader4_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiItalic] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Нормальный (справка)
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -14;
    StrA[k2_tiName] := str_TextStyle_NormalNote_Name_Value.AsStr;
    IntA[k2_tiWidth] := 7244;
    IntA[k2_tiFirstIndent] := 118;
    IntA[k2_tiFirstLineIndent] := 0;
    IntA[k2_tiLeftIndent] := 118;
    IntA[k2_tiRightIndent] := 118;
    IntA[k2_tiJustification] := Ord(ev_itLeft);
    AddValue(Box);
   end;//with MakeTag
  // Комментарий
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -14;
    IntA[k2_tiHandle] := -9;
    StrA[k2_tiName] := str_TextStyle_TxtComment_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itWidth);
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisible] := false;
    {$IfEnd} //not Nemesis
    {$If not defined(Archi)}
    StrA[k2_tiShortName] := str_TextStyle_TxtComment_ShortName_D_Garant_Value.AsStr;
    {$IfEnd} //not Archi
    {$If not defined(Archi)}
    BoolA[k2_tiHeaderHasOwnSpace] := false;
    {$IfEnd} //not Archi
    IntA[k2_tiSpaceBefore] := 75;
    {$If defined(Nemesis)}
    IntA[k2_tiFirstIndent] := 170;
    {$IfEnd} //Nemesis
    {$If defined(Nemesis)}
    IntA[k2_tiLeftIndent] := 170;
    {$IfEnd} //Nemesis
    {$If defined(Nemesis)}
    IntA[k2_tiRightIndent] := 0;
    {$IfEnd} //Nemesis
    {$If defined(Archi)}
    StrA[k2_tiShortName] := str_TextStyle_TxtComment_ShortName_D_Archi_Value.AsStr;
    {$IfEnd} //Archi
    {$If defined(Nemesis) AND defined(nsTest) AND not defined(Archi) AND not defined(InsiderTest)}
    StrA[k2_tiShortName] := str_TextStyle_TxtComment_ShortName_D_DailyTests_Value.AsStr;
    {$IfEnd} //Nemesis AND nsTest AND not Archi AND not InsiderTest
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiItalic] := true;
     IntA[k2_tiForeColor] := clPurple;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // информация о версии
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -9;
    IntA[k2_tiHandle] := -22;
    StrA[k2_tiName] := str_TextStyle_VersionInfo_Name_Value.AsStr;
    {$If not defined(Archi)}
    StrA[k2_tiShortName] := str_TextStyle_VersionInfo_ShortName_Value.AsStr;
    {$IfEnd} //not Archi
    {$If defined(Archi)}
    StrA[k2_tiShortName] := str_TextStyle_VersionInfo_ShortName_D_Archi_Value.AsStr;
    {$IfEnd} //Archi
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := clNavy;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // "Подсказки запросов" для контекстного поиска
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -65535;
    StrA[k2_tiName] := str_TextStyle_PromptTree_Name_Value.AsStr;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiBold] := true;
     IntA[k2_tiForeColor] := $02A95800;
     IntA[k2_tiBackColor] := $02BDF9FF;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Необходимые документы
   with MakeTag do
   begin
    IntA[k2_tiStyle] := evd_saAttention;
    IntA[k2_tiHandle] := -45;
    StrA[k2_tiName] := str_TextStyle_HLE1_Name_Value.AsStr;
    StrA[k2_tiShortName] := str_TextStyle_HLE1_ShortName_Value.AsStr;
    IntA[k2_tiFirstIndent] := 118;
    AddValue(Box);
   end;//with MakeTag
  // Куда обратиться?
   with MakeTag do
   begin
    IntA[k2_tiStyle] := evd_saAttention;
    IntA[k2_tiHandle] := -46;
    StrA[k2_tiName] := str_TextStyle_HLE2_Name_Value.AsStr;
    StrA[k2_tiShortName] := str_TextStyle_HLE2_ShortName_Value.AsStr;
    AddValue(Box);
   end;//with MakeTag
  // Внимание: недобросовестность!
   with MakeTag do
   begin
    IntA[k2_tiStyle] := evd_saAttention;
    IntA[k2_tiHandle] := -47;
    StrA[k2_tiName] := str_TextStyle_HLE3_Name_Value.AsStr;
    StrA[k2_tiShortName] := str_TextStyle_HLE3_ShortName_Value.AsStr;
    AddValue(Box);
   end;//with MakeTag
  // Внимание: криминал!!
   with MakeTag do
   begin
    IntA[k2_tiStyle] := evd_saAttention;
    IntA[k2_tiHandle] := -48;
    StrA[k2_tiName] := str_TextStyle_HLE4_Name_Value.AsStr;
    StrA[k2_tiShortName] := str_TextStyle_HLE4_ShortName_Value.AsStr;
    AddValue(Box);
   end;//with MakeTag
  // Примечание.
   with MakeTag do
   begin
    IntA[k2_tiStyle] := evd_saAttention;
    IntA[k2_tiHandle] := -49;
    StrA[k2_tiName] := str_TextStyle_HLE5_Name_Value.AsStr;
    StrA[k2_tiShortName] := str_TextStyle_HLE5_ShortName_Value.AsStr;
    BoolA[k2_tiHeaderHasOwnSpace] := true;
    AddValue(Box);
   end;//with MakeTag
  // Пример.
   with MakeTag do
   begin
    IntA[k2_tiStyle] := evd_saAttention;
    IntA[k2_tiHandle] := -50;
    StrA[k2_tiName] := str_TextStyle_HLE6_Name_Value.AsStr;
    StrA[k2_tiShortName] := str_TextStyle_HLE6_ShortName_Value.AsStr;
    AddValue(Box);
   end;//with MakeTag
  // Заголовок для информации об изменениях
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -3;
    IntA[k2_tiHandle] := -54;
    StrA[k2_tiName] := str_TextStyle_HeaderForChangesInfo_Name_Value.AsStr;
    IntA[k2_tiSpaceBefore] := 0;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiBackColor] := clWhite;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Подвал для информации об изменениях
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -3;
    IntA[k2_tiHandle] := -55;
    StrA[k2_tiName] := str_TextStyle_FooterForChangesInfo_Name_Value.AsStr;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 10;
     BoolA[k2_tiBold] := false;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Текст информации об изменениях
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -56;
    StrA[k2_tiName] := str_TextStyle_TextForChangesInfo_Name_Value.AsStr;
    IntA[k2_tiLineSpacing] := 100;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 10;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Информация об изменениях
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -56;
    IntA[k2_tiHandle] := Ord(ev_saChangesInfo);
    StrA[k2_tiName] := str_TextStyle_ChangesInfo_Name_Value.AsStr;
    IntA[k2_tiFirstIndent] := l3Inch div 4;
    IntA[k2_tiFirstLineIndent] := l3Inch div 4;
    IntA[k2_tiLeftIndent] := l3Inch div 4;
    IntA[k2_tiRightIndent] := l3Inch div 4;
    StrA[k2_tiShortName] := str_TextStyle_ChangesInfo_ShortName_Value.AsStr;
    BoolA[k2_tiCollapsable] := true;
    IntA[k2_tiSpaceBefore] := l3Inch div 8;
    BoolA[k2_tiVisibleToUser] := true;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiBackColor] := $F3EFED;
    end;//with cAtom(k2_tiFont)
    with cAtom(k2_tiHeader) do
    begin
      l_ChangesInfo_Header_HeaderC := t_TextPara.MakeTag;
      with l_ChangesInfo_Header_HeaderC do
      begin
       StrA[k2_tiText] := str_TextStyle_ChangesInfo_Header_HeaderC_Text_Value.AsStr;
       {$If defined(Never)}
       IntA[k2_tiBackColor] := clWhite;
       {$IfEnd} //Never
       IntA[k2_tiStyle] := ev_saHeaderForChangesInfo;
       with cAtom(k2_tiSegments) do
       begin
         l_HeaderC_Segments_Hyperlinks := Tk2Type(TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
         with l_HeaderC_Segments_Hyperlinks do
         begin
          IntA[k2_tiHandle] := Ord(ev_slHyperlinks);
           l_Segments_Hyperlinks_Hyperlink := t_HyperLink.MakeTag;
           with l_Segments_Hyperlinks_Hyperlink do
           begin
            IntA[k2_tiStart] := 2;
            IntA[k2_tiFinish] := 28;
           end;//with MakeTag
           AddChild(l_Segments_Hyperlinks_Hyperlink);
         end;//with MakeTag
         AddChild(l_HeaderC_Segments_Hyperlinks);
         l_HeaderC_Segments_Objects := Tk2Type(TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
         with l_HeaderC_Segments_Objects do
         begin
          IntA[k2_tiHandle] := Ord(ev_slObjects);
           l_Segments_Objects_Collapser := t_ObjectSegment.MakeTag;
           with l_Segments_Objects_Collapser do
           begin
            IntA[k2_tiStart] := 27;
            IntA[k2_tiFinish] := 28;
             l_Objects_Collapser_Bitmap := t_ImageListBitmap.MakeTag;
             with l_Objects_Collapser_Bitmap do
             begin
              IntA[k2_tiWidth] := nev.CrtIC.DP2LP(PointX(20)).X;
              IntA[k2_tiHeight] := nev.CrtIC.DP2LP(PointY(20)).Y;
             end;//with MakeTag
             AddChild(l_Objects_Collapser_Bitmap);
           end;//with MakeTag
           AddChild(l_Segments_Objects_Collapser);
         end;//with MakeTag
         AddChild(l_HeaderC_Segments_Objects);
       end;//with cAtom(k2_tiSegments)
      end;//with MakeTag
      AddChild(l_ChangesInfo_Header_HeaderC);
    end;//with cAtom(k2_tiHeader)
    with cAtom(k2_tiFooter) do
    begin
      l_ChangesInfo_Footer_FooterC := t_TextPara.MakeTag;
      with l_ChangesInfo_Footer_FooterC do
      begin
       StrA[k2_tiText] := str_TextStyle_ChangesInfo_Footer_FooterC_Text_Value.AsStr;
       IntA[k2_tiStyle] := ev_saFooterForChangesInfo;
       with cAtom(k2_tiSegments) do
       begin
         l_FooterC_Segments_Hyperlinks := Tk2Type(TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
         with l_FooterC_Segments_Hyperlinks do
         begin
          IntA[k2_tiHandle] := Ord(ev_slHyperlinks);
           l_Segments_Hyperlinks_Hyperlink := t_HyperLink.MakeTag;
           with l_Segments_Hyperlinks_Hyperlink do
           begin
            IntA[k2_tiStart] := 1;
            IntA[k2_tiFinish] := 35;
            StrA[k2_tiURL] := str_TextStyle_ChangesInfo_Footer_FooterC_Segments_Hyperlinks_Hyperlink_URL_Value.AsStr;
             l_Hyperlinks_Hyperlink_Address := Tk2Type(TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
             with l_Hyperlinks_Hyperlink_Address do
             begin
              StrA[k2_tiShortName] := str_TextStyle_ChangesInfo_Footer_FooterC_Segments_Hyperlinks_Hyperlink_Address_ShortName_Value.AsStr;
             end;//with MakeTag
             AddChild(l_Hyperlinks_Hyperlink_Address);
           end;//with MakeTag
           AddChild(l_Segments_Hyperlinks_Hyperlink);
         end;//with MakeTag
         AddChild(l_FooterC_Segments_Hyperlinks);
       end;//with cAtom(k2_tiSegments)
      end;//with MakeTag
      AddChild(l_ChangesInfo_Footer_FooterC);
    end;//with cAtom(k2_tiFooter)
    AddValue(Box);
   end;//with MakeTag
  // Подзаголовок для информации об изменениях
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -56;
    IntA[k2_tiHandle] := -57;
    StrA[k2_tiName] := str_TextStyle_SubHeaderForChangesInfo_Name_Value.AsStr;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := clNavy;
     BoolA[k2_tiBold] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовок группы контролов
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -58;
    StrA[k2_tiName] := str_TextStyle_ControlsBlockHeader_Name_Value.AsStr;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := clBlack;
     BoolA[k2_tiBold] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовок распахивающейся части диалога
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -59;
    StrA[k2_tiName] := str_TextStyle_CloakHeader_Name_Value.AsStr;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 12;
     IntA[k2_tiForeColor] := clNavy;
     BoolA[k2_tiItalic] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Ссылка на официальную публикацию
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -60;
    StrA[k2_tiName] := str_TextStyle_LinkToPublication_Name_Value.AsStr;
    {$If not defined(Nemesis)}
    BoolA[k2_tiVisibleToUser] := false;
    {$IfEnd} //not Nemesis
    with cAtom(k2_tiHeader) do
    begin
      l_LinkToPublication_Header_FooterC := t_TextPara.MakeTag;
      with l_LinkToPublication_Header_FooterC do
      begin
       StrA[k2_tiText] := str_TextStyle_LinkToPublication_Header_FooterC_Text_Value.AsStr;
       IntA[k2_tiStyle] := ev_saTxtComment;
       with cAtom(k2_tiSegments) do
       begin
         l_FooterC_Segments_Hyperlinks := Tk2Type(TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
         with l_FooterC_Segments_Hyperlinks do
         begin
          IntA[k2_tiHandle] := Ord(ev_slHyperlinks);
           l_Segments_Hyperlinks_Hyperlink := t_HyperLink.MakeTag;
           with l_Segments_Hyperlinks_Hyperlink do
           begin
            StrA[k2_tiURL] := str_TextStyle_LinkToPublication_Header_FooterC_Segments_Hyperlinks_Hyperlink_URL_Value.AsStr;
             l_Hyperlinks_Hyperlink_Address := Tk2Type(TagType).ArrayProp[k2_tiChildren].DefaultChildType.MakeTag;
             with l_Hyperlinks_Hyperlink_Address do
             begin
              StrA[k2_tiShortName] := str_TextStyle_LinkToPublication_Header_FooterC_Segments_Hyperlinks_Hyperlink_Address_ShortName_Value.AsStr;
              IntA[k2_tiViewKind] := Ord(ev_lvkExternal);
             end;//with MakeTag
             AddChild(l_Hyperlinks_Hyperlink_Address);
           end;//with MakeTag
           AddChild(l_Segments_Hyperlinks_Hyperlink);
         end;//with MakeTag
         AddChild(l_FooterC_Segments_Hyperlinks);
       end;//with cAtom(k2_tiSegments)
      end;//with MakeTag
      AddChild(l_LinkToPublication_Header_FooterC);
    end;//with cAtom(k2_tiHeader)
    AddValue(Box);
   end;//with MakeTag
  // Подчёркнуный текст
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -61;
    StrA[k2_tiName] := str_TextStyle_UnderlinedText_Name_Value.AsStr;
    IntA[k2_tiFrame] := evd_fvDown;
    AddValue(Box);
   end;//with MakeTag
  // Заголовок группы редакций
   with MakeTag do
   begin
    IntA[k2_tiHandle] := Ord(ev_saNodeGroupHeader);
    StrA[k2_tiName] := str_TextStyle_NodeGroupHeader_Name_Value.AsStr;
    BoolA[k2_tiIsChangeableFont] := false;
    BoolA[k2_tiVisibleToUser] := false;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 11;
     IntA[k2_tiForeColor] := clWhite;
     BoolA[k2_tiBold] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Текст ЭР (см. также)
   with MakeTag do
   begin
    IntA[k2_tiHandle] := Ord(ev_saTxtNormalAACSeeAlso);
    StrA[k2_tiName] := str_TextStyle_TxtNormalAACSeeAlso_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itLeft);
    IntA[k2_tiFirstLineIndent] := 0;
    IntA[k2_tiSpaceBefore] := 200;
    IntA[k2_tiSpaceAfter] := 0;
    IntA[k2_tiFirstIndent] := 0;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 11;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовок ЭР (левое окно)
   with MakeTag do
   begin
    IntA[k2_tiHandle] := Ord(ev_saHeaderAACLeftWindow);
    StrA[k2_tiName] := str_TextStyle_HeaderAACLeftWindow_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itCenter);
    IntA[k2_tiSpaceBefore] := 300;
    IntA[k2_tiSpaceAfter] := 250;
    IntA[k2_tiFirstIndent] := 0;
    IntA[k2_tiFirstLineIndent] := 0;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 14;
     BoolA[k2_tiBold] := true;
     IntA[k2_tiForeColor] := $002F2826;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Заголовок ЭР (правое окно)
   with MakeTag do
   begin
    IntA[k2_tiStyle] := ev_saHeaderAACLeftWindow;
    IntA[k2_tiHandle] := Ord(ev_saHeaderAACRightWindow);
    StrA[k2_tiName] := str_TextStyle_HeaderAACRightWindow_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itLeft);
    IntA[k2_tiSpaceAfter] := 0;
    AddValue(Box);
   end;//with MakeTag
  // ЭР-содержание (правое окно)
   with MakeTag do
   begin
    IntA[k2_tiHandle] := Ord(ev_saContextAACRightWindows);
    StrA[k2_tiName] := str_TextStyle_ContextAACRightWindows_Name_Value.AsStr;
    IntA[k2_tiJustification] := Ord(ev_itLeft);
    IntA[k2_tiFirstLineIndent] := 0;
    IntA[k2_tiSpaceBefore] := 300;
    IntA[k2_tiSpaceAfter] := 0;
    IntA[k2_tiFirstIndent] := 0;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiSize] := 13;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // Формула
   with MakeTag do
   begin
    IntA[k2_tiHandle] := Ord(ev_saFormulaInAAC);
    IntA[k2_tiLeftIndent] := 420;
    IntA[k2_tiRightIndent] := 420;
    IntA[k2_tiSpaceBefore] := 240;
    IntA[k2_tiSpaceAfter] := 240;
    StrA[k2_tiName] := str_TextStyle_FormulaInAAC_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiBackColor] := $DAF3F5;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
 end;//TextStyle
 // NodeGroup
 t_NodeGroup := DefineType(46 {NodeGroup}, [t_ControlsBlock], '', NodeGroupTag) As NodeGroupTag;
 with t_NodeGroup do
 begin
  AtomClass := NodeGroupTagClass;
 end;//NodeGroup
 t_StyledLeafPara.Recalc;
 t_TextPara.Recalc;
 t_DecorTextPara.Recalc;
 t_ControlPara.Recalc;
 t_Formula.Recalc;
 t_ParaList.Recalc;
 t_HFParent.Recalc;
 t_Header.Recalc;
 t_Footer.Recalc;
 t_Division.Recalc;
 t_ContentsElement.Recalc;
 t_Participant.Recalc;
 t_Block.Recalc;
 t_Version.Recalc;
 t_DictEntryBlock.Recalc;
 t_Document.Recalc;
 t_SimpleDocumentTextPara.Recalc;
 t_AnnoTopic.Recalc;
 t_TableTextPara.Recalc;
 t_TableCell.Recalc;
 t_TableRow.Recalc;
 t_SBSCell.Recalc;
 t_Table.Recalc;
 t_SBSRow.Recalc;
 t_QueryCard.Recalc;
 t_ReqCell.Recalc;
 t_ReqRow.Recalc;
 t_ControlsBlock.Recalc;
 t_BitmapPara.Recalc;
 t_XMLTag.Recalc;
 t_XML.Recalc;
 t_ExtDataPara.Recalc;
 t_AttrValue.Recalc;
 t_AttrName.Recalc;
 t_Attr.Recalc;
 t_TagName.Recalc;
 t_TagBody.Recalc;
 t_TreePara.Recalc;
 t_ImageListBitmap.Recalc;
 t_PageProperties.Recalc;
 t_SimpleDocument.Recalc;
 t_CommentPara.Recalc;
 t_SBS.Recalc;
 t_TinyDocument.Recalc;
 t_LeafParaDecorationsHolder.Recalc;
 t_ReqGroup.Recalc;
 t_AutoreferatDocument.Recalc;
 t_DictEntry.Recalc;
 t_Cloak.Recalc;
 t_TextStyle.Recalc;
 t_NodeGroup.Recalc;
//#UC START# *484CD009023Dttimpl1*
 CreateStandardTextStyles(t_TextStyle);
 t_SubLayer.ArrayProp[k2_tiChildren].OnGetChildTypeForParent := SubLayerChildType;
 // - специально перенесено сюда, чтобы Ak2DocumentSubsLayer не "зацепил".
//#UC END# *484CD009023Dttimpl1*
end;

// определяем стандартные методы схемы


function TevNativeSchema.pm_GetTypeByHandle(H: Integer): Tk2Type;
begin
 Case H of
  118 {StyledLeafPara}:
   Result := t_StyledLeafPara;
  22 {TextPara}:
   Result := t_TextPara;
  72 {DecorTextPara}:
   Result := t_DecorTextPara;
  119 {ControlPara}:
   Result := t_ControlPara;
  110 {Formula}:
   Result := t_Formula;
  23 {ParaList}:
   Result := t_ParaList;
  99 {HFParent}:
   Result := t_HFParent;
  100 {Header}:
   Result := t_Header;
  101 {Footer}:
   Result := t_Footer;
  102 {Division}:
   Result := t_Division;
  133 {ContentsElement}:
   Result := t_ContentsElement;
  90 {Participant}:
   Result := t_Participant;
  50 {Block}:
   Result := t_Block;
  136 {Version}:
   Result := t_Version;
  48 {DictEntryBlock}:
   Result := t_DictEntryBlock;
  20 {Document}:
   Result := t_Document;
  52 {SimpleDocumentTextPara}:
   Result := t_SimpleDocumentTextPara;
  54 {AnnoTopic}:
   Result := t_AnnoTopic;
  53 {TableTextPara}:
   Result := t_TableTextPara;
  27 {TableCell}:
   Result := t_TableCell;
  26 {TableRow}:
   Result := t_TableRow;
  109 {SBSCell}:
   Result := t_SBSCell;
  24 {Table}:
   Result := t_Table;
  108 {SBSRow}:
   Result := t_SBSRow;
  129 {QueryCard}:
   Result := t_QueryCard;
  131 {ReqCell}:
   Result := t_ReqCell;
  130 {ReqRow}:
   Result := t_ReqRow;
  121 {ControlsBlock}:
   Result := t_ControlsBlock;
  97 {BitmapPara}:
   Result := t_BitmapPara;
  123 {XMLTag}:
   Result := t_XMLTag;
  122 {XML}:
   Result := t_XML;
  132 {ExtDataPara}:
   Result := t_ExtDataPara;
  127 {AttrValue}:
   Result := t_AttrValue;
  126 {AttrName}:
   Result := t_AttrName;
  125 {Attr}:
   Result := t_Attr;
  124 {TagName}:
   Result := t_TagName;
  128 {TagBody}:
   Result := t_TagBody;
  107 {TreePara}:
   Result := t_TreePara;
  137 {ImageListBitmap}:
   Result := t_ImageListBitmap;
  105 {SimpleDocument}:
   Result := t_SimpleDocument;
  120 {CommentPara}:
   Result := t_CommentPara;
  25 {SBS}:
   Result := t_SBS;
  83 {TinyDocument}:
   Result := t_TinyDocument;
  134 {LeafParaDecorationsHolder}:
   Result := t_LeafParaDecorationsHolder;
  55 {ReqGroup}:
   Result := t_ReqGroup;
  135 {AutoreferatDocument}:
   Result := t_AutoreferatDocument;
  49 {DictEntry}:
   Result := t_DictEntry;
  47 {Cloak}:
   Result := t_Cloak;
  46 {NodeGroup}:
   Result := t_NodeGroup;
  else
  begin
   if (t_TextPara_Segments <> nil) AND (t_TextPara_Segments.StringID = H) then
    Result := t_TextPara_Segments
   else
   if (t_TextPara_TabStops <> nil) AND (t_TextPara_TabStops.StringID = H) then
    Result := t_TextPara_TabStops
   else
   if (t_ControlPara_Type <> nil) AND (t_ControlPara_Type.StringID = H) then
    Result := t_ControlPara_Type
   else
   if (t_Formula_Data <> nil) AND (t_Formula_Data.StringID = H) then
    Result := t_Formula_Data
   else
   if (t_ParaList_Orientation <> nil) AND (t_ParaList_Orientation.StringID = H) then
    Result := t_ParaList_Orientation
   else
   if (t_ParaList_Children <> nil) AND (t_ParaList_Children.StringID = H) then
    Result := t_ParaList_Children
   else
   if (t_HFParent_Type <> nil) AND (t_HFParent_Type.StringID = H) then
    Result := t_HFParent_Type
   else
   if (t_Division_Headers <> nil) AND (t_Division_Headers.StringID = H) then
    Result := t_Division_Headers
   else
   if (t_Division_Footers <> nil) AND (t_Division_Footers.StringID = H) then
    Result := t_Division_Footers
   else
   if (t_ContentsElement_InContents <> nil) AND (t_ContentsElement_InContents.StringID = H) then
    Result := t_ContentsElement_InContents
   else
   if (t_Block_ViewKind <> nil) AND (t_Block_ViewKind.StringID = H) then
    Result := t_Block_ViewKind
   else
   if (t_Document_Subs <> nil) AND (t_Document_Subs.StringID = H) then
    Result := t_Document_Subs
   else
   if (t_Document_Groups <> nil) AND (t_Document_Groups.StringID = H) then
    Result := t_Document_Groups
   else
   if (t_Document_AccGroups <> nil) AND (t_Document_AccGroups.StringID = H) then
    Result := t_Document_AccGroups
   else
   if (t_Document_Sources <> nil) AND (t_Document_Sources.StringID = H) then
    Result := t_Document_Sources
   else
   if (t_Document_Warnings <> nil) AND (t_Document_Warnings.StringID = H) then
    Result := t_Document_Warnings
   else
   if (t_Document_NumANDDates <> nil) AND (t_Document_NumANDDates.StringID = H) then
    Result := t_Document_NumANDDates
   else
   if (t_Document_LogRecords <> nil) AND (t_Document_LogRecords.StringID = H) then
    Result := t_Document_LogRecords
   else
   if (t_Document_SysLogRecords <> nil) AND (t_Document_SysLogRecords.StringID = H) then
    Result := t_Document_SysLogRecords
   else
   if (t_Document_Versions <> nil) AND (t_Document_Versions.StringID = H) then
    Result := t_Document_Versions
   else
   if (t_Document_Stages <> nil) AND (t_Document_Stages.StringID = H) then
    Result := t_Document_Stages
   else
   if (t_Document_Checks <> nil) AND (t_Document_Checks.StringID = H) then
    Result := t_Document_Checks
   else
   if (t_Document_PublishedIn <> nil) AND (t_Document_PublishedIn.StringID = H) then
    Result := t_Document_PublishedIn
   else
   if (t_Document_Territory <> nil) AND (t_Document_Territory.StringID = H) then
    Result := t_Document_Territory
   else
   if (t_Document_Norm <> nil) AND (t_Document_Norm.StringID = H) then
    Result := t_Document_Norm
   else
   if (t_Document_ActiveIntervals <> nil) AND (t_Document_ActiveIntervals.StringID = H) then
    Result := t_Document_ActiveIntervals
   else
   if (t_Document_Alarms <> nil) AND (t_Document_Alarms.StringID = H) then
    Result := t_Document_Alarms
   else
   if (t_Document_AnnoClasses <> nil) AND (t_Document_AnnoClasses.StringID = H) then
    Result := t_Document_AnnoClasses
   else
   if (t_Document_LinkedDocuments <> nil) AND (t_Document_LinkedDocuments.StringID = H) then
    Result := t_Document_LinkedDocuments
   else
   if (t_Document_CaseDocParticipants <> nil) AND (t_Document_CaseDocParticipants.StringID = H) then
    Result := t_Document_CaseDocParticipants
   else
   if (t_TableCell_MergeStatus <> nil) AND (t_TableCell_MergeStatus.StringID = H) then
    Result := t_TableCell_MergeStatus
   else
   if (t_TableCell_VerticalAligment <> nil) AND (t_TableCell_VerticalAligment.StringID = H) then
    Result := t_TableCell_VerticalAligment
   else
   if (t_QueryCard_CardType <> nil) AND (t_QueryCard_CardType.StringID = H) then
    Result := t_QueryCard_CardType
   else
   if (t_ReqRow_ReqKind <> nil) AND (t_ReqRow_ReqKind.StringID = H) then
    Result := t_ReqRow_ReqKind
   else
   if (t_BitmapPara_Object <> nil) AND (t_BitmapPara_Object.StringID = H) then
    Result := t_BitmapPara_Object
   else
   if (t_TreePara_Object <> nil) AND (t_TreePara_Object.StringID = H) then
    Result := t_TreePara_Object
   else
   if (t_DictEntry_ShortName <> nil) AND (t_DictEntry_ShortName.StringID = H) then
    Result := t_DictEntry_ShortName
   else
    Result := inherited pm_GetTypeByHandle(H);
  end;//else
 end;//Case H
end;

procedure TevNativeSchema.Cleanup;
begin
 t_StyledLeafPara.InterfaceFactory := nil;
 t_StyledLeafPara.ToolFactory := nil;
 t_TextPara.InterfaceFactory := nil;
 t_TextPara.ToolFactory := nil;
 t_TextPara_Segments.InterfaceFactory := nil;
 t_TextPara_TabStops.InterfaceFactory := nil;
 t_DecorTextPara.InterfaceFactory := nil;
 t_DecorTextPara.ToolFactory := nil;
 t_ControlPara.InterfaceFactory := nil;
 t_ControlPara.ToolFactory := nil;
 t_ControlPara_Type.InterfaceFactory := nil;
 t_Formula.InterfaceFactory := nil;
 t_Formula.ToolFactory := nil;
 t_Formula_Data.InterfaceFactory := nil;
 t_ParaList.InterfaceFactory := nil;
 t_ParaList.ToolFactory := nil;
 t_ParaList_Orientation.InterfaceFactory := nil;
 t_ParaList_Children.InterfaceFactory := nil;
 t_HFParent.InterfaceFactory := nil;
 t_HFParent.ToolFactory := nil;
 t_HFParent_Type.InterfaceFactory := nil;
 t_Header.InterfaceFactory := nil;
 t_Header.ToolFactory := nil;
 t_Footer.InterfaceFactory := nil;
 t_Footer.ToolFactory := nil;
 t_Division.InterfaceFactory := nil;
 t_Division.ToolFactory := nil;
 t_Division_Headers.InterfaceFactory := nil;
 t_Division_Footers.InterfaceFactory := nil;
 t_ContentsElement.InterfaceFactory := nil;
 t_ContentsElement.ToolFactory := nil;
 t_ContentsElement_InContents.InterfaceFactory := nil;
 t_Participant.InterfaceFactory := nil;
 t_Participant.ToolFactory := nil;
 t_Block.InterfaceFactory := nil;
 t_Block.ToolFactory := nil;
 t_Block_ViewKind.InterfaceFactory := nil;
 t_Version.InterfaceFactory := nil;
 t_Version.ToolFactory := nil;
 t_DictEntryBlock.InterfaceFactory := nil;
 t_DictEntryBlock.ToolFactory := nil;
 t_Document.InterfaceFactory := nil;
 t_Document.ToolFactory := nil;
 t_Document_Subs.InterfaceFactory := nil;
 t_Document_Groups.InterfaceFactory := nil;
 t_Document_AccGroups.InterfaceFactory := nil;
 t_Document_Sources.InterfaceFactory := nil;
 t_Document_Warnings.InterfaceFactory := nil;
 t_Document_NumANDDates.InterfaceFactory := nil;
 t_Document_LogRecords.InterfaceFactory := nil;
 t_Document_SysLogRecords.InterfaceFactory := nil;
 t_Document_Versions.InterfaceFactory := nil;
 t_Document_Stages.InterfaceFactory := nil;
 t_Document_Checks.InterfaceFactory := nil;
 t_Document_PublishedIn.InterfaceFactory := nil;
 t_Document_Territory.InterfaceFactory := nil;
 t_Document_Norm.InterfaceFactory := nil;
 t_Document_ActiveIntervals.InterfaceFactory := nil;
 t_Document_Alarms.InterfaceFactory := nil;
 t_Document_AnnoClasses.InterfaceFactory := nil;
 t_Document_LinkedDocuments.InterfaceFactory := nil;
 t_Document_CaseDocParticipants.InterfaceFactory := nil;
 t_SimpleDocumentTextPara.InterfaceFactory := nil;
 t_SimpleDocumentTextPara.ToolFactory := nil;
 t_AnnoTopic.InterfaceFactory := nil;
 t_AnnoTopic.ToolFactory := nil;
 t_TableTextPara.InterfaceFactory := nil;
 t_TableTextPara.ToolFactory := nil;
 t_TableCell.InterfaceFactory := nil;
 t_TableCell.ToolFactory := nil;
 t_TableCell_MergeStatus.InterfaceFactory := nil;
 t_TableCell_VerticalAligment.InterfaceFactory := nil;
 t_TableRow.InterfaceFactory := nil;
 t_TableRow.ToolFactory := nil;
 t_SBSCell.InterfaceFactory := nil;
 t_SBSCell.ToolFactory := nil;
 t_Table.InterfaceFactory := nil;
 t_Table.ToolFactory := nil;
 t_SBSRow.InterfaceFactory := nil;
 t_SBSRow.ToolFactory := nil;
 t_QueryCard.InterfaceFactory := nil;
 t_QueryCard.ToolFactory := nil;
 t_QueryCard_CardType.InterfaceFactory := nil;
 t_ReqCell.InterfaceFactory := nil;
 t_ReqCell.ToolFactory := nil;
 t_ReqRow.InterfaceFactory := nil;
 t_ReqRow.ToolFactory := nil;
 t_ReqRow_ReqKind.InterfaceFactory := nil;
 t_ControlsBlock.InterfaceFactory := nil;
 t_ControlsBlock.ToolFactory := nil;
 t_BitmapPara.InterfaceFactory := nil;
 t_BitmapPara.ToolFactory := nil;
 t_BitmapPara_Object.InterfaceFactory := nil;
 t_XMLTag.InterfaceFactory := nil;
 t_XMLTag.ToolFactory := nil;
 t_XML.InterfaceFactory := nil;
 t_XML.ToolFactory := nil;
 t_ExtDataPara.InterfaceFactory := nil;
 t_ExtDataPara.ToolFactory := nil;
 t_AttrValue.InterfaceFactory := nil;
 t_AttrValue.ToolFactory := nil;
 t_AttrName.InterfaceFactory := nil;
 t_AttrName.ToolFactory := nil;
 t_Attr.InterfaceFactory := nil;
 t_Attr.ToolFactory := nil;
 t_TagName.InterfaceFactory := nil;
 t_TagName.ToolFactory := nil;
 t_TagBody.InterfaceFactory := nil;
 t_TagBody.ToolFactory := nil;
 t_TreePara.InterfaceFactory := nil;
 t_TreePara.ToolFactory := nil;
 t_TreePara_Object.InterfaceFactory := nil;
 t_ImageListBitmap.InterfaceFactory := nil;
 t_ImageListBitmap.ToolFactory := nil;
 t_SimpleDocument.InterfaceFactory := nil;
 t_SimpleDocument.ToolFactory := nil;
 t_CommentPara.InterfaceFactory := nil;
 t_CommentPara.ToolFactory := nil;
 t_SBS.InterfaceFactory := nil;
 t_SBS.ToolFactory := nil;
 t_TinyDocument.InterfaceFactory := nil;
 t_TinyDocument.ToolFactory := nil;
 t_LeafParaDecorationsHolder.InterfaceFactory := nil;
 t_LeafParaDecorationsHolder.ToolFactory := nil;
 t_ReqGroup.InterfaceFactory := nil;
 t_ReqGroup.ToolFactory := nil;
 t_AutoreferatDocument.InterfaceFactory := nil;
 t_AutoreferatDocument.ToolFactory := nil;
 t_DictEntry.InterfaceFactory := nil;
 t_DictEntry.ToolFactory := nil;
 t_DictEntry_ShortName.InterfaceFactory := nil;
 t_Cloak.InterfaceFactory := nil;
 t_Cloak.ToolFactory := nil;
 t_NodeGroup.InterfaceFactory := nil;
 t_NodeGroup.ToolFactory := nil;
 FreeAndNil(t_StyledLeafPara);
 FreeAndNil(t_TextPara);
 FreeAndNil(t_TextPara_Segments);
 FreeAndNil(t_TextPara_TabStops);
 FreeAndNil(t_DecorTextPara);
 FreeAndNil(t_ControlPara);
 FreeAndNil(t_ControlPara_Type);
 FreeAndNil(t_Formula);
 FreeAndNil(t_Formula_Data);
 FreeAndNil(t_ParaList);
 FreeAndNil(t_ParaList_Orientation);
 FreeAndNil(t_ParaList_Children);
 FreeAndNil(t_HFParent);
 FreeAndNil(t_HFParent_Type);
 FreeAndNil(t_Header);
 FreeAndNil(t_Footer);
 FreeAndNil(t_Division);
 FreeAndNil(t_Division_Headers);
 FreeAndNil(t_Division_Footers);
 FreeAndNil(t_ContentsElement);
 FreeAndNil(t_ContentsElement_InContents);
 FreeAndNil(t_Participant);
 FreeAndNil(t_Block);
 FreeAndNil(t_Block_ViewKind);
 FreeAndNil(t_Version);
 FreeAndNil(t_DictEntryBlock);
 FreeAndNil(t_Document);
 FreeAndNil(t_Document_Subs);
 FreeAndNil(t_Document_Groups);
 FreeAndNil(t_Document_AccGroups);
 FreeAndNil(t_Document_Sources);
 FreeAndNil(t_Document_Warnings);
 FreeAndNil(t_Document_NumANDDates);
 FreeAndNil(t_Document_LogRecords);
 FreeAndNil(t_Document_SysLogRecords);
 FreeAndNil(t_Document_Versions);
 FreeAndNil(t_Document_Stages);
 FreeAndNil(t_Document_Checks);
 FreeAndNil(t_Document_PublishedIn);
 FreeAndNil(t_Document_Territory);
 FreeAndNil(t_Document_Norm);
 FreeAndNil(t_Document_ActiveIntervals);
 FreeAndNil(t_Document_Alarms);
 FreeAndNil(t_Document_AnnoClasses);
 FreeAndNil(t_Document_LinkedDocuments);
 FreeAndNil(t_Document_CaseDocParticipants);
 FreeAndNil(t_SimpleDocumentTextPara);
 FreeAndNil(t_AnnoTopic);
 FreeAndNil(t_TableTextPara);
 FreeAndNil(t_TableCell);
 FreeAndNil(t_TableCell_MergeStatus);
 FreeAndNil(t_TableCell_VerticalAligment);
 FreeAndNil(t_TableRow);
 FreeAndNil(t_SBSCell);
 FreeAndNil(t_Table);
 FreeAndNil(t_SBSRow);
 FreeAndNil(t_QueryCard);
 FreeAndNil(t_QueryCard_CardType);
 FreeAndNil(t_ReqCell);
 FreeAndNil(t_ReqRow);
 FreeAndNil(t_ReqRow_ReqKind);
 FreeAndNil(t_ControlsBlock);
 FreeAndNil(t_BitmapPara);
 FreeAndNil(t_BitmapPara_Object);
 FreeAndNil(t_XMLTag);
 FreeAndNil(t_XML);
 FreeAndNil(t_ExtDataPara);
 FreeAndNil(t_AttrValue);
 FreeAndNil(t_AttrName);
 FreeAndNil(t_Attr);
 FreeAndNil(t_TagName);
 FreeAndNil(t_TagBody);
 FreeAndNil(t_TreePara);
 FreeAndNil(t_TreePara_Object);
 FreeAndNil(t_ImageListBitmap);
 FreeAndNil(t_SimpleDocument);
 FreeAndNil(t_CommentPara);
 FreeAndNil(t_SBS);
 FreeAndNil(t_TinyDocument);
 FreeAndNil(t_LeafParaDecorationsHolder);
 FreeAndNil(t_ReqGroup);
 FreeAndNil(t_AutoreferatDocument);
 FreeAndNil(t_DictEntry);
 FreeAndNil(t_DictEntry_ShortName);
 FreeAndNil(t_Cloak);
 FreeAndNil(t_NodeGroup);
 inherited;
end;


initialization
 TevNativeSchema.SetAsDefault;

end.