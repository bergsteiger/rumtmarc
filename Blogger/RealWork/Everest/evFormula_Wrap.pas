unit evFormula_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evFormula_Wrap.pas"
// Начат: 15.12.2002 17:34
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::Everest::Standard::WevFormula
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  Formula_Const,
  evBitmapPara_Wrap,
  k2Interfaces,
  k2Base
  ;

type
 WevFormula = class(WevBitmapPara)
 protected
 // overridden protected methods
   function GetAtomData(const AE: Ik2Tag;
    aProp: Tk2CustomProperty;
    out Data: Integer): Boolean; override;
   function DoGetAtomData(const AE: Ik2Tag;
    aProp: Tk2CustomProperty;
    out theData: Integer): Boolean; override;
 end;//WevFormula

implementation

uses
  ExprDraw,
  ExprMake,
  k2Tags,
  l3GraphicContainer,
  l3Base,
  l3InternalInterfaces,
  SysUtils
  ;

// start class WevFormula

function WevFormula.GetAtomData(const AE: Ik2Tag;
  aProp: Tk2CustomProperty;
  out Data: Integer): Boolean;
//#UC START# *4857A995029E_485792EE01CB_var*
//#UC END# *4857A995029E_485792EE01CB_var*
begin
//#UC START# *4857A995029E_485792EE01CB_impl*
 Case aProp.TagIndex of
  k2_tiWidth,
  k2_tiHeight :
  begin
   Assert(false);
   Result := false;
   Exit;
   if AE.BoolA[k2_tiCollapsed] then
   begin
(*    if AE.HasSubAtom(k2_tiObject) then
     Result := inherited DoGetAtomData(AE, aProp, Data)
    else
     Result := false;*)
    Result := inherited DoGetAtomData(AE, aProp, Data);
    Exit;
   end;//..k2_tiCollapsed..
  end;//k2_tiWidth
 end;//Case aProp.TagIndex
 Result := inherited GetAtomData(AE, aProp, Data);
//#UC END# *4857A995029E_485792EE01CB_impl*
end;//WevFormula.GetAtomData

function WevFormula.DoGetAtomData(const AE: Ik2Tag;
  aProp: Tk2CustomProperty;
  out theData: Integer): Boolean;
//#UC START# *48DD1AB50143_485792EE01CB_var*
var
 l_Expr : Tl3Expr;
 l_Text : Tl3String;
//#UC END# *48DD1AB50143_485792EE01CB_var*
begin
//#UC START# *48DD1AB50143_485792EE01CB_impl*
 Case aProp.TagIndex of
  k2_tiData:
  begin
   with AE do
   begin
    with Attr[k2_tiText] do
     if IsValid then
      l_Text := AsObject As Tl3String
     else
      l_Text := nil;
    try
     l_Expr := SafeBuildExpr(l_Text.AsString);
    except
     on E: EIncorrectExpr do
      l_Expr := TExprContainer.Create(TExprCustomText.Create(E.Message));
     on E: EAssertionFailed do
      l_Expr := TExprContainer.Create(TExprCustomText.Create(E.Message));
    end;//try..except
    try
     Attr[aProp.TagIndex] := Tk2Type(aProp.AtomType).TagFromIntRef(Integer(l_Expr));
     theData := Integer(l_Expr);
    finally
     l3Free(l_Expr);
    end;//try..finally
    Result := (theData <> 0);
    Exit;
   end;//with AE
  end;//k2_tiData
  k2_tiObject:
  begin
   Assert(false);
   Result := false;
   Exit;
(*   if EvRenderFormula(nil, AE, aProp,
                      evGetFormulaFont(nil, AE, nil, nil), theData) then
   begin
    Result := true;
    Exit;
   end;//EvRenderFormula*)
  end;//k2_tiObject
 end;//Case aProp.TagIndex
 Result := inherited DoGetAtomData(AE, aProp, theData);
//#UC END# *48DD1AB50143_485792EE01CB_impl*
end;//WevFormula.DoGetAtomData

end.