unit MedicListSynchroView_Form;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,

  vcmInterfaces,
  vcmBase,
  vcmEntityForm,
  vcmEntities,
  vcmComponent,
  vcmBaseEntities, OvcBase, afwControl, vtPanel,
  vcmContainerForm,

  SimpleListInterfaces, afwControlPrim, afwBaseControl, afwTextControlPrim,
  afwTextControl,

  l3Interfaces,
  l3InterfacedComponent,
  vcmExternalInterfaces,

  PrimMedicListSynchroView_Form
  ;

type
  Ten_MedicListSynchroView = class(TvcmContainerFormRef)
      Entities : TvcmEntities;
    ztChild: TvtPanel;
  protected
  public
    { Public declarations }
  end;

implementation

{$R *.DFM}

end.