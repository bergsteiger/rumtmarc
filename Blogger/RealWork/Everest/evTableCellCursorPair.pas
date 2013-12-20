unit evTableCellCursorPair;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evTableCellCursorPair - }
{ Начат: 17.12.2002 11:18 }
{ $Id: evTableCellCursorPair.pas,v 1.14 2011/02/17 13:19:27 dinishev Exp $ }

// $Log: evTableCellCursorPair.pas,v $
// Revision 1.14  2011/02/17 13:19:27  dinishev
// [$253663257]
//
// Revision 1.13  2010/11/15 15:43:09  dinishev
// [$234357754]
//
// Revision 1.12  2009/07/23 13:42:11  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.11  2009/07/10 15:04:44  lulin
// - избавляемся от лишнего дёрганья счётчиков ссылок.
//
// Revision 1.10  2008/04/14 13:46:35  lulin
// - <K>: 89096854.
//
// Revision 1.9  2007/12/04 12:47:05  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.8.8.2  2007/06/22 20:18:32  lulin
// - cleanup.
//
// Revision 1.8.8.1  2005/11/09 15:28:25  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.8  2005/03/28 11:32:08  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.7  2005/03/23 08:46:32  lulin
// - методы для установки свойств перенесены на Ik2Tag.
//
// Revision 1.6  2005/03/22 12:42:16  lulin
// - bug fix: установка стиля убивала гиперссылки.
//
// Revision 1.5  2004/10/28 13:54:26  lulin
// - remove type: TevParam.
//
// Revision 1.4  2003/05/10 12:28:11  law
// - new behavior: сделана возможность изменять выравнивание по вертикали сразу группе ячеек.
//
// Revision 1.3  2003/02/14 13:02:59  law
// - cleanup: rename class TevListCursorPair -> _TevParaListCursorPair.
//
// Revision 1.2  2002/12/17 09:49:43  law
// - new unit: evParaListCursorPair.
//
// Revision 1.1  2002/12/17 08:24:44  law
// - new unit: evTableCellCursorPair.
//

{$Include evDefine.inc }

interface

uses
  l3Types,
  l3Interfaces,

  k2Types,
  k2Interfaces,
  
  evParaListCursorPair,

  nevTools
  ;

type  
  TevTableCellCursorPair = class(TevParaListCursorPair)
   {* Выделение для ячейки таблицы. }
    protected
    // internal methods
      {$IfDef evNeedEditableCursors}
      function DoSetAtom(const aView : InevView;
                         anIndex        : Cardinal;
                         const pSource  : Ik2Tag;
                         const anOpPack : InevOp): Bool;
        override;
        {-}
      {$EndIf evNeedEditableCursors}
  end;{TevTableCellCursorPair}

implementation

uses
  evdTypes,

  k2Tags
  ;

// start class TevTableCellCursorPair

{$IfDef evNeedEditableCursors}
function TevTableCellCursorPair.DoSetAtom(const aView : InevView;
                                          anIndex        : Cardinal;
                                          const pSource  : Ik2Tag;
                                          const anOpPack : InevOp): Bool;
  //override;
  {-}
begin
 if (anIndex = k2_tiVerticalAligment) then
 begin
  Result := true;
  GetRedirect.AttrW[anIndex, anOpPack] := pSource;
 end//anIndex = k2_tiVerticalAligment
 else
  Result := inherited DoSetAtom(aView, anIndex, pSource, anOpPack);
end;
{$EndIf evNeedEditableCursors}

end.

