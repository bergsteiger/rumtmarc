unit Design_Schema;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// ������: "w:/common/components/gui/Garant/Everest/Design_Schema.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<TagTable::Class>> Shared Delphi::Everest::Standard::Design
//
// ����� ��� ��������� ��� Design-time
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  Everest_Schema,
  dsgnTextStyle_Const,
  k2Base {a},
  l3Interfaces {a},
  k2Interfaces {a}
  ;

type
 TDesignSchema = class(TEverestSchema)
 protected
 // ���������� ����������� ������ �����
   function  pm_GetTypeByHandle(H: Integer): Tk2Type; override;
   procedure Cleanup; override;
 public
   constructor Create; override;
 end;//TDesignSchema

implementation

uses
  Graphics,
  Design_AttrValues,
  SysUtils {a},
  TypInfo {a},
  k2Const {a},
  k2Tags {a},
  k2BaseStruct {a},
  l3Types {a},
  l3String {a}
  ;


// start class TDesignSchema

constructor TDesignSchema.Create;
begin
 inherited;
 // TextStyle
 with t_TextStyle do
 begin
  Recalc;
  // �������� ����
   with MakeTag do
   begin
    IntA[k2_tiHandle] := -29;
    StrA[k2_tiName] := str_TextStyle_MainMenu_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     StrA[k2_tiName] := str_TextStyle_MainMenu_Font_Name_Value.AsStr;
     IntA[k2_tiSize] := 8;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // ����� ��������� ����, ���������� �����.
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -29;
    IntA[k2_tiHandle] := -31;
    StrA[k2_tiName] := str_TextStyle_MainMenuConstPath_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiBold] := true;
     BoolA[k2_tiUnderline] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // ����� ��������� ����, ���������� �����.
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -29;
    IntA[k2_tiHandle] := -32;
    StrA[k2_tiName] := str_TextStyle_MainMenuChangePath_Name_Value.AsStr;
    AddValue(Box);
   end;//with MakeTag
  // ��������� ��������� ����.
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -29;
    IntA[k2_tiHandle] := -33;
    StrA[k2_tiName] := str_TextStyle_MainMenuHeader_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     IntA[k2_tiForeColor] := clWhite;
     BoolA[k2_tiBold] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
  // ��������� ��������� ����, ���������� ��������������.
   with MakeTag do
   begin
    IntA[k2_tiStyle] := -33;
    IntA[k2_tiHandle] := -34;
    StrA[k2_tiName] := str_TextStyle_MainMenuInteractiveHeader_Name_Value.AsStr;
    with cAtom(k2_tiFont) do
    begin
     BoolA[k2_tiUnderline] := true;
    end;//with cAtom(k2_tiFont)
    AddValue(Box);
   end;//with MakeTag
 end;//TextStyle
 t_TextStyle.Recalc;
end;

// ���������� ����������� ������ �����


function TDesignSchema.pm_GetTypeByHandle(H: Integer): Tk2Type;
begin
 Result := inherited pm_GetTypeByHandle(H);
end;

procedure TDesignSchema.Cleanup;
begin
 inherited;
end;


initialization
 TDesignSchema.SetAsDefault;

end.