program Project4;

uses
  System.StartUpCopy,
  FMX.Forms,
  Calculator in 'Calculator.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
