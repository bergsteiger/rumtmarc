unit EditionsRes_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Editions/Forms/EditionsRes_Form.pas"
// �����: 15.01.2010 17:58
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMDataModule::Class>> F1 ���������������� �������::CompareEditions::View::Editions::EditionsRes
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  PrimEditionsRes_Form,
  vtPngImgList
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TEditionsResForm = {final form} class(TvcmDataModuleRef)
  EditionsStateIcons: TvtPngImageList;
 end;//TEditionsResForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

end.