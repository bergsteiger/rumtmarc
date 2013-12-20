unit ListAnalizeUserTypes_Analize_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/ListAnalizeUserTypes_Analize_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::ListAnalizeUserTypes::Analize
//
// Анализ списка
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
   { Константы для типа формы Analize }
  AnalizeName = 'Analize';
   { Строковый идентификатор пользовательского типа "Анализ списка" }
  Analize = TvcmUserType(0);
   { Анализ списка }

type
  Tkw_FormUserType_Analize = class(TtfwInteger)
   {* Слово словаря для типа формы Analize }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_Analize
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_Analize

{$If not defined(NoScripts)}
function Tkw_FormUserType_Analize.GetInteger: Integer;
 {-}
begin
 Result := Analize;
end;//Tkw_FormUserType_Analize.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_Analize
 Tkw_FormUserType_Analize.Register('тип_формы::Analize');
{$IfEnd} //not Admin AND not Monitorings

end.