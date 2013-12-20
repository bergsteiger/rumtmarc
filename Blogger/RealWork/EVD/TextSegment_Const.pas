unit TextSegment_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/TextSegment_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::TextSegment
//
// Отрезок оформления текста
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега TextSegment - "Отрезок оформления текста".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idTextSegment = 13;

function k2_typTextSegment: Tk2Type;

//#UC START# *484FDC4F013Fconst_intf*
//#UC END# *484FDC4F013Fconst_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_TextSegment : Tk2Type = nil;


// start class TextSegmentTag

function k2_typTextSegment: Tk2Type;
begin
 if (g_TextSegment = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_TextSegment := TevdNativeSchema(Tk2TypeTable.GetInstance).t_TextSegment;
 end;//g_TextSegment = nil
 Result := g_TextSegment;
end;

end.