unit ddHTMLTags;

interface

uses
  l3Parser, l3Chars;

type
 ThtmlTagRec = record
  TagName: ShortString;
  TagID  : Integer;
 end;

const
 htmlWordChars = l3_DefaultParserWordChars + ['<', '/','_']{ + cc_ANSIRussian +cc_Digits} ;
 htmlWhiteSpace = l3_DefaultParserWhiteSpace - [' ', '_'];// - htmlWordChars;


 tnHTML     = 'HTML';   tidHtml     = 1;
 tnP        = 'P';      tidP        = 2;
 tnPRE      = 'PRE';    tidPRE      = 3;
 tnB        = 'B';      tidB        = 4;
 tnSTRONG   = 'STRONG'; tidSTRONG   = 5;
 tnI        = 'I';      tidI        = 6;
 tnU        = 'U';      tidU        = 7;
 tnSPAN     = 'SPAN';   tidSPAN     = 8;
 tnFONT     = 'FONT';   tidFONT     = 9;
 tnH1       = 'H1';     tidH1       = 10;
 tnH2       = 'H2';     tidH2       = 11;
 tnH3       = 'H3';     tidH3       = 12;
 tnH4       = 'H4';     tidH4       = 13;
 tnTABLE    = 'TABLE';  tidTABLE    = 14;
 tnTR       = 'TR';     tidTR       = 15;
 tnTD       = 'TD';     tidTD       = 16;
 tnBR       = 'BR';     tidBR       = 17;
 tnUL       = 'UL';     tidUL       = 18;
 tnOL       = 'OL';     tidOL       = 19;
 tnLI       = 'LI';     tidLI       = 20;
 tnBODY     = 'BODY';   tidBODY     = 21;
 tnMETA     = 'META';   tidMETA     = 22;
 tnTITLE    = 'TITLE';  tidTITLE    = 23;
 tnDIV      = 'DIV';    tidDIV      = 24;
 tnSTYLE    = 'STYLE';  tidSTYLE    = 25;
 tnIMG      = 'IMG';    tidIMG      = 26;
 tnA        = 'A';      tidA        = 27;
 tnHEAD     = 'HEAD';   tidHEAD     = 28;
 tnHR       = 'HR';     tidHR       = 29;
 tnH        = 'H';      tidH        = 30;
 thTH       = 'TH';     tidTH       = 31;
 thSCRIPT   = 'SCRIPT'; tidSCRIPT   = 32;
 thTBODY    = 'TBODY';  tidTBODY    = 33;
 thTFOOT    = 'TFOOT';  tidTFOOT    = 34;
 thTHEAD    = 'THEAD';  tidTHEAD    = 35;

const
 cMaxHTMLTag = 34;
 cHTMLTags : array[0..cmaxHTMLTag] of ThtmlTagRec =
  (
   (TagName: tnHtml;   TagID: tidHTML),
   (TagName: tnP;      TagID: tidP),
   (TagName: tnPRE;    TagID: tidPRE),
   (TagName: tnB;      TagID: tidB),
   (TagName: tnSTRONG; TagID: tidSTRONG),
   (TagName: tnI;      TagID: tidI),
   (TagName: tnU;      TagID: tidU),
   (TagName: tnSPAN;   TagID: tidSPAN),
   (TagName: tnFONT;   TagID: tidFONT),
   (TagName: tnH1;     TagID: tidH1),
   (TagName: tnH2;     TagID: tidH2),
   (TagName: tnH3;     TagID: tidH3),
   (TagName: tnH4;     TagID: tidH4),
   (TagName: tnTABLE;  TagID: tidTABLE),
   (TagName: tnTR;     TagID: tidTR),
   (TagName: tnTD;     TagID: tidTD),
   (TagName: tnBR;     TagID: tidBR),
   (TagName: tnUL;     TagID: tidUL),
   (TagName: tnOL;     TagID: tidOL),
   (TagName: tnLI;     TagID: tidLI),
   (TagName: tnBODY;   TagID: tidBODY),
   (TagName: tnMETA;   TagID: tidMETA),
   (TagName: tnTITLE;  TagID: tidTITLE),
   (TagName: tnDIV;    TagID: tidDIV),
   (TagName: tnSTYLE;  TagID: tidSTYLE),
   (TagName: tnIMG;    TagID: tidIMG),
   (TagName: tnA;      TagID: tidA),
   (TagName: tnHEAD;   TagID: tidHEAD),
   (TagName: tnHR;     TagID: tidHR),
   (TagName: tnH;      TagID: tidH),
   (TagName: thTH;     TagID: tidTH),
   (TagName: thSCRIPT; TagID: tidSCRIPT),
   (TagName: thTBODY; TagID: tidTBODY),
   (TagName: thTFOOT; TagID: tidTFOOT),
   (TagName: thTHEAD; TagID: tidTHEAD)
  );

implementation

end.
