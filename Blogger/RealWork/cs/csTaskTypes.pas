unit csTaskTypes;
{ Типы задач }

{ $Id: csTaskTypes.pas,v 1.14 2012/10/12 10:50:20 narry Exp $ }

// $Log: csTaskTypes.pas,v $
// Revision 1.14  2012/10/12 10:50:20  narry
// Обновление
//
// Revision 1.13  2012/10/02 08:01:56  narry
// Поддержка экспортов Хаванского и МЦФР
//
// Revision 1.12  2012/07/13 11:27:26  narry
// Исправление опечаток из Арчи
//
// Revision 1.11  2012/04/17 13:21:56  narry
// Оптимизация выливки справок (356073078)
//
// Revision 1.10  2011/11/16 10:20:12  narry
// Интеграция импорта из К в сервер автоматизации (298682480)
//
// Revision 1.9  2011/08/09 09:31:20  narry
// Заливка информации в справки каждую ночь (266422146)
//

interface

type
 TcsTaskStatus = (cs_tsNone,
                  cs_tsQuery,       { в очереди }
                  cs_tsRun,         { выполняется }
                  cs_tsFrozen,      { заморожено }
                  cs_tsFrozenRun,   { выполнение приостановлено }
                  cs_tsDelivery,    { ожидание доставки пользователю }
                  cs_tsDone,        { обработано }
                  cs_tsDeleted,     { удалено }
                  cs_tsError,       { выполнение привело к ошибке }
                  cs_tsDelayed,     { выполнение отложено до ЕО }
                  cs_tsDelivering   { выполняется доставка результатов }
                  );

 TcsTaskType = (cs_ttImport,        // Импорт
                cs_ttExport,        // Экспорт документов
                cs_ttAutoClass,     // Автоклассификация
                cs_ttAnnoExport,     // Экспорт специальных аннотаций
                cs_ttDictEdit,
                cs_ttRequest,
                cs_ttGetTask,
                cs_ttLine,
                cs_ttServerStatus,
                cs_ttTaskResult,
                cs_ttFNSExport,
                cs_ttUserEdit,
                cs_ttDeleteDocs,
                cs_ttCommonData,
                cs_ttAExportDoc,
                cs_ttAExportAnno,
                cs_ttRemoteDictEdit,
                cs_ttRegionUpload,
                cs_ttRunCommand,
                cs_ttDossierMake,
                cs_ttCaseCode,
                cs_ttPrimeExport,
                cs_ttUserDefinedExport,
                cs_ttSpellCheck,
                cs_ttAutoSpellCheck,
                cs_ttAACImport,
                cs_ttRelPublish,
                {cs_ttEveryDayUpdate,
                cs_ttLoadDelta,
                }cs_ttUnregistered,
                cs_ttMDPSync,
                cs_ttAACRelExport,
                cs_ttMisspellCorrect,
                cs_ttNCFRExport
                );

  TcsFileRenameMode = (cs_frmUnique, // создать уникальное имя Для нового файла
                       cs_frmBackup, // создать bak-копию старого файла
                       cs_frmAdd,    // добавить в существующие
                       cs_frmReplace // Заменить существующий
                       );

  TcsTaskTypes = set of TcsTaskType;
  TcsTaskNotifyEvent = procedure (Sender: TObject; PrevStatus : TcsTaskStatus) of object;

implementation

end.
