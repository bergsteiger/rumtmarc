unit csTaskTypes;
{ ���� ����� }

{ $Id: csTaskTypes.pas,v 1.14 2012/10/12 10:50:20 narry Exp $ }

// $Log: csTaskTypes.pas,v $
// Revision 1.14  2012/10/12 10:50:20  narry
// ����������
//
// Revision 1.13  2012/10/02 08:01:56  narry
// ��������� ��������� ���������� � ����
//
// Revision 1.12  2012/07/13 11:27:26  narry
// ����������� �������� �� ����
//
// Revision 1.11  2012/04/17 13:21:56  narry
// ����������� ������� ������� (356073078)
//
// Revision 1.10  2011/11/16 10:20:12  narry
// ���������� ������� �� � � ������ ������������� (298682480)
//
// Revision 1.9  2011/08/09 09:31:20  narry
// ������� ���������� � ������� ������ ���� (266422146)
//

interface

type
 TcsTaskStatus = (cs_tsNone,
                  cs_tsQuery,       { � ������� }
                  cs_tsRun,         { ����������� }
                  cs_tsFrozen,      { ���������� }
                  cs_tsFrozenRun,   { ���������� �������������� }
                  cs_tsDelivery,    { �������� �������� ������������ }
                  cs_tsDone,        { ���������� }
                  cs_tsDeleted,     { ������� }
                  cs_tsError,       { ���������� ������� � ������ }
                  cs_tsDelayed,     { ���������� �������� �� �� }
                  cs_tsDelivering   { ����������� �������� ����������� }
                  );

 TcsTaskType = (cs_ttImport,        // ������
                cs_ttExport,        // ������� ����������
                cs_ttAutoClass,     // �����������������
                cs_ttAnnoExport,     // ������� ����������� ���������
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

  TcsFileRenameMode = (cs_frmUnique, // ������� ���������� ��� ��� ������ �����
                       cs_frmBackup, // ������� bak-����� ������� �����
                       cs_frmAdd,    // �������� � ������������
                       cs_frmReplace // �������� ������������
                       );

  TcsTaskTypes = set of TcsTaskType;
  TcsTaskNotifyEvent = procedure (Sender: TObject; PrevStatus : TcsTaskStatus) of object;

implementation

end.
