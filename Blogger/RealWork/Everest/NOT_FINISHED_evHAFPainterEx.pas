unit NOT_FINISHED_evHAFPainterEx;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/NOT_FINISHED_evHAFPainterEx.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::Everest::Printing::evHAFPainterEx
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  l3Interfaces,
  evTypes,
  evHAFPainter
  ;

type
 TevHAFPainterEx = class(TevHAFPainter)
 end;//TevHAFPainterEx

 TevReadColontitulsEvent = 

 TevColontituls = array [TevPageColontituls] of Il3CString;

var g_OnReadColontituls : TevReadColontitulsEvent = nil;

implementation

end.