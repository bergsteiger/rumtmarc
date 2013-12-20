unit csRequestTypes;

interface

type
 TcsRequestStatus = (cs_rsNone,
                  cs_rsQuery,       { � ������� }
                  cs_rsRun,         { ����������� }
                  cs_rsFrozen,      { ���������� }
                  cs_rsFrozenRun,   { ���������� �������������� }
                  cs_rsDelivery,    { �������� �������� ������������ }
                  cs_rsDone,        { ���������� }
                  cs_rsDeleted,     { ������� }
                  cs_rsError        { ���������� ������� � ������ }
                  );

 TcsRequestType = (
                cs_rtNone,          // ������ ���
                cs_rtImport,        // ������
                cs_rtExport,        // ������� ����������
                cs_rtAutoClass,     // �����������������
                cs_rtAnnoExport,     // ������� ����������� ���������
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

  TddFileRenameMode = (dd_frmUnique, // ������� ���������� ��� ��� ������ �����
                       dd_frmBackup, // ������� bak-����� ������� �����
                       dd_frmAdd,    // �������� � ������������
                       dd_frmReplace // �������� ������������
                       );

  TcsRequestTypes = set of TcsRequestType;
  TcsRequestNotifyEvent = procedure (Sender: TObject; PrevStatus : TcsRequestStatus) of object;

implementation

end.
 