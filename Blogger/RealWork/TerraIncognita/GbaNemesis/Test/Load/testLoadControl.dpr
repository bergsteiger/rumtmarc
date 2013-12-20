program testLoadControl;

uses
  Forms,
  evdSchema,
  MainLoad in 'MainLoad.pas' {MainForm},
  vtStdRes;

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TvtStdResources, vtStdResources);
  Application.Run;
end.
