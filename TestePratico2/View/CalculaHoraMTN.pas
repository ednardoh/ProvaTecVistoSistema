unit CalculaHoraMTN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCalchoramtnControl, Vcl.StdCtrls,
  Vcl.Mask;

type
  TfrmCalcHoraMTN = class(TForm)
    msk_Hora: TMaskEdit;
    lbl_Hora: TLabel;
    Mem_Resultado: TMemo;
    Label1: TLabel;
    btnCalcula: TButton;
    procedure btnCalculaClick(Sender: TObject);
  private
    { Private declarations }
    FCalchoramtnControl: TCalchoramtnControl;
  public
    { Public declarations }
  end;

var
  frmCalcHoraMTN: TfrmCalcHoraMTN;

implementation

{$R *.dfm}

procedure TfrmCalcHoraMTN.btnCalculaClick(Sender: TObject);
begin
  Mem_Resultado.Lines.Clear;
  try
    FCalchoramtnControl:= TCalchoramtnControl.Create;
    Mem_Resultado.Lines.Add(FCalchoramtnControl.RetirnaMTN(StrToTime(msk_Hora.Text)));
  finally
    FCalchoramtnControl.Free;
  end;
end;

end.
