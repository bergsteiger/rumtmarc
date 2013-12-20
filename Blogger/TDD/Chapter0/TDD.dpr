program TDD;

uses
  Vcl.Forms,
  GUITestRunner,
  myIntegerListTests in 'Tests\myIntegerListTests.pas',
  myIntegerList in 'Domain\myIntegerList.pas';

{$R *.res}

begin
 Application.Initialize;
 GUITestRunner.RunRegisteredTests;
end.
