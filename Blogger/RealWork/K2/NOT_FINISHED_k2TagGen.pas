unit NOT_FINISHED_k2TagGen;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/NOT_FINISHED_k2TagGen.pas"
// �����: 01.12.1998 18:48
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::K2::Generators::k2TagGen
//
// ������� ����������� ����� ��� ����������� �����.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2Types,
  l3_Base,
  k2Prim,
  l3Interfaces,
  Classes,
  l3PrimString,
  l3CustomString
  ;

type
 Tk2TagGenerator = class(Tl3_Base, Ik2TagGenerator)
  {* ������� ����������� ����� ��� ����������� �����. }
 protected
 // realized methods
   procedure AddStringAtom(TagID: Integer;
    const Value: AnsiString;
    aCodePage: Integer = CP_ANSI); overload; 
     {* �������� ��������� ����. }
   procedure AddPCharLenAtom(TagID: Integer;
    const Value: Tl3WString);
     {* �������� ��������� ����. }
   procedure AddObjectAtom(TagID: Integer;
    Value: TObject;
    Shared: Boolean = true);
   procedure AddStreamAtom(TagID: Integer;
    aStream: TStream);
     {* �������� ���� �� ������. }
   procedure AddTransparentAtom(TagID: Integer);
     {* �������� "����������" ����. }
   procedure AddIntegerAtom(TagID: Integer;
    Value: Integer);
     {* �������� ������������� ����. }
   procedure AddBoolAtom(TagID: Integer;
    Value: Boolean);
   procedure AddAtom(AtomIndex: Integer;
    TK: Tk2TypeKind;
    const Value);
     {* �������� ����. }
   procedure AddStringAtom(TagID: Integer;
    Value: Tl3PrimString); overload; 
   procedure AddAtomEx(AtomIndex: Integer;
    const Value: Tk2Variant);
   procedure Start;
     {* ������ ���������. }
   procedure StartChild(TypeID: Integer);
     {* ������ �������� ������ ����. }
   procedure StartDefaultChild;
     {* ������ �������� ������ ���� � ����� ��-���������. }
   procedure StartTag(TagID: Integer);
     {* ������ �������� ���. }
   procedure Finish(NeedUndo: Boolean = false);
     {* ������� ������ ����� ���������. }
   procedure pm_SetCharsInLine(aValue: Integer);
   function pm_GetNextGenerator: Ik2TagGenerator;
   procedure pm_SetNextGenerator(const aValue: Ik2TagGenerator);
   function pm_GetCurrentStartLevel: Integer;
   procedure Rollback(CheckBrackets: Boolean = false);
     {* �������� ��� �������� "������". }
   function Pixel2Char(Pixel: Integer): Integer;
   function Char2Pixel(Ch: Integer): Integer;
   procedure AddStringAtomClone(TagID: Integer;
    Value: Tl3CustomString);
   function pm_GetContext: Ik2Op;
   function Get_CurrentVersion: Integer;
   procedure Set_CurrentVersion(aValue: Integer);
   procedure AddInt64Atom(aTagID: Integer;
    aValue: Int64);
     {* ��������� 64-������ ���� }
 protected
 // protected methods
   procedure AddAtom(AtomIndex: Integer;
    TK: Tk2TypeKind;
    const Value); virtual;
   procedure StartChild(TypeID: Integer); virtual;
   procedure StartTag(TagID: Integer); virtual;
   procedure OpenStream; virtual;
     {* ���������� ���� ��� ��� ������ ���������. ��� ���������� � ��������. }
   procedure CloseStream(NeedUndo: Boolean); virtual;
     {* ���������� ���� ��� � ����� ���������. ��� ���������� � ��������. }
   procedure CloseStructure(NeedUndo: Boolean); virtual;
     {* ���������� �� ������������� "������". ��� ���������� � ��������. }
   procedure GeneratorChanged; virtual;
     {* ����������� � ����� ���������� ����������. ��� ���������� � ��������. }
   function GetObjectID(const Name: AnsiString;
    Child: Boolean): Integer; virtual;
   procedure AddAtomEx(AtomIndex: Integer;
    const Value: Tk2Variant); virtual;
   procedure AfterStreamOpened; virtual;
   procedure Error(Message: PAnsiChar;
    NeedException: Boolean = true); virtual;
 end;//Tk2TagGenerator

 Ik2TagGeneratorWrap = interface(IUnknown)
   ['{E2449818-8F20-4255-847C-CE853016CF3C}']
 end;//Ik2TagGeneratorWrap

implementation

// start class Tk2TagGenerator

procedure Tk2TagGenerator.AddAtom(AtomIndex: Integer;
  TK: Tk2TypeKind;
  const Value);
//#UC START# *4836D26F0055_47ECAA5B0394_var*
//#UC END# *4836D26F0055_47ECAA5B0394_var*
begin
//#UC START# *4836D26F0055_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D26F0055_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddAtom

procedure Tk2TagGenerator.StartChild(TypeID: Integer);
//#UC START# *4836D4650177_47ECAA5B0394_var*
//#UC END# *4836D4650177_47ECAA5B0394_var*
begin
//#UC START# *4836D4650177_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D4650177_47ECAA5B0394_impl*
end;//Tk2TagGenerator.StartChild

procedure Tk2TagGenerator.StartTag(TagID: Integer);
//#UC START# *4836D477022A_47ECAA5B0394_var*
//#UC END# *4836D477022A_47ECAA5B0394_var*
begin
//#UC START# *4836D477022A_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D477022A_47ECAA5B0394_impl*
end;//Tk2TagGenerator.StartTag

procedure Tk2TagGenerator.OpenStream;
//#UC START# *4836D49800CA_47ECAA5B0394_var*
//#UC END# *4836D49800CA_47ECAA5B0394_var*
begin
//#UC START# *4836D49800CA_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D49800CA_47ECAA5B0394_impl*
end;//Tk2TagGenerator.OpenStream

procedure Tk2TagGenerator.CloseStream(NeedUndo: Boolean);
//#UC START# *4836D4B003DC_47ECAA5B0394_var*
//#UC END# *4836D4B003DC_47ECAA5B0394_var*
begin
//#UC START# *4836D4B003DC_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D4B003DC_47ECAA5B0394_impl*
end;//Tk2TagGenerator.CloseStream

procedure Tk2TagGenerator.CloseStructure(NeedUndo: Boolean);
//#UC START# *4836D4C20059_47ECAA5B0394_var*
//#UC END# *4836D4C20059_47ECAA5B0394_var*
begin
//#UC START# *4836D4C20059_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D4C20059_47ECAA5B0394_impl*
end;//Tk2TagGenerator.CloseStructure

procedure Tk2TagGenerator.GeneratorChanged;
//#UC START# *4836D4D503C9_47ECAA5B0394_var*
//#UC END# *4836D4D503C9_47ECAA5B0394_var*
begin
//#UC START# *4836D4D503C9_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D4D503C9_47ECAA5B0394_impl*
end;//Tk2TagGenerator.GeneratorChanged

function Tk2TagGenerator.GetObjectID(const Name: AnsiString;
  Child: Boolean): Integer;
//#UC START# *4836D4F5021B_47ECAA5B0394_var*
//#UC END# *4836D4F5021B_47ECAA5B0394_var*
begin
//#UC START# *4836D4F5021B_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D4F5021B_47ECAA5B0394_impl*
end;//Tk2TagGenerator.GetObjectID

procedure Tk2TagGenerator.AddAtomEx(AtomIndex: Integer;
  const Value: Tk2Variant);
//#UC START# *4836D52400D9_47ECAA5B0394_var*
//#UC END# *4836D52400D9_47ECAA5B0394_var*
begin
//#UC START# *4836D52400D9_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D52400D9_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddAtomEx

procedure Tk2TagGenerator.AfterStreamOpened;
//#UC START# *4836D534009A_47ECAA5B0394_var*
//#UC END# *4836D534009A_47ECAA5B0394_var*
begin
//#UC START# *4836D534009A_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D534009A_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AfterStreamOpened

procedure Tk2TagGenerator.Error(Message: PAnsiChar;
  NeedException: Boolean = true);
//#UC START# *4836D5440159_47ECAA5B0394_var*
//#UC END# *4836D5440159_47ECAA5B0394_var*
begin
//#UC START# *4836D5440159_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4836D5440159_47ECAA5B0394_impl*
end;//Tk2TagGenerator.Error

procedure Tk2TagGenerator.AddStringAtom(TagID: Integer;
  const Value: AnsiString;
  aCodePage: Integer = CP_ANSI);
//#UC START# *469F83C300B2_47ECAA5B0394_var*
//#UC END# *469F83C300B2_47ECAA5B0394_var*
begin
//#UC START# *469F83C300B2_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F83C300B2_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddStringAtom

procedure Tk2TagGenerator.AddPCharLenAtom(TagID: Integer;
  const Value: Tl3WString);
//#UC START# *469F84BB0023_47ECAA5B0394_var*
//#UC END# *469F84BB0023_47ECAA5B0394_var*
begin
//#UC START# *469F84BB0023_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F84BB0023_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddPCharLenAtom

procedure Tk2TagGenerator.AddObjectAtom(TagID: Integer;
  Value: TObject;
  Shared: Boolean = true);
//#UC START# *469F862E024D_47ECAA5B0394_var*
//#UC END# *469F862E024D_47ECAA5B0394_var*
begin
//#UC START# *469F862E024D_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F862E024D_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddObjectAtom

procedure Tk2TagGenerator.AddStreamAtom(TagID: Integer;
  aStream: TStream);
//#UC START# *469F870C01B6_47ECAA5B0394_var*
//#UC END# *469F870C01B6_47ECAA5B0394_var*
begin
//#UC START# *469F870C01B6_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F870C01B6_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddStreamAtom

procedure Tk2TagGenerator.AddTransparentAtom(TagID: Integer);
//#UC START# *469F872B0124_47ECAA5B0394_var*
//#UC END# *469F872B0124_47ECAA5B0394_var*
begin
//#UC START# *469F872B0124_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F872B0124_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddTransparentAtom

procedure Tk2TagGenerator.AddIntegerAtom(TagID: Integer;
  Value: Integer);
//#UC START# *469F87470084_47ECAA5B0394_var*
//#UC END# *469F87470084_47ECAA5B0394_var*
begin
//#UC START# *469F87470084_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F87470084_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddIntegerAtom

procedure Tk2TagGenerator.AddBoolAtom(TagID: Integer;
  Value: Boolean);
//#UC START# *469F87D4002D_47ECAA5B0394_var*
//#UC END# *469F87D4002D_47ECAA5B0394_var*
begin
//#UC START# *469F87D4002D_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F87D4002D_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddBoolAtom

procedure Tk2TagGenerator.AddAtom(AtomIndex: Integer;
  TK: Tk2TypeKind;
  const Value);
//#UC START# *469F8818037E_47ECAA5B0394_var*
//#UC END# *469F8818037E_47ECAA5B0394_var*
begin
//#UC START# *469F8818037E_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8818037E_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddAtom

procedure Tk2TagGenerator.AddStringAtom(TagID: Integer;
  Value: Tl3PrimString);
//#UC START# *469F8A65015E_47ECAA5B0394_var*
//#UC END# *469F8A65015E_47ECAA5B0394_var*
begin
//#UC START# *469F8A65015E_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8A65015E_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddStringAtom

procedure Tk2TagGenerator.AddAtomEx(AtomIndex: Integer;
  const Value: Tk2Variant);
//#UC START# *469F8B580244_47ECAA5B0394_var*
//#UC END# *469F8B580244_47ECAA5B0394_var*
begin
//#UC START# *469F8B580244_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8B580244_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddAtomEx

procedure Tk2TagGenerator.Start;
//#UC START# *469F8B9E02C7_47ECAA5B0394_var*
//#UC END# *469F8B9E02C7_47ECAA5B0394_var*
begin
//#UC START# *469F8B9E02C7_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8B9E02C7_47ECAA5B0394_impl*
end;//Tk2TagGenerator.Start

procedure Tk2TagGenerator.StartChild(TypeID: Integer);
//#UC START# *469F8BBA01EB_47ECAA5B0394_var*
//#UC END# *469F8BBA01EB_47ECAA5B0394_var*
begin
//#UC START# *469F8BBA01EB_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8BBA01EB_47ECAA5B0394_impl*
end;//Tk2TagGenerator.StartChild

procedure Tk2TagGenerator.StartDefaultChild;
//#UC START# *469F8BCC02D7_47ECAA5B0394_var*
//#UC END# *469F8BCC02D7_47ECAA5B0394_var*
begin
//#UC START# *469F8BCC02D7_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8BCC02D7_47ECAA5B0394_impl*
end;//Tk2TagGenerator.StartDefaultChild

procedure Tk2TagGenerator.StartTag(TagID: Integer);
//#UC START# *469F8BF00166_47ECAA5B0394_var*
//#UC END# *469F8BF00166_47ECAA5B0394_var*
begin
//#UC START# *469F8BF00166_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8BF00166_47ECAA5B0394_impl*
end;//Tk2TagGenerator.StartTag

procedure Tk2TagGenerator.Finish(NeedUndo: Boolean = false);
//#UC START# *469F8C0A031C_47ECAA5B0394_var*
//#UC END# *469F8C0A031C_47ECAA5B0394_var*
begin
//#UC START# *469F8C0A031C_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8C0A031C_47ECAA5B0394_impl*
end;//Tk2TagGenerator.Finish

procedure Tk2TagGenerator.pm_SetCharsInLine(aValue: Integer);
//#UC START# *469F8C450231_47ECAA5B0394set_var*
//#UC END# *469F8C450231_47ECAA5B0394set_var*
begin
//#UC START# *469F8C450231_47ECAA5B0394set_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8C450231_47ECAA5B0394set_impl*
end;//Tk2TagGenerator.pm_SetCharsInLine

function Tk2TagGenerator.pm_GetNextGenerator: Ik2TagGenerator;
//#UC START# *469F8C6D01B6_47ECAA5B0394get_var*
//#UC END# *469F8C6D01B6_47ECAA5B0394get_var*
begin
//#UC START# *469F8C6D01B6_47ECAA5B0394get_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8C6D01B6_47ECAA5B0394get_impl*
end;//Tk2TagGenerator.pm_GetNextGenerator

procedure Tk2TagGenerator.pm_SetNextGenerator(const aValue: Ik2TagGenerator);
//#UC START# *469F8C6D01B6_47ECAA5B0394set_var*
//#UC END# *469F8C6D01B6_47ECAA5B0394set_var*
begin
//#UC START# *469F8C6D01B6_47ECAA5B0394set_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8C6D01B6_47ECAA5B0394set_impl*
end;//Tk2TagGenerator.pm_SetNextGenerator

function Tk2TagGenerator.pm_GetCurrentStartLevel: Integer;
//#UC START# *469F8C8C02FB_47ECAA5B0394get_var*
//#UC END# *469F8C8C02FB_47ECAA5B0394get_var*
begin
//#UC START# *469F8C8C02FB_47ECAA5B0394get_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F8C8C02FB_47ECAA5B0394get_impl*
end;//Tk2TagGenerator.pm_GetCurrentStartLevel

procedure Tk2TagGenerator.Rollback(CheckBrackets: Boolean = false);
//#UC START# *469F956E01A6_47ECAA5B0394_var*
//#UC END# *469F956E01A6_47ECAA5B0394_var*
begin
//#UC START# *469F956E01A6_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F956E01A6_47ECAA5B0394_impl*
end;//Tk2TagGenerator.Rollback

function Tk2TagGenerator.Pixel2Char(Pixel: Integer): Integer;
//#UC START# *469F9589032C_47ECAA5B0394_var*
//#UC END# *469F9589032C_47ECAA5B0394_var*
begin
//#UC START# *469F9589032C_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F9589032C_47ECAA5B0394_impl*
end;//Tk2TagGenerator.Pixel2Char

function Tk2TagGenerator.Char2Pixel(Ch: Integer): Integer;
//#UC START# *469F95A90350_47ECAA5B0394_var*
//#UC END# *469F95A90350_47ECAA5B0394_var*
begin
//#UC START# *469F95A90350_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *469F95A90350_47ECAA5B0394_impl*
end;//Tk2TagGenerator.Char2Pixel

procedure Tk2TagGenerator.AddStringAtomClone(TagID: Integer;
  Value: Tl3CustomString);
//#UC START# *49A6809A01DA_47ECAA5B0394_var*
//#UC END# *49A6809A01DA_47ECAA5B0394_var*
begin
//#UC START# *49A6809A01DA_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *49A6809A01DA_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddStringAtomClone

function Tk2TagGenerator.pm_GetContext: Ik2Op;
//#UC START# *4A535B100126_47ECAA5B0394get_var*
//#UC END# *4A535B100126_47ECAA5B0394get_var*
begin
//#UC START# *4A535B100126_47ECAA5B0394get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4A535B100126_47ECAA5B0394get_impl*
end;//Tk2TagGenerator.pm_GetContext

function Tk2TagGenerator.Get_CurrentVersion: Integer;
//#UC START# *4C1B7F810123_47ECAA5B0394get_var*
//#UC END# *4C1B7F810123_47ECAA5B0394get_var*
begin
//#UC START# *4C1B7F810123_47ECAA5B0394get_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C1B7F810123_47ECAA5B0394get_impl*
end;//Tk2TagGenerator.Get_CurrentVersion

procedure Tk2TagGenerator.Set_CurrentVersion(aValue: Integer);
//#UC START# *4C1B7F810123_47ECAA5B0394set_var*
//#UC END# *4C1B7F810123_47ECAA5B0394set_var*
begin
//#UC START# *4C1B7F810123_47ECAA5B0394set_impl*
 !!! Needs to be implemented !!!
//#UC END# *4C1B7F810123_47ECAA5B0394set_impl*
end;//Tk2TagGenerator.Set_CurrentVersion

procedure Tk2TagGenerator.AddInt64Atom(aTagID: Integer;
  aValue: Int64);
//#UC START# *4E31464A0116_47ECAA5B0394_var*
//#UC END# *4E31464A0116_47ECAA5B0394_var*
begin
//#UC START# *4E31464A0116_47ECAA5B0394_impl*
 !!! Needs to be implemented !!!
//#UC END# *4E31464A0116_47ECAA5B0394_impl*
end;//Tk2TagGenerator.AddInt64Atom

end.