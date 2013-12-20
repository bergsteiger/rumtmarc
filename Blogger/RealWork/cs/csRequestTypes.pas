unit csRequestTypes;

interface

type
 TcsRequestStatus = (cs_rsNone,
                  cs_rsQuery,       { в очереди }
                  cs_rsRun,         { выполняется }
                  cs_rsFrozen,      { заморожено }
                  cs_rsFrozenRun,   { выполнение приостановлено }
                  cs_rsDelivery,    { ожидание доставки пользователю }
                  cs_rsDone,        { обработано }
                  cs_rsDeleted,     { удалено }
                  cs_rsError        { выполнение привело к ошибке }
                  );

 TcsRequestType = (
                cs_rtNone,          // Пустой тип
                cs_rtImport,        // Импорт
                cs_rtExport,        // Экспорт документов
                cs_rtAutoClass,     // Автоклассификация
                cs_rtAnnoExport,     // Экспорт специальных аннотаций
                cs_rtDictEdit,
                cs_rtRequest,
                cs_rtGetTask,
                cs_rtLine,
                cs_rtServerStatus,
                cs_rtTaskResult,
                cs_rtFNSExport,
                cs_rtUserEdit,
                cs_rtDeleteDocs,
                cs_rtCommonData,
                cs_rtAExportDoc,
                cs_rtAExportAnno,
                cs_rtRemoteDictEdit,
                cs_rtRegionUpload,
                cs_rtRunCommand,
                cs_rtDossierMake,
                cs_rtCaseCode,
                cs_rtPrimeExport
                );

  TddFileRenameMode = (dd_frmUnique, // создать уникальное имя Для нового файла
                       dd_frmBackup, // создать bak-копию старого файла
                       dd_frmAdd,    // добавить в существующие
                       dd_frmReplace // Заменить существующий
                       );

  TcsRequestTypes = set of TcsRequestType;
  TcsRequestNotifyEvent = procedure (Sender: TObject; PrevStatus : TcsRequestStatus) of object;

implementation

end.
 