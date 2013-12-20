unit OfficeLike_ResultEx_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "UserInteraction"
// Модуль: "w:/common/components/gui/Garant/VCM/UserInteraction/OfficeLike_ResultEx_Controls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> Shared Delphi Operations::OfficeLike::UserInteraction::ResultEx
//
// Результат диалога
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  OfficeLike_Result_Controls,
  vcmExternalInterfaces {a}
  ;

(* Result = operations(Result)
  {* Результат диалога }
   ['{A38EF0B5-FAEA-45DB-8B71-2442C825A429}']
   operation OkExt; has states;
     {* OK }
      Search = state
       { Искать }
       { Провести поиск по выбранным параметрам }
      end;//Search
      Save = state
       { Сохранить }
       { Сохранить }
      end;//Save
      AttributesSelect = state
      end;//AttributesSelect
      Consult = state
       { Отправить запрос }
      end;//Consult
      Chat = state
       { Отправить (Ctrl+Enter) }
      end;//Chat
   operation OkExt; has states;
     {* OK }
 end;//Result*)

const
 en_Result = OfficeLike_Result_Controls.en_Result;
 en_capResult = OfficeLike_Result_Controls.en_capResult;
 op_OkExt = 'OkExt';
 op_capOkExt = 'OK';

// Состояния операций:
var st_user_Result_OkExt_Search : TvcmOperationStateIndex = (rID : -1);
  // Результат диалога -> OK <-> Искать
var st_user_Result_OkExt_Save : TvcmOperationStateIndex = (rID : -1);
  // Результат диалога -> OK <-> Сохранить
var st_user_Result_OkExt_AttributesSelect : TvcmOperationStateIndex = (rID : -1);
  // Результат диалога -> OK <-> AttributesSelect
var st_user_Result_OkExt_Consult : TvcmOperationStateIndex = (rID : -1);
  // Результат диалога -> OK <-> Отправить запрос
var st_user_Result_OkExt_Chat : TvcmOperationStateIndex = (rID : -1);
  // Результат диалога -> OK <-> Отправить (Ctrl+Enter)

implementation

end.