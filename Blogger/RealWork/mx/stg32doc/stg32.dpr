library STG32;

(*
//
//
// .Author: Mickael P. Golovin.
// .Copyright: 1997-2001 by Archivarius Team, free for non commercial use.
//
//
*)

// $Id: stg32.dpr,v 1.3 2002/05/14 08:30:03 law Exp $

{$R *.res}

uses
         Windows,

         ActiveX,

  m3StorageInterfaces,        
        m3StgMgr;


 function    _CoCreateInstance(const ACLSID: TCLSID;
                                     AUnknown: IUnknown;
                                     AContext: Longint;
                               const AIID: TIID;
                               out   AResult
                              ): HRESULT; stdcall;
 begin

  Result:=CoCreateInstance(ACLSID,AUnknown,AContext,AIID,AResult);

 end;

 function    _CoInitialize(      _unused: Pointer
                          ): HRESULT; stdcall;
 begin

  Result:=CoInitialize(_unused);

 end;

 procedure   _CoTaskMemFree(      APointer: Pointer
                           ); stdcall;
 begin

  CoTaskMemFree(APointer);

 end;

 procedure   _CoUninitialize(
                            ); stdcall;
 begin

  CoUninitialize();

 end;

function _StgOpenStorage(AName          : PWideChar;
                         APriority      : IStorage;
                         AStatStgMode   : LongInt;
                         AExclude       : TSNB;
                         _unused        : LongInt;
                         out   AStorage : IStorage): HRESULT; stdcall;
begin
 if ((APriority = nil) and (AExclude = nil) and (_unused = 0)) then begin
  if ((AStatStgMode and $0000000f) = STGM_READ) then
   Result:=Tm3ReadModeStorageManager.MakeSafeInterface(Im3IndexedStorage(AStorage),WideString(AName), m3_stPlugin)
  else
   Result:=Tm3FullModeStorageManager.MakeSafeInterface(Im3IndexedStorage(AStorage),WideString(AName), m3_stPlugin);

 end else
  Result:=STG_E_INVALIDPARAMETER;
end;


 exports _CoCreateInstance index $000d name 'CoCreateInstance';
 exports _CoInitialize     index $002d name 'CoInitialize';
 exports _CoTaskMemFree    index $004f name 'CoTaskMemFree';
 exports _CoUninitialize   index $0053 name 'CoUninitialize';

 exports _StgOpenStorage   index $0108 name 'StgOpenStorage';


end.

