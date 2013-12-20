unit evParaListCursorInsertable;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evParaListCursorInsertable.pas"
// Начат: 18.06.2009 17:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::ParaList Cursors::TevParaListCursorInsertable
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevTools,
  evParaListCursorPrim,
  nevBase
  ;

type
 TevParaListCursorInsertable = class(TevParaListCursorPrim, IevOpInsertPara)
 protected
 // realized methods
   function DoIt(const anOpPack: InevOp;
     const aPara: InevTag;
     aFlags: TevInsertParaFlags = [ev_ipfAtEnd]): Boolean;
 end;//TevParaListCursorInsertable

implementation

// start class TevParaListCursorInsertable

function TevParaListCursorInsertable.DoIt(const anOpPack: InevOp;
  const aPara: InevTag;
  aFlags: TevInsertParaFlags = [ev_ipfAtEnd]): Boolean;
//#UC START# *48E4FEB90365_4A3A4398010A_var*
var
 l_Flags : TevInsertParaFlags;
 l_PID   : Integer;
//#UC END# *48E4FEB90365_4A3A4398010A_var*
begin
//#UC START# *48E4FEB90365_4A3A4398010A_impl*
 l_PID := Position;
 l_Flags := aFlags + [ev_ipfNeedFire];
 if ev_ipfAtEnd in aFlags then
 begin
  Inc(l_PID);
  l_Flags := l_Flags - [ev_ipfAtEnd];
 end; // if ev_ipfAtEnd in aFlags then
 //CheckProcessor(anOp);
 Result := ParaX.Modify.InsertPara(Pred(l_PID), aPara, anOpPack, l_Flags);
//#UC END# *48E4FEB90365_4A3A4398010A_impl*
end;//TevParaListCursorInsertable.DoIt

end.