unit DocumentUserTypes_dftAACContentsRight_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/DocumentUserTypes_dftAACContentsRight_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Core::Base Operations::View::Base Forms::DocumentUserTypes::dftAACContentsRight
//
// Правая часть оглавления Энциклопедии решений
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
  DocumentUserTypes_dftAACContentsLeft_UserType
  ;

const
   { Константы для типа формы dftAACContentsRight }
  dftAACContentsRightName = 'dftAACContentsRight';
   { Строковый идентификатор пользовательского типа "Правая часть оглавления Энциклопедии решений" }
  dftAACContentsRight = TvcmUserType(dftAACContentsLeft + 1);
   { Правая часть оглавления Энциклопедии решений }

type
  Tkw_FormUserType_dftAACContentsRight = class(TtfwInteger)
   {* Слово словаря для типа формы dftAACContentsRight }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_dftAACContentsRight
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_dftAACContentsRight

{$If not defined(NoScripts)}
function Tkw_FormUserType_dftAACContentsRight.GetInteger: Integer;
 {-}
begin
 Result := dftAACContentsRight;
end;//Tkw_FormUserType_dftAACContentsRight.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_dftAACContentsRight
 Tkw_FormUserType_dftAACContentsRight.Register('тип_формы::dftAACContentsRight');
{$IfEnd} //not Admin AND not Monitorings

end.