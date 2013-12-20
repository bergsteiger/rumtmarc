unit NOT_FINISHED_l3Filer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "L3"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/L3/NOT_FINISHED_l3Filer.pas"
// Начат: 08.04.1997 18:33
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Low Level::L3::l3CoreObjects::l3Filer
//
// Реализация компонента-обертки вокруг потока.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\L3\l3Define.inc}

interface

uses
  l3ProgressComponent
  ;

type
 Tl3CustomFiler = class(Tl3ProgressComponent)
  {* Реализация компонента-обертки вокруг потока. }
 end;//Tl3CustomFiler

 Tl3CustomDosFiler = class(Tl3CustomFiler)
 end;//Tl3CustomDosFiler

 Tl3NextTokenFlag = (
   
 );//Tl3NextTokenFlag

implementation

uses
  l3FilerRes
  ;

end.