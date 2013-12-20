unit NOT_FINISHED_RTFtypes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/NOT_FINISHED_RTFtypes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::dd::ddCommon::RTFtypes
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

interface

type
 TddBorderOwner = (
   boNone
 , boChar
 , boPara
 , boRow
 , boCell
 );//TddBorderOwner

const
  { TddMainConst }
 rtfTwip = 1440;

type
 TddBorderRules = (
   
 );//TddBorderRules

 TPropType = (
   propNone
 , propChp
 , propPap
 , propSep
 , propDop
 , propStyle
 , propRow
 , propCell
 , propFrame
 , propFont
 , propTAB
 , propPict
 , propFormField
 , propLevel
 , propList
 , propColorTable
 );//TPropType

 TIProp = System.Integer;

 TRDS = (
   
 );//TRDS

 TddBreakType = (
   breakPage
 , breakColumn
 , breakSection
 );//TddBreakType

 TJust = (
   justL
 , justR
 , justC
 , justF
 , justP
 , justNotDefined
 );//TJust

implementation

end.