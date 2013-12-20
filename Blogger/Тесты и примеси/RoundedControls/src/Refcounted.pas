unit Refcounted;

interface

type
 _RefCounted_Parent_ = TObject;
 {$Include RefCounted.imp.pas}
 TRefcounted = class(_RefCounted_)
 end;//TRefcounted

implementation

uses
  Windows
  ;

{$Include RefCounted.imp.pas}

end.