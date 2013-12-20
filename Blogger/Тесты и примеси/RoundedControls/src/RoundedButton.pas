unit RoundedButton;

interface

uses
  StdCtrls,
  Messages,
  l3Region,
  Controls {a}
  ;

type
 _RefCounted_Parent_ = TButton;
 {$Include RefCounted.imp.pas}
 _RoundedControl_Parent_ = _RefCounted_;
 {$Include RoundedControl.imp.pas}
 TRoundedButton = class(_RoundedControl_)
 end;//TRoundedButton

implementation

uses
  Windows,
  SysUtils,
  Themes
  ;

{$Include RefCounted.imp.pas}

{$Include RoundedControl.imp.pas}

end.