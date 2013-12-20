unit nevDocumentProviderEx;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/nevDocumentProviderEx.pas"
// Начат: 13.10.2010 14:12
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Printing::TnevDocumentProviderEx
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevBase,
  afwInterfaces,
  nevTools,
  nevDocumentProvider,
  evdInterfaces,
  l3Interfaces
  ;

type
 TnevDocumentProviderEx = class(TnevDocumentProvider, IafwPageSetup)
 private
 // private fields
   f_Document : InevTag;
 protected
 // realized methods
   function pm_GetMargins: TafwRect;
   function pm_GetOrientation: Tl3PageOrientation;
 protected
 // overridden property methods
   function pm_GetCanProvideOriginalDocument: Boolean; override;
   function pm_GetOriginalDocument: InevTag; override;
   function pm_GetPageSetup: IafwPageSetup; override;
 protected
 // overridden protected methods
   procedure ClearFields; override;
 public
 // public methods
   constructor Create(const aStorable: InevStorable;
     const aDocument: InevTag); reintroduce;
   class function Make(const aStorable: InevStorable;
     const aDocument: InevTag): InevDocumentProvider; reintroduce;
     {* Сигнатура фабрики TnevDocumentProviderEx.Make }
 end;//TnevDocumentProviderEx

implementation

uses
  k2Tags,
  l3Units,
  evPreviewForTestsTuning,
  afwFacade
  ;

// start class TnevDocumentProviderEx

constructor TnevDocumentProviderEx.Create(const aStorable: InevStorable;
  const aDocument: InevTag);
//#UC START# *4CB586450301_4CB586140150_var*
//#UC END# *4CB586450301_4CB586140150_var*
begin
//#UC START# *4CB586450301_4CB586140150_impl*
 inherited Create(aStorable);
 f_Document := aDocument;
//#UC END# *4CB586450301_4CB586140150_impl*
end;//TnevDocumentProviderEx.Create

class function TnevDocumentProviderEx.Make(const aStorable: InevStorable;
  const aDocument: InevTag): InevDocumentProvider;
var
 l_Inst : TnevDocumentProviderEx;
begin
 l_Inst := Create(aStorable, aDocument);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnevDocumentProviderEx.pm_GetMargins: TafwRect;
//#UC START# *473D8F8602AE_4CB586140150get_var*
//#UC END# *473D8F8602AE_4CB586140150get_var*
begin
//#UC START# *473D8F8602AE_4CB586140150get_impl*
 {$IfDef nsTest}
 Assert(not OldBehaviourForK235875079);
 {$EndIf nsTest}
 with f_Document.Attr[k2_tiParas] do
  Result := l3Rect(IntA[k2_tiLeftIndent],
                   IntA[k2_tiSpaceBefore],
                   IntA[k2_tiRightIndent],
                   IntA[k2_tiSpaceAfter]);
//#UC END# *473D8F8602AE_4CB586140150get_impl*
end;//TnevDocumentProviderEx.pm_GetMargins

function TnevDocumentProviderEx.pm_GetOrientation: Tl3PageOrientation;
//#UC START# *473D8F9202F2_4CB586140150get_var*
//#UC END# *473D8F9202F2_4CB586140150get_var*
begin
//#UC START# *473D8F9202F2_4CB586140150get_impl*
 {$IfDef nsTest}
 Assert(not OldBehaviourForK235875079);
 {$EndIf nsTest}
 Result := Tl3PageOrientation(f_Document.Attr[k2_tiParas].IntA[k2_tiOrientation]);
//#UC END# *473D8F9202F2_4CB586140150get_impl*
end;//TnevDocumentProviderEx.pm_GetOrientation

function TnevDocumentProviderEx.pm_GetCanProvideOriginalDocument: Boolean;
//#UC START# *4CB589C80045_4CB586140150get_var*
//#UC END# *4CB589C80045_4CB586140150get_var*
begin
//#UC START# *4CB589C80045_4CB586140150get_impl*
 {$IfDef nsTest}
 if OldBehaviourForK235875079 then
  Result := false
 else
  Result := true;
 {$Else  nsTest}
 Result := true;
 {$EndIf nsTest}
//#UC END# *4CB589C80045_4CB586140150get_impl*
end;//TnevDocumentProviderEx.pm_GetCanProvideOriginalDocument

function TnevDocumentProviderEx.pm_GetOriginalDocument: InevTag;
//#UC START# *4CB589F902EA_4CB586140150get_var*
//#UC END# *4CB589F902EA_4CB586140150get_var*
begin
//#UC START# *4CB589F902EA_4CB586140150get_impl*
 Result := f_Document;
//#UC END# *4CB589F902EA_4CB586140150get_impl*
end;//TnevDocumentProviderEx.pm_GetOriginalDocument

function TnevDocumentProviderEx.pm_GetPageSetup: IafwPageSetup;
//#UC START# *4D18832500B4_4CB586140150get_var*
//#UC END# *4D18832500B4_4CB586140150get_var*
begin
//#UC START# *4D18832500B4_4CB586140150get_impl*
 {$IfDef nsTest}
 if OldBehaviourForK235875079 then
  Result := nil
 else
 {$EndIf nsTest}
 begin
  if (afw.Application <> nil) AND
     (afw.Application.PrintManager <> nil) then
   Result := afw.Application.PrintManager.PageSetup
  else
   Result := Self;
 end;//OldBehaviourForK235875079
//#UC END# *4D18832500B4_4CB586140150get_impl*
end;//TnevDocumentProviderEx.pm_GetPageSetup

procedure TnevDocumentProviderEx.ClearFields;
 {-}
begin
 f_Document := nil;
 inherited;
end;//TnevDocumentProviderEx.ClearFields

end.