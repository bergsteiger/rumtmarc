unit evdStyleContainer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/evdStyleContainer.pas"
// �����: 21.04.1997 16:39
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Core Objects::TevdStyleContainer
//
// �������� �������� ���������� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  l3PrimString,
  k2Base,
  k2Dictionary
  ;

type
 _ItemType_ = l3PrimString.Tl3PrimString;
  {* ��� ������-�� ���, �� ��� ����� �� ��������� ��� �������� }

 TevdStyleContainer = class(Tk2Dictionary)
  {* �������� �������� ���������� ������ }
 private
 // private fields
   f_AutoNum : Integer;
 protected
 // overridden protected methods
   procedure DirectInsert(anIndex: Integer;
    const aData: _ItemType_); override;
     {* ���������������� �������� ��������. ��� �������� ���������� �������. }
   function ControlFindByID: Boolean; override;
 public
 // public methods
   class procedure CheckValueTable(aType: Tk2Type);
     {* ��������� ������� ��������. }
 end;//TevdStyleContainer

implementation

uses
  evdStyles,
  SysUtils,
  l3Types
  ;

// start class TevdStyleContainer

class procedure TevdStyleContainer.CheckValueTable(aType: Tk2Type);
//#UC START# *4860B7AA025D_4860B1230094_var*
var
 VT : TevdStyleContainer;
//#UC END# *4860B7AA025D_4860B1230094_var*
begin
//#UC START# *4860B7AA025D_4860B1230094_impl*
 if (aType.ValueTable = nil) then
 begin
  VT := TevdStyleContainer.Create;
  try
   VT.Duplicates := l3_dupAssign;
   aType.ValueTable := VT;
  finally
   FreeAndNil(VT); 
  end;{try..finally}
 end;//aType.ValueTable = nil
//#UC END# *4860B7AA025D_4860B1230094_impl*
end;//TevdStyleContainer.CheckValueTable

procedure TevdStyleContainer.DirectInsert(anIndex: Integer;
  const aData: _ItemType_);
//#UC START# *47B49EC50034_4860B1230094_var*
//#UC END# *47B49EC50034_4860B1230094_var*
begin
//#UC START# *47B49EC50034_4860B1230094_impl*
 if (aData.StringID = 0) then
 begin
  Inc(f_AutoNum);
  aData.StringID := f_AutoNum;
 end;//S.Alias >= 0
 if (aData.StringID = ev_saTxtNormalANSI) then
  Default := aData;
 inherited;
//#UC END# *47B49EC50034_4860B1230094_impl*
end;//TevdStyleContainer.DirectInsert

function TevdStyleContainer.ControlFindByID: Boolean;
//#UC START# *4B8BBAA800AB_4860B1230094_var*
//#UC END# *4B8BBAA800AB_4860B1230094_var*
begin
//#UC START# *4B8BBAA800AB_4860B1230094_impl*
 Result := true;
//#UC END# *4B8BBAA800AB_4860B1230094_impl*
end;//TevdStyleContainer.ControlFindByID

end.