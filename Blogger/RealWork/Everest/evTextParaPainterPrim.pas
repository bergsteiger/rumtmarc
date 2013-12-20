unit evTextParaPainterPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evTextParaPainterPrim.pas"
// Начат: 06.04.2009 20:21
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::LeafPara Painters::TevTextParaPainterPrim
//
// Промежуточный класс, чтобы другие классы было проще на модель переносить
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevTools,
  l3InternalInterfaces,
  l3Interfaces,
  nevBase,
  l3Units,
  nevRealTools,
  k2Interfaces,
  l3ProtoObject
  ;

type
 _X_ = InevTextPara;
 {$Include ..\Everest\evLeafParaPainter.imp.pas}
 TevTextParaPainterPrim = class(_evLeafParaPainter_)
  {* Промежуточный класс, чтобы другие классы было проще на модель переносить }
 end;//TevTextParaPainterPrim

implementation

uses
  evDefaultStylesFontSizes,
  k2Tags,
  evdTypes,
  nevAfterEndPoint,
  Graphics,
  l3SmartCanvas,
  l3MinMax,
  l3Base,
  l3Tree,
  evParaTools,
  TableCell_Const,
  DocumentSub_Const,
  Mark_Const,
  LeafPara_Const,
  CommentPara_Const,
  TreePara_Const,
  Block_Const,
  TextPara_Const,
  k2Base,
  SysUtils,
  Table_Const,
  Windows
  ;

{$Include ..\Everest\evLeafParaPainter.imp.pas}

end.