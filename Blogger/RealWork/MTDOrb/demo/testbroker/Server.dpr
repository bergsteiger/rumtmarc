program Server;
{$APPTYPE CONSOLE}
uses
{$IFDEF MSWINDOWS}
  Windows,
{$ENDIF}
{$IFDEF LINUX}
  Libc,
{$ENDIF}
  Classes,
  poa,
  poa_int,
  poa_impl,
  SysUtils,
  orb_int,
  orb,
  code_int,
  env_int,
  intercept_int,
  intercept,
  orbtypes,
  mtdebug,
  ccs,
  ccs_int,
  test_int in 'test_int.pas',
  test in 'test.pas',
  TestImpl in 'TestImpl.pas';

type
  TTestCon = class(TConnInterceptor)
  protected
    function client_connect(const addr: AnsiString): TStatus; override;
    function client_disconnect(const addr: AnsiString): TStatus; override;
  end;

  TTestServ = class(TServerInterceptor)
  protected
    function input_message(const buf: IBuffer; const env: IEnvironment): TStatus; override;
    function initialize_request(const req: ILWServerRequest; const env: IEnvironment): TStatus; override;
    function after_unmarshal(const req: ILWServerRequest; const env: IEnvironment): TStatus; override;
    function before_marshal(const req: ILWServerRequest; const env: IEnvironment): TStatus; override;
    function finish_request(const req: ILWServerRequest; const env: IEnvironment): TStatus; override;
    function output_message(const buf: IBuffer; const env: IEnvironment): TStatus; override;
  end;

procedure mainproc;
var
  dorb : IORB;
  obj: IORBObject;
  rootPOA: IPOA;
  mgr: IPOAManager;
  connIntr: IConnInterceptor;
  servIntr: IServerInterceptor;
  TestIntfFactory: IServant;
  fl : TStream;
  ref: AnsiString;
  prm: TStrings;
  i: Integer;
begin
  connIntr := TTestCon.Create;
  connIntr.activate(0);
  servIntr := TTestServ.Create;
  servIntr.activate(0);
  prm := TStringList.Create;
  try
    for i := 1 to ParamCount do
      prm.Add(ParamStr(i));
    prm.Add('-ORBInfoLogger');
    prm.Add('server_info_log');
    prm.Add('-ORBErrorLogger');
    prm.Add('server_error_log');
    prm.Add('-ORBDebugLevel');
    prm.Add('Info');
    prm.Add('-ORBDebugLevel');
    prm.Add('Error');
    dorb := ORB_Init(prm);
  finally
    prm.Free;
  end; { try/finally }

  //Obtain a reference to the RootPOA and its Manager
  obj := dorb.resolve_initial_reference('RootPOA');
  rootPOA := POA_narrow(obj);
  mgr := rootPOA.the_POAManager;

  TestIntfFactory := TTestIntfFactory_impl.Create as IServant;

  rootPoa.activate_object(TestIntfFactory);

  fl := TFileStream.Create('server.objid', fmCreate or fmShareDenyWrite);
  ref := dorb.object_to_string(rootPOA.servant_to_reference(TestIntfFactory));
  fl.WriteBuffer(Pointer(ref)^, Length(ref));
  fl.free;
  mgr.activate;
  dorb.run;
  dorb._destroy();
  dorb := nil;
  connIntr.deactivate();
  servIntr.deactivate();
  exit;
end;

function ThreadID(): AnsiString;
begin
  result := '. ' + AnsiString(IntToStr({$IFDEF WIN32}GetCurrentThreadID(){$ENDIF}{$IFDEF LINUX}getpid(){$ENDIF}));
end;

{ TTestCon }

function TTestCon.client_connect(const addr: AnsiString): TStatus;
begin
  (*
   * called whenever a new connection is opened from
   * a client to this server
   *)
  MTDORBLogger.Info('server: connect from:' + addr);
  result := INVOKE_CONTINUE;
end;

function TTestCon.client_disconnect(const addr: AnsiString): TStatus;
begin
  (*
   * called whenever a client closes a connection to
   * this server.
   *
   * note that this does *not* mean that the client
   * exited; it may temporarily close the connection
   * and reopen it later. it is even possible that
   * a client opens a new connection for each request.
   *)
  MTDORBLogger.Info('server: disconnect from:'+addr);
  result := INVOKE_CONTINUE;
end;

{ TTestServ }

function TTestServ.after_unmarshal(const req: ILWServerRequest;
  const env: IEnvironment): TStatus;
var
  ctx: ContextData;
  str: AnsiString;
begin
  (*
   * what you can do here:
   * - get the service context list from the request
   * - modify the in/inout parameters of the request
   * - remove piggybacked extra values from the request
   * - answer the request yourself by filling in out parameters
   *   or raising an exception (using env parameter) and returning
   *   INVOKE_ABORT
   *)
  MTDORBLogger.Info('server: after unmarshal for: ' + req.operation+ThreadID);
  ctx := req.get_service_context(100, 0);
  SetLength(str, Length(ctx));
  move(Pointer(ctx)^, Pointer(str)^, Length(ctx));
  MTDORBLogger.Info(str);
  result := INVOKE_CONTINUE;
end;

function TTestServ.before_marshal(const req: ILWServerRequest;
  const env: IEnvironment): TStatus;
const
  cTestCtx = 'Test service context from server';
var
  ctx: ContextData;
begin
  (*
   * what you can do here:
   * - set the service context list for the reply
   * - modify the out/inout parameters of the reply
   * - piggyback extra values to the reply
   * - answer the request yourself by filling in out parameters
   *   or raising an exception (using env parameter) and returning
   *   INVOKE_ABORT
   *)
  MTDORBLogger.Info('server: before marshal for: ' + req.operation+ThreadID);
  SetLength(ctx, Length(cTestCtx));
  move(cTestCtx, Pointer(ctx)^, Length(cTestCtx));
  req.set_service_context(100, 0, ctx);
  result := INVOKE_CONTINUE;
end;

function TTestServ.finish_request(const req: ILWServerRequest;
  const env: IEnvironment): TStatus;
begin
  (*
   * you cannot do anything useful here, because the reply has
   * already been marshalled and cannot be changed anymore.
   *)
  MTDORBLogger.Info('server: finish request for: ' + req.operation+ThreadID);
  result := INVOKE_CONTINUE;
end;

function TTestServ.initialize_request(const req: ILWServerRequest;
  const env: IEnvironment): TStatus;
var
  obj: IORBObject;
  prCur: IPrincipalCurrent;
  pr: IPrincipal;
  a: IAny;
  str: AnsiString;
begin
  obj := ORB_Instance.resolve_initial_reference('PrincipalCurrent');
  prCur := TPrincipalCurrent._narrow(obj);
  pr := prCur.get_principal;
  a := pr.get_property('peer-address');
  a.get_string(str);
  (*
   * what you can do here:
   * - answer the request yourself by filling in out parameters
   *   or raising an exception (using env parameter) and returning
   *   INVOKE_ABORT
   *
   * one useful application for initialize_request() is to implement
   * access control. see demo/ssl for an example.
   *)
  MTDORBLogger.Info('server: init request for: ' + req.operation+ThreadID);
  result := INVOKE_CONTINUE;
end;

function TTestServ.input_message(const buf: IBuffer;
  const env: IEnvironment): TStatus;
var
  i: integer;
begin
  (*
   * what you can do here:
   * - abort the request with an exception
   * - change (decompress, decrypt, ...) the incoming message:
   *   'buf' contains the GIOP Request message header and
   *   params between buf->rpos() and buf->wpos(). You must
   *   not change buf->rpos() and the data contained in 'buf'
   *   before buf->rpos(). You can change buf->wpos() and the
   *   data between buf->rpos() and buf->wpos().
   *)
  MTDORBLogger.Info('server: input message(' + AnsiString(IntToStr(buf.WPosition - buf.RPosition)) + ' bytes)'+ThreadID);
  // simple decryption
  for i := buf.RPosition to buf.WPosition - 1 do
    PByteArray(buf._buffer)^[i] := PByteArray(buf._buffer)^[i] xor $37;
  result := INVOKE_CONTINUE;
end;

function TTestServ.output_message(const buf: IBuffer;
  const env: IEnvironment): TStatus;
var
  i: integer;
begin
  (*
   * what you can do here:
   * - abort the request with an exception
   * - change (compress, encrypt, ...) the outgoing message:
   *   'buf' contains the GIOP Reply message header and
   *   results between buf->rpos() and buf->wpos(). You must
   *   not change buf->rpos() and the data contained in 'buf'
   *   before buf->rpos(). You can change buf->wpos() and the
   *   data between buf->rpos() and buf->wpos().
   *)
  MTDORBLogger.Info('server: output message (' + AnsiString(IntToStr(buf.WPosition - buf.RPosition)) + ' bytes)'+ThreadID);
  // simple encryption
  for i := buf.RPosition to buf.WPosition - 1 do
    PByteArray(buf._buffer)^[i] := PByteArray(buf._buffer)^[i] xor $37;
  result := INVOKE_CONTINUE;
end;

begin
  // Insert user code here
  mainproc;
end.