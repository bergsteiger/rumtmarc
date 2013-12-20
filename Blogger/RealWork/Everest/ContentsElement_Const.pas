unit ContentsElement_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/ContentsElement_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::ContentsElement
//
// элемент структуры документа
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега ContentsElement - "элемент структуры документа".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idContentsElement = 133;
var k2_idContentsElement_InContents : Integer = -1;

function k2_typContentsElement: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_ContentsElement : Tk2Type = nil;


// start class ContentsElementTag

function k2_typContentsElement: Tk2Type;
begin
 if (g_ContentsElement = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_ContentsElement := TevNativeSchema(Tk2TypeTable.GetInstance).t_ContentsElement;
 end;//g_ContentsElement = nil
 Result := g_ContentsElement;
end;

end.