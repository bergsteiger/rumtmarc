unit NewsLineTuning_Strange_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/NewsLineTuning_Strange_Controls.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 ������� �����::NewsLineTuning::View::Strange
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
uses
  vcmExternalInterfaces {a}
  ;

(* PostingToolBar = operations
  {* ������ �������� }
   ['{1C5CA247-E15B-44F0-8FF5-2C7887F5ED15}']
   operation ptNewTheme;
   operation ptEditPosting;
   operation ptDeletePosting;
   operation SavePostList;
   operation ExportSelected;
 end;//PostingToolBar*)
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
const
 en_PostingToolBar = 'PostingToolBar';
 en_capPostingToolBar = '������ ��������';
 op_ptNewTheme = 'ptNewTheme';
 op_capptNewTheme = '';
 op_ptEditPosting = 'ptEditPosting';
 op_capptEditPosting = '';
 op_ptDeletePosting = 'ptDeletePosting';
 op_capptDeletePosting = '';
 op_SavePostList = 'SavePostList';
 op_capSavePostList = '';
 op_ExportSelected = 'ExportSelected';
 op_capExportSelected = '';
{$IfEnd} //Monitorings AND not Admin

implementation

end.