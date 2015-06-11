// **********************************************************************
//                                                                       
// Generated by the MTDORB IDL-to-Pascal Translator, 15.04.2002 12:41
//                                                                       
// Copyright (c) 2001                                                    
// Millennium Group.                                                     
// Samara, Russia                                                        
//                                                                       
// All Rights Reserved                                                   
//                                                                       
// **********************************************************************
unit poa_except;

interface

uses
  Classes, orb_int, orb, req_int, code_int, imr, imr_int, env_int, stdstat, std_seq,
  orbtypes, exceptions, except_int, poa_except_int, poa_int, poa;

type

  TForwardRequest_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/ForwardRequest:1.0 } 
  ForwardRequest = class(UserException,IForwardRequest)
  private
    Fforward_reference : IORBObject;
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
    procedure forward_reference(const val : IORBObject); overload;
  public
    function forward_reference: IORBObject; overload;
    constructor Create(ex: ForwardRequest); overload;
    constructor Create(_forward_reference: IORBObject = nil); overload;
  end;

  TNoContext_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/NoContext:1.0 }
  NoContext = class(UserException,INoContext)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: NoContext); overload;
    constructor Create(); overload;
  end;

  TAdapterAlreadyExists_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/AdapterAlreadyExists:1.0 } 
  AdapterAlreadyExists = class(UserException,IAdapterAlreadyExists)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: AdapterAlreadyExists); overload;
    constructor Create(); overload;
  end;

  TAdapterInactive_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/AdapterInactive:1.0 } 
  AdapterInactive = class(UserException,IAdapterInactive)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: AdapterInactive); overload;
    constructor Create(); overload;
  end;

  TAdapterNonExistent_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/AdapterNonExistent:1.0 } 
  AdapterNonExistent = class(UserException,IAdapterNonExistent)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: AdapterNonExistent); overload;
    constructor Create(); overload;
  end;

  TInvalidPolicy_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/InvalidPolicy:1.0 } 
  InvalidPolicy = class(UserException,IInvalidPolicy)
  private
    Findex : _ushort;
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
    procedure index(const val : _ushort); overload;
  public
    function index: _ushort; overload;
    constructor Create(ex: InvalidPolicy); overload;
    constructor Create(_index: _ushort = 0); overload;
  end;

  TNoServant_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/NoServant:1.0 } 
  NoServant = class(UserException,INoServant)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: NoServant); overload;
    constructor Create(); overload;
  end;

  TObjectAlreadyActive_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/ObjectAlreadyActive:1.0 } 
  ObjectAlreadyActive = class(UserException,IObjectAlreadyActive)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: ObjectAlreadyActive); overload;
    constructor Create(); overload;
  end;

  TObjectNotActive_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/ObjectNotActive:1.0 } 
  ObjectNotActive = class(UserException,IObjectNotActive)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: ObjectNotActive); overload;
    constructor Create(); overload;
  end;

  TServantAlreadyActive_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/ServantAlreadyActive:1.0 } 
  ServantAlreadyActive = class(UserException,IServantAlreadyActive)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: ServantAlreadyActive); overload;
    constructor Create(); overload;
  end;

  TServantNotActive_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/ServantNotActive:1.0 } 
  ServantNotActive = class(UserException,IServantNotActive)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: ServantNotActive); overload;
    constructor Create(); overload;
  end;

  TWrongAdapter_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/WrongAdapter:1.0 } 
  WrongAdapter = class(UserException,IWrongAdapter)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: WrongAdapter); overload;
    constructor Create(); overload;
  end;

  TWrongPolicy_marshaller = class(TAbstractStat,IStaticTypeInfo)
  protected
    procedure _assign(dst,src: Pointer); override;
    function demarshal(dec: IDecoder;const addr : Pointer): Boolean;
    procedure marshal(enc: IEncoder; const addr : Pointer);
    procedure _create(var addr: Pointer); override;
    procedure _free(var addr: Pointer);
  end;

  {** IDL:omg.org/PortableServer/POA/WrongPolicy:1.0 } 
  WrongPolicy = class(UserException,IWrongPolicy)
  protected
    procedure throw; override;
    function clone(): IORBException; override;
    function repoid(): RepositoryId; override;
    procedure encode(const enc: IEncoder); override;
  public
    constructor Create(ex: WrongPolicy); overload;
    constructor Create(); overload;
  end;

var
  ForwardRequest_marshaller : IStaticTypeInfo;
  NoContext_marshaller : IStaticTypeInfo;
  AdapterAlreadyExists_marshaller : IStaticTypeInfo;
  AdapterInactive_marshaller : IStaticTypeInfo;
  AdapterNonExistent_marshaller : IStaticTypeInfo;
  InvalidPolicy_marshaller : IStaticTypeInfo;
  NoServant_marshaller : IStaticTypeInfo;
  ObjectAlreadyActive_marshaller : IStaticTypeInfo;
  ObjectNotActive_marshaller : IStaticTypeInfo;
  ServantAlreadyActive_marshaller : IStaticTypeInfo;
  ServantNotActive_marshaller : IStaticTypeInfo;
  WrongAdapter_marshaller : IStaticTypeInfo;
  WrongPolicy_marshaller : IStaticTypeInfo;

implementation

uses
  any,tcode,static,SysUtils,throw;

//***********************************************************
// TForwardRequest_marshaller
//***********************************************************
function TForwardRequest_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
  _forward_reference: IORBObject;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not stat_object.demarshal(dec,@_forward_reference) then exit;
  IForwardRequest(addr^).forward_reference(_forward_reference);
  if not dec.except_end then exit;
  result := true;
end;

procedure TForwardRequest_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  _forward_reference: IORBObject;
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/ForwardRequest:1.0');
  _forward_reference:= IForwardRequest(addr^).forward_reference;
  stat_object.marshal(enc,@_forward_reference);
  enc.except_end;
end;

procedure TForwardRequest_marshaller._free(var addr: Pointer);
begin
  IForwardRequest(addr^) := nil;
end;

procedure TForwardRequest_marshaller._create(var addr: Pointer);
begin
  IForwardRequest(addr^) := ForwardRequest.Create();
end;

procedure TForwardRequest_marshaller._assign(dst, src: Pointer);
begin
  IForwardRequest(dst^) := IForwardRequest(src^);
end;

//***********************************************************
// ForwardRequest
//***********************************************************
constructor ForwardRequest.Create(ex: ForwardRequest);
begin
  Fforward_reference:= ex.forward_reference;
  inherited Create();
end;

procedure ForwardRequest.throw;
begin
  raise ForwardRequest.Create(self);
end;

function ForwardRequest.clone(): IORBException;
begin
  result := ForwardRequest.Create(self);
end;

procedure ForwardRequest.encode(const enc: IEncoder);
var
  int : IForwardRequest;
begin
  int := self;
  ForwardRequest_marshaller.marshal(enc,@int);
end;

constructor ForwardRequest.Create(_forward_reference: IORBObject);
begin
  Fforward_reference := _forward_reference;
  inherited Create();
end;

function ForwardRequest.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/ForwardRequest:1.0';
end;

procedure ForwardRequest.forward_reference(const val: IORBObject);
begin
  Fforward_reference := val;
end;

function ForwardRequest.forward_reference: IORBObject;
begin
  result := Fforward_reference;
end;

//***********************************************************
// TNoContext_marshaller
//***********************************************************
function TNoContext_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TNoContext_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/NoContext:1.0');
  enc.except_end;
end;

procedure TNoContext_marshaller._free(var addr: Pointer);
begin
  INoContext(addr^) := nil;
end;

procedure TNoContext_marshaller._create(var addr: Pointer);
begin
  INoContext(addr^) := NoContext.Create();
end;

procedure TNoContext_marshaller._assign(dst, src: Pointer);
begin
  INoContext(dst^) := INoContext(src^);
end;

//***********************************************************
// NoContext
//***********************************************************
constructor NoContext.Create(ex: NoContext);
begin
  inherited Create();
end;

procedure NoContext.throw;
begin
  raise NoContext.Create(self);
end;

function NoContext.clone(): IORBException;
begin
  result := NoContext.Create(self);
end;

procedure NoContext.encode(const enc: IEncoder);
var
  int : INoContext;
begin
  int := self;
  NoContext_marshaller.marshal(enc,@int);
end;

constructor NoContext.Create();
begin
  inherited Create();
end;

function NoContext.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/NoContext:1.0';
end;

//***********************************************************
// TAdapterAlreadyExists_marshaller
//***********************************************************
function TAdapterAlreadyExists_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TAdapterAlreadyExists_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/AdapterAlreadyExists:1.0');
  enc.except_end;
end;

procedure TAdapterAlreadyExists_marshaller._free(var addr: Pointer);
begin
  IAdapterAlreadyExists(addr^) := nil;
end;

procedure TAdapterAlreadyExists_marshaller._create(var addr: Pointer);
begin
  IAdapterAlreadyExists(addr^) := AdapterAlreadyExists.Create();
end;

procedure TAdapterAlreadyExists_marshaller._assign(dst, src: Pointer);
begin
  IAdapterAlreadyExists(dst^) := IAdapterAlreadyExists(src^);
end;

//***********************************************************
// AdapterAlreadyExists
//***********************************************************
constructor AdapterAlreadyExists.Create(ex: AdapterAlreadyExists);
begin
  inherited Create();
end;

procedure AdapterAlreadyExists.throw;
begin
  raise AdapterAlreadyExists.Create(self);
end;

function AdapterAlreadyExists.clone(): IORBException;
begin
  result := AdapterAlreadyExists.Create(self);
end;

procedure AdapterAlreadyExists.encode(const enc: IEncoder);
var
  int : IAdapterAlreadyExists;
begin
  int := self;
  AdapterAlreadyExists_marshaller.marshal(enc,@int);
end;

constructor AdapterAlreadyExists.Create();
begin
  inherited Create();
end;

function AdapterAlreadyExists.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/AdapterAlreadyExists:1.0';
end;

//***********************************************************
// TAdapterInactive_marshaller
//***********************************************************
function TAdapterInactive_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TAdapterInactive_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/AdapterInactive:1.0');
  enc.except_end;
end;

procedure TAdapterInactive_marshaller._free(var addr: Pointer);
begin
  IAdapterInactive(addr^) := nil;
end;

procedure TAdapterInactive_marshaller._create(var addr: Pointer);
begin
  IAdapterInactive(addr^) := AdapterInactive.Create();
end;

procedure TAdapterInactive_marshaller._assign(dst, src: Pointer);
begin
  IAdapterInactive(dst^) := IAdapterInactive(src^);
end;

//***********************************************************
// AdapterInactive
//***********************************************************
constructor AdapterInactive.Create(ex: AdapterInactive);
begin
  inherited Create();
end;

procedure AdapterInactive.throw;
begin
  raise AdapterInactive.Create(self);
end;

function AdapterInactive.clone(): IORBException;
begin
  result := AdapterInactive.Create(self);
end;

procedure AdapterInactive.encode(const enc: IEncoder);
var
  int : IAdapterInactive;
begin
  int := self;
  AdapterInactive_marshaller.marshal(enc,@int);
end;

constructor AdapterInactive.Create();
begin
  inherited Create();
end;

function AdapterInactive.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/AdapterInactive:1.0';
end;

//***********************************************************
// TAdapterNonExistent_marshaller
//***********************************************************
function TAdapterNonExistent_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TAdapterNonExistent_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/AdapterNonExistent:1.0');
  enc.except_end;
end;

procedure TAdapterNonExistent_marshaller._free(var addr: Pointer);
begin
  IAdapterNonExistent(addr^) := nil;
end;

procedure TAdapterNonExistent_marshaller._create(var addr: Pointer);
begin
  IAdapterNonExistent(addr^) := AdapterNonExistent.Create();
end;

procedure TAdapterNonExistent_marshaller._assign(dst, src: Pointer);
begin
  IAdapterNonExistent(dst^) := IAdapterNonExistent(src^);
end;

//***********************************************************
// AdapterNonExistent
//***********************************************************
constructor AdapterNonExistent.Create(ex: AdapterNonExistent);
begin
  inherited Create();
end;

procedure AdapterNonExistent.throw;
begin
  raise AdapterNonExistent.Create(self);
end;

function AdapterNonExistent.clone(): IORBException;
begin
  result := AdapterNonExistent.Create(self);
end;

procedure AdapterNonExistent.encode(const enc: IEncoder);
var
  int : IAdapterNonExistent;
begin
  int := self;
  AdapterNonExistent_marshaller.marshal(enc,@int);
end;

constructor AdapterNonExistent.Create();
begin
  inherited Create();
end;

function AdapterNonExistent.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/AdapterNonExistent:1.0';
end;

//***********************************************************
// TInvalidPolicy_marshaller
//***********************************************************
function TInvalidPolicy_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
  _index: _ushort;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not stat_ushort.demarshal(dec,@_index) then exit;
  IInvalidPolicy(addr^).index(_index);
  if not dec.except_end then exit;
  result := true;
end;

procedure TInvalidPolicy_marshaller.marshal(enc: IEncoder;const addr : Pointer);
var
  _index: _ushort;
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/InvalidPolicy:1.0');
  _index:= IInvalidPolicy(addr^).index;
  stat_ushort.marshal(enc,@_index);
  enc.except_end;
end;

procedure TInvalidPolicy_marshaller._free(var addr: Pointer);
begin
  IInvalidPolicy(addr^) := nil;
end;

procedure TInvalidPolicy_marshaller._create(var addr: Pointer);
begin
  IInvalidPolicy(addr^) := InvalidPolicy.Create();
end;

procedure TInvalidPolicy_marshaller._assign(dst, src: Pointer);
begin
  IInvalidPolicy(dst^) := IInvalidPolicy(src^);
end;

//***********************************************************
// InvalidPolicy
//***********************************************************
constructor InvalidPolicy.Create(ex: InvalidPolicy);
begin
  Findex:= ex.index;
  inherited Create();
end;

procedure InvalidPolicy.throw;
begin
  raise InvalidPolicy.Create(self);
end;

function InvalidPolicy.clone(): IORBException;
begin
  result := InvalidPolicy.Create(self);
end;

procedure InvalidPolicy.encode(const enc: IEncoder);
var
  int : IInvalidPolicy;
begin
  int := self;
  InvalidPolicy_marshaller.marshal(enc,@int);
end;

constructor InvalidPolicy.Create(_index: _ushort);
begin
  Findex := _index;
  inherited Create();
end;

function InvalidPolicy.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/InvalidPolicy:1.0';
end;

procedure InvalidPolicy.index(const val: _ushort);
begin
  Findex := val;
end;

function InvalidPolicy.index: _ushort;
begin
  result := Findex;
end;

//***********************************************************
// TNoServant_marshaller
//***********************************************************
function TNoServant_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TNoServant_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/NoServant:1.0');
  enc.except_end;
end;

procedure TNoServant_marshaller._free(var addr: Pointer);
begin
  INoServant(addr^) := nil;
end;

procedure TNoServant_marshaller._create(var addr: Pointer);
begin
  INoServant(addr^) := NoServant.Create();
end;

procedure TNoServant_marshaller._assign(dst, src: Pointer);
begin
  INoServant(dst^) := INoServant(src^);
end;

//***********************************************************
// NoServant
//***********************************************************
constructor NoServant.Create(ex: NoServant);
begin
  inherited Create();
end;

procedure NoServant.throw;
begin
  raise NoServant.Create(self);
end;

function NoServant.clone(): IORBException;
begin
  result := NoServant.Create(self);
end;

procedure NoServant.encode(const enc: IEncoder);
var
  int : INoServant;
begin
  int := self;
  NoServant_marshaller.marshal(enc,@int);
end;

constructor NoServant.Create();
begin
  inherited Create();
end;

function NoServant.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/NoServant:1.0';
end;

//***********************************************************
// TObjectAlreadyActive_marshaller
//***********************************************************
function TObjectAlreadyActive_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TObjectAlreadyActive_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/ObjectAlreadyActive:1.0');
  enc.except_end;
end;

procedure TObjectAlreadyActive_marshaller._free(var addr: Pointer);
begin
  IObjectAlreadyActive(addr^) := nil;
end;

procedure TObjectAlreadyActive_marshaller._create(var addr: Pointer);
begin
  IObjectAlreadyActive(addr^) := ObjectAlreadyActive.Create();
end;

procedure TObjectAlreadyActive_marshaller._assign(dst, src: Pointer);
begin
  IObjectAlreadyActive(dst^) := IObjectAlreadyActive(src^);
end;

//***********************************************************
// ObjectAlreadyActive
//***********************************************************
constructor ObjectAlreadyActive.Create(ex: ObjectAlreadyActive);
begin
  inherited Create();
end;

procedure ObjectAlreadyActive.throw;
begin
  raise ObjectAlreadyActive.Create(self);
end;

function ObjectAlreadyActive.clone(): IORBException;
begin
  result := ObjectAlreadyActive.Create(self);
end;

procedure ObjectAlreadyActive.encode(const enc: IEncoder);
var
  int : IObjectAlreadyActive;
begin
  int := self;
  ObjectAlreadyActive_marshaller.marshal(enc,@int);
end;

constructor ObjectAlreadyActive.Create();
begin
  inherited Create();
end;

function ObjectAlreadyActive.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/ObjectAlreadyActive:1.0';
end;

//***********************************************************
// TObjectNotActive_marshaller
//***********************************************************
function TObjectNotActive_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TObjectNotActive_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/ObjectNotActive:1.0');
  enc.except_end;
end;

procedure TObjectNotActive_marshaller._free(var addr: Pointer);
begin
  IObjectNotActive(addr^) := nil;
end;

procedure TObjectNotActive_marshaller._create(var addr: Pointer);
begin
  IObjectNotActive(addr^) := ObjectNotActive.Create();
end;

procedure TObjectNotActive_marshaller._assign(dst, src: Pointer);
begin
  IObjectNotActive(dst^) := IObjectNotActive(src^);
end;

//***********************************************************
// ObjectNotActive
//***********************************************************
constructor ObjectNotActive.Create(ex: ObjectNotActive);
begin
  inherited Create();
end;

procedure ObjectNotActive.throw;
begin
  raise ObjectNotActive.Create(self);
end;

function ObjectNotActive.clone(): IORBException;
begin
  result := ObjectNotActive.Create(self);
end;

procedure ObjectNotActive.encode(const enc: IEncoder);
var
  int : IObjectNotActive;
begin
  int := self;
  ObjectNotActive_marshaller.marshal(enc,@int);
end;

constructor ObjectNotActive.Create();
begin
  inherited Create();
end;

function ObjectNotActive.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/ObjectNotActive:1.0';
end;

//***********************************************************
// TServantAlreadyActive_marshaller
//***********************************************************
function TServantAlreadyActive_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TServantAlreadyActive_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/ServantAlreadyActive:1.0');
  enc.except_end;
end;

procedure TServantAlreadyActive_marshaller._free(var addr: Pointer);
begin
  IServantAlreadyActive(addr^) := nil;
end;

procedure TServantAlreadyActive_marshaller._create(var addr: Pointer);
begin
  IServantAlreadyActive(addr^) := ServantAlreadyActive.Create();
end;

procedure TServantAlreadyActive_marshaller._assign(dst, src: Pointer);
begin
  IServantAlreadyActive(dst^) := IServantAlreadyActive(src^);
end;

//***********************************************************
// ServantAlreadyActive
//***********************************************************
constructor ServantAlreadyActive.Create(ex: ServantAlreadyActive);
begin
  inherited Create();
end;

procedure ServantAlreadyActive.throw;
begin
  raise ServantAlreadyActive.Create(self);
end;

function ServantAlreadyActive.clone(): IORBException;
begin
  result := ServantAlreadyActive.Create(self);
end;

procedure ServantAlreadyActive.encode(const enc: IEncoder);
var
  int : IServantAlreadyActive;
begin
  int := self;
  ServantAlreadyActive_marshaller.marshal(enc,@int);
end;

constructor ServantAlreadyActive.Create();
begin
  inherited Create();
end;

function ServantAlreadyActive.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/ServantAlreadyActive:1.0';
end;

//***********************************************************
// TServantNotActive_marshaller
//***********************************************************
function TServantNotActive_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TServantNotActive_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/ServantNotActive:1.0');
  enc.except_end;
end;

procedure TServantNotActive_marshaller._free(var addr: Pointer);
begin
  IServantNotActive(addr^) := nil;
end;

procedure TServantNotActive_marshaller._create(var addr: Pointer);
begin
  IServantNotActive(addr^) := ServantNotActive.Create();
end;

procedure TServantNotActive_marshaller._assign(dst, src: Pointer);
begin
  IServantNotActive(dst^) := IServantNotActive(src^);
end;

//***********************************************************
// ServantNotActive
//***********************************************************
constructor ServantNotActive.Create(ex: ServantNotActive);
begin
  inherited Create();
end;

procedure ServantNotActive.throw;
begin
  raise ServantNotActive.Create(self);
end;

function ServantNotActive.clone(): IORBException;
begin
  result := ServantNotActive.Create(self);
end;

procedure ServantNotActive.encode(const enc: IEncoder);
var
  int : IServantNotActive;
begin
  int := self;
  ServantNotActive_marshaller.marshal(enc,@int);
end;

constructor ServantNotActive.Create();
begin
  inherited Create();
end;

function ServantNotActive.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/ServantNotActive:1.0';
end;

//***********************************************************
// TWrongAdapter_marshaller
//***********************************************************
function TWrongAdapter_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TWrongAdapter_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/WrongAdapter:1.0');
  enc.except_end;
end;

procedure TWrongAdapter_marshaller._free(var addr: Pointer);
begin
  IWrongAdapter(addr^) := nil;
end;

procedure TWrongAdapter_marshaller._create(var addr: Pointer);
begin
  IWrongAdapter(addr^) := WrongAdapter.Create();
end;

procedure TWrongAdapter_marshaller._assign(dst, src: Pointer);
begin
  IWrongAdapter(dst^) := IWrongAdapter(src^);
end;

//***********************************************************
// WrongAdapter
//***********************************************************
constructor WrongAdapter.Create(ex: WrongAdapter);
begin
  inherited Create();
end;

procedure WrongAdapter.throw;
begin
  raise WrongAdapter.Create(self);
end;

function WrongAdapter.clone(): IORBException;
begin
  result := WrongAdapter.Create(self);
end;

procedure WrongAdapter.encode(const enc: IEncoder);
var
  int : IWrongAdapter;
begin
  int := self;
  WrongAdapter_marshaller.marshal(enc,@int);
end;

constructor WrongAdapter.Create();
begin
  inherited Create();
end;

function WrongAdapter.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/WrongAdapter:1.0';
end;

//***********************************************************
// TWrongPolicy_marshaller
//***********************************************************
function TWrongPolicy_marshaller.demarshal(dec: IDecoder;const addr : Pointer): Boolean;
var
  repoid: RepositoryId;
begin
  result := false;
  if not dec.except_begin(repoid) then exit;
  if not dec.except_end then exit;
  result := true;
end;

procedure TWrongPolicy_marshaller.marshal(enc: IEncoder;const addr : Pointer);
begin
  enc.except_begin('IDL:omg.org/PortableServer/POA/WrongPolicy:1.0');
  enc.except_end;
end;

procedure TWrongPolicy_marshaller._free(var addr: Pointer);
begin
  IWrongPolicy(addr^) := nil;
end;

procedure TWrongPolicy_marshaller._create(var addr: Pointer);
begin
  IWrongPolicy(addr^) := WrongPolicy.Create();
end;

procedure TWrongPolicy_marshaller._assign(dst, src: Pointer);
begin
  IWrongPolicy(dst^) := IWrongPolicy(src^);
end;

//***********************************************************
// WrongPolicy
//***********************************************************
constructor WrongPolicy.Create(ex: WrongPolicy);
begin
  inherited Create();
end;

procedure WrongPolicy.throw;
begin
  raise WrongPolicy.Create(self);
end;

function WrongPolicy.clone(): IORBException;
begin
  result := WrongPolicy.Create(self);
end;

procedure WrongPolicy.encode(const enc: IEncoder);
var
  int : IWrongPolicy;
begin
  int := self;
  WrongPolicy_marshaller.marshal(enc,@int);
end;

constructor WrongPolicy.Create();
begin
  inherited Create();
end;

function WrongPolicy.repoid(): RepositoryId;
begin
  result := 'IDL:omg.org/PortableServer/POA/WrongPolicy:1.0';
end;

initialization
  ForwardRequest_marshaller := TForwardRequest_marshaller.Create();
  NoContext_marshaller := TNoContext_marshaller.Create();
  AdapterAlreadyExists_marshaller := TAdapterAlreadyExists_marshaller.Create();
  AdapterInactive_marshaller := TAdapterInactive_marshaller.Create();
  AdapterNonExistent_marshaller := TAdapterNonExistent_marshaller.Create();
  InvalidPolicy_marshaller := TInvalidPolicy_marshaller.Create();
  NoServant_marshaller := TNoServant_marshaller.Create();
  ObjectAlreadyActive_marshaller := TObjectAlreadyActive_marshaller.Create();
  ObjectNotActive_marshaller := TObjectNotActive_marshaller.Create();
  ServantAlreadyActive_marshaller := TServantAlreadyActive_marshaller.Create();
  ServantNotActive_marshaller := TServantNotActive_marshaller.Create();
  WrongAdapter_marshaller := TWrongAdapter_marshaller.Create();
  WrongPolicy_marshaller := TWrongPolicy_marshaller.Create();
end.