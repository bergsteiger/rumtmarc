unit GroupProperty_Form;

// $Id: GroupProperty_Form.pas,v 1.2 2010/09/10 11:29:34 lulin Exp $

// $Log: GroupProperty_Form.pas,v $
// Revision 1.2  2010/09/10 11:29:34  lulin
// {RequestLink:197496539}.
//
// Revision 1.6  2009/10/14 12:20:21  lulin
// - добиваемс€ отсутстви€ Warning'ов при генерации проектов F1.
//
// Revision 1.5  2009/10/02 13:43:55  lulin
// - теперь формы инициализируютс€ честными параметрами, поданными в фабрику, а не через список переменных параметров.
//
// Revision 1.4  2009/10/01 19:12:08  lulin
// - параметризуем фабрики конечных форм приложени€.
//
// Revision 1.3  2009/05/21 06:25:12  oman
// - fix: ѕри пересчета тулбаров не падаем - [$148013285]
//
// Revision 1.2  2009/04/22 12:07:13  oman
// - new: ѕытаемс€ создавать/переименовывать группы - [$127762671]
//
// Revision 1.1  2009/04/20 09:48:11  oman
// - new: «аготовки форм дл€ групп - [$127762671]
//
//

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ExtCtrls,
  Buttons,

  l3Interfaces,
  
  afwControl,
  afwCustomCommonControl,

  ElBtnCtl,
  ElXPThemedControl,

  eeCheckBox,

  evEditorWindow,
  evMultiSelectEditorWindow,
  evCustomEditor,
  evEditorWithOperations,
  evCustomMemo,
  evCustomEdit,

  vtLabel,

  OvcBase,

  absdrop,
  treedrop,

  elCustomEdit,
  elCustomButtonEdit,

  ctButtonEdit,
  ctAbstractEdit,

  vcmEntityForm,
  vcmBaseEntities,
  vcmEntities,
  vcmInterfaces,
  vcmBase,
  vcmForm,
  vcmComponent,

  nscCombobox,
  AdminInterfaces,

  l3InterfacedComponent, afwControlPrim, afwBaseControl,
  nevControl, EditableBox, FakeBox,

  PrimGroupProperty_Form, evCustomEditorWindowModelPart,
  evCustomEditorWindowPrim, evCustomEditorModelPart,

  PrimGroupPropertyOptions_Form
  ;

type
  TefGroupProperty = class(TvcmEntityFormRef)
    Label1: TvtLabel;
    Entities: TvcmEntities;
    edName: TnscEdit;
  end;

implementation

uses
  l3String,
  l3Base,
  
  vcmExternalInterfaces,

  nsTypes,
  nsUtils,

  StdRes
  ;

{$R *.dfm}

end.
