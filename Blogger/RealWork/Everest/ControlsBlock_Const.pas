unit ControlsBlock_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/ControlsBlock_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::ControlsBlock
//
// Блок контролов
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега ControlsBlock - "Блок контролов".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idControlsBlock = 121;

function k2_typControlsBlock: Tk2Type;

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_ControlsBlock : Tk2Type = nil;


// start class ControlsBlockTag

function k2_typControlsBlock: Tk2Type;
begin
 if (g_ControlsBlock = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_ControlsBlock := TevNativeSchema(Tk2TypeTable.GetInstance).t_ControlsBlock;
 end;//g_ControlsBlock = nil
 Result := g_ControlsBlock;
end;

end.