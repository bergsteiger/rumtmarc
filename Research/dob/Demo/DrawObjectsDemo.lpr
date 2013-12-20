program DrawObjectsDemo;

uses
  Forms,
  main in 'main.pas' {Form1},
  rotation in 'rotation.pas' {RotationForm},
  objInspector in 'objInspector.pas' {ObjInspectForm},
  preview in 'preview.pas' {PrintPreviewForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DrawObjects';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
