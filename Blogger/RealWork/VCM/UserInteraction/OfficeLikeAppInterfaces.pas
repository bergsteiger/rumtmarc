unit OfficeLikeAppInterfaces;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "UserInteraction"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VCM/UserInteraction/OfficeLikeAppInterfaces.pas"
// �����: 20.10.2009 20:23
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> Shared Delphi Operations::OfficeLike::UserInteraction::OfficeLikeAppInterfaces
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

interface

uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  ;

type
 InsWindow = interface(IUnknown)
  {* ��������� ����. ��� ������ � ������ ������� }
   ['{8F95EBB5-E396-4AF3-9A6A-EFD0684A20C9}']
   function Get_Form: IvcmEntityForm;
   property Form: IvcmEntityForm
     read Get_Form;
 end;//InsWindow

implementation

end.