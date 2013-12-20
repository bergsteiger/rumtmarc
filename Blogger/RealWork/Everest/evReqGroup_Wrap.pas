unit evReqGroup_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evReqGroup_Wrap.pas"
// Начат: 22.02.2011 21:17
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::Everest::Standard::WevReqGroup
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evPara_Wrap,
  ReqGroup_Const,
  k2Interfaces,
  k2Base
  ;

type
 WevReqGroup = class(WevPara)
 protected
 // overridden protected methods
   function PreGetAtomData(const AE: Ik2Tag;
    aProp: Tk2CustomProperty;
    out Data: Integer): Boolean; override;
 end;//WevReqGroup

implementation

uses
  Graphics,
  k2Tags
  ;

// start class WevReqGroup

function WevReqGroup.PreGetAtomData(const AE: Ik2Tag;
  aProp: Tk2CustomProperty;
  out Data: Integer): Boolean;
//#UC START# *48DD0CE60313_4D63FD5001D5_var*
//#UC END# *48DD0CE60313_4D63FD5001D5_var*
begin
//#UC START# *48DD0CE60313_4D63FD5001D5_impl*
 {$IfDef evReqGroupNeedsRadio}
 if (aProp.TagIndex = k2_tiBackColor) AND not AE.BoolA[k2_tiChecked] then
 begin
  Data := $F7F6F5{clSilver};
  Result := true;
  Exit;
 end;//aProp.TagIndex = k2_tiBackColor
 {$EndIf evReqGroupNeedsRadio}
 Result := inherited PreGetAtomData(AE, aProp, Data);
//#UC END# *48DD0CE60313_4D63FD5001D5_impl*
end;//WevReqGroup.PreGetAtomData

end.