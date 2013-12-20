unit F1Like_FormDefinitions_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/common/components/gui/Garant/VCM/View/F1Like_FormDefinitions_Controls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> Shared Delphi F1 Like Application::F1Like::View::FormDefinitions
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
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a}
  ;

const
   { ChildIDs }
  fm_ChildForm : TvcmFormDescriptor = (rFormID : (rName : 'ChildForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TChildForm }

type
 ChildFormDef = interface(IUnknown)
   ['{CFF21CFB-D277-44C2-940B-C1A99F33511F}']
 end;//ChildFormDef

const
   { ParentIDs }
  fm_ParentForm : TvcmFormDescriptor = (rFormID : (rName : 'ParentForm'; rID : 0); rFactory : nil);
   { Идентификатор формы TParentForm }

type
 ParentFormDef = interface(IUnknown)
   ['{DEC20464-3FB2-4ABC-921C-08A93E75DAD5}']
 end;//ParentFormDef

implementation


type
 Tkw_Form_Child = class(TtfwString)
  {* Слово словаря для идентификатора формы Child
----
*Пример использования*:
[code]
'aControl' форма::Child TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Child

// start class Tkw_Form_Child

{$If not defined(NoScripts)}
function Tkw_Form_Child.GetString: AnsiString;
 {-}
begin
 Result := 'ChildForm';
end;//Tkw_Form_Child.GetString
{$IfEnd} //not NoScripts

type
 Tkw_Form_Parent = class(TtfwString)
  {* Слово словаря для идентификатора формы Parent
----
*Пример использования*:
[code]
'aControl' форма::Parent TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_Parent

// start class Tkw_Form_Parent

{$If not defined(NoScripts)}
function Tkw_Form_Parent.GetString: AnsiString;
 {-}
begin
 Result := 'ParentForm';
end;//Tkw_Form_Parent.GetString
{$IfEnd} //not NoScripts

initialization
// Регистрация Tkw_Form_Child
 Tkw_Form_Child.Register('форма::Child');
// Регистрация Tkw_Form_Parent
 Tkw_Form_Parent.Register('форма::Parent');

end.