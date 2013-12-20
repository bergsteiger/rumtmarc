unit InpharmInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Medic"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Medic/InpharmInterfaces.pas"
// Начат: 29.09.2009 21:19
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<ControllerInterfaces::Category>> F1 Core::Common::Medic::InpharmInterfaces
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
  DocumentAndListInterfaces,
  vcmInterfaces {a},
  vcmControllers {a}
  ;

type
 IdsMedicFirmDocument = interface(IdsBaseDocument)
  {* Описание фирмы производителя }
   ['{85B069FE-7A20-4DBA-A63C-0A961206834D}']
   procedure OpenDrugList;
     {* открыть список выпускаемых препаратов }
 end;//IdsMedicFirmDocument

 IdsDrugDocument = interface(IdsBaseDocument{, IucbDocumentWithContents, IucbDocumentFromList})
  {* Препарат }
   ['{FFF0DB41-3AEC-4E8B-A967-D3E173DBFFB9}']
   procedure OpenDrugInternationalNameSynonims;
     {* открыть список похожих по международному названию }
  // Методы преобразования к реализуемым интерфейсам
   function As_IucbDocumentWithContents: IucbDocumentWithContents;
   function As_IucbDocumentFromList: IucbDocumentFromList;
 end;//IdsDrugDocument
{$IfEnd} //not Admin AND not Monitorings

implementation

end.