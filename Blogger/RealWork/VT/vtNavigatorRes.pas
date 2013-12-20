unit vtNavigatorRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VT"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VT/vtNavigatorRes.pas"
// �����: 02.03.2010 17:58
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::VT::vtNavigator::vtNavigatorRes
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  l3StringIDEx
  ;

var
  { ������������ ������ TvtNavigatorHints }
 str_vtAutoHideOffHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtAutoHideOffHint'; rValue : '������������� ������ ���������');
  { '������������� ������ ���������' }
 str_vtAutoHideOnHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtAutoHideOnHint'; rValue : '����������� ������ ���������');
  { '����������� ������ ���������' }
 str_vtMinimazedOnHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtMinimazedOnHint'; rValue : '��������');
  { '��������' }
 str_vtMinimazedOffHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtMinimazedOffHint'; rValue : '����������');
  { '����������' }
 str_vtBtnCloseHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtBtnCloseHint'; rValue : '���������� ���������');
  { '���������� ���������' }

implementation

uses
  l3MessageID
  ;


initialization
// ������������� str_vtAutoHideOffHint
 str_vtAutoHideOffHint.Init;
// ������������� str_vtAutoHideOnHint
 str_vtAutoHideOnHint.Init;
// ������������� str_vtMinimazedOnHint
 str_vtMinimazedOnHint.Init;
// ������������� str_vtMinimazedOffHint
 str_vtMinimazedOffHint.Init;
// ������������� str_vtBtnCloseHint
 str_vtBtnCloseHint.Init;

end.