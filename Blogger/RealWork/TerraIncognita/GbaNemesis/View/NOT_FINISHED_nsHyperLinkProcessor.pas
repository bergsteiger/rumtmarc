unit NOT_FINISHED_nsHyperLinkProcessor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/NOT_FINISHED_nsHyperLinkProcessor.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Core::Base Operations::View::Navigation::nsHyperLinkProcessor
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  DocumentUnit,
  nsLogEvent,
  bsHyperLinkProcessorPrim
  ;

type
 TbsHyperLinkProcessor = class(TbsHyperLinkProcessorPrim)
 end;//TbsHyperLinkProcessor

 TnsOpenDocumentFromLinkEvent = class(TnsLogEvent)
 private
 // private methods
   class procedure Log(const aDoc: IDocument); virtual;
 end;//TnsOpenDocumentFromLinkEvent

procedure NsCheckHyperLinkInfo;
procedure NsProcessHyperLink;
   {* Сигнатура метода nsProcessHyperLink }
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

// start class TnsOpenDocumentFromLinkEvent

class procedure TnsOpenDocumentFromLinkEvent.Log(const aDoc: IDocument);
//#UC START# *4B0A78550087_4B0A781302C3_var*
var
 l_Data: ILogEventData;
//#UC END# *4B0A78550087_4B0A781302C3_var*
begin
//#UC START# *4B0A78550087_4B0A781302C3_impl*
 l_Data := MakeParamsList;
 l_Data.AddObject(aDoc);
 GetLogger.AddEvent(LE_OPEN_DOCUMENT_FROM_LINK, l_Data);
//#UC END# *4B0A78550087_4B0A781302C3_impl*
end;//TnsOpenDocumentFromLinkEvent.Log

procedure NsProcessHyperLink;
//#UC START# *4C7F905401FD_4A8199550084_var*
//#UC END# *4C7F905401FD_4A8199550084_var*
begin
//#UC START# *4C7F905401FD_4A8199550084_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C7F905401FD_4A8199550084_impl*
end;//NsProcessHyperLink

procedure NsCheckHyperLinkInfo;
//#UC START# *4A8920BD01C5_4A8199550084_var*
//#UC END# *4A8920BD01C5_4A8199550084_var*
begin
//#UC START# *4A8920BD01C5_4A8199550084_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A8920BD01C5_4A8199550084_impl*
end;//NsCheckHyperLinkInfo
{$IfEnd} //not Admin AND not Monitorings

end.