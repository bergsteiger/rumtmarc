unit SectionBreak_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/SectionBreak_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::SectionBreak
//
// Разрыв раздела
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега SectionBreak - "Разрыв раздела".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idSectionBreak = 104;

function k2_typSectionBreak: Tk2Type;

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_SectionBreak : Tk2Type = nil;


// start class SectionBreakTag

function k2_typSectionBreak: Tk2Type;
begin
 if (g_SectionBreak = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_SectionBreak := TevdNativeSchema(Tk2TypeTable.GetInstance).t_SectionBreak;
 end;//g_SectionBreak = nil
 Result := g_SectionBreak;
end;

end.