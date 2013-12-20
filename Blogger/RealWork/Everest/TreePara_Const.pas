unit TreePara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/TreePara_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::TreePara
//
// Дерево
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега TreePara - "Дерево".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idTreePara = 107;
var k2_idTreePara_Object : Integer = -1;

function k2_typTreePara: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_TreePara : Tk2Type = nil;


// start class TreeParaTag

function k2_typTreePara: Tk2Type;
begin
 if (g_TreePara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_TreePara := TevNativeSchema(Tk2TypeTable.GetInstance).t_TreePara;
 end;//g_TreePara = nil
 Result := g_TreePara;
end;

end.