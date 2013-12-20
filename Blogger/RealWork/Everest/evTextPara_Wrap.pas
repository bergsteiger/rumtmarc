unit evTextPara_Wrap;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evTextPara_Wrap.pas"
// �����: 02.11.2004 16:53
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Wrapper::Class>> Shared Delphi::Everest::Standard::WevTextPara
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evPara_Wrap,
  TextPara_Const,
  k2Interfaces
  ;

type
 WevTextPara = class(WevPara)
 protected
 // overridden protected methods
   function ObjToTag(aValue: TObject): Ik2Tag; override;
 end;//WevTextPara

implementation

uses
  k2Tags,
  k2Base
  ;

// start class WevTextPara

function WevTextPara.ObjToTag(aValue: TObject): Ik2Tag;
//#UC START# *484CEAD301AE_48577704034C_var*
var
 Dest : Ik2Tag;
//#UC END# *484CEAD301AE_48577704034C_var*
begin
//#UC START# *484CEAD301AE_48577704034C_impl*
 Assert(false, '� ����� ��� �� ���� ��������?');
 Dest := AtomType.MakeTag;
 try
  Dest.Attr[k2_tiText] := Tk2TypeTable(AtomType.TypeTable).ObjToTag(aValue);
  //Dest.Attr[k2_tiText] := k2Tag(aValue);
  Result := Dest;
 finally
  Dest := nil;
 end;//try..finally
//#UC END# *484CEAD301AE_48577704034C_impl*
end;//WevTextPara.ObjToTag

end.