// ***************************************************************************
//                                                                            
// Generated by the MTDORB IDL-to-Pascal Translator (1.0.1b1), 21.09.2010 13:26
//                                                                            
// Copyright (c) 2002 - 2004                                                  
// Millennium Group.                                                          
// Samara, Russia                                                             
//                                                                            
// All Rights Reserved                                                        
//                                                                            
// ***************************************************************************
// Compiled with parameters: " -i../..//idl -i./ ./\hello.idl" 
//                                                                            
unit hello;

interface

uses
  Classes, orb_int, orb, req_int, code_int, env_int, stdstat, std_seq,imr, imr_int, 
  orbtypes, exceptions, except_int, hello_int, poa_int, poa;

type

  {** IDL:Hello:1.0 } 
  THello = class(TORBObject,IHello)
  protected
    function hello_char(const msg: AnsiChar): AnsiChar; virtual; abstract;
    function hello_chars(const msg: Tchars): Tchars; virtual; abstract;
    function hello_string(const msg: AnsiString): AnsiString; virtual; abstract;
    function hello_widechar(const msg: WideChar): WideChar; virtual; abstract;
    function hello_widechars(const msg: Twchars): Twchars; virtual; abstract;
    function hello_widesting(const msg: WideString): WideString; virtual; abstract;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    class function _narrow(const obj : IORBObject): IHello;
    class function narrow_helper2(const obj: IORBObject): Boolean;
  end;

  {** stub for interface IDL:Hello:1.0} 
  THello_stub = class(THello)
  protected
    function hello_char(const msg: AnsiChar): AnsiChar; override;
    function hello_chars(const msg: Tchars): Tchars; override;
    function hello_string(const msg: AnsiString): AnsiString; override;
    function hello_widechar(const msg: WideChar): WideChar; override;
    function hello_widechars(const msg: Twchars): Twchars; override;
    function hello_widesting(const msg: WideString): WideString; override;
  end;

  {** POA stub for interface IDL:Hello:1.0} 
  THello_stub_clp = class(TPOAStub,IPOAStub,IHello)
  protected
    function hello_char(const msg: AnsiChar): AnsiChar; virtual;
    function hello_chars(const msg: Tchars): Tchars; virtual;
    function hello_string(const msg: AnsiString): AnsiString; virtual;
    function hello_widechar(const msg: WideChar): WideChar; virtual;
    function hello_widechars(const msg: Twchars): Twchars; virtual;
    function hello_widesting(const msg: WideString): WideString; virtual;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  end;

  {** servant for interface IDL:Hello:1.0} 
  THello_serv = class(TPOAStaticImplementation,IPOAStaticImplementation,IServant,IHello)
  protected
    function hello_char(const msg: AnsiChar): AnsiChar; virtual; abstract;
    function hello_chars(const msg: Tchars): Tchars; virtual; abstract;
    function hello_string(const msg: AnsiString): AnsiString; virtual; abstract;
    function hello_widechar(const msg: WideChar): WideChar; virtual; abstract;
    function hello_widechars(const msg: Twchars): Twchars; virtual; abstract;
    function hello_widesting(const msg: WideString): WideString; virtual; abstract;
    function _primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID; override;
    function _make_stub(const poa: IPOA; const obj : IORBObject): IORBObject; override;
    function _is_a(const repoid: RepositoryID): Boolean; override;
    procedure invoke(const serv: IStaticServerRequest); override;
    function _dispatch(const req: IStaticServerRequest): Boolean;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    function _this(): IHello;
    class function _narrow(const srv : IServant): IHello;
  end;

  THello_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

var
  Hello_marshaller : IStaticTypeInfo;
  _tc_Hello : ITypeCodeConst;

implementation

uses
  SysUtils, any, tcode, static, throw;

//***********************************************************
// THello
//***********************************************************
function THello.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:Hello:1.0' then
    begin
      result := Pointer(self as IHello);
      exit;
    end;
end;

class function THello._narrow(const obj : IORBObject): IHello;
var
  p: Pointer;
  stub: THello_stub;
begin
  result := nil;
  if obj = nil then exit;
  p := obj.narrow_helper('IDL:Hello:1.0');
  if p <> nil then
    result := IHello(p)
  else
    begin
      if narrow_helper2(obj) or obj._is_a_remote('IDL:Hello:1.0') then
        begin
          stub := THello_stub.Create();
          stub.assign(obj);
          result := stub;
        end;
    end;
end;

class function THello.narrow_helper2(const obj: IORBObject): Boolean;
begin
  result := obj._repoid = 'IDL:Hello:1.0'
end;

//***********************************************************
// THello_stub
//***********************************************************
function THello_stub.hello_char(const msg: AnsiChar): AnsiChar;
var
  req: IStaticRequest;
  _msg: IStaticAny;
  _result: IStaticAny;
begin
  _msg := StaticAny(stat_char,@msg);
  _result := StaticAny(stat_char, @result);
  req := StaticRequest(self,'hello_char');
  req.add_in_arg(_msg);
  req.set_result(_result);
  req.invoke;
  dorb_static_throw(req);
end;

function THello_stub.hello_chars(const msg: Tchars): Tchars;
var
  req: IStaticRequest;
  _msg: IStaticAny;
  _result: IStaticAny;
begin
  _msg := StaticAny(stat_seq_char,@msg);
  _result := StaticAny(stat_seq_char, @result);
  req := StaticRequest(self,'hello_chars');
  req.add_in_arg(_msg);
  req.set_result(_result);
  req.invoke;
  dorb_static_throw(req);
end;

function THello_stub.hello_string(const msg: AnsiString): AnsiString;
var
  req: IStaticRequest;
  _msg: IStaticAny;
  _result: IStaticAny;
begin
  _msg := StaticAny(stat_string,@msg);
  _result := StaticAny(stat_string, @result);
  req := StaticRequest(self,'hello_string');
  req.add_in_arg(_msg);
  req.set_result(_result);
  req.invoke;
  dorb_static_throw(req);
end;

function THello_stub.hello_widechar(const msg: WideChar): WideChar;
var
  req: IStaticRequest;
  _msg: IStaticAny;
  _result: IStaticAny;
begin
  _msg := StaticAny(stat_widechar,@msg);
  _result := StaticAny(stat_widechar, @result);
  req := StaticRequest(self,'hello_widechar');
  req.add_in_arg(_msg);
  req.set_result(_result);
  req.invoke;
  dorb_static_throw(req);
end;

function THello_stub.hello_widechars(const msg: Twchars): Twchars;
var
  req: IStaticRequest;
  _msg: IStaticAny;
  _result: IStaticAny;
begin
  _msg := StaticAny(stat_seq_wchar,@msg);
  _result := StaticAny(stat_seq_wchar, @result);
  req := StaticRequest(self,'hello_widechars');
  req.add_in_arg(_msg);
  req.set_result(_result);
  req.invoke;
  dorb_static_throw(req);
end;

function THello_stub.hello_widesting(const msg: WideString): WideString;
var
  req: IStaticRequest;
  _msg: IStaticAny;
  _result: IStaticAny;
begin
  _msg := StaticAny(stat_widestring,@msg);
  _result := StaticAny(stat_widestring, @result);
  req := StaticRequest(self,'hello_widesting');
  req.add_in_arg(_msg);
  req.set_result(_result);
  req.invoke;
  dorb_static_throw(req);
end;

//***********************************************************
// THello_stub_clp
//***********************************************************
function THello_stub_clp.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:Hello:1.0' then
    begin
      result := Pointer(self as IHello);
      exit;
  end;
end;

function THello_stub_clp.hello_char(const msg: AnsiChar): AnsiChar;
var
  _srv: IServant;
  srv: IHello;
begin
  result := #0;
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := THello_serv._narrow(_srv);
      if srv <> nil then
        result := srv.hello_char(msg)
    end;
  _postinvoke();
end;

function THello_stub_clp.hello_chars(const msg: Tchars): Tchars;
var
  _srv: IServant;
  srv: IHello;
begin
  result := nil;
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := THello_serv._narrow(_srv);
      if srv <> nil then
        result := srv.hello_chars(msg)
    end;
  _postinvoke();
end;

function THello_stub_clp.hello_string(const msg: AnsiString): AnsiString;
var
  _srv: IServant;
  srv: IHello;
begin
  result := '';
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := THello_serv._narrow(_srv);
      if srv <> nil then
        result := srv.hello_string(msg)
    end;
  _postinvoke();
end;

function THello_stub_clp.hello_widechar(const msg: WideChar): WideChar;
var
  _srv: IServant;
  srv: IHello;
begin
  result := #0;
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := THello_serv._narrow(_srv);
      if srv <> nil then
        result := srv.hello_widechar(msg)
    end;
  _postinvoke();
end;

function THello_stub_clp.hello_widechars(const msg: Twchars): Twchars;
var
  _srv: IServant;
  srv: IHello;
begin
  result := nil;
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := THello_serv._narrow(_srv);
      if srv <> nil then
        result := srv.hello_widechars(msg)
    end;
  _postinvoke();
end;

function THello_stub_clp.hello_widesting(const msg: WideString): WideString;
var
  _srv: IServant;
  srv: IHello;
begin
  result := '';
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := THello_serv._narrow(_srv);
      if srv <> nil then
        result := srv.hello_widesting(msg)
    end;
  _postinvoke();
end;

//***********************************************************
// THello_serv
//***********************************************************
function THello_serv._this(): IHello;
var
  obj: IORBObject;
begin
  obj := this();
  result := THello._narrow(obj);
end;

function THello_serv._is_a(const repoid: RepositoryID): Boolean;
begin
  result := repoid = 'IDL:Hello:1.0';
end;

function THello_serv._primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID;
begin
  result := 'IDL:Hello:1.0';
end;

function THello_serv._make_stub(const poa: IPOA; const obj : IORBObject): IORBObject;
begin
  result := THello_stub_clp.Create(poa,obj);
end;

procedure THello_serv.invoke(const serv: IStaticServerRequest);
begin
  if not _dispatch(serv) then
    begin
      serv.set_exception(BAD_OPERATION.Create(0, COMPLETED_NO) as IORBException);
      serv.write_results();
    end;
end;

function THello_serv.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:Hello:1.0' then
    begin
      result := Pointer(IHello(self));
      exit;
    end;
end;

class function THello_serv._narrow(const srv : IServant): IHello;
var
  p: Pointer;
begin
  result := nil;
  if srv = nil then exit;
  p := srv.narrow_helper('IDL:Hello:1.0');
  if p <> nil then
    result := IHello(p)
end;

function THello_serv._dispatch(const req: IStaticServerRequest): Boolean;
var
  hello_char_result: AnsiChar;
  hello_char_msg: AnsiChar;
  hello_chars_result: Tchars;
  hello_chars_msg: Tchars;
  hello_string_result: AnsiString;
  hello_string_msg: AnsiString;
  hello_widechar_result: WideChar;
  hello_widechar_msg: WideChar;
  hello_widechars_result: Twchars;
  hello_widechars_msg: Twchars;
  hello_widesting_result: WideString;
  hello_widesting_msg: WideString;
begin
  result := true;
  if req.op_name = 'hello_char' then
    begin
      req.add_in_arg(StaticAny(stat_char,@hello_char_msg) as IStaticAny);
      req.set_result(StaticAny(stat_char,@hello_char_result) as IStaticAny);
      if not req.read_args() then  exit;
      hello_char_result := hello_char(hello_char_msg);
      req.write_results();
      exit;
    end
  else if req.op_name = 'hello_chars' then
    begin
      req.add_in_arg(StaticAny(stat_seq_char,@hello_chars_msg) as IStaticAny);
      req.set_result(StaticAny(stat_seq_char,@hello_chars_result) as IStaticAny);
      if not req.read_args() then  exit;
      hello_chars_result := hello_chars(hello_chars_msg);
      req.write_results();
      exit;
    end
  else if req.op_name = 'hello_string' then
    begin
      req.add_in_arg(StaticAny(stat_string,@hello_string_msg) as IStaticAny);
      req.set_result(StaticAny(stat_string,@hello_string_result) as IStaticAny);
      if not req.read_args() then  exit;
      hello_string_result := hello_string(hello_string_msg);
      req.write_results();
      exit;
    end
  else if req.op_name = 'hello_widechar' then
    begin
      req.add_in_arg(StaticAny(stat_widechar,@hello_widechar_msg) as IStaticAny);
      req.set_result(StaticAny(stat_widechar,@hello_widechar_result) as IStaticAny);
      if not req.read_args() then  exit;
      hello_widechar_result := hello_widechar(hello_widechar_msg);
      req.write_results();
      exit;
    end
  else if req.op_name = 'hello_widechars' then
    begin
      req.add_in_arg(StaticAny(stat_seq_wchar,@hello_widechars_msg) as IStaticAny);
      req.set_result(StaticAny(stat_seq_wchar,@hello_widechars_result) as IStaticAny);
      if not req.read_args() then  exit;
      hello_widechars_result := hello_widechars(hello_widechars_msg);
      req.write_results();
      exit;
    end
  else if req.op_name = 'hello_widesting' then
    begin
      req.add_in_arg(StaticAny(stat_widestring,@hello_widesting_msg) as IStaticAny);
      req.set_result(StaticAny(stat_widestring,@hello_widesting_result) as IStaticAny);
      if not req.read_args() then  exit;
      hello_widesting_result := hello_widesting(hello_widesting_msg);
      req.write_results();
      exit;
    end;
  result := false;
end;

//***********************************************************
// THello_marshaller
//***********************************************************
function THello_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  obj: IORBObject;
begin
  result := false;
  if not stat_Object.demarshal(dec,@obj) then exit;
  IHello(addr^) := THello._narrow(obj);
  result := (obj = nil) or (Pointer(addr^) <> nil);
end;

procedure THello_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  obj: IORBObject;
begin
  obj := IHello(addr^) as IORBObject;
  stat_Object.marshal(enc,@Pointer(obj));
end;

procedure THello_marshaller._free(var addr: Pointer);
begin
  IHello(addr^) := nil;
end;

procedure THello_marshaller._create(var addr: Pointer);
begin
  IHello(addr^) := THello_stub.Create();
end;

procedure THello_marshaller._assign(dst, src: Pointer);
begin
  IHello(dst^) := IHello(src^);
end;

function THello_marshaller.typecode: ITypeCode;
begin
  result := _tc_Hello.typecode;
end;

initialization
  Hello_marshaller := THello_marshaller.Create();
  _tc_Hello := CreateTypeCodeConst('010000000e00000022000000010000000e00000049444c3a48656c6c6f3a312e300000000600000048656c6c6f00');
end.
