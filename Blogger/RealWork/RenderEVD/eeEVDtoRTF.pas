unit eeEVDtoRTF;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "RenderEVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/RenderEVD/eeEVDtoRTF.pas"
// Начат: 19.01.2009 12:11
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi Tools::RenderEVD::Implementation::eeEVDtoRTF
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\RenderEVD\evDefine.inc}

interface

uses
  l3Types,
  ActiveX,
  evdStyles,
  l3Memory,
  k2TagGen,
  evdNativeReader,
  ddRTFWriter
  ;

function EVDtoRTF(const aEVD: IStream;
  const aRTF: IStream;
  aStyleBuf: PAnsiChar;
  aStyleBufSize: Integer;
  Hidden: PLong;
  HiddenCount: Integer;
  aHost: PAnsiChar): Boolean; stdcall;

implementation

uses
  l3Base,
  ddSectionRepair
  {$If not defined(notDebugStackTrace)}
  ,
  jclDebug
  {$IfEnd} //not notDebugStackTrace
  ,
  evHiddenFilter,
  evNestedDocumentEliminator,
  SysUtils,
  evdPageParamsFilter,
  evStyleInterfaceEx,
  evCommentDecorator,
  evdBlockNameAdder,
  evStyleHeaderAdder,
  evdScriptHyperlinkEliminator,
  F1_Schema,
  evdSchema
  ;

// unit methods

function EVDtoRTF(const aEVD: IStream;
  const aRTF: IStream;
  aStyleBuf: PAnsiChar;
  aStyleBufSize: Integer;
  Hidden: PLong;
  HiddenCount: Integer;
  aHost: PAnsiChar): Boolean;
//#UC START# *4B72B44A0392_4B72B41502F5_var*

 {$IfNDef notDebugStackTrace}
 procedure SaveStack(var S: String; AStackList: TJclStackInfoList);
 var
  I : Integer;
 begin
  try
   if (AStackList = nil) or (AStackList.Count <= 0) then
    S := S + '  [Stack is absent]'
   else
    with AStackList do
     for I := 0 to Count - 1 do
      S := S + #13#10 +  Format('  [Stack #%3d] %s',
       [I, GetLocationInfoStr(Pointer(Items[I].StackInfo.CallerAddr))]);
  except
  end;
 end;
 {$EndIf notDebugStackTrace}

var
 l_S       : AnsiString;
 l_Written : Longint;
 l_Index   : Integer;
//#UC END# *4B72B44A0392_4B72B41502F5_var*
var
 l_Reader : TevdNativeReader;
 l_G : Tk2TagGenerator;
 l_Writer : TevRTFObjectGenerator;
 l_Styles : TevStandardStyles;
 l_CMS : Tl3ConstMemoryStream;
begin
//#UC START# *4B72B44A0392_4B72B41502F5_impl*
 l3System.EnterGlobalCS;
 try
  Result := true;
  // - будем оптимистами
  try
   l_CMS := Tl3ConstMemoryStream.Create(aStyleBuf, aStyleBufSize);
   try
    with TevStyleInterfaceEx.Make do
     try
      Load(l_CMS);
     finally
      Free;
     end;//try..finally
   finally
    FreeAndNil(l_CMS);
   end;//try..finally
   l_Writer := TevRTFObjectGenerator.Create;
   try
    l_Writer.Host := aHost;
    l_G := l_Writer;
    l_Writer.Filer.Mode := l3_fmWrite;
    l_Writer.Filer.COMStream := aRTF;
    try
     TevStyleHeaderAdder.SetTo(l_G);
     TevdBlockNameAdder.SetTo(l_G);
     TevCommentDecorator.SetTo(l_G);
     //TddSectionRepairFilter.SetTo(l_G);
     TevdPageParamsFilter.SetToA4(l_G);
     l_Styles := [];
     if (Hidden <> nil) AND (HiddenCount > 0) then
      for l_Index := 0 to Pred(HiddenCount) do
      begin
       if (Hidden^ < 0) then
        Include(l_Styles, -Hidden^);
       Inc(Hidden); 
      end;//for l_Index
     TevHiddenFilter.SetTo(l_Styles, true, l_G);
     TevdScriptHyperlinkEliminator.SetTo(l_G);
     TevNestedDocumentEliminator.SetTo(l_G);
     l_Reader := TevdNativeReader.Create;
     try
      l_Reader.Generator := l_G;
      l_Reader.Filer.Mode := l3_fmRead;
      l_Reader.Filer.COMStream := aEVD;
      try
       l_Reader.Execute;
      finally
       l_Reader.Filer.COMStream := nil;
      end;//try..finally
     finally
      l3Free(l_Reader);
     end;//try..finally
    finally
     l_Writer.Filer.COMStream := nil;
    end;//try..finally
   finally
    l3Free(l_G);
   end;//try..finally
  except
   on E : Exception do
   begin
    Result := false;
    // - все плохо :-(
    l_S := E.ClassName + ': ' + E.Message;
    {$IfNDef notDebugStackTrace}
    SaveStack(l_S, JclLastExceptStackList);
    {$EndIf  notDebugStackTrace}
    aRTF.Write(PAnsiChar(l_S), Length(l_S), @l_Written);
   end;//on E : Exception
   else
    Result := false;
    // - совсем все плохо :-(
  end;//try..except
 finally
  l3System.LeaveGlobalCS;
 end;//try..finally
//#UC END# *4B72B44A0392_4B72B41502F5_impl*
end;//EVDtoRTF

end.