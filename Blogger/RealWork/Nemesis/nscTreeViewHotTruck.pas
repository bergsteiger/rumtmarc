unit nscTreeViewHotTruck;

{ $Id: nscTreeViewHotTruck.pas,v 1.6 2011/11/30 12:30:09 lulin Exp $ }

// $Log: nscTreeViewHotTruck.pas,v $
// Revision 1.6  2011/11/30 12:30:09  lulin
// {RequestLink:232098711}.
// - выравниваем галочки.
//
// Revision 1.5  2010/01/28 08:37:03  oman
// - new: обрабатываем пустые списки {RequestLink:182452345}
//
// Revision 1.4  2010/01/28 07:02:20  oman
// - new: развлекаемся с деревами {RequestLink:182452345}
//
// Revision 1.3  2010/01/27 14:03:24  oman
// - new: развлекаемся с деревами {RequestLink:182452345}
//
// Revision 1.2  2010/01/27 13:40:16  oman
// - new: развлекаемся с деревами {RequestLink:182452345}
//
// Revision 1.1  2010/01/27 13:14:56  oman
// - new: развлекаемся с деревами {RequestLink:182452345}
//
//

{$I nscDefine.inc }

interface

uses
  l3Interfaces,
  nscTreeView,
  Messages,
  Controls,
  Graphics,
  vtLister,
  Classes
  ;

type
  TOnAllowHotTruck = procedure (Sender: TObject; anIndex: Integer; var Allow: Boolean) of Object;

  TnscTreeViewHotTruck = class(TnscTreeView)
  private
   f_AllowTrucking: Boolean;
   f_HotTruckIndex: Integer;
   f_OnAllowHotTruck: TOnAllowHotTruck;
  private
   procedure SetHotTruckIndex(aValue: Integer);
   procedure Set_AllowTrucking(aValue: Boolean);
   procedure UpdateTruckFromCursor;
  private
   procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  protected
   procedure DoOnGetItemStyle(aItemIndex         : Integer;
                              const aFont        : Il3Font;
                              var aTextBackColor : TColor;
                              var aItemBackColor : TColor;
                              var aVJustify      : TvtVJustify;
                              var aFocused       : Boolean;
                              var theImageVertOffset : Integer);
     override;
     {-}
   procedure SetCursorForItem(anIndex: Integer);
     override;
     {-}
  public
   constructor Create(AOwner: TComponent);
     override;
     {-}
  public
   property HotTruckIndex: Integer
     read f_HotTruckIndex;
   property AllowTrucking: Boolean
     read f_AllowTrucking
     write Set_AllowTrucking;
   property OnAllowHotTruck: TOnAllowHotTruck
     read f_OnAllowHotTruck
     write f_OnAllowHotTruck;
  end;//TnscTreeViewHotTruck

implementation

uses
 Windows
 ;

{ TnscTreeViewHotTruck }

procedure TnscTreeViewHotTruck.CMMouseLeave(var Message: TMessage);
begin
 inherited;
 SetHotTruckIndex(-1);
end;

procedure TnscTreeViewHotTruck.Set_AllowTrucking(aValue: Boolean);
begin
 if (f_AllowTrucking <> aValue) then
 begin
  f_AllowTrucking := aValue;
  if AllowTrucking then
   UpdateTruckFromCursor;
  Invalidate;
 end;
end;

procedure TnscTreeViewHotTruck.SetHotTruckIndex(aValue: Integer);
var
 l_Old: Integer;
 l_Allow: Boolean;
begin
 if (f_HotTruckIndex <> aValue) then
 begin
  l_Old := f_HotTruckIndex;
  if Assigned(f_OnAllowHotTruck) then
  begin
   l_Allow := True;
   f_OnAllowHotTruck(Self, aValue, l_Allow);
   if not l_Allow then
   begin
    aValue := -1;
    if aValue = f_HotTruckIndex then
     Exit;
   end;
  end;
  f_HotTruckIndex := aValue;
  if AllowTrucking then
  begin
   if l_Old <> -1 then
    InvalidateItem(l_Old);
   if HotTruckIndex <> -1 then
    InvalidateItem(HotTruckIndex);
  end;
 end;
end;

procedure TnscTreeViewHotTruck.UpdateTruckFromCursor;
var
 l_Pos: TPoint;
begin
 if AllowTrucking and HandleAllocated then
 begin
  GetCursorPos(l_Pos);
  SetHotTruckIndex(ItemAtPos(l_Pos, True));
 end;
end;

procedure TnscTreeViewHotTruck.DoOnGetItemStyle(aItemIndex: Integer;
  const aFont: Il3Font; var aTextBackColor, aItemBackColor: TColor;
  var aVJustify: TvtVJustify; var aFocused: Boolean;
  var theImageVertOffset : Integer);
begin
 inherited;
 if (HotTruckIndex = aItemIndex) and AllowTrucking then
  aFont.Underline := True;
end;

constructor TnscTreeViewHotTruck.Create(AOwner: TComponent);
begin
 inherited Create(aOwner);
 f_HotTruckIndex := -1;
end;

procedure TnscTreeViewHotTruck.SetCursorForItem(anIndex: Integer);
begin
 inherited;
 SetHotTruckIndex(anIndex);
end;

end.

