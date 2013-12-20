unit EditionsRes_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/EditionsRes_Form.pas"
// Начат: 15.01.2010 17:58
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMDataModule::Class>> F1 Пользовательские сервисы::CompareEditions::View::Editions::EditionsRes
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
  PrimEditionsRes_Form,
  vtPngImgList
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TEditionsResForm = {final form} class(TvcmDataModuleRef)
  EditionsStateIcons: TvtPngImageList;
 end;//TEditionsResForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

end.