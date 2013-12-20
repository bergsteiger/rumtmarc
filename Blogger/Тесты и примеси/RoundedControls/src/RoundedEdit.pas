unit RoundedEdit;

interface

uses
  StdCtrls,
  Messages,
  l3Region,
  Controls {a}
  ;

type
 _RefCounted_Parent_ = TEdit;
 {$Include RefCounted.imp.pas}
 _RoundedControl_Parent_ = _RefCounted_;
 {$Include RoundedControl.imp.pas}
 TRoundedEdit = class(_RoundedControl_)
 end;//TRoundedEdit

implementation

uses
  Windows,
  SysUtils,
  Themes
  ;

{$Include RefCounted.imp.pas}

{$Include RoundedControl.imp.pas}

end.