unit l3List_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "K2"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/K2/l3List_Wrap.pas"
// �����: 07.09.1998 12:46
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::K2::Standard::Wl3List
//
// Wl3List
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\K2\k2Define.inc}

interface

uses
  k2OList_Const,
  Persistent_Wrap,
  k2Interfaces,
  k2Base
  ;

type
 Wl3List = class(WPersistent)
  {* Wl3List }
 protected
 // overridden protected methods
   function New(aType: Tk2Type): Ik2Tag; override;
     {* ������� ���� ������� ����. }
 end;//Wl3List

implementation

uses
  k2List
  ;

// start class Wl3List

function Wl3List.New(aType: Tk2Type): Ik2Tag;
//#UC START# *484CEAAF03C5_4849461200AA_var*
type
 Rk2List = class of Tk2List;  
//#UC END# *484CEAAF03C5_4849461200AA_var*
begin
//#UC START# *484CEAAF03C5_4849461200AA_impl*
 Result := nil;
 // - ������� ���������� ���������, �.�. ���������, ��� Delphi ��� �� ������.
 Pointer(Result) := Pointer(Ik2Tag(Rk2List(aType.MakeClass).Create(aType)));
//#UC END# *484CEAAF03C5_4849461200AA_impl*
end;//Wl3List.New

end.