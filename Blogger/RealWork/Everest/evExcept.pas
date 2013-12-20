unit evExcept;

{ Библиотека "Эверест"  }
{ Автор: Люлин А.В.     }
{ Модуль: evExcept - описание исключительных ситуаций}
{ Начат: 03.06.97 17:37 }
{ $Id: evExcept.pas,v 1.11 2011/04/04 14:57:09 lulin Exp $ }

// $Log: evExcept.pas,v $
// Revision 1.11  2011/04/04 14:57:09  lulin
// {RequestLink:255980313}.
//
// Revision 1.10  2010/07/23 08:39:04  fireton
// - механизм "перезапуска" цепочки searcher'ов
//
// Revision 1.9  2010/06/30 08:46:25  oman
// - fix: {RequestLink:220595917}
//
// Revision 1.8  2007/12/04 12:47:01  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.7.24.4  2007/08/29 15:33:19  lulin
// - cleanup.
//
// Revision 1.7.24.3  2006/12/06 12:24:09  oman
// - fix: Если на печати колонтитулы не оставляют места для
//  основного текста - бросаем исключение - текст исключения (cq23103)
//
// Revision 1.7.24.2  2006/12/04 13:46:40  oman
// - fix: Если на печати колонтитулы не оставляют места для
//  основного текста - бросаем исключение (cq23103)
//
// Revision 1.7.24.1  2006/03/01 10:48:46  lulin
// - cleanup.
//
// Revision 1.7  2004/07/16 12:36:41  law
// - bug fix: неправильно обрабатывали PgUp/PgDn когда курсора не было видно.
//
// Revision 1.6  2001/03/12 12:48:22  law
// - bug fix: exception при инициализации курсоров выделения, а также применение k2_tiJustification к выделению.
//
// Revision 1.5  2000/12/15 15:10:35  law
// - вставлены директивы Log.
//

{$Include evDefine.inc }

interface

uses
  SysUtils
  ;

type
  EevException = class(Exception);

  EevWarning = class(EevException);
  EevSearchFailed = class(EevWarning);
  EevReadOnly = class(EevWarning);
  EevLimitReached = class(EevWarning);
  EevPrintError = class(EevException);
  EevInvalidPrintMargins = class(EevPrintError);
  EevNothingToPrint = class(EevException);
  EevSearcherRestart = class(Exception);
  EevUnstableProcessWhileInsertUserComment = class(EevException);

const
  ev_warSearchFailed = 'Поиск не дал результатов';
  ev_warInvalidMargins = 'Область печати выходит за границы бумажного листа. '+
    'Отредактируйте настройки размера бумаги и колонтитулов и повторите попытку печати.';

implementation

end.

