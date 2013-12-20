unit CsConst;

{ $Id: CsConst.pas,v 1.14 2012/03/06 09:18:12 narry Exp $ }

// $Log: CsConst.pas,v $
// Revision 1.14  2012/03/06 09:18:12  narry
// Получать с сервера список групп доступа Переданные в регион (273581950)
//
// Revision 1.13  2010/07/06 12:31:02  narry
// - К222759027
//
// Revision 1.12  2010/03/04 07:47:56  narry
// - обновление списка пользователей
//
// Revision 1.11  2010/02/24 10:30:50  narry
// - удаление зависимости проектов от парня
//
// Revision 1.10  2007/11/28 11:16:47  narry
// - Увеличение версии протокола обмена сообщениями
//
// Revision 1.9  2006/11/28 11:19:25  narry
// - ошибка: подвисание Арчи при получении сообщения от сервера
//
// Revision 1.8  2006/09/15 06:51:26  narry
// - починка обмена сообщениями между сервером и клиентом
//
// Revision 1.7  2006/09/01 13:55:00  narry
// - при подключении клиента к серверу проверяются версии клиента и сервера
//
// Revision 1.6  2006/08/03 13:22:01  narry
// - увеличение версии протокола и реакция на ее не совпадение
//
// Revision 1.5  2006/08/02 12:57:32  narry
// - увеличение версии протокола
//
// Revision 1.4  2006/03/16 15:50:16  narry
// - еще один шажок в сторону клиент-сервера
//
// Revision 1.3  2006/02/08 17:24:29  step
// выполнение запросов перенесено из классов-потомков в процедуры объектов
//

{$I CsDefine.inc}

interface

const
 c_CsVersion: Integer = 18;

 c_AllStations = '*'; // адрес для широковещания
 c_WrongClientId = MaxInt; // говорит об отказе в регистрации
 c_DuplicateClient = Pred(c_WrongClientID); // попытка войти повторно
 c_DeadClient = Pred(c_DuplicateClient); // не отвечает на запросы

// коды ошибок обработки запросов
 cs_errOk = 0;
 cs_errError = 1;
 cs_errConnClosedGracefully = 2;
 cs_errConnectTimeout = 3;
 cs_errSocketError = 4;
 cs_errConnAborted = 5;
 cs_errConnRefused = 6;

 cs_errWrongServerVersion = 7;


implementation

end.

