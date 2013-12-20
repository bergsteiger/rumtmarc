unit StyledLeafPara_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/StyledLeafPara_Const.pas"
// Начат: 09.06.2008 10:39
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::Everest::Standard::evNative::StyledLeafPara
//
// "Листьевой" параграф с оформлением
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега StyledLeafPara - ""Листьевой" параграф с оформлением".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idStyledLeafPara = 118;

function k2_typStyledLeafPara: Tk2Type;

//#UC START# *48567D1900F6const_intf*
//#UC END# *48567D1900F6const_intf*

implementation

uses
  evNative_Schema,
  k2Facade {a}
  ;
var
 g_StyledLeafPara : Tk2Type = nil;


// start class StyledLeafParaTag

function k2_typStyledLeafPara: Tk2Type;
begin
 if (g_StyledLeafPara = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevNativeSchema);
  g_StyledLeafPara := TevNativeSchema(Tk2TypeTable.GetInstance).t_StyledLeafPara;
 end;//g_StyledLeafPara = nil
 Result := g_StyledLeafPara;
end;

end.