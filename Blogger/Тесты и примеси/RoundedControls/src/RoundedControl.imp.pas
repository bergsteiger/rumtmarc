{$IfNDef RoundedControl_imp}

{$Define RoundedControl_imp}
 _RegionableControl_Parent_ = _RoundedControl_Parent_;
 {$Include RegionableControl.imp.pas}
 _RoundedControl_ = {mixin} class(_RegionableControl_)
 protected
 // overridden protected methods
   procedure TuneRegion(aRegion: Tl3Region); override;
 end;//_RoundedControl_

{$Else RoundedControl_imp}

{$Include RegionableControl.imp.pas}

// start class _RoundedControl_

procedure _RoundedControl_.TuneRegion(aRegion: Tl3Region);
const
 cRad = 15;
var
 l_R : Tl3Region;
begin
 l_R := Tl3Region.Create;
 try
  l_R.Rgn := CreateRoundRectRgn(1, 0, Width + 1, Height, cRad, cRad);
  aRegion.Combine(l_R, RGN_OR);
  //aRegion.CombineRect(l3SRect(Width - cRad, 0, Width, Height), RGN_OR);
 finally
  FreeAndNil(l_R);
 end;//try..fianlly
end;//_RoundedControl_.TuneRegion

{$EndIf RoundedControl_imp}
