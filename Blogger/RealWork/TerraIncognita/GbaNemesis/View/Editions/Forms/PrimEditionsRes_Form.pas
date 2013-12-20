unit PrimEditionsRes_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/PrimEditionsRes_Form.pas"
// Начат: 15.01.2010 17:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMDataModule::Class>> F1 Пользовательские сервисы::CompareEditions::View::Editions::PrimEditionsRes
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
  vtPngImgList
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  Classes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimEditionsResForm = {form} class(TDataModule)
 private
 // private fields
   f_EditionsStateIcons : TvtPngImageList;
    {* Поле для свойства EditionsStateIcons}
 protected
 // property methods
   function pm_GetEditionsStateIcons: TvtPngImageList;
 public
 // public properties
   property EditionsStateIcons: TvtPngImageList
     read pm_GetEditionsStateIcons;
 public
 // singleton factory method
   class function Instance: TPrimEditionsResForm;
    {- возвращает экземпляр синглетона. }
 end;//TPrimEditionsResForm

 TvcmDataModuleRef = TPrimEditionsResForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}


// start class TPrimEditionsResForm

var g_TPrimEditionsResForm : TPrimEditionsResForm = nil;

procedure TPrimEditionsResFormFree;
begin
 l3Free(g_TPrimEditionsResForm);
end;

class function TPrimEditionsResForm.Instance: TPrimEditionsResForm;
begin
 if (g_TPrimEditionsResForm = nil) then
 begin
  l3System.AddExitProc(TPrimEditionsResFormFree);
  g_TPrimEditionsResForm := Create(nil);
 end;
 Result := g_TPrimEditionsResForm;
end;


type
  Tkw_PrimEditionsRes_Component_EditionsStateIcons = class(TtfwControlString)
   {* Слово словаря для идентификатора компонента EditionsStateIcons
----
*Пример использования*:
[code]
компонент::EditionsStateIcons TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimEditionsRes_Component_EditionsStateIcons

// start class Tkw_PrimEditionsRes_Component_EditionsStateIcons

{$If not defined(NoScripts)}
function Tkw_PrimEditionsRes_Component_EditionsStateIcons.GetString: AnsiString;
 {-}
begin
 Result := 'EditionsStateIcons';
end;//Tkw_PrimEditionsRes_Component_EditionsStateIcons.GetString
{$IfEnd} //not NoScripts

function TPrimEditionsResForm.pm_GetEditionsStateIcons: TvtPngImageList;
begin
 if (f_EditionsStateIcons = nil) then
  f_EditionsStateIcons := FindComponent('EditionsStateIcons') As TvtPngImageList;
 Result := f_EditionsStateIcons;
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimEditionsRes_Component_EditionsStateIcons
 Tkw_PrimEditionsRes_Component_EditionsStateIcons.Register('компонент::EditionsStateIcons', TvtPngImageList);
{$IfEnd} //not Admin AND not Monitorings

end.