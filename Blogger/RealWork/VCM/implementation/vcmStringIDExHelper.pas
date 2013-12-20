unit vcmStringIDExHelper;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM"
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/vcmStringIDExHelper.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VCM::Implementation::TvcmStringIDExHelper
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
  l3StringIDEx,
  l3Interfaces
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}
type
 TvcmStringIDExHelper = class(Tl3StringIDExHelper)
 protected
 // overridden protected methods
   class function AsCStr(const aStr: Tl3StringIDEx): Il3CString; override;
   class function AsStr(const aStr: Tl3StringIDEx): AnsiString; override;
   class procedure Init(var theStr: Tl3StringIDEx); override;
 end;//TvcmStringIDExHelper
{$IfEnd} //not NoVCM

implementation

{$If not defined(NoVCM)}
uses
  vcmBase,
  l3Base
  ;
{$IfEnd} //not NoVCM

{$If not defined(NoVCM)}

// start class TvcmStringIDExHelper

class function TvcmStringIDExHelper.AsCStr(const aStr: Tl3StringIDEx): Il3CString;
//#UC START# *4B98D78501E1_4B98D9FD038B_var*
//#UC END# *4B98D78501E1_4B98D9FD038B_var*
begin
//#UC START# *4B98D78501E1_4B98D9FD038B_impl*
 {$IfDef IsVCMProject}
 if (aStr.rS = -1) OR aStr.rLocalized then
  Result := l3CStr(aStr.rValue)
 else
  Result := vcmCStr(aStr);
 {$Else  IsVCMProject}
 Result := l3CStr(aStr.rValue);
 {$EndIf IsVCMProject}
//#UC END# *4B98D78501E1_4B98D9FD038B_impl*
end;//TvcmStringIDExHelper.AsCStr

class function TvcmStringIDExHelper.AsStr(const aStr: Tl3StringIDEx): AnsiString;
//#UC START# *4B98D7A50160_4B98D9FD038B_var*
//#UC END# *4B98D7A50160_4B98D9FD038B_var*
begin
//#UC START# *4B98D7A50160_4B98D9FD038B_impl*
 {$If Defined(DesignTimeLibrary) OR not Defined(IsVCMProject)}
 Result := aStr.rValue;
 {$Else}
 if (aStr.rS = -1) OR aStr.rLocalized then
  Result := aStr.rValue
 else
  Result := vcmConstString(aStr);
 {$IfEnd} 
//#UC END# *4B98D7A50160_4B98D9FD038B_impl*
end;//TvcmStringIDExHelper.AsStr

class procedure TvcmStringIDExHelper.Init(var theStr: Tl3StringIDEx);
//#UC START# *4B98D7BA00C6_4B98D9FD038B_var*
//#UC END# *4B98D7BA00C6_4B98D9FD038B_var*
begin
//#UC START# *4B98D7BA00C6_4B98D9FD038B_impl*
 {$If Defined(IsVCMProject) OR Defined(DesignTimeLibrary)}
 inherited;
 if (theStr.rValue <> '') then
  vcmInitConstString(theStr);
 {$Else}
 theStr.rS := -1;
 {$IfEnd}
//#UC END# *4B98D7BA00C6_4B98D9FD038B_impl*
end;//TvcmStringIDExHelper.Init

{$IfEnd} //not NoVCM

initialization
{$If not defined(NoVCM)}
//#UC START# *4B98DA3600B9*
 g_StringIDHelper := TvcmStringIDExHelper;
//#UC END# *4B98DA3600B9*
{$IfEnd} //not NoVCM

end.