unit dd_rtfFields;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/dd_rtfFields.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::dd::RTFSupport::dd_rtfFields
//
// Обработка полей и форм из RTF
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  l3Base,
  l3StringList,
  ddDocumentAtom,
  ddRTFdestination,
  destNorm,
  ddRTFState,
  ddCustomDestination,
  k2Interfaces,
  RTFtypes,
  ddCustomRTFReader
  ;

type
 TdestField = class(TddRTFDestination)
 end;//TdestField

 TddFieldType = (
   dd_fieldUnknown
 , dd_fieldHyperlink
 , dd_fieldSymbol
 , dd_fieldForm
 );//TddFieldType

 TdestFieldInstruction = class(TddRTFDestination)
 private
 // private fields
   f_Instruction : AnsiString;
   f_FieldResult : AnsiString;
    {* Поле для свойства FieldResult}
 protected
 // property methods
   function Get_FieldType: TddFieldType;
 public
 // overridden public methods
   procedure Clear; override;
   procedure AddAnsiChar(aText: AnsiChar;
     aState: TddRTFState); override;
   procedure AddString(aText: Tl3String;
     aState: TddRTFState); override;
 public
 // public methods
   procedure Instruction2Result;
 public
 // public properties
   property FieldResult: AnsiString
     read f_FieldResult;
   property FieldType: TddFieldType
     read Get_FieldType;
 end;//TdestFieldInstruction

 TdestFormFieldItem = class(TddRTFDestination)
 private
 // private fields
   f_Item : AnsiString;
    {* Поле для свойства Item}
 public
 // overridden public methods
   procedure AddAnsiChar(aText: AnsiChar;
     aState: TddRTFState); override;
   procedure AddString(aText: Tl3String;
     aState: TddRTFState); override;
   procedure AddUnicodeChar(aText: Word;
     aState: TddRTFState); override;
 public
 // public properties
   property Item: AnsiString
     read f_Item
     write f_Item;
 end;//TdestFormFieldItem

 TdestFieldResult = class(TdestNorm)
 protected
 // property methods
   function pm_GetFieldResult: AnsiString;
   procedure pm_SetFieldResult(const aValue: AnsiString);
 public
 // overridden public methods
   procedure Clear; override;
 public
 // public properties
   property FieldResult: AnsiString
     read pm_GetFieldResult
     write pm_SetFieldResult;
 end;//TdestFieldResult

 TddField = class(TddDocumentAtom)
 private
 // private fields
   f_FormItems : Tl3StringList;
   f_FormDefResult : Integer;
    {* Поле для свойства FormDefResult}
   f_FormResult : Integer;
    {* Поле для свойства FormResult}
   f_FormType : Integer;
    {* Поле для свойства FormType}
   f_Instruction : Tl3String;
    {* Поле для свойства Instruction}
   f_FieldResult : Tl3String;
    {* Поле для свойства FieldResult}
 protected
 // property methods
   function Get_FieldType: TddFieldType;
 protected
 // realized methods
   procedure Write2Generator(const Generator: Ik2TagGenerator;
     aNeedProcessRow: Boolean;
     LiteVersion: Boolean); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   constructor Create(anOwner: TObject;
    aDetination: TddCustomDestination); override;
 public
 // public methods
   procedure Instruction2Result;
   procedure AddListItem(const aItem: AnsiString); overload; 
   procedure AddListItem(aItem: Tl3String); overload; 
 public
 // public properties
   property FormDefResult: Integer
     read f_FormDefResult
     write f_FormDefResult;
   property FormResult: Integer
     read f_FormResult
     write f_FormResult;
   property FormType: Integer
     read f_FormType
     write f_FormType;
   property Instruction: Tl3String
     read f_Instruction;
   property FieldResult: Tl3String
     read f_FieldResult;
   property FieldType: TddFieldType
     read Get_FieldType;
 end;//TddField

 TdestFormField = class(TddRTFDestination)
 private
 // private fields
   f_Items : Tl3StringList;
   f_DefaultResult : Integer;
    {* Поле для свойства DefaultResult}
   f_FormResult : Integer;
    {* Поле для свойства FormResult}
   f_FormSize : Integer;
    {* Поле для свойства FormSize}
   f_FormType : Integer;
    {* Поле для свойства FormType}
   f_TextType : Integer;
    {* Поле для свойства TextType}
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   procedure Clear; override;
   procedure ApplyProperty(propType: TPropType;
     What: TIProp;
     Value: LongInt;
     aState: TddRTFState); override;
   constructor Create(aRTFReader: TddCustomRTFReader); override;
 public
 // public methods
   procedure AddItem(const aItem: AnsiString);
   function GetFormResult: AnsiString;
 public
 // public properties
   property DefaultResult: Integer
     read f_DefaultResult
     write f_DefaultResult;
   property FormResult: Integer
     read f_FormResult
     write f_FormResult;
   property FormSize: Integer
     read f_FormSize
     write f_FormSize;
   property FormType: Integer
     read f_FormType
     write f_FormType;
   property TextType: Integer
     read f_TextType
     write f_TextType;
 end;//TdestFormField

implementation

uses
  StrUtils,
  SysUtils,
  Math,
  ddBase
  ;

// start class TdestFieldInstruction

procedure TdestFieldInstruction.Instruction2Result;
//#UC START# *51D27B1A00FA_51D277ED01E9_var*
var
 S: AnsiString;
//#UC END# *51D27B1A00FA_51D277ED01E9_var*
begin
//#UC START# *51D27B1A00FA_51D277ED01E9_impl*
 case FieldType of
  dd_fieldUnknown: ;
  dd_fieldHyperlink: ;
  dd_fieldSymbol:
   begin
    // Оформление символа пока игнорируем
    S := Copy(f_Instruction, Pos('SYMBOL', f_Instruction) + Length('SYMBOL') + 1, Length(f_Instruction));
    S := Copy(S, 1, Pos(' ', S) - 1);
    f_FieldResult := Chr(StrToIntDef(S, 32));
   end;
  dd_fieldForm:
   (*
    if (FormType = 2) and (InRange(FormResult, 0, f_FormItems.Hi) or
                          (InRange(FormDefResult, 0, f_FormItems.Hi))) then
    begin
     if InRange(FormResult, 0, f_FormItems.Hi) then
      f_FieldResult.Assign(f_FormItems.Items[FormResult])
     else
      f_FieldResult.Assign(f_FormItems.Items[FormDefResult]);
    end*); // InRange
 end;
//#UC END# *51D27B1A00FA_51D277ED01E9_impl*
end;//TdestFieldInstruction.Instruction2Result

function TdestFieldInstruction.Get_FieldType: TddFieldType;
//#UC START# *51D27B9A01B2_51D277ED01E9get_var*
{
'CREATEDATE' | 'DATE' | 'EDITTIME' | 'PRINTDATE' | 'SAVEDATE' | 'TIME'
'COMPARE' | 'DOCVARIABLE' | 'GOTOBUTTON' | 'IF' | 'MACROBUTTON' | 'PRINT'
'AUTHOR' | 'COMMENTS' | 'DOCPROPERTY' | 'FILENAME' | 'FILESIZE' | 'INFO' | 'KEYWORDS' | 'LASTSAVEDBY' | 'NUMCHARS' | 'NUMPAGES' | 'NUMWORDS' | 'SUBJECT' | 'TEMPLATE' | 'TITLE'
'FORMTEXT' | 'FORMCHECKBOX' | 'FORMDROPDOWN'
('=' <formula>) | 'ADVANCE' | 'EQ' | 'SYMBOL'
'INDEX' | 'RD' | 'TA' | 'TC' | 'TOA' | 'TOC' | 'XE'
'AUTOTEXT' | 'AUTOTEXTLIST' | 'HYPERLINK' | 'INCLUDEPICTURE' | 'INCLUDETEXT' | 'LINK' | 'NOTEREF' | 'PAGEREF' | 'QUOTE' | 'REF' | 'STYLEREF'
'ADDRESSBLOCK' | 'ASK' | 'COMPARE' | 'DATABASE' | 'FILLIN' | 'GREETINGLINE' | 'IF' | 'MERGEFIELD' | 'MERGEREC' | 'MERGESEQ' | 'NEXT' | 'NEXTIF' | 'SET' | 'SKIPIF'
'AUTONUM' | 'AUTONUMLGL' | 'AUTONUMOUT' | 'BARCODE' | 'LISTNUM' | 'PAGE' | 'REVNUM' | 'SECTION' | 'SECTIONPAGES' | 'SEQ'
'USERADDRESS' | 'USERINITIALS' | 'USERNAME'
}
//#UC END# *51D27B9A01B2_51D277ED01E9get_var*
begin
//#UC START# *51D27B9A01B2_51D277ED01E9get_impl*
 if AnsiContainsText(f_Instruction, 'HYPERLINK') or AnsiContainsText('REF', f_Instruction) then
   Result := dd_fieldHyperlink
 else
 if AnsiContainsText(f_Instruction, 'SYMBOL') then
  Result := dd_fieldSymbol
 else
 if AnsiContainsText(f_Instruction, 'FORMDROPDOWN') then
  Result := dd_fieldForm
 else
  Result := dd_fieldUnknown;
//#UC END# *51D27B9A01B2_51D277ED01E9get_impl*
end;//TdestFieldInstruction.Get_FieldType

procedure TdestFieldInstruction.Clear;
//#UC START# *51D27A48038E_51D277ED01E9_var*
//#UC END# *51D27A48038E_51D277ED01E9_var*
begin
//#UC START# *51D27A48038E_51D277ED01E9_impl*
 f_FieldResult := '';
 f_Instruction := '';
 inherited;
//#UC END# *51D27A48038E_51D277ED01E9_impl*
end;//TdestFieldInstruction.Clear

procedure TdestFieldInstruction.AddAnsiChar(aText: AnsiChar;
  aState: TddRTFState);
//#UC START# *51D27C0402E9_51D277ED01E9_var*
//#UC END# *51D27C0402E9_51D277ED01E9_var*
begin
//#UC START# *51D27C0402E9_51D277ED01E9_impl*
 f_Instruction := f_Instruction + aText;
//#UC END# *51D27C0402E9_51D277ED01E9_impl*
end;//TdestFieldInstruction.AddAnsiChar

procedure TdestFieldInstruction.AddString(aText: Tl3String;
  aState: TddRTFState);
//#UC START# *51D27C3302EC_51D277ED01E9_var*
//#UC END# *51D27C3302EC_51D277ED01E9_var*
begin
//#UC START# *51D27C3302EC_51D277ED01E9_impl*
 f_Instruction := f_Instruction + aText.AsString;
//#UC END# *51D27C3302EC_51D277ED01E9_impl*
end;//TdestFieldInstruction.AddString
// start class TdestFormFieldItem

procedure TdestFormFieldItem.AddAnsiChar(aText: AnsiChar;
  aState: TddRTFState);
//#UC START# *51D27C0402E9_51D278030255_var*
//#UC END# *51D27C0402E9_51D278030255_var*
begin
//#UC START# *51D27C0402E9_51D278030255_impl*
 f_Item := f_Item + aText;
//#UC END# *51D27C0402E9_51D278030255_impl*
end;//TdestFormFieldItem.AddAnsiChar

procedure TdestFormFieldItem.AddString(aText: Tl3String;
  aState: TddRTFState);
//#UC START# *51D27C3302EC_51D278030255_var*
//#UC END# *51D27C3302EC_51D278030255_var*
begin
//#UC START# *51D27C3302EC_51D278030255_impl*
 f_Item := aText.AsString;
//#UC END# *51D27C3302EC_51D278030255_impl*
end;//TdestFormFieldItem.AddString

procedure TdestFormFieldItem.AddUnicodeChar(aText: Word;
  aState: TddRTFState);
//#UC START# *51D27DFA0308_51D278030255_var*
//#UC END# *51D27DFA0308_51D278030255_var*
begin
//#UC START# *51D27DFA0308_51D278030255_impl*

//#UC END# *51D27DFA0308_51D278030255_impl*
end;//TdestFormFieldItem.AddUnicodeChar
// start class TdestFieldResult

function TdestFieldResult.pm_GetFieldResult: AnsiString;
//#UC START# *51D27CF603D7_51D2785D029Cget_var*
//#UC END# *51D27CF603D7_51D2785D029Cget_var*
begin
//#UC START# *51D27CF603D7_51D2785D029Cget_impl*
 if LastParagraph = nil then
  Result := ''
 else
  Result := LastParagraph.Text.AsString;
//#UC END# *51D27CF603D7_51D2785D029Cget_impl*
end;//TdestFieldResult.pm_GetFieldResult

procedure TdestFieldResult.pm_SetFieldResult(const aValue: AnsiString);
//#UC START# *51D27CF603D7_51D2785D029Cset_var*
//#UC END# *51D27CF603D7_51D2785D029Cset_var*
begin
//#UC START# *51D27CF603D7_51D2785D029Cset_impl*
 if LastParagraph = nil then
  AddTextPara(False);
 LastParagraph.Text.AsString:= aValue;
//#UC END# *51D27CF603D7_51D2785D029Cset_impl*
end;//TdestFieldResult.pm_SetFieldResult

procedure TdestFieldResult.Clear;
//#UC START# *51D27A48038E_51D2785D029C_var*
//#UC END# *51D27A48038E_51D2785D029C_var*
begin
//#UC START# *51D27A48038E_51D2785D029C_impl*
 inherited;
//#UC END# *51D27A48038E_51D2785D029C_impl*
end;//TdestFieldResult.Clear
// start class TddField

procedure TddField.Instruction2Result;
//#UC START# *51D2847B00C2_51D2789903D1_var*
var
 S: AnsiString;
//#UC END# *51D2847B00C2_51D2789903D1_var*
begin
//#UC START# *51D2847B00C2_51D2789903D1_impl*
 case FieldType of
  dd_fieldUnknown: ;
  dd_fieldHyperlink: ;
  dd_fieldSymbol:
   begin
    // Оформление символа пока игнорируем
    S := Copy(Instruction.AsString, Pos('SYMBOL', Instruction.AsString) + Length('SYMBOL') + 1, Instruction.Len);
    S := Copy(S, 1, Pos(' ', S) - 1);
    f_FieldResult.AsString:= Chr(StrToIntDef(S, 32));
   end;
  dd_fieldForm:
    if (FormType = 2) and (InRange(FormResult, 0, f_FormItems.Hi) or
                          (InRange(FormDefResult, 0, f_FormItems.Hi))) then
    begin
     if InRange(FormResult, 0, f_FormItems.Hi) then
      f_FieldResult.Assign(f_FormItems.Items[FormResult])
     else
      f_FieldResult.Assign(f_FormItems.Items[FormDefResult]);
    end; // InRange
 end;
//#UC END# *51D2847B00C2_51D2789903D1_impl*
end;//TddField.Instruction2Result

procedure TddField.AddListItem(const aItem: AnsiString);
//#UC START# *51D284C20191_51D2789903D1_var*
//#UC END# *51D284C20191_51D2789903D1_var*
begin
//#UC START# *51D284C20191_51D2789903D1_impl*
 f_FormItems.Add(aItem);
//#UC END# *51D284C20191_51D2789903D1_impl*
end;//TddField.AddListItem

procedure TddField.AddListItem(aItem: Tl3String);
//#UC START# *51D284E302CF_51D2789903D1_var*
//#UC END# *51D284E302CF_51D2789903D1_var*
begin
//#UC START# *51D284E302CF_51D2789903D1_impl*
 f_FormItems.Add(aItem.AsString);
//#UC END# *51D284E302CF_51D2789903D1_impl*
end;//TddField.AddListItem

function TddField.Get_FieldType: TddFieldType;
//#UC START# *51D284490121_51D2789903D1get_var*
//#UC END# *51D284490121_51D2789903D1get_var*
begin
//#UC START# *51D284490121_51D2789903D1get_impl*
 if AnsiContainsText(Instruction.AsString, 'HYPERLINK') or AnsiContainsText('REF', Instruction.AsString) then
  Result := dd_fieldHyperlink
 else
 if AnsiContainsText(Instruction.AsString, 'SYMBOL') then
  Result := dd_fieldSymbol
 else
 if AnsiContainsText(Instruction.AsString, 'FORMDROPDOWN') then
  Result := dd_fieldForm
 else
  Result := dd_fieldUnknown;
//#UC END# *51D284490121_51D2789903D1get_impl*
end;//TddField.Get_FieldType

procedure TddField.Write2Generator(const Generator: Ik2TagGenerator;
  aNeedProcessRow: Boolean;
  LiteVersion: Boolean);
//#UC START# *518A504F00F5_51D2789903D1_var*
//#UC END# *518A504F00F5_51D2789903D1_var*
begin
//#UC START# *518A504F00F5_51D2789903D1_impl*
//#UC END# *518A504F00F5_51D2789903D1_impl*
end;//TddField.Write2Generator

procedure TddField.Cleanup;
//#UC START# *479731C50290_51D2789903D1_var*
//#UC END# *479731C50290_51D2789903D1_var*
begin
//#UC START# *479731C50290_51D2789903D1_impl*
 FreeAndNil(f_FormItems);
 FreeAndNil(f_Instruction);
 FreeAndNil(f_FieldResult);
 inherited
//#UC END# *479731C50290_51D2789903D1_impl*
end;//TddField.Cleanup

constructor TddField.Create(anOwner: TObject;
  aDetination: TddCustomDestination);
//#UC START# *51E91BA80051_51D2789903D1_var*
//#UC END# *51E91BA80051_51D2789903D1_var*
begin
//#UC START# *51E91BA80051_51D2789903D1_impl*
 inherited Create(anOwner, aDetination);
 AtomType := dd_docField;
 f_Instruction := Tl3String.Create;
 f_FieldResult := Tl3String.Create;
 f_FormItems := Tl3StringList.Create();
 f_FormResult := -1;
 f_FormDefResult := -1;
 f_FormType := 0;
//#UC END# *51E91BA80051_51D2789903D1_impl*
end;//TddField.Create
// start class TdestFormField

procedure TdestFormField.AddItem(const aItem: AnsiString);
//#UC START# *51D27F3F005B_51D27E5801D3_var*
//#UC END# *51D27F3F005B_51D27E5801D3_var*
begin
//#UC START# *51D27F3F005B_51D27E5801D3_impl*
 f_Items.Add(aItem);
//#UC END# *51D27F3F005B_51D27E5801D3_impl*
end;//TdestFormField.AddItem

function TdestFormField.GetFormResult: AnsiString;
//#UC START# *51D27F740338_51D27E5801D3_var*
//#UC END# *51D27F740338_51D27E5801D3_var*
begin
//#UC START# *51D27F740338_51D27E5801D3_impl*
 Result := '';
 if (FormType = 2) and (InRange(FormResult, 0, f_Items.Hi) or
                       (InRange(DefaultResult, 0, f_Items.Hi))) then
 begin
  if InRange(FormResult, 0, f_Items.Hi) then
   Result := f_Items.Items[FormResult].AsString
  else
   Result := f_Items.Items[DefaultResult].AsString;
 end; // InRange
//#UC END# *51D27F740338_51D27E5801D3_impl*
end;//TdestFormField.GetFormResult

procedure TdestFormField.Cleanup;
//#UC START# *479731C50290_51D27E5801D3_var*
//#UC END# *479731C50290_51D27E5801D3_var*
begin
//#UC START# *479731C50290_51D27E5801D3_impl*
 inherited;
 FreeAndNil(f_Items);
//#UC END# *479731C50290_51D27E5801D3_impl*
end;//TdestFormField.Cleanup

procedure TdestFormField.Clear;
//#UC START# *51D27A48038E_51D27E5801D3_var*
//#UC END# *51D27A48038E_51D27E5801D3_var*
begin
//#UC START# *51D27A48038E_51D27E5801D3_impl*
 FormType:= -1;
 FormSize:= -1;
 DefaultResult:= -1;
 TextType:= -1;
 f_Items.Clear;
//#UC END# *51D27A48038E_51D27E5801D3_impl*
end;//TdestFormField.Clear

procedure TdestFormField.ApplyProperty(propType: TPropType;
  What: TIProp;
  Value: LongInt;
  aState: TddRTFState);
//#UC START# *51D27EC50388_51D27E5801D3_var*
//#UC END# *51D27EC50388_51D27E5801D3_var*
begin
//#UC START# *51D27EC50388_51D27E5801D3_impl*
 case What of
  ipropfftype: FormType:= Value;
  //ipropffsize: FormSize:= Value;
  ipropffdefres: DefaultResult:= Value;
  //ipropfftypetxt: TextType:= Value;
  ipropffres: FormResult:= Value;
 end;
//#UC END# *51D27EC50388_51D27E5801D3_impl*
end;//TdestFormField.ApplyProperty

constructor TdestFormField.Create(aRTFReader: TddCustomRTFReader);
//#UC START# *51E7C9DB0213_51D27E5801D3_var*
//#UC END# *51E7C9DB0213_51D27E5801D3_var*
begin
//#UC START# *51E7C9DB0213_51D27E5801D3_impl*
 inherited Create(aRTFReader);
 f_Items := Tl3StringList.Create();
//#UC END# *51E7C9DB0213_51D27E5801D3_impl*
end;//TdestFormField.Create

end.