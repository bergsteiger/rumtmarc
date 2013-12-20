unit csServerStatusRequest;

interface

uses
 Classes, CsDataPipe, csRequestTask, DT_types;

type
  TddServerStatusRequest = class(TddRequestTask)
  private
    f_LineLength: Integer;
    f_ServerStatus: string;
    f_UsersCount: Integer;
  protected
    procedure LoadFrom(aStream: TStream; aIsPipe: Boolean); override;
  public
    constructor Create(aOwner: TObject; aUserID: TUserID); override;
    procedure SaveTo(aStream: TStream; aIsPipe: Boolean); override;
    procedure SaveToPipe(aPipe: TCsDataPipe); override;
    property LineLength: Integer read f_LineLength;
    property ServerStatus: string read f_ServerStatus;
    property UsersCount: Integer read f_UsersCount;
  end;

implementation

uses CsTaskTypes, ddServerTask;

{
**************************** TddServerStatusRequest ****************************
}
constructor TddServerStatusRequest.Create(aOwner: TObject; aUserID: TUserID);
begin
  inherited;
  TaskType := cs_ttServerStatus;
end;

procedure TddServerStatusRequest.LoadFrom(aStream: TStream; aIsPipe: Boolean);
begin
  inherited LoadFrom(aStream, aIsPipe);
end;

procedure TddServerStatusRequest.SaveTo(aStream: TStream; aIsPipe: Boolean);
begin
  inherited SaveTo(aStream, aIsPipe);
end;

procedure TddServerStatusRequest.SaveToPipe(aPipe: TCsDataPipe);
begin
  inherited SaveToPipe(aPipe);
  f_ServerStatus := aPipe.ReadStr;
  f_UsersCount := aPipe.ReadInteger;
  f_LineLength := aPipe.ReadInteger;
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csServerStatusRequest.pas initialization enter'); {$EndIf}
 RegisterTaskClass(cs_ttServerStatus, TddServerStatusRequest, 'запрос статуса сервера');
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\cs\csServerStatusRequest.pas initialization leave'); {$EndIf}
end.
