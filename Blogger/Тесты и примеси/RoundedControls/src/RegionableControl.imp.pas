{$IfNDef RegionableControl_imp}

{$Define RegionableControl_imp}
 _RegionableControl_ = {mixin} class(_RegionableControl_Parent_)
  {* Контрол с поддержкой регионов }
 private
 // private fields
   f_Reg : Tl3Region;
 private
 // private methods
   procedure UpdateRegion;
   procedure ClearRegion;
   procedure CMVisibleChanged(var Message: TMessage); message CM_VISIBLECHANGED;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure CreateWnd; override;
   procedure DestroyWnd; override;
   procedure Resize; override;
   procedure VisibleChanging; override;
 protected
 // protected methods
   procedure TuneRegion(aRegion: Tl3Region); virtual;
 end;//_RegionableControl_

{$Else RegionableControl_imp}

// start class _RegionableControl_

procedure _RegionableControl_.UpdateRegion;
begin
 ClearRegion;
 if (f_Reg = nil) then
  f_Reg := Tl3Region.Create
 else
  f_Reg.FreeRgn;
 if (Width > 0) AND (Height > 0) AND Visible then
 begin
  if HandleAllocated then
  begin
   TuneRegion(f_Reg);
   if not f_Reg.Empty then
    SetWindowRgn(Handle, f_Reg.Rgn, true);
  end;//HandleAllocated
 end;//Visible
end;//_RegionableControl_.UpdateRegion

procedure _RegionableControl_.ClearRegion;
begin
 if HandleAllocated then
  SetWindowRgn(Handle, 0, false);
end;//_RegionableControl_.ClearRegion

procedure _RegionableControl_.TuneRegion(aRegion: Tl3Region);
begin
 // - ничего не делаем, полагаемся на потомков
end;//_RegionableControl_.TuneRegion

procedure _RegionableControl_.CMVisibleChanged(var Message: TMessage);
begin
 inherited;
 UpdateRegion;
end;//_RegionableControl_.CMVisibleChanged

procedure _RegionableControl_.Cleanup;
begin
 ClearRegion;
 FreeAndNil(f_Reg);
 inherited;
end;//_RegionableControl_.Cleanup

procedure _RegionableControl_.CreateWnd;
begin
 inherited;
 UpdateRegion;
end;//_RegionableControl_.CreateWnd

procedure _RegionableControl_.DestroyWnd;
begin
 ClearRegion;
 inherited;
end;//_RegionableControl_.DestroyWnd

procedure _RegionableControl_.Resize;
begin
 inherited;
 UpdateRegion;
end;//_RegionableControl_.Resize

procedure _RegionableControl_.VisibleChanging;
begin
 inherited;
 //UpdateRegion;
end;//_RegionableControl_.VisibleChanging

{$EndIf RegionableControl_imp}
