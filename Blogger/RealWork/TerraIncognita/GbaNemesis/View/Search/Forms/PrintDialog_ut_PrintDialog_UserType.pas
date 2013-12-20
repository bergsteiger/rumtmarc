unit PrintDialog_ut_PrintDialog_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View$For F1 and Monitorings"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/Forms/PrintDialog_ut_PrintDialog_UserType.pas"
// Начат: 15.09.2009 16:55
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::CommonSearch::PrintDialog::ut_PrintDialog
//
// PrintDialog
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
    { Константы для типа формы ut_PrintDialog }
   ut_PrintDialogName = 'ut_PrintDialog';
    { Строковый идентификатор пользовательского типа "PrintDialog" }
   ut_PrintDialog = TvcmUserType(0);
    { PrintDialog }

type
   Tkw_FormUserType_ut_PrintDialog = class(TtfwInteger)
    {* Слово словаря для типа формы ut_PrintDialog }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_PrintDialog
{$IfEnd} //not Admin

implementation

{$If not defined(Admin)}
// start class Tkw_FormUserType_ut_PrintDialog

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_PrintDialog.GetInteger: Integer;
 {-}
begin
 Result := ut_PrintDialog;
end;//Tkw_FormUserType_ut_PrintDialog.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin

initialization
{$If not defined(Admin)}
// Регистрация Tkw_FormUserType_ut_PrintDialog
 Tkw_FormUserType_ut_PrintDialog.Register('тип_формы::ut_PrintDialog');
{$IfEnd} //not Admin

end.