unit ListAnalize_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/List/Forms/ListAnalize_Form.pas"
// Начат: 01.08.2011 16:01
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::WorkWithList::View::List::List$FP::ListAnalize
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
  Common_FormDefinitions_Controls,
  PrimListAnalize_Form
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
  TListAnalizeForm = {final form} class(TvcmEntityFormRef, ListAnalizeFormDef)
   {* Анализ списка }
  Entities : TvcmEntities;
  end;//TListAnalizeForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}

type
   Tkw_Form_ListAnalize = class(TtfwControlString)
    {* Слово словаря для идентификатора формы ListAnalize
----
*Пример использования*:
[code]
'aControl' форма::ListAnalize TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_ListAnalize

// start class Tkw_Form_ListAnalize

{$If not defined(NoScripts)}
function Tkw_Form_ListAnalize.GetString: AnsiString;
 {-}
begin
 Result := 'ListAnalizeForm';
end;//Tkw_Form_ListAnalize.GetString
{$IfEnd} //not NoScripts

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация фабрики формы ListAnalize
 fm_ListAnalizeForm.SetFactory(TListAnalizeForm.Make);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_ListAnalize
 Tkw_Form_ListAnalize.Register('форма::ListAnalize', TListAnalizeForm);
{$IfEnd} //not Admin AND not Monitorings

end.