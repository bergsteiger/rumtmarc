unit destFootnote;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/destFootnote.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::RTFSupport::TdestFootnote
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  destNorm,
  RTFtypes,
  ddRTFState,
  k2Interfaces
  ;

type
 TdestFootnote = class(TdestNorm)
 public
 // overridden public methods
   procedure ParseSymbol(Symbol: Integer;
     propType: TPropType;
     aState: TddRTFState); override;
   procedure Write(const aGenerator: Ik2TagGenerator); override;
 end;//TdestFootnote

implementation

uses
  SysUtils,
  ddDocumentAtom,
  k2Tags,
  l3Chars,
  evdStyles
  ;

// start class TdestFootnote

procedure TdestFootnote.ParseSymbol(Symbol: Integer;
  propType: TPropType;
  aState: TddRTFState);
//#UC START# *51E8CFEF027A_51E8E8770374_var*
var
 l_FN: AnsiString;
//#UC END# *51E8CFEF027A_51E8E8770374_var*
begin
//#UC START# *51E8CFEF027A_51E8E8770374_impl*
 if (propType = propCHP) and (Symbol = symbolFootnote) then
 begin
  AddTextPara(False);
  l_FN:= Format('*(%d)', [gNextFootnoteNumber]);
  with LastParagraph do
  begin
   AddSub(gNextFootnoteNumber{+10000}, Format('Сноска %d', [gNextFootnoteNumber]));
   AddText(l_FN);
  end; // with Lastparagraph
 end
 else
  inherited
//#UC END# *51E8CFEF027A_51E8E8770374_impl*
end;//TdestFootnote.ParseSymbol

procedure TdestFootnote.Write(const aGenerator: Ik2TagGenerator);
//#UC START# *51E8D04603DF_51E8E8770374_var*
var
 i   : LongInt;
 l_P : TddDocumentAtom;
//#UC END# *51E8D04603DF_51E8E8770374_var*
begin
//#UC START# *51E8D04603DF_51E8E8770374_impl*
 aGenerator.StartDefaultChild;
 try
  aGenerator.AddIntegerAtom(k2_tiStyle, ev_saTxtNormalOEM);
  aGenerator.AddStringAtom(k2_tiText, 'ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД', CP_OEM);
 finally
  aGenerator.Finish;
 end; { TextPara }

 for i := 0 to Paragraphs.Hi do
 begin
  l_P := TddDocumentAtom(Paragraphs.Items[i]);
  l_P.Write2Generator(aGenerator, True, LiteVersion);
 end; { for Paragraphs.Count }
//#UC END# *51E8D04603DF_51E8E8770374_impl*
end;//TdestFootnote.Write

end.