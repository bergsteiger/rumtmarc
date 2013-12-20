unit PrimConsultationMark_utcmMain_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Consultation/Forms/PrimConsultationMark_utcmMain_UserType.pas"
// Начат: 27.01.2009 13:06
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Пользовательские сервисы::Consultation::View::Consultation::PrimConsultationMark::utcmMain
//
// Оценка ответа
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
   { Константы для типа формы utcmMain }
  utcmMainName = 'utcmMain';
   { Строковый идентификатор пользовательского типа "Оценка ответа" }
  utcmMain = TvcmUserType(0);
   { Оценка ответа }

type
  Tkw_FormUserType_utcmMain = class(TtfwInteger)
   {* Слово словаря для типа формы utcmMain }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_utcmMain
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_utcmMain

{$If not defined(NoScripts)}
function Tkw_FormUserType_utcmMain.GetInteger: Integer;
 {-}
begin
 Result := utcmMain;
end;//Tkw_FormUserType_utcmMain.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_utcmMain
 Tkw_FormUserType_utcmMain.Register('тип_формы::utcmMain');
{$IfEnd} //not Admin AND not Monitorings

end.