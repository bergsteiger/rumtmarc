unit    m3ArcMgr;

(*
//
//
// .Author: Mickael P. Golovin.
// .Copyright: 1997-2001 by Archivarius Team, _free for non commercial use.
//
//
*)

{$I m3Define.inc}


 interface


 uses
         Windows,
        SysUtils,

         ActiveX,
          COMObj,

        m2COMLib,

        m3BasCla,
        m3ArcCla;


  type
        Tm3InflateStreamManager=  class;
        Tm3DeflateStreamManager=  class;


        Tm3InflateStreamManager=  class(Tm3BaseClass)
         private


         protected


         public


          class function          MakeInterface       (const AName: WideString
                                                      ): IStream; overload;

          class function          MakeSafeInterface   (out   AResult: IStream;
                                                       const AName: WideString
                                                      ): HRESULT; overload;

          class function          MakeInterface       (const AName: WideString;
                                                       const AAccess: LongWord;
                                                       const ASharedMode: LongWord;
                                                       const ADistribution: LongWord;
                                                       const AFlags: LongWord
                                                      ): IStream; overload;

          class function          MakeSafeInterface   (out   AResult: IStream;
                                                       const AName: WideString;
                                                       const AAccess: LongWord;
                                                       const ASharedMode: LongWord;
                                                       const ADistribution: LongWord;
                                                       const AFlags: LongWord
                                                      ): HRESULT; overload;

          class function          MakeInterface       (const AStream: IStream
                                                      ): IStream; overload;

          class function          MakeSafeInterface   (out   AResult: IStream;
                                                       const AStream: IStream
                                                      ): HRESULT; overload;


         end;


        Tm3DeflateStreamManager=  class(Tm3BaseClass)
         private


         protected


         public


          class function          MakeInterface       (const AName: WideString
                                                      ): IStream; overload;

          class function          MakeSafeInterface   (out   AResult: IStream;
                                                       const AName: WideString
                                                      ): HRESULT; overload;

          class function          MakeInterface       (const AName: WideString;
                                                       const AAccess: LongWord;
                                                       const ASharedMode: LongWord;
                                                       const ADistribution: LongWord;
                                                       const AFlags: LongWord
                                                      ): IStream; overload;

          class function          MakeSafeInterface   (out   AResult: IStream;
                                                       const AName: WideString;
                                                       const AAccess: LongWord;
                                                       const ASharedMode: LongWord;
                                                       const ADistribution: LongWord;
                                                       const AFlags: LongWord
                                                      ): HRESULT; overload;

          class function          MakeInterface       (const AStream: IStream
                                                      ): IStream; overload;

          class function          MakeSafeInterface   (out   AResult: IStream;
                                                       const AStream: IStream
                                                      ): HRESULT; overload;


         end;


 implementation


// Tm3InflateStreamManager.private

// Tm3InflateStreamManager.protected

// Tm3InflateStreamManager.public

 class
 function    Tm3InflateStreamManager.MakeInterface(const AName: WideString
                                                  ): IStream;
 const
        CAccess=                  GENERIC_READ;

        CSharedMode=              0;

        CDistribution=            OPEN_EXISTING;

        CFlags=                   FILE_ATTRIBUTE_NORMAL;
 begin

  Result:=MakeInterface(AName,CAccess,CSharedMode,CDistribution,CFlags);

 end;

 class
 function    Tm3InflateStreamManager.MakeSafeInterface(out   AResult: IStream;
                                                       const AName: WideString
                                                      ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AName);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 class
 function    Tm3InflateStreamManager.MakeInterface(const AName: WideString;
                                                   const AAccess: LongWord;
                                                   const ASharedMode: LongWord;
                                                   const ADistribution: LongWord;
                                                   const AFlags: LongWord
                                                  ): IStream;
 begin

  Result:=MakeInterface(Tm3FileStream.MakeInterface(AName,AAccess,ASharedMode,ADistribution,AFlags));

 end;

 class
 function    Tm3InflateStreamManager.MakeSafeInterface(out   AResult: IStream;
                                                       const AName: WideString;
                                                       const AAccess: LongWord;
                                                       const ASharedMode: LongWord;
                                                       const ADistribution: LongWord;
                                                       const AFlags: LongWord
                                                      ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AName,AAccess,ASharedMode,ADistribution,AFlags);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 class
 function    Tm3InflateStreamManager.MakeInterface(const AStream: IStream
                                                  ): IStream;
 begin

  if (m2COMCLSIDFromStream(m2COMSetPosition(0,AStream)) = GUIDToString(TGUID(Tm3LZOInflateStream.HeaderID())))
   then
    begin

     Result:=Tm3LZOInflateStream.MakeInterface(AStream);

    end
   else
    begin

     Result:=m2COMSetPosition(0,AStream);

    end;

 end;

 class
 function    Tm3InflateStreamManager.MakeSafeInterface(out   AResult: IStream;
                                                       const AStream: IStream
                                                      ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AStream);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

// Tm3InflateStreamManager.end


// Tm3DeflateStreamManager.private

// Tm3DeflateStreamManager.protected

// Tm3DeflateStreamManager.public

 class
 function    Tm3DeflateStreamManager.MakeInterface(const AName: WideString
                                                  ): IStream;
 const
        CAccess=                  GENERIC_READ or
                                  GENERIC_WRITE;

        CSharedMode=              0;

        CDistribution=            CREATE_ALWAYS;

        CFlags=                   FILE_ATTRIBUTE_NORMAL;
 begin

  Result:=MakeInterface(AName,CAccess,CSharedMode,CDistribution,CFlags);

 end;

 class
 function    Tm3DeflateStreamManager.MakeSafeInterface(out   AResult: IStream;
                                                       const AName: WideString
                                                      ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AName);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 class
 function    Tm3DeflateStreamManager.MakeInterface(const AName: WideString;
                                                   const AAccess: LongWord;
                                                   const ASharedMode: LongWord;
                                                   const ADistribution: LongWord;
                                                   const AFlags: LongWord
                                                  ): IStream;
 begin

  Result:=MakeInterface(Tm3FileStream.MakeInterface(AName,AAccess,ASharedMode,ADistribution,AFlags));

 end;

 class
 function    Tm3DeflateStreamManager.MakeSafeInterface(out   AResult: IStream;
                                                       const AName: WideString;
                                                       const AAccess: LongWord;
                                                       const ASharedMode: LongWord;
                                                       const ADistribution: LongWord;
                                                       const AFlags: LongWord
                                                      ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AName,AAccess,ASharedMode,ADistribution,AFlags);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

 class
 function    Tm3DeflateStreamManager.MakeInterface(const AStream: IStream
                                                  ): IStream;
 begin

  Result:=Tm3LZODeflateStream.MakeInterface(AStream);

 end;

 class
 function    Tm3DeflateStreamManager.MakeSafeInterface(out   AResult: IStream;
                                                       const AStream: IStream
                                                      ): HRESULT;
 begin

  Result:=S_OK;
   try

    AResult:=MakeInterface(AStream);

   except

    on E: EOutOfMemory do Result:=STG_E_INSUFFICIENTMEMORY;
    on E: EOleSysError do Result:=E.ErrorCode;

   else

    Result:=E_UNEXPECTED;

   end;

 end;

// Tm3DeflateStreamManager.end


end.

