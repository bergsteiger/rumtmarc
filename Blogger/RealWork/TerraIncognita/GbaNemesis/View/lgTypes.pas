unit lgTypes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/lgTypes.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Interfaces::Category>> F1 ������� ����������� ���������� �������::F1 Application Template::View::lgTypes
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

type
 TlgQueryType = (
  {* ��� ������� �� ����� }
   lg_qtNone // �������������� ��� �������
 , lg_qtKeyWord // �� ��������
 , lg_qtAttribute // �� ���������� (�����)
 , lg_qtPublishedSource // �� ��������� �������������
 , lg_qtPostingOrder // ����� ��������
 , lg_qtLegislationReview // ����� ����������������
 , lg_qtSendConsultation // ������ �� �������� ���������, ��� ���� ����� �� ��������������, ������ ������ �� ��������� � �������� ������
 , lg_qtBaseSearch // ������� �����
 , lg_qtInpharmSearch // �������������� ���������
 );//TlgQueryType

implementation

end.