unit ddAppConfigVersions;

{ Преобразование версий настроек }

interface
Uses
 l3Base,
 ddConfigStorages, l3RecList;

type
 Tdd_acVersionUpgradeProc = procedure (aStorage: IddConfigStorage);

 Pdd_acVersionHandler = ^Tdd_acVersionHandler;
 Tdd_acVersionHandler = record
  FromVersion: Integer;
  ToVersion: Integer;
  Proc: Tdd_acVersionUpgradeProc;
 end;

 TddAppConfigVersionManager = class(Tl3Base)
 private
  f_Handlers: Tl3RecList;
  function FindHandler(aFromVersion: Integer; out aHandler: Tdd_acVersionHandler): Boolean;
 protected
  procedure Cleanup; override;
 public
  constructor Create(aOwner: TObject); override;
  procedure AddHandler(aFromVersion, aToVersion: Integer; aProc: Tdd_acVersionUpgradeProc);
  procedure Upgrade(aFromVersion, aToVersion: Integer; aStorage: IddConfigStorage);
 end;

implementation

uses SysUtils;

constructor TddAppConfigVersionManager.Create(aOwner: TObject);
begin
 inherited;
 f_Handlers:= Tl3RecList.Create(SizeOf(Tdd_acVersionHandler));
end;

procedure TddAppConfigVersionManager.AddHandler(aFromVersion, aToVersion: Integer; aProc: Tdd_acVersionUpgradeProc);
var
 l_H: Tdd_acVersionHandler;
begin
 if not FindHandler(aFromVersion, l_H) then
 begin
  l_H.FromVersion:= aFromVersion;
  l_H.ToVersion:= aToVersion;
  l_H.Proc:= aProc;
  f_Handlers.Add(l_H);
 end
 else
  raise Exception.CreateFmt('Дублирование обработчика для версии %d', [aFromVersion]);
end;

procedure TddAppConfigVersionManager.Cleanup;
begin
 l3Free(f_Handlers);
 inherited;
end;

function TddAppConfigVersionManager.FindHandler(aFromVersion: Integer; out aHandler: Tdd_acVersionHandler): Boolean;
var
 i: Integer;
 l_H: Tdd_acVersionHandler;
begin
 Result := False;
 for i:= 0 to f_Handlers.Hi do
 begin
  l_H:= Pdd_acVersionHandler(f_Handlers.ItemSlot(i))^;
  if l_H.FromVersion = aFromVersion then
  begin
   aHandler:= l_H;
   Result:= True;
   break;
  end;
 end;
end;

procedure TddAppConfigVersionManager.Upgrade(aFromVersion, aToVersion: Integer; aStorage: IddConfigStorage);
var
 l_Handler: Tdd_acVersionHandler;
 l_CurVersion: Integer;
begin
 l_CurVersion:= aFromVersion;
 while l_CurVersion < aToVersion do
 begin
  if FindHandler(l_CurVersion, l_Handler) then
  begin
   l_Handler.Proc(aStorage);
   l_CurVersion:= l_Handler.ToVersion;
  end
  else
   break; // Выругаться?
 end;
end;

end.
