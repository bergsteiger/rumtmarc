unit SimpleDocument_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/SimpleDocument_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::SimpleDocument
//
// Простой документ
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега SimpleDocument - "Простой документ".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSimpleDocument = 105;

function k2_typSimpleDocument: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_SimpleDocument : Tk2Type = nil;


// start class SimpleDocumentTag

function k2_typSimpleDocument: Tk2Type;
begin
 if (g_SimpleDocument = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_SimpleDocument := TevNativeSchema(Tk2TypeTable.GetInstance).t_SimpleDocument;
 end;//g_SimpleDocument = nil
 Result := g_SimpleDocument;
end;

end.