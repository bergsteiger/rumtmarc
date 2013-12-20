unit DocumentUserTypes_dftAnnotationSynchroView_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAnnotationSynchroView_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAnnotationSynchroView
//
// Аннотация (синхронный просмотр)
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
  ,
  DocumentUserTypes_dftTranslation_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftAnnotationSynchroView }
  dftAnnotationSynchroViewName = 'dftAnnotationSynchroView';
   { Строковый идентификатор пользовательского типа "Аннотация (синхронный просмотр)" }
  dftAnnotationSynchroView = TvcmUserType(dftTranslation + 1);
   { Аннотация (синхронный просмотр) }

type
  Tkw_FormUserType_dftAnnotationSynchroView = class(TtfwInteger)
   {* Слово словаря для типа формы dftAnnotationSynchroView }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAnnotationSynchroView
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAnnotationSynchroView

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAnnotationSynchroView.GetInteger: Integer;
 {-}
begin
 Result := dftAnnotationSynchroView;
end;//Tkw_FormUserType_dftAnnotationSynchroView.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftAnnotationSynchroView
 Tkw_FormUserType_dftAnnotationSynchroView.Register('тип_формы::dftAnnotationSynchroView');
{$IfEnd} //not Admin AND not Monitorings

end.