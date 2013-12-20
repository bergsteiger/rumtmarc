unit NewsLineTuning_FormDefinitions_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/NewsLineTuning_FormDefinitions_Controls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 Утилита Прайм::NewsLineTuning::View::FormDefinitions
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
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
   { PostingsListIDs }
  fm_enPostingsList : TvcmFormDescriptor = (rFormID : (rName : 'enPostingsList'; rID : 0); rFactory : nil);
   { Идентификатор формы TenPostingsList }

type
 PostingsListFormDef = interface(IUnknown)
   ['{69D1C6BF-ECE3-4BB1-8DA5-998AB45694C7}']
 end;//PostingsListFormDef
{$IfEnd} //Monitorings AND not Admin

implementation

{$If defined(Monitorings) AND not defined(Admin)}

type
 Tkw_Form_PostingsList = class(TtfwString)
  {* Слово словаря для идентификатора формы PostingsList
----
*Пример использования*:
[code]
'aControl' форма::PostingsList TryFocus ASSERT
[code] }
 protected
 // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
 end;//Tkw_Form_PostingsList

// start class Tkw_Form_PostingsList

{$If not defined(NoScripts)}
function Tkw_Form_PostingsList.GetString: AnsiString;
 {-}
begin
 Result := 'enPostingsList';
end;//Tkw_Form_PostingsList.GetString
{$IfEnd} //not NoScripts
{$IfEnd} //Monitorings AND not Admin


initialization
{$If defined(Monitorings) AND not defined(Admin)}
// Регистрация Tkw_Form_PostingsList
 Tkw_Form_PostingsList.Register('форма::PostingsList');
{$IfEnd} //Monitorings AND not Admin

end.