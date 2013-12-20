unit PrimStyleEditorExample_utStyleEditorExample_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Settings/Forms/PrimStyleEditorExample_utStyleEditorExample_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Settings::View::Settings::PrimStyleEditorExample::utStyleEditorExample
//
// Текстовое окно редактора стилей
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
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
   { Константы для типа формы utStyleEditorExample }
  utStyleEditorExampleName = 'utStyleEditorExample';
   { Строковый идентификатор пользовательского типа "Текстовое окно редактора стилей" }
  utStyleEditorExample = TvcmUserType(0);
   { Текстовое окно редактора стилей }

type
  Tkw_FormUserType_utStyleEditorExample = class(TtfwInteger)
   {* Слово словаря для типа формы utStyleEditorExample }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utStyleEditorExample
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utStyleEditorExample

{$If not defined(NoScripts)}
function Tkw_FormUserType_utStyleEditorExample.GetInteger: Integer;
 {-}
begin
 Result := utStyleEditorExample;
end;//Tkw_FormUserType_utStyleEditorExample.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utStyleEditorExample
 Tkw_FormUserType_utStyleEditorExample.Register('тип_формы::utStyleEditorExample');
{$IfEnd} //not Admin AND not Monitorings

end.