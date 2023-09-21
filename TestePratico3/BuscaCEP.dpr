program BuscaCEP;

uses
  Vcl.Forms,
  uBuscaCEP in 'uBuscaCEP.pas' {frmBuscaCEP};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBuscaCEP, frmBuscaCEP);
  Application.Run;
end.
