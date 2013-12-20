unit PrimCreateFilter_cfRename_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Filters/Forms/PrimCreateFilter_cfRename_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Основные прецеденты::Filters::View::Filters::PrimCreateFilter::cfRename
//
// Переименовать фильтр
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
  PrimCreateFilter_cfCreate_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы cfRename }
  cfRenameName = 'cfRename';
   { Строковый идентификатор пользовательского типа "Переименовать фильтр" }
  cfRename = TvcmUserType(cfCreate + 1);
   { Переименовать фильтр }

type
  Tkw_FormUserType_cfRename = class(TtfwInteger)
   {* Слово словаря для типа формы cfRename }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cfRename
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_cfRename

{$If not defined(NoScripts)}
function Tkw_FormUserType_cfRename.GetInteger: Integer;
 {-}
begin
 Result := cfRename;
end;//Tkw_FormUserType_cfRename.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_cfRename
 Tkw_FormUserType_cfRename.Register('тип_формы::cfRename');
{$IfEnd} //not Admin AND not Monitorings

end.