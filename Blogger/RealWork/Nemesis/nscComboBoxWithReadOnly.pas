unit nscComboBoxWithReadOnly;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Nemesis"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Nemesis/nscComboBoxWithReadOnly.pas"
// �����: 06.11.2009 21:51
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Nemesis::Editor::TnscComboBoxWithReadOnly
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis)}
uses
  nscComboBox
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}
type
//#UC START# *4AF46F430293ci*
//#UC END# *4AF46F430293ci*
 TnscComboBoxWithReadOnly = class(TnscEdit)
//#UC START# *4AF46F430293publ*
  published
  // published methods
   property ReadOnly;
     {-}
//#UC END# *4AF46F430293publ*
 end;//TnscComboBoxWithReadOnly
{$IfEnd} //Nemesis

implementation


//#UC START# *4AF46F430293impl*
//#UC END# *4AF46F430293impl*
end.