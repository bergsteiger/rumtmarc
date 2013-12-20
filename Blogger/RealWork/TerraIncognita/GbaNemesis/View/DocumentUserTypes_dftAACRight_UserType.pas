unit DocumentUserTypes_dftAACRight_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAACRight_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAACRight
//
// Правая часть Энциклопедии решений
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
  ,
  DocumentUserTypes_dftAACLeft_UserType
  ;

const
   { Константы для типа формы dftAACRight }
  dftAACRightName = 'dftAACRight';
   { Строковый идентификатор пользовательского типа "Правая часть Энциклопедии решений" }
  dftAACRight = TvcmUserType(dftAACLeft + 1);
   { Правая часть Энциклопедии решений }

type
  Tkw_FormUserType_dftAACRight = class(TtfwInteger)
   {* Слово словаря для типа формы dftAACRight }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAACRight
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAACRight

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAACRight.GetInteger: Integer;
 {-}
begin
 Result := dftAACRight;
end;//Tkw_FormUserType_dftAACRight.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftAACRight
 Tkw_FormUserType_dftAACRight.Register('тип_формы::dftAACRight');
{$IfEnd} //not Admin AND not Monitorings

end.