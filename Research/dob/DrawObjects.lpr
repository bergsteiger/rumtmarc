program DrawObjects;

{$mode delphi}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, LResources, DrawObjects1, DrawObjects2, PrintersDlgs, main, Unit2
  { you can add units after this }
  ;

{$IFDEF WINDOWS}{$R DrawObjects.rc}{$ENDIF}

begin
  {$I DrawObjects.lrs}
  Application.Initialize;
  Application.Title := 'DrawObjects';
//  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

