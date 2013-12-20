unit evDocument_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evDocument_Wrap.pas"
// Начат: 16.04.1998 10:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::Everest::Standard::WevDocument
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
  Document_Const,
  k2Interfaces,
  k2Base
  ;

type
 WevDocument = class(WevPara)
 protected
 // overridden protected methods
   function New(aType: Tk2Type): Ik2Tag; override;
     {* создает атом данного типа. }
   function GetAtomData(const AE: Ik2Tag;
    aProp: Tk2CustomProperty;
    out Data: Integer): Boolean; override;
 end;//WevDocument

implementation

uses
  k2Tags,
  evdTypes,
  Para_Const,
  evBaseDocument
  ;

// start class WevDocument

function WevDocument.New(aType: Tk2Type): Ik2Tag;
//#UC START# *484CEAAF03C5_4857B5D901D7_var*
type
  RevParaList = class of TevBaseDocument;
//#UC END# *484CEAAF03C5_4857B5D901D7_var*
begin
//#UC START# *484CEAAF03C5_4857B5D901D7_impl*
 Result := nil;
 // - очищаем предыдущий интерфейс, т.к. оказалось, что Delphi это не делает.
 Pointer(Result) := Pointer(Ik2Tag(RevParaList(aType.MakeClass).Create(aType)));
 //Result := inherited New(aType);
 {.$IfNDef XE}
 Result.cAtomEx([k2_tiSubs,
                 k2_tiChildren, k2_tiHandle, ev_sbtSub,
                 k2_tiChildren, k2_tiHandle, 0], nil).Attr[k2_tiObject] := nil;
 {.$EndIf XE}
//#UC END# *484CEAAF03C5_4857B5D901D7_impl*
end;//WevDocument.New

function WevDocument.GetAtomData(const AE: Ik2Tag;
  aProp: Tk2CustomProperty;
  out Data: Integer): Boolean;
//#UC START# *4857A995029E_4857B5D901D7_var*
//#UC END# *4857A995029E_4857B5D901D7_var*
begin
//#UC START# *4857A995029E_4857B5D901D7_impl*
 if (aProp.TagIndex = k2_tiFixedWidth) then
 begin
  with AE.Owner do
   if InheritsFrom(k2_idPara) then
   // - вложенные документы не должны задавать свою ширину при форматировании
   begin
    Result := true;
    Data := Ord(false);
    Exit;
   end;//InheritsFrom(k2_idPara)
 end;//aProp.TagIndex = k2_tiFixedWidth
 Result := inherited GetAtomData(AE, aProp, Data);
//#UC END# *4857A995029E_4857B5D901D7_impl*
end;//WevDocument.GetAtomData

end.