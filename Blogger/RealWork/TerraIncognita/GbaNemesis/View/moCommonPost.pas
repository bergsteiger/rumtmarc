unit moCommonPost;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/moCommonPost.pas"
// Начат: 15.09.2009 19:19
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMUseCaseRealization::Class>> F1 Утилита Прайм::NewsLineTuning::CommonPost
//
// Файл
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
  CommonPost_Module,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmModule {a},
  Classes {a},
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmOperations {a},
  vcmModuleDef {a}
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
type
Tmo_CommonPost = {final formspack} class(TCommonPostModule)
 {* Файл }
end;//Tmo_CommonPost
{$IfEnd} //Monitorings AND not Admin

implementation

end.