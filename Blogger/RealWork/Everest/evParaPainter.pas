unit evParaPainter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evParaPainter.pas"
// Начат: 07.04.2009 17:24
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::LeafPara Painters::TevParaPainter
//
// Рисователь для неизвестных параграфов
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
  l3Interfaces,
  nevBase,
  l3InternalInterfaces,
  l3Units,
  nevRealTools,
  k2Interfaces,
  l3ProtoObject
  ;

type
 _X_ = InevPara;
 {$Include ..\Everest\evParaPainter.imp.pas}
 TevParaPainter = class(_evParaPainter_)
  {* Рисователь для неизвестных параграфов }
 end;//TevParaPainter

implementation

uses
  Graphics,
  l3SmartCanvas,
  k2Tags,
  l3MinMax,
  l3Base,
  l3Tree,
  evParaTools,
  evdTypes,
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

{$Include ..\Everest\evParaPainter.imp.pas}

end.