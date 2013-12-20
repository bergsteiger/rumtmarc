unit NOT_FINISHED_dt_Types;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/NOT_FINISHED_dt_Types.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi::dd::dt_Types
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

interface

type
 TDictID = System.LongWord;

 TDocID = System.LongInt;

 TSubID = System.LongInt;

 TDocType = (
  {* Внутренние типы документов }
   dtNone
 , dtText
 , dtRelText
 , dtShortCut
 , dtObject
 , dtDictEntry
 , dtAnnotation
 , dtFlash
 );//TDocType

 TFamilyID = System.Word;

 TDiapasonRec = record
 end;//TDiapasonRec

 TddPipeInputFileType = (
   dd_itAutoDetect
 , dd_itGarant
 , dd_itEverest
 , dd_itEverestInternal
 , dd_itRTFAnnotation
 , dd_itTXTAnnotation
 , dd_itFASCaseCode
 , dd_itKT
 , dd_itUnknown
 );//TddPipeInputFileType

 TepSupportFileType = (
   outEVD
 , outEVDtext
 , outTXT
 , outNSRC
 , outRTF
 , outHTML
 , outXML
 );//TepSupportFileType

implementation

end.