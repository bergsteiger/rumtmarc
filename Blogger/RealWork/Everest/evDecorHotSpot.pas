unit evDecorHotSpot;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evDecorHotSpot.pas"
// Начат: 13.07.2011 16:57
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::HotSpots::TevDecorHotSpot
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  nevTools,
  nevGUIInterfaces,
  evHotSpotProxy,
  afwInterfaces,
  l3Interfaces
  ;

type
 TevDecorHotSpot = class(TevHotSpotProxy)
 protected
 // overridden protected methods
   function DoTransMouseMove(const aView: InevControlView;
     const aKeys: TevMouseState;
     out theActiveElement: InevActiveElement): Boolean; override;
   procedure ClearFields; override;
 public
 // overridden public methods
   function QueryInterface(const IID: TGUID;
    out Obj): HResult; override;
     {* Приводит базовый интерфейс к запрашиваемуму, если это возможно. }
 protected
 // protected fields
   f_Para : InevPara;
 public
 // public methods
   constructor Create(const aPara: InevPara;
     const aHotSpot: IevHotSpot); reintroduce;
   class function Make(const aPara: InevPara;
     const aHotSpot: IevHotSpot): IevHotSpot; reintroduce;
     {* Сигнатура фабрики TevDecorHotSpot.Make }
 end;//TevDecorHotSpot

implementation

uses
  nevDecorActiveHyperlink,
  l3InterfacesMisc,
  evDecorHyperlink,
  SysUtils,
  nevNavigation
  ;

// start class TevDecorHotSpot

constructor TevDecorHotSpot.Create(const aPara: InevPara;
  const aHotSpot: IevHotSpot);
//#UC START# *4E1D79FC01E9_4E1D961D02D6_var*
//#UC END# *4E1D79FC01E9_4E1D961D02D6_var*
begin
//#UC START# *4E1D79FC01E9_4E1D961D02D6_impl*
 Assert(aPara <> nil);
 inherited Create(aHotSpot);
 f_Para := aPara;
//#UC END# *4E1D79FC01E9_4E1D961D02D6_impl*
end;//TevDecorHotSpot.Create

class function TevDecorHotSpot.Make(const aPara: InevPara;
  const aHotSpot: IevHotSpot): IevHotSpot;
var
 l_Inst : TevDecorHotSpot;
begin
 l_Inst := Create(aPara, aHotSpot);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TevDecorHotSpot.QueryInterface(const IID: TGUID;
  out Obj): HResult;
//#UC START# *47A0AD3A01F7_4E1D961D02D6_var*
//#UC END# *47A0AD3A01F7_4E1D961D02D6_var*
begin
//#UC START# *47A0AD3A01F7_4E1D961D02D6_impl*
 Result := inherited QueryInterface(IID, Obj);
 if l3IOk(Result) AND SysUtils.IsEqualGUID(IID, IevHyperlink) then
  IevHyperlink(Obj) := TevDecorHyperlink.Make(f_Para, IevHyperlink(Obj));
//#UC END# *47A0AD3A01F7_4E1D961D02D6_impl*
end;//TevDecorHotSpot.QueryInterface

function TevDecorHotSpot.DoTransMouseMove(const aView: InevControlView;
  const aKeys: TevMouseState;
  out theActiveElement: InevActiveElement): Boolean;
//#UC START# *4E1D94EF002C_4E1D961D02D6_var*
//#UC END# *4E1D94EF002C_4E1D961D02D6_var*
begin
//#UC START# *4E1D94EF002C_4E1D961D02D6_impl*
 Result := inherited DoTransMouseMove(aView, aKeys, theActiveElement);
 if Result then
 begin
  if (theActiveElement = nil) then
   Result := false
  else
   theActiveElement := TnevDecorActiveHyperlink.Make(f_Para, theActiveElement); 
 end;//Result
//#UC END# *4E1D94EF002C_4E1D961D02D6_impl*
end;//TevDecorHotSpot.DoTransMouseMove

procedure TevDecorHotSpot.ClearFields;
 {-}
begin
 f_Para := nil;
 inherited;
end;//TevDecorHotSpot.ClearFields

end.