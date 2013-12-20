unit DocumentUserTypes_dftAACContentsLeft_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAACContentsLeft_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAACContentsLeft
//
// Левая часть оглавления Энциклопедии решений
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
  DocumentUserTypes_dftAACRight_UserType
  ;

const
   { Константы для типа формы dftAACContentsLeft }
  dftAACContentsLeftName = 'dftAACContentsLeft';
   { Строковый идентификатор пользовательского типа "Левая часть оглавления Энциклопедии решений" }
  dftAACContentsLeft = TvcmUserType(dftAACRight + 1);
   { Левая часть оглавления Энциклопедии решений }

type
  Tkw_FormUserType_dftAACContentsLeft = class(TtfwInteger)
   {* Слово словаря для типа формы dftAACContentsLeft }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAACContentsLeft
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAACContentsLeft

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAACContentsLeft.GetInteger: Integer;
 {-}
begin
 Result := dftAACContentsLeft;
end;//Tkw_FormUserType_dftAACContentsLeft.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftAACContentsLeft
 Tkw_FormUserType_dftAACContentsLeft.Register('тип_формы::dftAACContentsLeft');
{$IfEnd} //not Admin AND not Monitorings

end.