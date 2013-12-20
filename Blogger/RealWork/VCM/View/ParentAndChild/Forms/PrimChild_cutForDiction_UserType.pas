unit PrimChild_cutForDiction_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/common/components/gui/Garant/VCM/View/ParentAndChild/Forms/PrimChild_cutForDiction_UserType.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> Shared Delphi F1 Like Application::F1Like::View::ParentAndChild::PrimChild::cutForDiction
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\f1LikeAppDefine.inc}

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  PrimChild_cutUsual_UserType
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы cutForDiction }
  cutForDictionName = 'cutForDiction';
   { Строковый идентификатор пользовательского типа "" }
  cutForDiction = TvcmUserType(cutUsual + 1);

type
  Tkw_FormUserType_cutForDiction = class(TtfwInteger)
   {* Слово словаря для типа формы cutForDiction }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_cutForDiction

implementation

// start class Tkw_FormUserType_cutForDiction

{$If not defined(NoScripts)}
function Tkw_FormUserType_cutForDiction.GetInteger: Integer;
 {-}
begin
 Result := cutForDiction;
end;//Tkw_FormUserType_cutForDiction.GetInteger
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_FormUserType_cutForDiction
 Tkw_FormUserType_cutForDiction.Register('тип_формы::cutForDiction');

end.