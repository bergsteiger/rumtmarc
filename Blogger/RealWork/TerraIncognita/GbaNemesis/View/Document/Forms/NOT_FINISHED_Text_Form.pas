unit NOT_FINISHED_Text_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/NOT_FINISHED_Text_Form.pas"
// Начат: 03.08.2009 20:05
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalContainer::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::Text
//
// Текст документа
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

// ! Этот файл используется только для моделирования, а не для компиляции. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Common_FormDefinitions_Controls,
  ExTextOptions_Form,
  eeSubPanel,
  vtScrollBar
  {$If defined(Nemesis)}
  ,
  nscReminder
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscRemindersLine
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscEditor
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTextSource
  {$IfEnd} //Nemesis
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
  TTextForm = {final form} class(TvcmContainerFormRef, TextFormDef)
   {* Текст документа }
  Entities : TvcmEntities;
  protected
  // overridden protected methods
   procedure DoDocumentShowTechCommentsExecute; override;
  end;//TTextForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  resWarnImages,
  Base_Operations_Editions_Controls,
  Document_Strange_Controls
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TTextForm

procedure TTextForm.DoDocumentShowTechCommentsExecute;
//#UC START# *4C8DCD3B015C_4A7709C70002_var*
//#UC END# *4C8DCD3B015C_4A7709C70002_var*
begin
//#UC START# *4C8DCD3B015C_4A7709C70002_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C8DCD3B015C_4A7709C70002_impl*
end;//TTextForm.DoDocumentShowTechCommentsExecute

{$IfEnd} //not Admin AND not Monitorings

end.