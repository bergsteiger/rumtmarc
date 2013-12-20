unit evBitmapPara_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evBitmapPara_Wrap.pas"
// Начат: 25.02.2000 10:40
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::Everest::Standard::WevBitmapPara
//
// Wrapper для параграфов с картинками.
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  k2Interfaces,
  k2Base,
  evPara_Wrap,
  BitmapPara_Const
  ;

type
 TevBitmapParaPictureGetter = class
 public
 // public methods
   class function GetPicture(const aTag: Ik2Tag;
     aProp: Tk2Prop;
     out Data: Integer): Boolean; virtual;
 end;//TevBitmapParaPictureGetter

 RevBitmapParaPictureGetter = class of TevBitmapParaPictureGetter;

 WevBitmapPara = class(WevPara)
  {* Wrapper для параграфов с картинками. }
 protected
 // overridden protected methods
   function GetAtomData(const AE: Ik2Tag;
    aProp: Tk2CustomProperty;
    out Data: Integer): Boolean; override;
 protected
 // protected methods
   function DoGetAtomData(const AE: Ik2Tag;
    aProp: Tk2CustomProperty;
    out theData: Integer): Boolean; virtual;
 end;//WevBitmapPara

var
   g_BitmapParaPictureGetter : RevBitmapParaPictureGetter = nil;

implementation

uses
  k2Tags,
  SysUtils,
  evBitmapParaBitmapContainer,
  l3Interfaces,
  Classes,
  l3Base,
  l3InternalInterfaces,
  l3Stream
  ;

// start class TevBitmapParaPictureGetter

class function TevBitmapParaPictureGetter.GetPicture(const aTag: Ik2Tag;
  aProp: Tk2Prop;
  out Data: Integer): Boolean;
//#UC START# *4F4B9CB401AF_4F4B991C00A3_var*
//#UC END# *4F4B9CB401AF_4F4B991C00A3_var*
begin
//#UC START# *4F4B9CB401AF_4F4B991C00A3_impl*
 Result := false;
//#UC END# *4F4B9CB401AF_4F4B991C00A3_impl*
end;//TevBitmapParaPictureGetter.GetPicture

function WevBitmapPara.DoGetAtomData(const AE: Ik2Tag;
  aProp: Tk2CustomProperty;
  out theData: Integer): Boolean;
//#UC START# *48DD1AB50143_485792C1014E_var*
var
 l_BitmapData      : Ik2Tag;
 l_BitmapContainer : Ik2Tag;
 l_IStream         : IStream;
 l_Stream          : TStream;
//#UC END# *48DD1AB50143_485792C1014E_var*
begin
//#UC START# *48DD1AB50143_485792C1014E_impl*
 Result := false;
 Case aProp.TagIndex of
  k2_tiHeight :
  begin
   Result := true;
   with AE.Attr[k2_tiObject] do
    if IsValid then
     theData := (Tl3Base(AsObject) As Il3Bitmap).InchHeight
    else
     theData := 100;
  end;//k2_tiHeight
  k2_tiWidth  :
  begin
   Result := true;
   with AE.Attr[k2_tiObject] do
    if IsValid then
    begin
     theData := (Tl3Base(AsObject) As Il3Bitmap).InchWidth;
     Inc(theData, AE.IntA[k2_tiLeftIndent]);
    end//IsValid
    else
     theData := 100;
  end;//k2_tiWidth
  k2_tiObject :
  begin
   l_BitmapData := AE.Attr[k2_tiData];
   if l_BitmapData.IsValid then
   begin
    Result := true;
    l_BitmapContainer := Tk2Type(aProp.AtomType).MakeTag;
    try
     AE.Attr[aProp.TagIndex] := l_BitmapContainer;
     theData := l_BitmapContainer.IntRef;
    finally
     l_BitmapContainer := nil;
    end;//try..finally
    if Supports(l_BitmapData, IStream, l_IStream) then
     try
      l3IStream2Stream(l_IStream, l_Stream);
      try
       with (TObject(theData) As TevBitmapParaBitmapContainer) do
       begin
        Stream := l_Stream;
        with AE.Attr[k2_tiDPI] do
         if IsValid then
          DPI := AsLong;
       end;//with (TObject(theData) As TevBitmapParaBitmapContainer)
       {$IfDef evCanReleaseBitmapStream}
       AE.Attr[k2_tiData] := nil;
       // - можно отпустить поток с данными, т.к. им теперь владеет контейнер
       {$EndIf evCanReleaseBitmapStream}
      finally
       l3Free(l_Stream);
      end;//try..finally
     finally
      l_IStream := nil;
     end;//try..finally
   end;//l_BitmapData.IsValid
  end;//k2_tiObject}
  k2_tiData:
   if (g_BitmapParaPictureGetter <> nil) then
    Result := g_BitmapParaPictureGetter.GetPicture(AE, aProp, theData);
 end;//Case aProp.TagIndex
//#UC END# *48DD1AB50143_485792C1014E_impl*
end;//WevBitmapPara.DoGetAtomData

function WevBitmapPara.GetAtomData(const AE: Ik2Tag;
  aProp: Tk2CustomProperty;
  out Data: Integer): Boolean;
//#UC START# *4857A995029E_485792C1014E_var*
//#UC END# *4857A995029E_485792C1014E_var*
begin
//#UC START# *4857A995029E_485792C1014E_impl*
 Result := inherited GetAtomData(AE, aProp, Data);
 if not Result OR
    ((Data = 0) AND
     ((aProp.TagIndex = k2_tiObject) OR
      (aProp.TagIndex = k2_tiData))) then
  Result := DoGetAtomData(AE, aProp, Data);
//#UC END# *4857A995029E_485792C1014E_impl*
end;//WevBitmapPara.GetAtomData

end.