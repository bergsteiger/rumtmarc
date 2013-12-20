unit nsTagString;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "f1DocumentTagsImplementation"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/f1DocumentTagsImplementation/nsTagString.pas"
// �����: 2005/06/23 16:38:20
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ������� ����������� ���������� �������::LegalDomain::f1DocumentTagsImplementation::TagDataProviders::TnsTagString
//
// ������, �������������� ��������� ������� ����
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  nsString
  ;

type
 TnsTagString = class(TnsNewString)
  {* ������, �������������� ��������� ������� ���� }
 public
 // overridden public methods
   function Clone(anOwner: TObject = nil): Pointer; override;
     {* ������� ����� ������. }
 end;//TnsTagString

implementation

uses
  l3_String
  ;

// start class TnsTagString

function TnsTagString.Clone(anOwner: TObject = nil): Pointer;
//#UC START# *47BC3FC40111_467FCA0F01C6_var*
//#UC END# *47BC3FC40111_467FCA0F01C6_var*
begin
//#UC START# *47BC3FC40111_467FCA0F01C6_impl*
 Result := Tl3_String.Create;
 Tl3_String(Result).AssignString(Self);
//#UC END# *47BC3FC40111_467FCA0F01C6_impl*
end;//TnsTagString.Clone

end.