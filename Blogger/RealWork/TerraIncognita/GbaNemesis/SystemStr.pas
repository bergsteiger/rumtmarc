Unit SystemStr;

// ��������� ���� ��������� ��������� �������� �� ���� ������
// DO NOT LOCALIZE :)  

interface

const
// Unit - nsAppConfig
  { ��������� : + "vcm_ztNavigator/ZoneSetting"; (fLeftNavigator, fRightNavigator);
    ���������:  + "/FloatingSetting" (False, True); }
  cMainFormPath = '��������� ����/utMainWindow/';
  cFrmIDMainMenu        = cMainFormPath + 'utNavigator/';
  cFrmIDConfList        = cMainFormPath + 'utConfigurationList/';
  cFrmIDMyDoc           = cMainFormPath + 'utFolders/';
  cFrmIDRubTree         = cMainFormPath + 'utRubricatorTree/';
  cFrmIDFilter          = cMainFormPath + 'utFilters/';
  cFrmIDRedations       = cMainFormPath + 'utRedaction/';
  cFrmIDDocUnderControl = cMainFormPath + 'utUnderControl/';
  cFrmIDTaskPanel       = cMainFormPath + 'tpMain/';
  cFrmIDDictionaryTerm  = cMainFormPath + 'utDiction/';
  casExportTitle = '�������; �� ���������; ���; �������������; ��������;';

  li_il_Russian = '�������';
  li_il_English = '����������';
  li_il_German = '��������';
  li_il_French = '�����������';
  li_il_Spanish = '���������';
  li_il_Italian = '�����������';

  li_li_Document_CRType0 = '��� ���������';
  li_li_Document_CRType1 = '���������';
  li_li_Document_CRType2 = '�����������, �����������, �����';
  li_li_Document_CRType3 = '����� ����������';
  li_li_Document_CRType4 = '������� �������';
  li_li_Document_CRType5 = '�������� ��������';
  li_li_Document_CRType6 = '������������� ��������';
  li_li_Document_CRType7 = '�� �������';
  li_li_Document_CRType8 = '���������������� ���';

// Unit - nsUtils
  // function - nsConvertAnnoKind // ����! ���� �������, ��� ����� �� ���� ��������
                                  // ����� �� ��������, � � ��� �����������!
  ccakFederalLawFull = '����������� ���������������� � ������� ����������� �������';
  ccakFederalLawShort = '����������� ����������������';
  ccakJudgePracticeLawFull = '�������� � ����������� ��������';
  ccakJudgePracticeLawShort = '�������� ��������';
  ccakRegionalLaw = '������������ ����������������';

implementation

end.