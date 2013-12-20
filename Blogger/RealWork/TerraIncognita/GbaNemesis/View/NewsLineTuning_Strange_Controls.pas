unit NewsLineTuning_Strange_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/NewsLineTuning_Strange_Controls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 Утилита Прайм::NewsLineTuning::View::Strange
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
uses
  vcmExternalInterfaces {a}
  ;

(* PostingToolBar = operations
  {* Панель новостей }
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
 en_capPostingToolBar = 'Панель новостей';
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