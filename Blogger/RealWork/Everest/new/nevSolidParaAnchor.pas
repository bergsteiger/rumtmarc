unit nevSolidParaAnchor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevSolidParaAnchor.pas"
// Начат: 24.10.2005 10:03
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Anchors::TnevSolidParaAnchor
//
// Якорь листьевого параграфа не имеющего деления на строки
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\new\nevDefine.inc}

interface

uses
  nevLeafParaAnchor,
  nevTools,
  nevBase
  ;

type
 _nevSolidParaAnchorModify_Parent_ = TnevLeafParaAnchor;
 {$Include w:\common\components\gui\Garant\Everest\nevSolidParaAnchorModify.imp.pas}
 TnevSolidParaAnchor = class(_nevSolidParaAnchorModify_)
  {* Якорь листьевого параграфа не имеющего деления на строки }
 private
 // private fields
   f_Y : Integer;
 protected
 // realized methods
   function GetAtStart: Boolean; override;
   function GetAtEnd(const aView: InevView): Boolean; override;
   function GetVertPosition(const aView: InevView;
    aMap: TnevFormatInfoPrim): TnevParaIndex; override;
   function GetY: Integer; override;
   procedure SetY(aValue: Integer); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function GetPaintOffsetY(const aView: InevView;
    aMap: TnevFormatInfoPrim): Integer; override;
   function DoDiff(const aView: InevView;
    const aPoint: InevBasePoint;
    aMap: TnevFormatInfoPrim): Integer; override;
   procedure DoAssignPoint(const aView: InevView;
    const aPoint: InevBasePoint); override;
 end;//TnevSolidParaAnchor

implementation

uses
  nevFacade,
  l3MinMax
  ;

{$Include w:\common\components\gui\Garant\Everest\nevSolidParaAnchorModify.imp.pas}

// start class TnevSolidParaAnchor

function TnevSolidParaAnchor.GetAtStart: Boolean;
//#UC START# *4A3B707700C9_4A3BAB21005A_var*
//#UC END# *4A3B707700C9_4A3BAB21005A_var*
begin
//#UC START# *4A3B707700C9_4A3BAB21005A_impl*
 Result := (f_Y <= 0);
//#UC END# *4A3B707700C9_4A3BAB21005A_impl*
end;//TnevSolidParaAnchor.GetAtStart

function TnevSolidParaAnchor.GetAtEnd(const aView: InevView): Boolean;
//#UC START# *4A3B708900C4_4A3BAB21005A_var*
var
 l_Map : TnevFormatInfoPrim;
//#UC END# *4A3B708900C4_4A3BAB21005A_var*
begin
//#UC START# *4A3B708900C4_4A3BAB21005A_impl*
 l_Map := ObjMap(aView);
 if l_Map <> nil then
  Result := (f_Y >= l_Map.Height - nev.LineScrollDelta.Y)
 else
  Result := False; 
//#UC END# *4A3B708900C4_4A3BAB21005A_impl*
end;//TnevSolidParaAnchor.GetAtEnd

function TnevSolidParaAnchor.GetVertPosition(const aView: InevView;
  aMap: TnevFormatInfoPrim): TnevParaIndex;
//#UC START# *4A3B7F2E01CE_4A3BAB21005A_var*
//#UC END# *4A3B7F2E01CE_4A3BAB21005A_var*
begin
//#UC START# *4A3B7F2E01CE_4A3BAB21005A_impl*
 Result := f_Y div nev.LineScrollDelta.Y;
//#UC END# *4A3B7F2E01CE_4A3BAB21005A_impl*
end;//TnevSolidParaAnchor.GetVertPosition

function TnevSolidParaAnchor.GetY: Integer;
//#UC START# *4B1D0E1A0256_4A3BAB21005A_var*
//#UC END# *4B1D0E1A0256_4A3BAB21005A_var*
begin
//#UC START# *4B1D0E1A0256_4A3BAB21005A_impl*
 Result := f_Y;
//#UC END# *4B1D0E1A0256_4A3BAB21005A_impl*
end;//TnevSolidParaAnchor.GetY

procedure TnevSolidParaAnchor.SetY(aValue: Integer);
//#UC START# *4B1D0E3A00F7_4A3BAB21005A_var*
//#UC END# *4B1D0E3A00F7_4A3BAB21005A_var*
begin
//#UC START# *4B1D0E3A00F7_4A3BAB21005A_impl*
 f_Y := aValue;
//#UC END# *4B1D0E3A00F7_4A3BAB21005A_impl*
end;//TnevSolidParaAnchor.SetY

procedure TnevSolidParaAnchor.Cleanup;
//#UC START# *479731C50290_4A3BAB21005A_var*
//#UC END# *479731C50290_4A3BAB21005A_var*
begin
//#UC START# *479731C50290_4A3BAB21005A_impl*
 f_Y := 0;
 inherited;
//#UC END# *479731C50290_4A3BAB21005A_impl*
end;//TnevSolidParaAnchor.Cleanup

function TnevSolidParaAnchor.GetPaintOffsetY(const aView: InevView;
  aMap: TnevFormatInfoPrim): Integer;
//#UC START# *4A3BA80002E5_4A3BAB21005A_var*
//#UC END# *4A3BA80002E5_4A3BAB21005A_var*
begin
//#UC START# *4A3BA80002E5_4A3BAB21005A_impl*
 Result := f_Y;
//#UC END# *4A3BA80002E5_4A3BAB21005A_impl*
end;//TnevSolidParaAnchor.GetPaintOffsetY

function TnevSolidParaAnchor.DoDiff(const aView: InevView;
  const aPoint: InevBasePoint;
  aMap: TnevFormatInfoPrim): Integer;
//#UC START# *4AA785540310_4A3BAB21005A_var*
//#UC END# *4AA785540310_4A3BAB21005A_var*
begin
//#UC START# *4AA785540310_4A3BAB21005A_impl*
 Result := inherited DoDiff(aView, aPoint, aMap);
 if (Result <> 0) and aPoint.AtEnd(aView) and GetAtEnd(aView) then // http://mdp.garant.ru/pages/viewpage.action?pageId=382406560
  Result := 0;
//#UC END# *4AA785540310_4A3BAB21005A_impl*
end;//TnevSolidParaAnchor.DoDiff

procedure TnevSolidParaAnchor.DoAssignPoint(const aView: InevView;
  const aPoint: InevBasePoint);
//#UC START# *4B1D0220010E_4A3BAB21005A_var*
//#UC END# *4B1D0220010E_4A3BAB21005A_var*
begin
//#UC START# *4B1D0220010E_4A3BAB21005A_impl*
 inherited;
 if (aPoint <> nil) then
 begin
  f_Y := aPoint.AsLeaf.PaintOffsetY(aView, ObjMap(aView));
  SignalScroll;
 end;//aPoint <> nil
//#UC END# *4B1D0220010E_4A3BAB21005A_impl*
end;//TnevSolidParaAnchor.DoAssignPoint

end.