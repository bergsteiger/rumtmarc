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
// Compiled with parameters: " -i./ ./\objref.idl" 
//                                                                            
unit objref;

interface

uses
  Classes, orb_int, orb, req_int, code_int, env_int, stdstat, std_seq,imr, imr_int, 
  orbtypes, exceptions, except_int, objref_int, poa_int, poa;

type

  {** IDL:foo:1.0 } 
  Tfoo = class(TORBObject,Ifoo)
  protected
    procedure hello(const name: AnsiString); virtual; abstract;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    class function _narrow(const obj : IORBObject): Ifoo;
    class function narrow_helper2(const obj: IORBObject): Boolean;
  end;

  {** stub for interface IDL:foo:1.0} 
  Tfoo_stub = class(Tfoo)
  protected
    procedure hello(const name: AnsiString); override;
  end;

  {** POA stub for interface IDL:foo:1.0} 
  Tfoo_stub_clp = class(TPOAStub,IPOAStub,Ifoo)
  protected
    procedure hello(const name: AnsiString); virtual;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  end;

  {** servant for interface IDL:foo:1.0} 
  Tfoo_serv = class(TPOAStaticImplementation,IPOAStaticImplementation,IServant,Ifoo)
  protected
    procedure hello(const name: AnsiString); virtual; abstract;
    function _primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID; override;
    function _make_stub(const poa: IPOA; const obj : IORBObject): IORBObject; override;
    function _is_a(const repoid: RepositoryID): Boolean; override;
    procedure invoke(const serv: IStaticServerRequest); override;
    function _dispatch(const req: IStaticServerRequest): Boolean;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    function _this(): Ifoo;
    class function _narrow(const srv : IServant): Ifoo;
  end;

  Tfoo_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

  TS_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

  foo_seq = Array of Ifoo;
  Pfoo_seq = ^foo_seq;

  Tfoo_seq_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

  {** IDL:bar:1.0 } 
  Tbar = class(TORBObject,Ibar)
  protected
    function run(const obj: Ifoo): Ifoo; virtual; abstract;
    procedure run1(const obj: TObjectAlias); virtual; abstract;
    procedure run2(const s: TS); virtual; abstract;
    procedure run3(const s: TfooSeq); virtual; abstract;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    class function _narrow(const obj : IORBObject): Ibar;
    class function narrow_helper2(const obj: IORBObject): Boolean;
  end;

  {** stub for interface IDL:bar:1.0} 
  Tbar_stub = class(Tbar)
  protected
    function run(const obj: Ifoo): Ifoo; override;
    procedure run1(const obj: TObjectAlias); override;
    procedure run2(const s: TS); override;
    procedure run3(const s: TfooSeq); override;
  end;

  {** POA stub for interface IDL:bar:1.0} 
  Tbar_stub_clp = class(TPOAStub,IPOAStub,Ibar)
  protected
    function run(const obj: Ifoo): Ifoo; virtual;
    procedure run1(const obj: TObjectAlias); virtual;
    procedure run2(const s: TS); virtual;
    procedure run3(const s: TfooSeq); virtual;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  end;

  {** servant for interface IDL:bar:1.0} 
  Tbar_serv = class(TPOAStaticImplementation,IPOAStaticImplementation,IServant,Ibar)
  protected
    function run(const obj: Ifoo): Ifoo; virtual; abstract;
    procedure run1(const obj: TObjectAlias); virtual; abstract;
    procedure run2(const s: TS); virtual; abstract;
    procedure run3(const s: TfooSeq); virtual; abstract;
    function _primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID; override;
    function _make_stub(const poa: IPOA; const obj : IORBObject): IORBObject; override;
    function _is_a(const repoid: RepositoryID): Boolean; override;
    procedure invoke(const serv: IStaticServerRequest); override;
    function _dispatch(const req: IStaticServerRequest): Boolean;
    function narrow_helper(const str: RepositoryID): Pointer; override;
  public
    function _this(): Ibar;
    class function _narrow(const srv : IServant): Ibar;
  end;

  Tbar_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
    function typecode: ITypeCode; override;
  end;

var
  foo_marshaller : IStaticTypeInfo;
  S_marshaller : IStaticTypeInfo;
  foo_seq_marshaller : IStaticTypeInfo;
  bar_marshaller : IStaticTypeInfo;
  _tc_foo : ITypeCodeConst;
  _tc_S : ITypeCodeConst;
  _tc_foo_seq : ITypeCodeConst;
  _tc_bar : ITypeCodeConst;

implementation

uses
  SysUtils, any, tcode, static, throw;

//***********************************************************
// Tfoo
//***********************************************************
function Tfoo.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:foo:1.0' then
    begin
      result := Pointer(self as Ifoo);
      exit;
    end;
end;

class function Tfoo._narrow(const obj : IORBObject): Ifoo;
var
  p: Pointer;
  stub: Tfoo_stub;
begin
  result := nil;
  if obj = nil then exit;
  p := obj.narrow_helper('IDL:foo:1.0');
  if p <> nil then
    result := Ifoo(p)
  else
    begin
      if narrow_helper2(obj) or obj._is_a_remote('IDL:foo:1.0') then
        begin
          stub := Tfoo_stub.Create();
          stub.assign(obj);
          result := stub;
        end;
    end;
end;

class function Tfoo.narrow_helper2(const obj: IORBObject): Boolean;
begin
  result := obj._repoid = 'IDL:foo:1.0'
end;

//***********************************************************
// Tfoo_stub
//***********************************************************
procedure Tfoo_stub.hello(const name: AnsiString);
var
  req: IStaticRequest;
  _name: IStaticAny;
begin
  _name := StaticAny(stat_string,@name);
  req := StaticRequest(self,'hello');
  req.add_in_arg(_name);
  req.invoke;
  dorb_static_throw(req);
end;

//***********************************************************
// Tfoo_stub_clp
//***********************************************************
function Tfoo_stub_clp.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:foo:1.0' then
    begin
      result := Pointer(self as Ifoo);
      exit;
  end;
end;

procedure Tfoo_stub_clp.hello(const name: AnsiString);
var
  _srv: IServant;
  srv: Ifoo;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := Tfoo_serv._narrow(_srv);
      if srv <> nil then
        srv.hello(name)
    end;
  _postinvoke();
end;

//***********************************************************
// Tfoo_serv
//***********************************************************
function Tfoo_serv._this(): Ifoo;
var
  obj: IORBObject;
begin
  obj := this();
  result := Tfoo._narrow(obj);
end;

function Tfoo_serv._is_a(const repoid: RepositoryID): Boolean;
begin
  result := repoid = 'IDL:foo:1.0';
end;

function Tfoo_serv._primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID;
begin
  result := 'IDL:foo:1.0';
end;

function Tfoo_serv._make_stub(const poa: IPOA; const obj : IORBObject): IORBObject;
begin
  result := Tfoo_stub_clp.Create(poa,obj);
end;

procedure Tfoo_serv.invoke(const serv: IStaticServerRequest);
begin
  if not _dispatch(serv) then
    begin
      serv.set_exception(BAD_OPERATION.Create(0, COMPLETED_NO) as IORBException);
      serv.write_results();
    end;
end;

function Tfoo_serv.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:foo:1.0' then
    begin
      result := Pointer(Ifoo(self));
      exit;
    end;
end;

class function Tfoo_serv._narrow(const srv : IServant): Ifoo;
var
  p: Pointer;
begin
  result := nil;
  if srv = nil then exit;
  p := srv.narrow_helper('IDL:foo:1.0');
  if p <> nil then
    result := Ifoo(p)
end;

function Tfoo_serv._dispatch(const req: IStaticServerRequest): Boolean;
var
  hello_name: AnsiString;
begin
  result := true;
  if req.op_name = 'hello' then
    begin
      req.add_in_arg(StaticAny(stat_string,@hello_name) as IStaticAny);
      if not req.read_args() then  exit;
      hello(hello_name);
      req.write_results();
      exit;
    end;
  result := false;
end;

//***********************************************************
// Tfoo_marshaller
//***********************************************************
function Tfoo_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  obj: IORBObject;
begin
  result := false;
  if not stat_Object.demarshal(dec,@obj) then exit;
  Ifoo(addr^) := Tfoo._narrow(obj);
  result := (obj = nil) or (Pointer(addr^) <> nil);
end;

procedure Tfoo_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  obj: IORBObject;
begin
  obj := Ifoo(addr^) as IORBObject;
  stat_Object.marshal(enc,@Pointer(obj));
end;

procedure Tfoo_marshaller._free(var addr: Pointer);
begin
  Ifoo(addr^) := nil;
end;

procedure Tfoo_marshaller._create(var addr: Pointer);
begin
  Ifoo(addr^) := Tfoo_stub.Create();
end;

procedure Tfoo_marshaller._assign(dst, src: Pointer);
begin
  Ifoo(dst^) := Ifoo(src^);
end;

function Tfoo_marshaller.typecode: ITypeCode;
begin
  result := _tc_foo.typecode;
end;

//***********************************************************
// TS_marshaller
//***********************************************************
function TS_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  struct: objref_int.TS;
begin
  result := false;
  if not stat_long.demarshal(dec,@struct.x) then exit;
  if not foo_marshaller.demarshal(dec,@struct.obj) then exit;
  objref_int.TS(addr^) := struct;
  result := true;
end;

procedure TS_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  struct: objref_int.TS;
begin
  struct := objref_int.TS(addr^);
  stat_long.marshal(enc,@struct.x);
  foo_marshaller.marshal(enc,@struct.obj);
end;

procedure TS_marshaller._free(var addr: Pointer);
begin
{$HINTS OFF}
  System.Finalize(objref_int.TS(addr^));
{$HINTS ON}
  FreeMem(addr);
end;

procedure TS_marshaller._create(var addr: Pointer);
begin
  addr := AllocMem(sizeOf(objref_int.TS));
{$HINTS OFF}
  System.Initialize(objref_int.TS(addr^));
{$HINTS ON}
end;

procedure TS_marshaller._assign(dst, src: Pointer);
begin
  objref_int.TS(dst^) := objref_int.TS(src^);
end;

function TS_marshaller.typecode: ITypeCode;
begin
  result := _tc_S.typecode;
end;

//***********************************************************
// Tfoo_seq_marshaller
//***********************************************************

function Tfoo_seq_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  len: _ulong;
  i: integer;
  val: Ifoo;
begin
  result := false;
  if not dec.seq_begin(len) then exit;
  SetLength(foo_seq(addr^),len);
  if len <> 0 then
    for i := 0 to Pred(len) do
      begin
        if not foo_marshaller.demarshal(dec,@val) then exit;
        foo_seq(addr^)[i] := val; 
      end;
  if not dec.seq_end() then exit;
  result := true;
end;

procedure Tfoo_seq_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  len: _ulong;
  i: integer;
begin
  len := Length(foo_seq(addr^));
  enc.seq_begin(len);
  if len <> 0 then
    for i := 0 to Pred(len) do
      foo_marshaller.marshal(enc,@foo_seq(addr^)[i]);
  enc.seq_end;
end;

procedure Tfoo_seq_marshaller._free(var addr: Pointer);
begin
  setLength(foo_seq(addr^),0);
  freemem(addr);
end;

procedure Tfoo_seq_marshaller._create(var addr: Pointer);
begin
  addr := allocmem(sizeOf(_ulong));
end;

procedure Tfoo_seq_marshaller._assign(dst, src: Pointer);
begin
  _ulong(dst^) := _ulong(src^);
end;

function Tfoo_seq_marshaller.typecode: ITypeCode;
begin
  result := _tc_foo_seq.typecode;
end;

//***********************************************************
// Tbar
//***********************************************************
function Tbar.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:bar:1.0' then
    begin
      result := Pointer(self as Ibar);
      exit;
    end;
end;

class function Tbar._narrow(const obj : IORBObject): Ibar;
var
  p: Pointer;
  stub: Tbar_stub;
begin
  result := nil;
  if obj = nil then exit;
  p := obj.narrow_helper('IDL:bar:1.0');
  if p <> nil then
    result := Ibar(p)
  else
    begin
      if narrow_helper2(obj) or obj._is_a_remote('IDL:bar:1.0') then
        begin
          stub := Tbar_stub.Create();
          stub.assign(obj);
          result := stub;
        end;
    end;
end;

class function Tbar.narrow_helper2(const obj: IORBObject): Boolean;
begin
  result := obj._repoid = 'IDL:bar:1.0'
end;

//***********************************************************
// Tbar_stub
//***********************************************************
function Tbar_stub.run(const obj: Ifoo): Ifoo;
var
  req: IStaticRequest;
  _obj: IStaticAny;
  _result: IStaticAny;
begin
  _obj := StaticAny(foo_marshaller,@obj);
  _result := StaticAny(foo_marshaller, @result);
  req := StaticRequest(self,'run');
  req.add_in_arg(_obj);
  req.set_result(_result);
  req.invoke;
  dorb_static_throw(req);
end;

procedure Tbar_stub.run1(const obj: TObjectAlias);
var
  req: IStaticRequest;
  _obj: IStaticAny;
begin
  _obj := StaticAny(stat_object,@obj);
  req := StaticRequest(self,'run1');
  req.add_in_arg(_obj);
  req.invoke;
  dorb_static_throw(req);
end;

procedure Tbar_stub.run2(const s: TS);
var
  req: IStaticRequest;
  _s: IStaticAny;
begin
  _s := StaticAny(S_marshaller,@s);
  req := StaticRequest(self,'run2');
  req.add_in_arg(_s);
  req.invoke;
  dorb_static_throw(req);
end;

procedure Tbar_stub.run3(const s: TfooSeq);
var
  req: IStaticRequest;
  _s: IStaticAny;
begin
  _s := StaticAny(foo_seq_marshaller,@s);
  req := StaticRequest(self,'run3');
  req.add_in_arg(_s);
  req.invoke;
  dorb_static_throw(req);
end;

//***********************************************************
// Tbar_stub_clp
//***********************************************************
function Tbar_stub_clp.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:bar:1.0' then
    begin
      result := Pointer(self as Ibar);
      exit;
  end;
end;

function Tbar_stub_clp.run(const obj: Ifoo): Ifoo;
var
  _srv: IServant;
  srv: Ibar;
begin
  result := nil;
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := Tbar_serv._narrow(_srv);
      if srv <> nil then
        result := srv.run(obj)
    end;
  _postinvoke();
end;

procedure Tbar_stub_clp.run1(const obj: TObjectAlias);
var
  _srv: IServant;
  srv: Ibar;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := Tbar_serv._narrow(_srv);
      if srv <> nil then
        srv.run1(obj)
    end;
  _postinvoke();
end;

procedure Tbar_stub_clp.run2(const s: TS);
var
  _srv: IServant;
  srv: Ibar;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := Tbar_serv._narrow(_srv);
      if srv <> nil then
        srv.run2(s)
    end;
  _postinvoke();
end;

procedure Tbar_stub_clp.run3(const s: TfooSeq);
var
  _srv: IServant;
  srv: Ibar;
begin
  _srv := _preinvoke();
  if _srv <> nil then
    begin
      srv := Tbar_serv._narrow(_srv);
      if srv <> nil then
        srv.run3(s)
    end;
  _postinvoke();
end;

//***********************************************************
// Tbar_serv
//***********************************************************
function Tbar_serv._this(): Ibar;
var
  obj: IORBObject;
begin
  obj := this();
  result := Tbar._narrow(obj);
end;

function Tbar_serv._is_a(const repoid: RepositoryID): Boolean;
begin
  result := repoid = 'IDL:bar:1.0';
end;

function Tbar_serv._primary_interface(const objid: ObjectID; const poa: IPOA): RepositoryID;
begin
  result := 'IDL:bar:1.0';
end;

function Tbar_serv._make_stub(const poa: IPOA; const obj : IORBObject): IORBObject;
begin
  result := Tbar_stub_clp.Create(poa,obj);
end;

procedure Tbar_serv.invoke(const serv: IStaticServerRequest);
begin
  if not _dispatch(serv) then
    begin
      serv.set_exception(BAD_OPERATION.Create(0, COMPLETED_NO) as IORBException);
      serv.write_results();
    end;
end;

function Tbar_serv.narrow_helper(const str: RepositoryID): Pointer;
begin
  result := nil;
  if str = 'IDL:bar:1.0' then
    begin
      result := Pointer(Ibar(self));
      exit;
    end;
end;

class function Tbar_serv._narrow(const srv : IServant): Ibar;
var
  p: Pointer;
begin
  result := nil;
  if srv = nil then exit;
  p := srv.narrow_helper('IDL:bar:1.0');
  if p <> nil then
    result := Ibar(p)
end;

function Tbar_serv._dispatch(const req: IStaticServerRequest): Boolean;
var
  run_result: Ifoo;
  run_obj: Ifoo;
  run1_obj: TObjectAlias;
  run2_s: TS;
  run3_s: TfooSeq;
begin
  result := true;
  if req.op_name = 'run' then
    begin
      req.add_in_arg(StaticAny(foo_marshaller,@run_obj) as IStaticAny);
      req.set_result(StaticAny(foo_marshaller,@run_result) as IStaticAny);
      if not req.read_args() then  exit;
      run_result := run(run_obj);
      req.write_results();
      exit;
    end
  else if req.op_name = 'run1' then
    begin
      req.add_in_arg(StaticAny(stat_object,@run1_obj) as IStaticAny);
      if not req.read_args() then  exit;
      run1(run1_obj);
      req.write_results();
      exit;
    end
  else if req.op_name = 'run2' then
    begin
      req.add_in_arg(StaticAny(S_marshaller,@run2_s) as IStaticAny);
      if not req.read_args() then  exit;
      run2(run2_s);
      req.write_results();
      exit;
    end
  else if req.op_name = 'run3' then
    begin
      req.add_in_arg(StaticAny(foo_seq_marshaller,@run3_s) as IStaticAny);
      if not req.read_args() then  exit;
      run3(run3_s);
      req.write_results();
      exit;
    end;
  result := false;
end;

//***********************************************************
// Tbar_marshaller
//***********************************************************
function Tbar_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  obj: IORBObject;
begin
  result := false;
  if not stat_Object.demarshal(dec,@obj) then exit;
  Ibar(addr^) := Tbar._narrow(obj);
  result := (obj = nil) or (Pointer(addr^) <> nil);
end;

procedure Tbar_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  obj: IORBObject;
begin
  obj := Ibar(addr^) as IORBObject;
  stat_Object.marshal(enc,@Pointer(obj));
end;

procedure Tbar_marshaller._free(var addr: Pointer);
begin
  Ibar(addr^) := nil;
end;

procedure Tbar_marshaller._create(var addr: Pointer);
begin
  Ibar(addr^) := Tbar_stub.Create();
end;

procedure Tbar_marshaller._assign(dst, src: Pointer);
begin
  Ibar(dst^) := Ibar(src^);
end;

function Tbar_marshaller.typecode: ITypeCode;
begin
  result := _tc_bar.typecode;
end;

initialization
  foo_marshaller := Tfoo_marshaller.Create();
  S_marshaller := TS_marshaller.Create();
  foo_seq_marshaller := Tfoo_seq_marshaller.Create();
  bar_marshaller := Tbar_marshaller.Create();
  _tc_foo := CreateTypeCodeConst('010000000e0000001c000000010000000c00000049444c3a666f6f3a312e300004000000666f6f00');
  _tc_S := CreateTypeCodeConst('010000000f00000058000000010000000a00000049444c3a533a312e300000000200000053000000020000000200000078000000030000'+
    '00040000006f626a000e0000001c000000010000000c00000049444c3a666f6f3a312e300004000000666f6f00');
  _tc_foo_seq := CreateTypeCodeConst('01000000130000002c000000010000000e0000001c000000010000000c00000049444c3a666f6f3a312e300004000000666f6f0000000000');
  _tc_bar := CreateTypeCodeConst('010000000e0000001c000000010000000c00000049444c3a6261723a312e30000400000062617200');
end.
