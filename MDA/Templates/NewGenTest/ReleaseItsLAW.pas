unit ReleaseItsLAW;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Модуль: "w:/MDProcess/NewGenTest/ReleaseItsLAW.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TestResults::Class>> MDProcess$NewGen::ReleaseNewGen::ReleaseItsLAW
//
// (релизный вариант)
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

{$If defined(NewGen)}
uses
  Classes
  {$If defined(nsTest)}
  ,
  KTestRunner
  {$IfEnd} //nsTest
  
  ;
{$IfEnd} //NewGen

{$If defined(NewGen)}
type
 TReleaseItsLAW = class(TTestResultsPlace)
  {*  (релизный вариант) }
 protected
 // realized methods
   {$If defined(nsTest)}
   class function CommandLineKey: AnsiString; override;
     {* Ключ командной строки при указании которого будет выбрано данное место расположения результатов }
   {$IfEnd} //nsTest
   {$If defined(nsTest)}
   class function TimesPage: Integer; override;
     {* Страница для вывода замеров времени }
   {$IfEnd} //nsTest
   {$If defined(nsTest)}
   class function ResultsPage: Integer; override;
     {* Страница для вывода результатов тестов }
   {$IfEnd} //nsTest
 end;//TReleaseItsLAW
{$IfEnd} //NewGen

implementation

{$If defined(NewGen)}

// start class TReleaseItsLAW

{$If defined(nsTest)}
class function TReleaseItsLAW.CommandLineKey: AnsiString;
 {-}
begin
 Result := '-ItsLAW';
end;//TReleaseItsLAW.CommandLineKey
{$IfEnd} //nsTest

{$If defined(nsTest)}
class function TReleaseItsLAW.TimesPage: Integer;
//#UC START# *4B7C0B43005B_46C66075B1E8_var*
//#UC END# *4B7C0B43005B_46C66075B1E8_var*
begin
//#UC START# *4B7C0B43005B_46C66075B1E8_impl*
 !!! Needs to be implemented !!!
//#UC END# *4B7C0B43005B_46C66075B1E8_impl*
end;//TReleaseItsLAW.TimesPage
{$IfEnd} //nsTest

{$If defined(nsTest)}
class function TReleaseItsLAW.ResultsPage: Integer;
//#UC START# *4B7C0B670215_46C66075B1E8_var*
//#UC END# *4B7C0B670215_46C66075B1E8_var*
begin
//#UC START# *4B7C0B670215_46C66075B1E8_impl*
 !!! Needs to be implemented !!!
//#UC END# *4B7C0B670215_46C66075B1E8_impl*
end;//TReleaseItsLAW.ResultsPage
{$IfEnd} //nsTest

{$IfEnd} //NewGen

end.