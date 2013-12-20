unit NOT_FINISHED_evdLeafParaFilter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// ������: "w:/common/components/rtl/Garant/EVD/NOT_FINISHED_evdLeafParaFilter.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::EVD::Generators::TevdLeafParaFilter
//
// �����, ����������� "���������" ������. ��������� ����������
// �������� ������� TevdLeafParaFilter.ParaTypeForFiltering
// (���� ����� ����������� ���� ���) � TevdLeafParaFilter.NeedWritePara
// (���� ����� ����������� ��������� ����� ��� �������
// ���������� �������� � �������� �������). ������
// ���������������� ������ ����������� � ������ TevdLeafParaFilter.DoWritePara,
// ���������� �������, ����� ������� ��������� � ����������
// ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ���� ���� ������������ ������ ��� �������������, � �� ��� ����������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Interfaces,
  k2TagFilter
  ;

type
 TevdLeafParaFilter = class(Tk2TagFilter)
  {* �����, ����������� "���������" ������. ��������� ����������
 �������� ������� TevdLeafParaFilter.ParaTypeForFiltering
(���� ����� ����������� ���� ���) � TevdLeafParaFilter.NeedWritePara
(���� ����� ����������� ��������� ����� ��� �������
���������� �������� � �������� �������). ������
���������������� ������ ����������� � ������ TevdLeafParaFilter.DoWritePara,
���������� �������, ����� ������� ��������� � ����������
������ }
 protected
 // protected methods
   function ParaTypeForFiltering: Integer; virtual;
     {* �������, ������������ ��� �������, ��� ������� ����� ����������� ���������� }
   function NeedWritePara(const aLeaf: Ik2Tag): Boolean; virtual;
     {* ���������� ����� �� ����������� ���������� ����� }
   procedure DoWritePara(const aLeaf: Ik2Tag); virtual;
     {* ������ ����������� ������ � ���������. ��������� ������� ��������� � ���������� ������ }
 end;//TevdLeafParaFilter

implementation

// start class TevdLeafParaFilter

function TevdLeafParaFilter.ParaTypeForFiltering: Integer;
//#UC START# *49E488070386_49E487650342_var*
//#UC END# *49E488070386_49E487650342_var*
begin
//#UC START# *49E488070386_49E487650342_impl*
 !!! Needs to be implemented !!!
//#UC END# *49E488070386_49E487650342_impl*
end;//TevdLeafParaFilter.ParaTypeForFiltering

function TevdLeafParaFilter.NeedWritePara(const aLeaf: Ik2Tag): Boolean;
//#UC START# *49E48829016F_49E487650342_var*
//#UC END# *49E48829016F_49E487650342_var*
begin
//#UC START# *49E48829016F_49E487650342_impl*
 !!! Needs to be implemented !!!
//#UC END# *49E48829016F_49E487650342_impl*
end;//TevdLeafParaFilter.NeedWritePara

procedure TevdLeafParaFilter.DoWritePara(const aLeaf: Ik2Tag);
//#UC START# *49E4883E0176_49E487650342_var*
//#UC END# *49E4883E0176_49E487650342_var*
begin
//#UC START# *49E4883E0176_49E487650342_impl*
 !!! Needs to be implemented !!!
//#UC END# *49E4883E0176_49E487650342_impl*
end;//TevdLeafParaFilter.DoWritePara

end.