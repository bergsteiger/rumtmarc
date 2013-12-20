unit Core.Obj;

interface

type
 TCoreObject = class
   protected
    procedure Cleanup; virtual;
   public
    destructor Destroy; override;
 end;//TCoreObject

 TCoreInterfacedObject = class(TInterfacedObject)
  protected
   procedure Cleanup; virtual;
  public
   destructor Destroy; override;
 end;//TCoreInterfacedObject

implementation

// TCoreObject

destructor TCoreObject.Destroy;
begin
  Cleanup;
  inherited;
end;

procedure TCoreObject.Cleanup;
begin
  // - ��� ������ �� ������, ������� �� �������
end;

// TCoreInterfacedObject

destructor TCoreInterfacedObject.Destroy;
begin
  Cleanup;
  inherited;
end;

procedure TCoreInterfacedObject.Cleanup;
begin
  // - ��� ������ �� ������, ������� �� �������
end;

end.
