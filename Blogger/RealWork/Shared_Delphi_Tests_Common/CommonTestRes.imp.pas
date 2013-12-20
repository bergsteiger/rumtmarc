{$IfNDef CommonTestRes_imp}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Shared Delphi Tests Common"
// Модуль: "w:/common/components/rtl/Garant/Shared_Delphi_Tests_Common/CommonTestRes.imp.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Impurity::Class>> Shared Delphi Tests Common::Shared Delphi Tests Common::Tets Res Common::CommonTestRes
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{$Define CommonTestRes_imp}
 _CommonTestRes_ = {mixin} class(_CommonTestRes_Parent_)
 end;//_CommonTestRes_

{$Else CommonTestRes_imp}

var
   g_TestsForm : TGUITestRunner;
var
   g_Debugger : TtfwScriptDebugger_Form;
var
   g_IsBatchMode : Boolean = false;
var
   g_IsBatchModeValid : Boolean = false;


{$EndIf CommonTestRes_imp}
