unit NSRCConst;

{ $Id: NSRCConst.pas,v 1.10 2003/04/19 12:30:36 law Exp $ }

// $Log: NSRCConst.pas,v $
// Revision 1.10  2003/04/19 12:30:36  law
// - new file: ddDefine.inc.
//
// Revision 1.9  2001/04/27 09:16:21  narry
// Add - команда !DIVISION
//
// Revision 1.8  2001/01/19 13:36:29  narry
// no message
//
// Revision 1.7  2000/12/15 15:29:53  law
// - вставлены директивы Log и Id.
//

{$I ddDefine.inc }

interface
const
  { Константы PriceLevel }
  prclvlNormal = 0;
  prclvlFree   = 1;
  prclvl_nNormal = 'NORMAL';
  prclvl_nFree   = 'FREE';

const
  { Константы ObjType }
  objtPIC = 1;
  objtRTF = 2;

const
  charWhiteSmile = #1; // Цветовое выделение
  charBlackSmile = #2; // Продолжение ссылки
  charHearts     = #3; // Комментарий
  charDiamonds   = #4; // Ссылка
  charClubs      = #5; // Невидимый
  charSpades     = #6; // Утративший силу

const
  kwdTopic       = 'TOPIC';
  kwdStyle       = 'STYLE';
  kwdSub         = 'SUB';
  kwdName        = 'NAME';
  kwdSource      = 'SOURCE';
  kwdType        = 'TYPE';
  kwdKeywords    = 'KEYWORDS';
  kwdBelongs     = 'BELONGS';
  kwdWarning     = 'WARNING';
  kwdClass       = 'CLASS';
  kwdSuffix      = 'SUFFIX';
  kwdDoc         = 'DOC';
  kwdNoDoc       = 'NODOC';
  kwdCalendar    = 'CALENDAR';
  kwdBusiness    = 'BUSINESS';
  kwdUserInfo    = 'USERINFO';
  kwdDate        = 'DATE';
  kwdRDate       = 'RDATE';
  kwdGDDate      = 'GDDATE';
  kwdSFDate      = 'SFDATE';
  kwdSFCode      = 'SFCODE';
  kwdGDCode      = 'GDCODE';
  kwdRCode       = 'RCODE';
  kwdCode        = 'CODE';
  kwdVIncluded   = 'VINCLUDED';
  kwdVChanged    = 'VCHANGED';
  kwdVAbolished  = 'VABOLISHED';
  kwdVLControl   = 'VLCONTROL';
  kwdRelated     = 'RELATED';
  kwdBlock       = 'BLOCK';
  kwdBlockEnd    = 'BLOCKEND';
  kwdPriority    = 'PRIORITY';
  kwdSortDate    = 'SORTDATE';
  kwdNoActive    = 'NOACTIVE';
  kwdRel         = 'REL';
  kwdStage       = 'STAGE';
  kwdCheck       = 'CHECK';
  kwdPublishedIn = 'PUBLISHEDIN';
  kwdPrefix      = 'PREFIX';
  kwdTerritory   = 'TERRITORY';
  kwdNorm        = 'NORM';
  kwdPreactive   = 'PREACTIVE';
  kwdMOJNotReg   = 'MOJNOTREG';
  kwdObjPath     = 'OBJPATH';
  kwdObjTopic    = 'OBJTOPIC';
  kwdObjType     = 'OBJTYPE';
  kwdPriceLevel  = 'PRICELEVEL';
  kwdTable       = 'TABLE';
  kwdSubKW       = 'SUBKW';
  kwdRevision    = 'REVISION';
  kwdVAnonced    = 'VANONCED';
  kwdClass_4x    = 'CLASS_4X';
  kwdDivision    = 'DIVISION';

const
  num_kwdUnknown     = 0;
  num_kwdTopic       = 1;
  num_kwdStyle       = 2;
  num_kwdSub         = 3;
  num_kwdName        = 4;
  num_kwdSource      = 5;
  num_kwdType        = 6;
  num_kwdKeywords    = 7;
  num_kwdBelongs     = 8;
  num_kwdWarning     = 9;
  num_kwdClass       = 10;
  num_kwdSuffix      = 11;
  num_kwdDoc         = 12;
  num_kwdNoDoc       = 13;
  num_kwdCalendar    = 14;
  num_kwdBusiness    = 15;
  num_kwdUserInfo    = 16;
  num_kwdDate        = 17;
  num_kwdRDate       = 18;
  num_kwdGDDate      = 19;
  num_kwdSFDate      = 20;
  num_kwdSFCode      = 21;
  num_kwdGDCode      = 22;
  num_kwdRCode       = 23;
  num_kwdCode        = 24;
  num_kwdVIncluded   = 25;
  num_kwdVChanged    = 26;
  num_kwdVAbolished  = 27;
  num_kwdVLControl   = 28;
  num_kwdRelated     = 29;
  num_kwdBlock       = 30;
  num_kwdBlockEnd    = 31;
  num_kwdPriority    = 32;
  num_kwdSortDate    = 33;
  num_kwdNoActive    = 34;
  num_kwdRel         = 35;
  num_kwdStage       = 36;
  num_kwdCheck       = 37;
  num_kwdPublishedIn = 38;
  num_kwdPrefix      = 39;
  num_kwdTerritory   = 40;
  num_kwdNorm        = 41;
  num_kwdPreactive   = 42;
  num_kwdMOJNotReg   = 43;
  num_kwdObjPath     = 44;
  num_kwdObjTopic    = 45;
  num_kwdObjType     = 46;
  num_kwdPriceLevel  = 47;
  num_kwdTable       = 48;
  num_kwdSubKW       = 49;
  num_kwdRevision    = 50;
  num_kwdVAnonced    = 51;
  num_kwdDivision    = 52;

implementation

end.