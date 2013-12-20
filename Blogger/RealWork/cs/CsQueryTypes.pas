unit CsQueryTypes;

{ $Id: CsQueryTypes.pas,v 1.23 2013/04/03 09:51:26 fireton Exp $ }

// $Log: CsQueryTypes.pas,v $
// Revision 1.23  2013/04/03 09:51:26  fireton
// - логика простановки VANONCED
//
// Revision 1.22  2012/10/18 06:49:55  narry
// Версия pipeout2, умеющая строить списки новых и измененных (383583730)
//
// Revision 1.21  2012/03/06 09:17:14  narry
// Получать с сервера список групп доступа Переданные в регион (273581950)
//
// Revision 1.20  2010/03/02 08:24:16  narry
// - изменения splash
//
// Revision 1.19  2009/07/22 08:20:23  narry
// - новая процедура KeepAlive
// - cleanup
//
// Revision 1.18  2009/03/13 15:15:40  narry
// - процедуры записи в файл информации об удалении меток с атрибутами
//
// Revision 1.17  2009/01/13 16:18:23  narry
// - обновление механизма
//
// Revision 1.16  2008/11/25 12:59:34  narry
// - обновление
//
// Revision 1.15  2008/07/10 13:02:24  fireton
// - новый тип запроса - получение текущей даты компиляции базы
//
// Revision 1.14  2008/03/21 17:32:22  narry
// - задел для превращения Парня в сервис
//
// Revision 1.13  2007/10/04 07:53:59  narry
// - расширение процедуры регистрации клиента
//
// Revision 1.12  2007/07/24 12:32:27  narry
// - рефакторинг системы сообщений
//
// Revision 1.11  2006/09/01 13:55:01  narry
// - при подключении клиента к серверу проверяются версии клиента и сервера
//
// Revision 1.10  2006/08/02 12:18:46  narry
// - ловушка для сообщений с сервера
//
// Revision 1.9  2006/06/26 12:12:32  narry
// - обновление
//
// Revision 1.8  2006/06/22 11:41:21  fireton
// - обмен документами между клиентом и сервером
//
// Revision 1.7  2006/06/05 14:52:55  narry
// - обновление: расширение списка типов
//
// Revision 1.6  2006/03/31 12:46:18  narry
// - обновление
//
// Revision 1.5  2006/03/16 15:50:16  narry
// - еще один шажок в сторону клиент-сервера
//
// Revision 1.4  2006/03/09 11:47:12  narry
// - изменение: новая технология передачи заданий
//
// Revision 1.3  2006/02/08 17:24:29  step
// выполнение запросов перенесено из классов-потомков в процедуры объектов
//

{$I CsDefine.inc}

interface

type
 TCsQueryId = (qtTest,
               qtClientIp,
               qtLogin,
               qtLogout,
               qtFile,
               qtDirectory,
               qtTask,
               // Выше исторические команды
               qtServerStatus,
               qtAllLine,
               qtMyLine,
               qtDeleteTask,
               qtTaskChanged,
               qtStartMonitoring,
               qtStartMyMonitoring,
               qtEndMonitoring,
               qtServerTask,
               qtTaskResult,
               qtGetTask,
               qtGetActiveUsersList,
               qtSendMail,
               qtDictEdit,
               qtGetDictEdit,
               qtGetMyMessages,
               qtGetTime,
               qtGetMyResults,
               qtPrepareDocument,
               qtGetPreparedDocument,
               qtReturnChangedDocument,
               qtGetProtocolVersion,
               qtDeleteDocs,
               qtGetCommonData, // Запросить общий объект с номером N
               qtGetBaseConfig,
               qtLoginEx,
               qtGetCommands,
               qtExecuteCommand,
               qtGetVersionDate,
               qtGetBaseStatus,
               qtGetNonEditableDicts,
               qtGetBaseParams,
               qtGetAllUsersList,
               qtGetExecuteStatus,
               qtGetDictChangeFileName,
               qtKeepAlive,
               qtGetLogo,
               qtGetToRegionList,
               qtGetAEParams,
               qtGetCompileDate,
               qtGetAnouncedDate);

implementation

end.
