unit NOT_FINISHED_nsMainMenuNew;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/MainMenu/Forms/NOT_FINISHED_nsMainMenuNew.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Core::Base Operations::View::MainMenu::nsMainMenuNew
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
  nsLogEvent
  ;

type
 TnsOpenDocumentFromHistory = class(TnsLogEvent)
 private
 // private methods
   class procedure Log(const aDoc: IDocument); virtual;
 end;//TnsOpenDocumentFromHistory

 TnsLastOpenDocsManager = class
 end;//TnsLastOpenDocsManager

 TnsTreeStyleManager = class
 end;//TnsTreeStyleManager

 TQHRec = record
  Case  of
   
 end;//TQHRec
procedure NsScrollMainMenu;
   {* Сигнатура метода nsScrollMainMenu }
procedure NsMakeMainMenuCaption;
   {* Сигнатура метода nsMakeMainMenuCaption }
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  LoggingUnit
  ;

// unit methods

procedure NsScrollMainMenu;
//#UC START# *4AC9A40B038E_4AC9A3F801F3_var*
//#UC END# *4AC9A40B038E_4AC9A3F801F3_var*
begin
//#UC START# *4AC9A40B038E_4AC9A3F801F3_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC9A40B038E_4AC9A3F801F3_impl*
end;//NsScrollMainMenu
// start class TnsOpenDocumentFromHistory

class procedure TnsOpenDocumentFromHistory.Log(const aDoc: IDocument);
//#UC START# *4B0BE97A0326_4B0BE93B0070_var*
//#UC END# *4B0BE97A0326_4B0BE93B0070_var*
begin
//#UC START# *4B0BE97A0326_4B0BE93B0070_impl*
 !!! Needs to be implemented !!!
//#UC END# *4B0BE97A0326_4B0BE93B0070_impl*
end;//TnsOpenDocumentFromHistory.Log
// unit methods

procedure NsMakeMainMenuCaption;
//#UC START# *4AC9F24E031B_4AC9A3F801F3_var*
//#UC END# *4AC9F24E031B_4AC9A3F801F3_var*
begin
//#UC START# *4AC9F24E031B_4AC9A3F801F3_impl*
 !!! Needs to be implemented !!!
//#UC END# *4AC9F24E031B_4AC9A3F801F3_impl*
end;//NsMakeMainMenuCaption
{$IfEnd} //not Admin AND not Monitorings

end.