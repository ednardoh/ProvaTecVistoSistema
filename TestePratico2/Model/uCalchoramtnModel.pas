unit uCalchoramtnModel;

interface

Uses DateUtils;

type
  TCalchoramtnModel = class
    private
      FCalculaHoraMTN: TDateTime;
      procedure SetCalculaHoraMTN(const Value: TdateTime);
    public
     function RetornaMTN(AValor: TdateTime): string;
     property CalculaHoraMTN: TdateTime read FCalculaHoraMTN write SetCalculaHoraMTN;
  end;

implementation

{ TCalchoramtnModel }

procedure TCalchoramtnModel.SetCalculaHoraMTN(const Value: TdateTime);
begin
  FCalculaHoraMTN := Value;
end;

function TCalchoramtnModel.RetornaMTN(AValor: TdateTime): string;
begin
  if  HourOf(AValor) < 12 then
    Result := 'Bom dia !'
  else if HourOf(AValor) < 18 then
    Result := 'Boa tarde !'
  else
    Result :='Boa noite !';
end;


end.
