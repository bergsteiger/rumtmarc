unit DocumentWithFlash_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/DocumentWithFlash_Form.pas"
// Начат: 05.02.2009 19:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::DocumentWithFlash
//
// Документ-схема
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
  Common_FormDefinitions_Controls,
  PrimDocumentWithFlashOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  TDocumentWithFlashForm = {final form} class(TvcmEntityFormRef, DocumentWithFlashFormDef)
   {* Документ-схема }
  Entities : TvcmEntities;
  end;//TDocumentWithFlashForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_DocumentWithFlash = class(TtfwControlString)
    {* Слово словаря для идентификатора формы DocumentWithFlash
----
*Пример использования*:
[code]
'aControl' форма::DocumentWithFlash TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_DocumentWithFlash

// start class Tkw_Form_DocumentWithFlash

{$If not defined(NoScripts)}
function Tkw_Form_DocumentWithFlash.GetString: AnsiString;
 {-}
begin
 Result := 'DocumentWithFlashForm';
end;//Tkw_Form_DocumentWithFlash.GetString
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы DocumentWithFlash
 fm_DocumentWithFlashForm.SetFactory(TDocumentWithFlashForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_DocumentWithFlash
 Tkw_Form_DocumentWithFlash.Register('форма::DocumentWithFlash', TDocumentWithFlashForm);
{$IfEnd} //not Admin AND not Monitorings

end.