program CalcHoraMTN;

uses
  Vcl.Forms,
  CalculaHoraMTN in 'View\CalculaHoraMTN.pas' {frmCalcHoraMTN},
  uCalchoramtnModel in 'Model\uCalchoramtnModel.pas',
  uCalchoramtnControl in 'Controller\uCalchoramtnControl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalcHoraMTN, frmCalcHoraMTN);
  Application.Run;
end.
