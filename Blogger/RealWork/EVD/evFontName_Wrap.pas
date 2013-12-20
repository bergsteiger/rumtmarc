unit evFontName_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// ������: "w:/common/components/rtl/Garant/EVD/evFontName_Wrap.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::EVD::Standard::WevFontName
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  l3String_Wrap,
  FontName_Const,
  k2Interfaces,
  k2Base
  ;

type
 WevFontName = class(Wl3String)
 protected
 // overridden protected methods
   function StrToTag(const aValue: AnsiString): Ik2Tag; override;
   function New(aType: Tk2Type): Ik2Tag; override;
     {* ������� ���� ������� ����. }
   function ObjToTag(aValue: TObject): Ik2Tag; override;
 end;//WevFontName

implementation

uses
  l3Base,
  SysUtils,
  l3Dict
  ;

// start class WevFontName

function WevFontName.StrToTag(const aValue: AnsiString): Ik2Tag;
//#UC START# *484CCEBC00DC_484CEA1E0104_var*
var
 VT : Tl3Dictionary;
 FN : Tl3PrimString;
//#UC END# *484CCEBC00DC_484CEA1E0104_var*
begin
//#UC START# *484CCEBC00DC_484CEA1E0104_impl*
 if (aValue = EmptyStr) then
  Result := k2NullTag
 else
 begin
  VT := AtomType.ValueTable;
  if (VT <> nil) then
  begin
   FN := VT.DRByName[aValue];
   if (FN <> nil) then
   begin
    Result := AtomType.TagFromIntRef(Integer(FN));
    Exit;
   end;//FN <> nil
  end;//VT <> nil
  ConvertError('String', AtomType.AsString);
 end;//aValue = EmptyStr
//#UC END# *484CCEBC00DC_484CEA1E0104_impl*
end;//WevFontName.StrToTag

function WevFontName.New(aType: Tk2Type): Ik2Tag;
//#UC START# *484CEAAF03C5_484CEA1E0104_var*
type
 _StringType_ = Tl3Base;
var
 l_Inst : _StringType_;
//#UC END# *484CEAAF03C5_484CEA1E0104_var*
begin
//#UC START# *484CEAAF03C5_484CEA1E0104_impl*
 l_Inst := Rl3Base(aType.AtomClass).Create;
 try
  Result := aType.TagFromIntRef(Integer(l_Inst));
 finally
  l3Free(l_Inst);
 end;//try..finally
//#UC END# *484CEAAF03C5_484CEA1E0104_impl*
end;//WevFontName.New

function WevFontName.ObjToTag(aValue: TObject): Ik2Tag;
//#UC START# *484CEAD301AE_484CEA1E0104_var*
//#UC END# *484CEAD301AE_484CEA1E0104_var*
begin
//#UC START# *484CEAD301AE_484CEA1E0104_impl*
 if (aValue Is Tl3CustomString) then
  Result := AtomType.StrToTag(Tl3CustomString(aValue).AsString)
 else
  Result := inherited ObjToTag(aValue);
//#UC END# *484CEAD301AE_484CEA1E0104_impl*
end;//WevFontName.ObjToTag

end.