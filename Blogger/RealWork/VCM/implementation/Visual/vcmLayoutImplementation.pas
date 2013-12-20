unit vcmLayoutImplementation;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM$Visual"
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Visual/vcmLayoutImplementation.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VCM$Visual::Visual::TvcmLayoutImplementation
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\VCM\vcmDefine.inc}

interface

{$If not defined(NoVCM)}
uses
  vcmInterfaces,
  Controls,
  l3ProtoObjectWithCOMQI
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 IvcmLayoutInternal = interface(IUnknown)
   ['{3C78DB5C-C875-4768-AC34-75F697D2514D}']
   procedure ClearLinkToControl;
 end;//IvcmLayoutInternal

 TvcmLayoutImplementation = class(Tl3ProtoObjectWithCOMQI, IvcmLayout, IvcmLayoutInternal)
 private
 // private fields
   f_Control : TWinControl;
    {* Поле для свойства Control}
 protected
 // realized methods
   function Get_VCLWinControl: TWinControl;
   procedure ClearLinkToControl;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
 public
 // public methods
   constructor Create(aControl: TWinControl); reintroduce;
   class function Make(aControl: TWinControl): IvcmLayout; reintroduce;
     {* Сигнатура фабрики TvcmLayoutImplementation.Make }
 protected
 // protected properties
   property Control: TWinControl
     read f_Control;
 end;//TvcmLayoutImplementation
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}

// start class TvcmLayoutImplementation

constructor TvcmLayoutImplementation.Create(aControl: TWinControl);
//#UC START# *4F827263026A_4F82714B0271_var*
//#UC END# *4F827263026A_4F82714B0271_var*
begin
//#UC START# *4F827263026A_4F82714B0271_impl*
 inherited Create;
 f_Control := aControl; 
//#UC END# *4F827263026A_4F82714B0271_impl*
end;//TvcmLayoutImplementation.Create

class function TvcmLayoutImplementation.Make(aControl: TWinControl): IvcmLayout;
var
 l_Inst : TvcmLayoutImplementation;
begin
 l_Inst := Create(aControl);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TvcmLayoutImplementation.Get_VCLWinControl: TWinControl;
//#UC START# *4F8270EB016E_4F82714B0271get_var*
//#UC END# *4F8270EB016E_4F82714B0271get_var*
begin
//#UC START# *4F8270EB016E_4F82714B0271get_impl*
 Result := f_Control;
//#UC END# *4F8270EB016E_4F82714B0271get_impl*
end;//TvcmLayoutImplementation.Get_VCLWinControl

procedure TvcmLayoutImplementation.ClearLinkToControl;
//#UC START# *4F82737803BE_4F82714B0271_var*
//#UC END# *4F82737803BE_4F82714B0271_var*
begin
//#UC START# *4F82737803BE_4F82714B0271_impl*
 f_Control := nil;
//#UC END# *4F82737803BE_4F82714B0271_impl*
end;//TvcmLayoutImplementation.ClearLinkToControl

procedure TvcmLayoutImplementation.Cleanup;
//#UC START# *479731C50290_4F82714B0271_var*
//#UC END# *479731C50290_4F82714B0271_var*
begin
//#UC START# *479731C50290_4F82714B0271_impl*
 f_Control := nil;
 inherited;
//#UC END# *479731C50290_4F82714B0271_impl*
end;//TvcmLayoutImplementation.Cleanup

{$If not defined(DesignTimeLibrary)}
class function TvcmLayoutImplementation.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4F82714B0271_var*
//#UC END# *47A6FEE600FC_4F82714B0271_var*
begin
//#UC START# *47A6FEE600FC_4F82714B0271_impl*
 Result := true;
//#UC END# *47A6FEE600FC_4F82714B0271_impl*
end;//TvcmLayoutImplementation.IsCacheable
{$IfEnd} //not DesignTimeLibrary

{$IfEnd} //not NoVCM

end.