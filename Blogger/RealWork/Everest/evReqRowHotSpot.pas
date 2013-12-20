unit evReqRowHotSpot;

{ Библиотека "Эверест"    }
{ Начал: Люлин А.В.       }
{ Модуль: evReqRowHotSpot - }
{ Начат: 25.06.2005 17:36 }
{ $Id: evReqRowHotSpot.pas,v 1.2 2007/12/04 12:47:04 lulin Exp $ }

// $Log: evReqRowHotSpot.pas,v $
// Revision 1.2  2007/12/04 12:47:04  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.1.2.1  2005/08/25 14:12:52  lulin
// - new behavior: для КЗ не выводим Hint'ы и прочее для строк и ячеек таблицы с контролами.
//

{$Include evDefine.inc }

interface

uses
  evTableRowHotSpot
  ;

type
  TevReqRowHotSpotTester = class(TevTableRowHotSpotTester)
    protected
    // internal methods
      {$IfDef Nemesis}
      function NeedRowSpot: Boolean;
        override;
        {-}
      {$EndIf  Nemesis}
  end;//TevReqRowHotSpotTester

implementation

// start class TevReqRowHotSpotTester

{$IfDef Nemesis}
function TevReqRowHotSpotTester.NeedRowSpot: Boolean;
  //override;
  {-}
begin
 Result := false;
end;
{$EndIf  Nemesis}

end.

