unit PageBreak_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/PageBreak_Const.pas"
// Начат: 07.06.2008 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::PageBreak
//
// Разрыв страницы
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Константы для значений тега PageBreak - "Разрыв страницы".
// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a}
  ;

const
 k2_idPageBreak = 103;

function k2_typPageBreak: Tk2Type;

//#UC START# *48566A8103C1const_intf*
//#UC END# *48566A8103C1const_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_PageBreak : Tk2Type = nil;


// start class PageBreakTag

function k2_typPageBreak: Tk2Type;
begin
 if (g_PageBreak = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_PageBreak := TevdNativeSchema(Tk2TypeTable.GetInstance).t_PageBreak;
 end;//g_PageBreak = nil
 Result := g_PageBreak;
end;

end.