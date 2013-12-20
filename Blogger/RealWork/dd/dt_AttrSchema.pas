unit dt_AttrSchema;
{ $Id: dt_AttrSchema.pas,v 1.20 2013/04/11 16:46:29 lulin Exp $ }

// $Log: dt_AttrSchema.pas,v $
// Revision 1.20  2013/04/11 16:46:29  lulin
// - ���������� ��� XE3.
//
// Revision 1.19  2013/02/01 09:47:27  fireton
// - "��������" -> "��� ����������"
//
// Revision 1.18  2013/01/28 09:20:46  fireton
// - "��������" -> "��� ����������"
//
// Revision 1.17  2012/11/30 14:59:06  voba
// - add function DocIDField
//
// Revision 1.16  2012/04/23 08:54:58  narry
// ������� ���-������� � ��������
//
// Revision 1.15  2012/03/27 09:04:20  voba
// - k : 344753123
//
// Revision 1.14  2012/03/06 13:00:31  fireton
// - ������� � ������ B_archi_base132
//
// Revision 1.13.6.2  2012/02/16 11:13:58  fireton
// - ������ ����� ���� � �������
//
// Revision 1.13.6.1  2012/02/13 06:24:10  fireton
// - ��������� Flags � ���������� ������������� ���������
//
// Revision 1.13  2011/10/03 08:29:26  voba
// - k : 281525254
//
// Revision 1.12  2011/06/29 16:02:54  fireton
// - ��� ����������� ������������� ID �������� ������� ��� ��������
//
// Revision 1.11  2011/06/20 09:33:16  voba
// - k : 236721575
//
// Revision 1.10  2011/06/10 12:49:48  voba
// - k : 236721575
//
// Revision 1.9  2011/06/06 15:25:35  voba
// - k : 236721575
//
// Revision 1.8  2011/06/01 07:34:47  voba
// - k : 236721575
//
// Revision 1.7  2010/12/28 10:04:45  voba
// [k:249331906]
//
// Revision 1.6  2010/11/12 08:51:54  voba
// - K : 236721575
//
// Revision 1.5  2010/10/20 10:06:38  voba
// - K : 236720571
//
// Revision 1.4  2010/10/13 09:03:34  voba
// - k:235865224
//
// Revision 1.3  2010/09/29 12:26:29  voba
// - k : 235046326
//
// Revision 1.2  2010/09/28 13:04:33  voba
// - k : 235046326
//
// Revision 1.1  2010/09/24 17:04:45  lulin
// - bug fix: �� ���������� �����.
//
// Revision 1.1  2010/09/24 16:13:58  voba
// [$235058492].
//

{$I DtDefine.inc}
interface
 uses
  k2Tags,
  l3Date,
  dt_Types;

//# �������
 type
  TDLType         = (dlNone,dlSources,dlTypes,dlClasses,dlKeyWords,dlBases,
                     dlDateNums,dlWarnings,dlCorrects,dlCorSources,dlPublisheds,
                     dlPrefixes,dlTerritories,dlNorms,dlAccGroups,dlNewClasses,
                     dlAnnoClasses,dlServiceInfo, {dlDoc2DocLink,} dlTextInsert);
  TDLTypeSet      = Set of TDLType;

  // TDLPassport
  TAttrClass  = ( atcDict,    // ��������� �������
                  atcDepDict, // ��������� ������� ���������� �������
                  atcSingle,  //����������� ������ (���������������� - �������+�����)
                  atcRecord   //����������� ������ (���������������� - ������� ��� ������)
               );

  TDLPassportRec  = record
   rClass : TAttrClass;
   rDict  : TFamTbls;
   rLink  : TFamTbls;
   rDepDictID : TDLType; // ��������� �������
   rDepFldOfs : Integer; // �������� ����-������ � ������, ����� ����-������ ���������� ������ DWORD
   rDefValue : TDictID; // �������� ��-��������� ��� �������, -1 ���� �������� �� �������� ���
   rName : AnsiString;
  end;

 const
  sUsualDicts      = [dlSources,dlTypes,dlClasses,dlKeyWords,
                      dlBases,dlWarnings,dlCorSources,dlPrefixes,
                      dlTerritories,dlNorms,dlAccGroups,dlNewClasses,
                      dlAnnoClasses,dlServiceInfo];
  //sGroupDicts      = [dlDateNums,dlCorrects,dlPublisheds];

  sSubLinkDicts    = [dlTypes,dlClasses,dlKeyWords,dlPrefixes,dlServiceInfo];
  sUnsortedDicts   = [dlBases,dlAccGroups];
  sWithShortName   = [dlSources,dlBases,dlAccGroups,dlCorSources];
  sWithIsPrivateField  = [dlCorSources];
  sWithNonperiodicField = [dlCorSources];
  sNotExportedNames = [dlDateNums, {dlWarnings,} dlCorrects, dlPublisheds, dlNewClasses];
  sDoNotGetNames   = [dlDateNums,dlCorrects,dlPublisheds,dlNewClasses];
  sWithEquals      = [dlClasses, dlNewClasses, dlKeyWords];
  sJournaled       = [dlNewClasses];
  sTreeDictsForImpEx = [dlSources, dlTypes, dlClasses, dlKeyWords, dlBases, dlAnnoClasses, dlServiceInfo,
                        dlCorSources, dlPrefixes, dlTerritories, dlAccGroups];

  sUsualDictsForImpEx = sUsualDicts - [dlNewClasses];
   // "�������" ������� ��� ����� ��������/�������

  GlAttrWithCodeSet = [dlBases, dlAccGroups, dlCorSources];
  {* - ������� � ������� ���� ���� "���". }

  GlAttrCodeNeedFillSet = [dlBases, dlAccGroups];
  {* - ������� � ������� ���� "���" ����������� �����������. }

  GlAttrWithPrivateSet = [dlCorSources];
  {* - ������� � ������� ���� ���� "��� ����������� �������������". }

  GlAttrWithNonPeriodicSet = [dlCorSources];
  {* - ������� � ������� ���� ���� "��������������� �������". }

  GlAttrWithIDEdit = [dlWarnings];
  {* - ������� � ������� ���� ���� �������������� ID. }

  c_DictWithEquals = [dlClasses, dlKeyWords];
  {* - ������� � ������� ���� �������������. }

  cNoDefValue = High(TDictID);
  cDLPassports : Array [dlSources..High(TDLType)] of TDLPassportRec = (
  {dlSources}     (rClass : atcDict;    rDict: ftDt1;  rLink: ftLnk1; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '��������� ������'),
  {dlTypes}       (rClass : atcDict;    rDict: ftDt2;  rLink: ftLnk2; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '����'),
  {dlClasses}     (rClass : atcDict;    rDict: ftDt3;  rLink: ftLnk3; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '������'),
  {dlKeyWords}    (rClass : atcDict;    rDict: ftDt5;  rLink: ftLnk5; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '�������� �����'),
  {dlBases}       (rClass : atcDict;    rDict: ftDt6;  rLink: ftLnk6; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '������ ����������'),
  {dlDateNums}    (rClass : atcSingle;  rDict: ftDt7;  rLink: ftLnk7; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '����, ������'),
  {dlWarnings}    (rClass : atcDict;    rDict: ftDt8;  rLink: ftLnk8; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '��������������'),
  {dlCorrects}    (rClass : atcSingle;  rDict: ftDt9;  rLink: ftLnk9; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '�������'),
  {dlCorSources}  (rClass : atcDict;    rDict: ftDtA;  rLink: ftLnkA; rDepDictID : dlPublisheds; rDepFldOfs : 4; rDefValue : cNoDefValue; rName: '�������'),
  {dlPublisheds}  (rClass : atcDepDict; rDict: ftDtB;  rLink: ftLnkB; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '��������� �������������'),
  {dlPrefixes}    (rClass : atcDict;    rDict: ftDtC;  rLink: ftLnkC; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '��� ����������'),
  {dlTerritories} (rClass : atcDict;    rDict: ftDtD;  rLink: ftLnkD; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '����������'),
  {dlNorms}       (rClass : atcDict;    rDict: ftDtE;  rLink: ftLnkE; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue :  1;          rName: '����� �����'),
  {dlAccGroups}   (rClass : atcDict;    rDict: ftDtF;  rLink: ftLnkF; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '������ �������'),
  {dlNewClasses}  (rClass : atcDict;    rDict: ftDtG;  rLink: ftLnkG; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '������ ��������������'),
  {dlAnnoClasses} (rClass : atcDict;    rDict: ftDtI;  rLink: ftLnkI; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '������ ���������'),
  {dlServiceInfo} (rClass : atcDict;    rDict: ftDtJ;  rLink: ftLnkJ; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '��� ���������� ����������'),
  {dlDoc2DocLink} //(rClass : atcRecord;  rDict: ftNone; rLink: ftLnkK; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '����� ����� �����������'),
  {dlTextInsert}  (rClass : atcSingle;  rDict: ftNone; rLink: ftNone; rDepDictID : dlNone;       rDepFldOfs : 0; rDefValue : cNoDefValue; rName: '������� �������')
  );

  DictionCommands : Array [dlSources..High(TDLType)] of String =
                               ('!SOURCE','!TYPE','!CLASS','!KEY','!BELONGS',''{dlDateNums},'!WARNING',
                                ''{dlCorrects},''{dlCorSources},''{dlPublisheds},
                                '!PREFIX','!TERRITORY','!NORM','!MAIN','!CLASS'{dlNewClasses},
                                '!ANNOCLASS','!SERVICEINFO', ''{dlTextInsert});

//# ��������
type
(* ������ ��������� ���������, ������ ������� ����� ������������� ������������� *)
  TdtAttribute   = (atNothing,
                    atShortName, atFullName, atPriceLevel, atNotTM, atPriority, atSortDate,
                    atRelated, atVerLink, atUrgency, atComment,
                    atDateNums,
                    atSources, atTypes, atPrefixes, atClasses, atKeyWords, atBases {edBelongs},
                    atWarnings, atPublisheds, atTerritories, atNorms,
                    atAccGroups, atAnnoClasses, atServiceInfo,
                    atCorrects, atAlarms, atActiveIntervals, atStages, atJurLogRecords, atOrdLogRecords,
                    atDoc2DocLink,
                    atHLink, atSub,
                    atRenum,
                    atVersions
                   );

  TAttrType = (atUnknown, atInteger, atDate, atString, atRecord, atList);

  TAttributeDescriptorRec = record
                             AttrID : TdtAttribute;
                             AttrName : AnsiString;
                             AttrType : TAttrType;
                             //GetAttrNameLength
                             Flags : Longword;
                            end;

  TdtAttributeSet = set of TdtAttribute;

  TdtFilterAttributes = TdtAttribute;
  TdtFilterAttributesSet = set of TdtFilterAttributes;

  TAllExpData     = TdtAttribute;

                     {(edSource, edType, edClass, edKeyWord, edBelongs,
                     edDatNum, edWarning, edPublish, edPrefix, edTerritory,
                     edNorm, edAccGroup, edAnnoClasses, edServiceInfo,
                     edCheck, edLogRecords, edStage, edActive, edAlarm
                     ,edSub,edHLink,edRelHLink);}

  TExpDictData        = atDateNums .. atDoc2DocLink;
   {* - C����� ��������� ���������}
  TExpExtData         = atDateNums .. atDoc2DocLink;
   {* - C����� ��������� (����� MainRec) ���������}
  //TExpDictDataSet  = Set of TExpDictData;

  TAttrPassportRec  = record
   rLink  : TFamTbls;
   rDict  : TDLType; //���������� �������, ���� ����
   rName : AnsiString;
  end;

const
  OrdAttrSet = [atInteger, atDate, atString];

  atLogRecords = atJurLogRecords;

  EditableDict = [dlSources, dlTypes, dlClasses, dlNewClasses, dlKeyWords, dlBases,
                  dlWarnings, dlPrefixes, dlTerritories, dlNorms, dlAccGroups,
                  dlCorSources, dlAnnoClasses, dlServiceInfo, dlTextInsert];
 {* - ����� DictDisign}


  cDLType2Attributes : array[dlSources .. dlServiceInfo] of TdtAttribute =
                     (atSources, atTypes, atClasses, atKeyWords, atBases,
                     atDateNums, atWarnings, atCorrects, atPublisheds{atCorSources}, atPublisheds,
                     atPrefixes, atTerritories, atNorms, atAccGroups, atClasses{atNewClasses},
                     atAnnoClasses, atServiceInfo{, atDoc2DocLink});


  cAttr2k2Tag : array[TdtAttribute] of Longint =
                    (0{atNothing},
                     0{atShortName}, 0{atFullName}, 0{atPriceLevel}, 0{atNotTM}, 0{atPriority}, 0{atSortDate},
                     0{atRelated}, {k2_tiInternalVerLink}k2_tiExternalVerLink{atVerLink}, 0{atUrgency}, 0{atComment},
                     k2_tiNumANDDates,
                     k2_tiSources, k2_tiTypes, k2_tiPrefix, k2_tiClasses, k2_tiKeyWords, k2_tiGroups,
                     k2_tiWarnings, k2_tiPublishedIn,k2_tiTerritory, k2_tiNorm,
                     k2_tiAccGroups, k2_tiAnnoClasses, k2_tiServiceInfo,
                     k2_tiChecks, k2_tiAlarms, k2_tiActiveIntervals, k2_tiStages, k2_tiLogRecords, k2_tiSysLogRecords,
                     k2_tiLinkedDocuments {atDoc2DocLink},
                     0{atHLink}, 0{atSub},
                     0{atRenum},
                     k2_tiVersions{atVersions}
                     );
  //�������� �������������� - TagID2AttrID

  {* - ������ ������ ��������� ���������, ������� ����� �������� }
  CdtAllAttributes = [Low(TdtAttribute) .. High(TdtAttribute)];

  CdtAllFilterAttributes = CdtAllAttributes;

  {* - c����� ��������� �� FileTbl}
  cAllMainRecData  = [atShortName .. atVerLink];
  {* - ������ ������ ��������� (����� MainRec) ���������, ������� ����� �������� }
  //cAllExpData      = [Low(TExpData) .. High(TExpData)];

  cSubDictExpData  = [atTypes, atPrefixes, atClasses, atKeyWords, atServiceInfo];  //!! ��. cctSubDictExpData ������� ������!!
                                                      //{atKeyWords,����� �� �������� � ����?}
                                                      //- !!!��� �� �������, ������������ ��� ���������� ����� � ��� ����������� ��� ��� ������� � ������!!!

  cDictExpData     = [atSources, atBases, atWarnings, atTerritories,
                      atNorms, atAccGroups, atAnnoClasses] + cSubDictExpData;
  cDocExpData      = CdtAllAttributes - [atAnnoClasses]; //cAllMainRecData + cAllExpData;
                                                      //{atKeyWords,����� �� �������� � ����?}
                                                      //- !!!��� �� �������, ������������ ��� ���������� ����� � ��� ����������� ��� ��� ������� � ������!!!
  cSprExpData      = [atBases, atAccGroups, atDateNums];

  cAnnoExpData     = [atTypes, atAnnoClasses, atJurLogRecords, atOrdLogRecords];
  cExtAnnoExpData  = cAnnoExpData + [atDateNums];

  AttrIDOrder : array[0 .. 23] of TdtAttribute =
                              (atSources, atTypes, atTerritories,
                               atDateNums,
                               atAccGroups, atBases, atNorms,
                               atVerLink, atActiveIntervals, atAlarms,
                               atWarnings, atDoc2DocLink,

                               atClasses, atPrefixes, atKeyWords,
                               atAnnoClasses, atServiceInfo,
                               atPublisheds, atCorrects,

                               atJurLogRecords, atOrdLogRecords,
                               atStages,
                               atRenum,
                               atVersions);
{* - ������� ���������� ���������}

  RealAttrSet  = [atSources, atTypes,
                 atClasses, atPrefixes,
                 atAnnoClasses, atServiceInfo,
                 atKeyWords, atBases,
                 atDateNums,
                 atWarnings, atTerritories, atNorms, atAccGroups,
                 atVerLink, atActiveIntervals, atAlarms,
                 atPublisheds, atCorrects,
                 atJurLogRecords,
                 atRenum, atDoc2DocLink];
 {* - ��������, ������� ������������ ����������� ��������}


  StdDictAttrSet  = [atSources, atTypes, atClasses, atBases, atKeyWords,
                     atWarnings, atPrefixes, atTerritories, atNorms, atAccGroups,
                     atAnnoClasses, atServiceInfo
                    ];
  {* - ����������� (� ������ ��������������) ��������� ���������}

  _DictAttrSet  = [atSources, atTypes, atClasses, atBases,
                  atWarnings, atPrefixes, atTerritories, atNorms, atAccGroups,
                  atServiceInfo
                  {, atTextInsert}];
  {- for d_Export}

  HiddenAttr : TdtAttributeSet = [];

  GlMainAttrSet = [atTypes, atSources, atTerritories, atAccGroups, atBases, atDateNums,
                   atNorms, atWarnings, atVerLink, atActiveIntervals, atAlarms, atAnnoClasses, atServiceInfo
                   ,atPublisheds, atCorrects, {atPaperWhere,} atDoc2DocLink
                   ];
  {* - �������� ��� ������������ ���������. }

  GlMainAttrSetForObject = [atAccGroups, atBases];
  {* - �������� ��� "����������" ���������. }

  GlMainAttrSetForDictEntry = [atAccGroups, atBases, atRenum];
  {* - �������� ��� ��������� - ��������� ������. }

  GlSubAttrSet = [atTypes, atClasses, atPrefixes, atKeyWords,atServiceInfo];
  {* - �������� ��� ����� ������������ ���������. }

  GlSearchAttrSet = [atTypes, atSources, atTerritories, atAccGroups, atBases,
                    atNorms, atClasses, atPrefixes, atKeyWords, atWarnings, atAnnoClasses,atServiceInfo, atPublisheds];
  {* - �������� ��� ������. }

  GlGroupUnSupport = [atVerLink, atActiveIntervals, atAlarms, {atPublisheds,} atCorrects{, atPaperWhere}];
  {* - �������� �� �������������� � ��������� ���������. }

  GlGroupDelUnSupport = [atDateNums, {atWarnings,} atJurLogRecords];
  {* - �������� �� �������������� � ��������� ��������� ��������. }

  GlGroupOnly      = [atJurLogRecords];
  {* - �������� �������������� ������ � ��������� ���������. }

  GlMainAttrSetForGroupAdd = GlMainAttrSet + GlSubAttrSet + GlGroupOnly - GlGroupUnSupport;
  GlMainAttrSetForGroupDel = GlMainAttrSetForGroupAdd - GlGroupDelUnSupport;

  GlSingleItemLinkAttrSet = [atAccGroups, atNorms, atWarnings, atVerLink];
  {* - �������� ��� ������� ���� ����������� �� ���������� ������������� � ��������� �������� (1 ��������) }

  {������������ ��� ����������� ReadOnly  � DocData.LogRec}
  GlDocGroupSet  = [atAccGroups];
  GlClassDictSet = [atClasses, atPrefixes, atTerritories, atNorms];
  GlKWDictSet    = [atKeyWords];
  GlAnnoDictSet  = [atAnnoClasses];
  GlDocJurSet    = [atVerLink, atActiveIntervals, atWarnings, atServiceInfo];
  GlDocPublSet   = [atPublisheds];

  // �������� [atCorrects, atCorSources, atPublisheds, atPaperWhere, atTextInsert]

 // ������ � ��������� ����, ��� ������� ��������� �� ����� ���� ����� ������ ������ �� ��������
 // � ��������� ��������� � �������-�� ���, � ������������ ������ � ��������� ����� ���� ������� �� 0 �� n > 1 ��������
 // � � ����� �������� ����� ���� ������� 0 �� n > 1 ���������
 // ������� ������ ��������� �������� �� ��������� �� ������� ���������
 // ���� cDLPassports ������� ��� ����, �� ���������� �������� ��� �� ����� ������

  {TAttrPassportRec  = record
   rLink  : TFamTbls;
   rDict  : TDLType; //���������� �������, ���� ����
   rName : AnsiString;
  end;}

  cAttrPassport : Array [Low(TdtAttribute)..High(TdtAttribute)] of TAttrPassportRec = (
  {atNothing        } (rLink: ftNone ; rDict: dlNone;        rName: 'Nothing'),
  {main record}
  {atShortName      } (rLink: ftFile ; rDict: dlNone; rName: '�������� ��������'),
  {atFullName       } (rLink: ftFile ; rDict: dlNone; rName: '��������'),
  {atPriceLevel     } (rLink: ftFile ; rDict: dlNone; rName: '����������'),
  {atNotTM          } (rLink: ftFile ; rDict: dlNone; rName: '�� ��������� � ������ �������'),
  {atPriority       } (rLink: ftFile ; rDict: dlNone; rName: '��������'),
  {atSortDate       } (rLink: ftFile ; rDict: dlNone; rName: '���� ��� ����������'),
  {atRelated        } (rLink: ftFile ; rDict: dlNone; rName: '����� �������'),
  {atVerLink        } (rLink: ftFile ; rDict: dlNone; rName: '���������� �������� ���������'),
  {atUrgency        } (rLink: ftFile ; rDict: dlNone; rName: '���������'),
  {atComment        } (rLink: ftFile ; rDict: dlNone; rName: '����������'),

  {atDateNums       } (rLink: ftLnk7 ; rDict: dlDateNums;    rName: '����, ������'),

  {atSources        } (rLink: ftLnk1 ; rDict: dlSources;     rName: '��������� ������'),
  {atTypes          } (rLink: ftLnk2 ; rDict: dlTypes;       rName: '����'),
  {atPrefixes       } (rLink: ftLnkC ; rDict: dlPrefixes;    rName: '��� ����������'),
  {atClasses        } (rLink: ftLnk3 ; rDict: dlClasses;     rName: '������'),
  {atKeyWords       } (rLink: ftLnk5 ; rDict: dlKeyWords;    rName: '�������� �����'),
  {atBases  Belongs } (rLink: ftLnk6 ; rDict: dlBases;       rName: '������ ����������'),
  {atWarnings       } (rLink: ftLnk8 ; rDict: dlWarnings;    rName: '��������������'),
  {atPublisheds     } (rLink: ftLnkB ; rDict: dlPublisheds;  rName: '��������� �������������'),
  {atTerritories    } (rLink: ftLnkD ; rDict: dlTerritories; rName: '����������'),
  {atNorms          } (rLink: ftLnkE ; rDict: dlNorms;       rName: '����� �����'),
  {atAccGroups      } (rLink: ftLnkF ; rDict: dlAccGroups;   rName: '������ �������'),
  {atAnnoClasses    } (rLink: ftLnkI ; rDict: dlAnnoClasses; rName: '������ ���������'),
  {atServiceInfo    } (rLink: ftLnkJ ; rDict: dlServiceInfo; rName: '��� ���������� ����������'),
  {atCorrects       } (rLink: ftLnk9 ; rDict: dlCorrects;    rName: '�������'),
  {atAlarms         } (rLink: ftAlarm; rDict: dlNone;        rName: '�����������'),
  {atActiveIntervals} (rLink: ftActiv; rDict: dlNone;        rName: '��������� ��������'),
  {atStages         } (rLink: ftStage; rDict: dlNone;        rName: '�����'),
  {atLogRecords     } (rLink: ftLog  ; rDict: dlNone;        rName: '������ ����������� ��������'),
  {atLogRecords     } (rLink: ftLog  ; rDict: dlNone;        rName: '��������� ������'),
  {atDoc2DocLink    } (rLink: ftLnkK ; rDict: dlNone;        rName: '����� ����� �����������'),
  {atHLink          } (rLink: ftHLink; rDict: dlNone;        rName: '�����������'),
  {atSub            } (rLink: ftSub  ; rDict: dlNone;        rName: '�����'),
  {atRenum          } (rLink: ftRenum; rDict: dlNone;        rName: '������� ID'),
  {atVersions       } (rLink: ftNone ; rDict: dlNone;        rName: '������ ������ ���������')
  );

//# ������� ������ ���������
 type
  TIDKind = (idkDocExternal, idkDocInternal, idkSprExternal, idkSprInternal);
  PDocIDsRec = ^TDocIDsRec;
  TDocIDsRec = packed record
   rIDKind : TIDKind;
   rId : TDocID;
  end;

  TDictExtParam = (depCode, depPrivate, depNonPeriodic, depID);
  TDictExtParams = set of TDictExtParam;

  PPublishFullRec = ^TPublishFullRec;
  TPublishFullRec = packed record
                     ID          : Longword;
                     Sour        : TDictID;
                     SDate       : TStDate;
                     EDate       : TStDate;
                     Num         : array[1..30] of AnsiChar;
                     Comment     : array[1..70] of AnsiChar;

                     Pages       : array[1..128] of AnsiChar;
                     LinkComment : array[1..255] of AnsiChar;
                     Flags       : Byte;
                    end;
   // ��������! ��������� TPublishDataRec ������ ����� ������ ���� ���������
   // ����������� � ������ ��������� TPublishFullRec
   // ������ ������� ���� ���������� ��� dt_EFltr.TexpPublishDataRec
  PPublishDataRec = ^TPublishDataRec;
  TPublishDataRec = packed record
   DictID       : Longword;                // DT#B.Id
   SourId       : TDictID; // word         // DT#B.Source = DT#A.Id
   SDate        : TStDate;                 // DT#B.StartDate
   EDate        : TStDate;                 // DT#B.EndDate
   Num          : array[1..30] of AnsiChar;    // DT#B.Number
   Comment      : array[1..70] of AnsiChar;    // DT#B.Coment

   Pages        : array[1..128] of AnsiChar;   // LNK#B.Pages
   LinkComment  : array[1..255] of AnsiChar;   // LNK#B.Coment
   Flags        : Byte;                    // LNK#B.Flags
   //----------------------------------------------------------
   DocId        : TDocID;                  // LNK#B.DocId
   ShName       : TCorSrcShortName;        // DT#A.ShName
   IsPrivate    : TIsPrivate;              // DT#A.Private
   IsNonperiodic: TIsNonperiodic;          // DT#A.Nonperiod
  end;

  PPublishLinkRec = ^TPublishLinkRec;
  TPublishLinkRec = packed record
   Doc_ID : Longword;
   Dict_ID: Longword;
   Pages  : array[1..128] of AnsiChar;
   Comment: array[1..255] of AnsiChar;
   Flags  : Byte;
  end;

  PDoc2DocLinkRec = ^TDoc2DocLinkRec;
  TDoc2DocLinkRec = packed record
   rLinkType    : Byte;
   rLinkedDocID : TDocID;
  end;

//#
  function DocIDField(aAttr : TdtAttribute) : Integer;
  function AttrID2DLType(aAttrID: TdtAttribute): TDLType;
  function DLType2AttrID(aDL : TDLType): TdtAttribute;
  function TagID2AttrID(aTagId: Integer) : TdtAttribute;

  function GetMasterDict(aDict : TDLType) : TDLType;
  function IsDictClass(aDict : TDLType): Boolean;
  function IsStdDictAttr(aAttrID : TdtAttribute): Boolean;

  procedure AddDLClassToSet(var theSet: TDLTypeSet; aClass: TAttrClass);

implementation

function TagID2AttrID(aTagId: Integer) : TdtAttribute;
begin
 case aTagId of
  k2_tiTypes           : Result := atTypes;
  k2_tiSources         : Result := atSources;
  k2_tiClasses         : Result := atClasses;
  k2_tiKeyWords        : Result := atKeyWords;
  k2_tiPrefix          : Result := atPrefixes;
  k2_tiAnnoClasses     : Result := atAnnoClasses;
  k2_tiTerritory       : Result := atTerritories;
  k2_tiGroups          : Result := atBases;
  k2_tiAccGroups       : Result := atAccGroups;
  k2_tiNorm            : Result := atNorms;
  k2_tiWarnings        : Result := atWarnings;
  k2_tiPublishedIn     : Result := atPublisheds;
  k2_tiServiceInfo     : Result := atServiceInfo;
  k2_tiNumANDDates     : Result := atDateNums;
  k2_tiSysLogRecords   : Result := atOrdLogRecords;
  k2_tiLogRecords      : Result := atJurLogRecords;
  k2_tiStages          : Result := atStages;
  k2_tiActiveIntervals : Result := atActiveIntervals;
  k2_tiChecks          : Result := atCorrects;
  k2_tiAlarms          : Result := atAlarms;
  k2_tiLinkedDocuments : Result := atDoc2DocLink
  else
   Assert(false, 'dt_AttrSchema.TagID2AttrID: invalid tag');
 end;
 {ctHLink, ctSub,
  }
end;


 function AttrID2DLType(aAttrID: TdtAttribute): TDLType;
 const
  cAttr2DLType : array[atDateNums .. atCorrects] of TDLType =
                      (dlDateNums,
                       dlSources, dlTypes, dlPrefixes, dlClasses, dlKeyWords, dlBases,
                       dlWarnings, dlPublisheds, dlTerritories, dlNorms,
                       dlAccGroups, dlAnnoClasses, dlServiceInfo,
                       dlCorrects);
 begin
  if aAttrID in [atDateNums .. atCorrects] then
   Result := cAttr2DLType[aAttrID]
  else
   Result := dlNone;
 end;

 function DLType2AttrID(aDL : TDLType): TdtAttribute;
 begin
  Assert(aDL in [dlSources .. dlServiceInfo], '���������� ��������� ��� ������� � ��� ��������');

  Result := cDLType2Attributes[aDL];
 end;

function GetMasterDict(aDict : TDLType) : TDLType;
 var
  I : TDLType;
 begin
  Result := dlNone;
  for I := Succ(dlNone) to High(TDLType) do
   with cDLPassports[I] do
    if rDepDictID = aDict then
    begin
     Result := I;
     Exit;
    end;
 end;

 function IsDictClass(aDict : TDLType): Boolean;
 begin
  if aDict = dlNone then
   Result := False
  else
   Result := cDLPassports[aDict].rClass = atcDict;
 end;

 function IsStdDictAttr(aAttrID : TdtAttribute): Boolean;
 begin
  Result := aAttrID in StdDictAttrSet;
 end;

 procedure AddDLClassToSet(var theSet: TDLTypeSet; aClass: TAttrClass);
 var
  I : TDLType;
 begin
  for I := dlSources to High(TDLType) do
   if cDLPassports[I].rClass = aClass then
    Include(theSet, I);
 end;

function DocIDField(aAttr : TdtAttribute) : Integer;
begin
 if aAttr = atHLink then
  Result := 2
 else
  Result := 1;
end;

end.
