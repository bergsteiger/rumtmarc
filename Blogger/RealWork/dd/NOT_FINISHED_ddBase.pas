unit NOT_FINISHED_ddBase;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/NOT_FINISHED_ddBase.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::dd::ddCommon::ddBase
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

interface

uses
  l3Base
  ;

type
 TddPropertyObject = class(Tl3Base)
 public
 // public methods
   procedure Clear; virtual;
 end;//TddPropertyObject

 TddBorder = class(TddPropertyObject)
 end;//TddBorder

 TddBorderParts = (
   bpTop
 , bpLeft
 , bpBottom
 , bpRight
 , bpHorizontal
 , bpVertical
 , bpBox
 );//TddBorderParts

 TddCellProperty = class(TddPropertyObject)
 end;//TddCellProperty

 TddDocAtomType = (
   dd_docTextParagraph
 , dd_docPicture
 , dd_docTableCell
 , dd_docTableRow
 , dd_docTable
 , dd_docBreak
 , dd_docParaList
 , dd_docField
 );//TddDocAtomType

 TddDocumentProperty = class(TddPropertyObject)
 end;//TddDocumentProperty

 TddSectionProperty = class(TddDocumentProperty)
 end;//TddSectionProperty

const
  { Common }
 propUndefined = High(Intege);

type
 TddTab = class
 end;//TddTab
procedure K2JustToJust;
   {* Сигнатура метода k2JustToJust }

implementation

// start class TddPropertyObject

procedure TddPropertyObject.Clear;
//#UC START# *518A13330058_4F6843FC0241_var*
//#UC END# *518A13330058_4F6843FC0241_var*
begin
//#UC START# *518A13330058_4F6843FC0241_impl*
 !!! Needs to be implemented !!!
//#UC END# *518A13330058_4F6843FC0241_impl*
end;//TddPropertyObject.Clear
// unit methods

procedure K2JustToJust;
//#UC START# *5111FEEE0291_4F6843D50173_var*
//#UC END# *5111FEEE0291_4F6843D50173_var*
begin
//#UC START# *5111FEEE0291_4F6843D50173_impl*
 !!! Needs to be implemented !!!
//#UC END# *5111FEEE0291_4F6843D50173_impl*
end;//K2JustToJust
end.