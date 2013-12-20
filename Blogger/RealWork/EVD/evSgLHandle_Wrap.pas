unit evSgLHandle_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "EVD"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/EVD/evSgLHandle_Wrap.pas"
// Начат: 16.04.1998 10:29
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::EVD::Standard::WevSgLHandle
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  evdTypes,
  Long_Wrap,
  SgLHandle_Const,
  k2Interfaces
  ;

type
 WevSgLHandle = class(WLong)
 protected
 // overridden protected methods
   function AsString(const A: Ik2Tag): AnsiString; override;
   function StrToTag(const aValue: AnsiString): Ik2Tag; override;
 end;//WevSgLHandle

implementation

uses
  SysUtils,
  k2Base
  ;

type
  TevSegmentLayerID = ev_slSuperposition..ev_slDiff;
   {* Идентификатор слоя сегментов. }
  TevSegmentLayerNames = array [TevSegmentLayerID] of AnsiString;
const
   { Таблица преобразования имён слоёв сегментов. }
  SegmentLayerNames : TevSegmentLayerNames = ('Superposition', 'View', 'Hyperlinks', 'FoundWords', 'Found', 'Objects', 'Mistakes','Diff');

// start class WevSgLHandle

function WevSgLHandle.AsString(const A: Ik2Tag): AnsiString;
//#UC START# *484CCE970073_484CD0E40347_var*

 function SegmentLayerHandle2String(Handle: Integer): String;
 begin
  if (Handle >= Low(SegmentLayerNames)) AND (Handle <= High(SegmentLayerNames)) then
   Result := SegmentLayerNames[Handle]
  else
   Result := IntToStr(Handle)
 end;

//#UC END# *484CCE970073_484CD0E40347_var*
begin
//#UC START# *484CCE970073_484CD0E40347_impl*
 if A.IsNull then
  Result := EmptyStr
 else
  Result := SegmentLayerHandle2String(A.AsLong);
//#UC END# *484CCE970073_484CD0E40347_impl*
end;//WevSgLHandle.AsString

function WevSgLHandle.StrToTag(const aValue: AnsiString): Ik2Tag;
//#UC START# *484CCEBC00DC_484CD0E40347_var*

 function String2SegmentLayerHandle(const Str: String): Integer;
 var
  i : Integer;
 begin
  for i := Low(SegmentLayerNames) to High(SegmentLayerNames) do
  begin
   if (Str = SegmentLayerNames[i]) then
   begin
    Result := i;
    Exit;
   end;
  end;//for i
  try
   Result := StrToInt(Str);
  except
   on EConvertError do Result := -1;
  end;{try..except}
 end;

var
 L : Integer;
//#UC END# *484CCEBC00DC_484CD0E40347_var*
begin
//#UC START# *484CCEBC00DC_484CD0E40347_impl*
 if (aValue = EmptyStr) then
  Result := k2NullTag
 else
 begin
  L := String2SegmentLayerHandle(aValue);
  if (L >= 0) then
   Result := AtomType.IntToTag(L)
  else
   Result := inherited StrToTag(aValue);
 end;//aValue = EmptyStr
//#UC END# *484CCEBC00DC_484CD0E40347_impl*
end;//WevSgLHandle.StrToTag

end.