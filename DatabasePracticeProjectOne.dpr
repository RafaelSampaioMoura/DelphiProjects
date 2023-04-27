program DatabasePracticeProjectOne;

uses
  Vcl.Forms,
  DatabasePracticeOneVCL in 'DatabasePracticeOneVCL.pas' {Form6},
  DatabasePracticeOne in 'DatabasePracticeOne.pas' {DataModule7: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TDataModule7, DataModule7);
  Application.Run;
end.
