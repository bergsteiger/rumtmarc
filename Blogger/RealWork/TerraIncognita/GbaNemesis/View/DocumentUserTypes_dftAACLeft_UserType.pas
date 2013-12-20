unit DocumentUserTypes_dftAACLeft_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAACLeft_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAACLeft
//
// Левая часть Энциклопедии решений
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
  DocumentUserTypes_dftDrugSynchroView_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы dftAACLeft }
  dftAACLeftName = 'dftAACLeft';
   { Строковый идентификатор пользовательского типа "Левая часть Энциклопедии решений" }
  dftAACLeft = TvcmUserType(dftDrugSynchroView + 1);
   { Левая часть Энциклопедии решений }

type
  Tkw_FormUserType_dftAACLeft = class(TtfwInteger)
   {* Слово словаря для типа формы dftAACLeft }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAACLeft
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAACLeft

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAACLeft.GetInteger: Integer;
 {-}
begin
 Result := dftAACLeft;
end;//Tkw_FormUserType_dftAACLeft.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftAACLeft
 Tkw_FormUserType_dftAACLeft.Register('тип_формы::dftAACLeft');
{$IfEnd} //not Admin AND not Monitorings

end.