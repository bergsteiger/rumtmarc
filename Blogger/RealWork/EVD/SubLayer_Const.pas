unit SubLayer_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/SubLayer_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::SubLayer
//
// Слой меток
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега SubLayer - "Слой меток".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSubLayer = 17;

function k2_typSubLayer: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_SubLayer : Tk2Type = nil;


// start class SubLayerTag

function k2_typSubLayer: Tk2Type;
begin
 if (g_SubLayer = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_SubLayer := TevdNativeSchema(Tk2TypeTable.GetInstance).t_SubLayer;
 end;//g_SubLayer = nil
 Result := g_SubLayer;
end;

end.