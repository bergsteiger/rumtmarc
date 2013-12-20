unit nsPrimNode;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Data"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/Data/Tree/nsPrimNode.pas"
// �����: 21.10.2009 14:19
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ������� ����������� ���������� �������::LegalDomain::Data::OldTree::TnsPrimNode
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

uses
  eeVirtualNode
  ;

type
 TnsPrimNode = {abstract} class(TeeVirtualNode)
 protected
 // overridden protected methods
   function GetNumInParent(aOnlyOneLevel: Boolean = false): Integer; override;
 protected
 // protected fields
   f_NumInParent : Integer;
 protected
 // protected methods
   function DoGetNumInParent(aOnlyOneLevel: Boolean): Integer; virtual;
 public
 // public methods
   constructor Create(aNumInParent: Integer); reintroduce;
 end;//TnsPrimNode

implementation

// start class TnsPrimNode

constructor TnsPrimNode.Create(aNumInParent: Integer);
//#UC START# *4AE030AF029D_4ADDF4020322_var*
//#UC END# *4AE030AF029D_4ADDF4020322_var*
begin
//#UC START# *4AE030AF029D_4ADDF4020322_impl*
 inherited Create;
 f_NumInParent := aNumInParent;
//#UC END# *4AE030AF029D_4ADDF4020322_impl*
end;//TnsPrimNode.Create

function TnsPrimNode.DoGetNumInParent(aOnlyOneLevel: Boolean): Integer;
//#UC START# *4ADEDD8F0073_4ADDF4020322_var*
//#UC END# *4ADEDD8F0073_4ADDF4020322_var*
begin
//#UC START# *4ADEDD8F0073_4ADDF4020322_impl*
 Result := inherited GetNumInParent(aOnlyOneLevel);
//#UC END# *4ADEDD8F0073_4ADDF4020322_impl*
end;//TnsPrimNode.DoGetNumInParent

function TnsPrimNode.GetNumInParent(aOnlyOneLevel: Boolean = false): Integer;
//#UC START# *4ADEDD64015A_4ADDF4020322_var*
//#UC END# *4ADEDD64015A_4ADDF4020322_var*
begin
//#UC START# *4ADEDD64015A_4ADDF4020322_impl*
 if aOnlyOneLevel then
 begin
  if (f_NumInParent < 0) then
   f_NumInParent := DoGetNumInParent(true);
  Result := f_NumInParent;
 end//aOnlyOneLevel
 else
  Result := inherited GetNumInParent(aOnlyOneLevel);
//#UC END# *4ADEDD64015A_4ADDF4020322_impl*
end;//TnsPrimNode.GetNumInParent

end.