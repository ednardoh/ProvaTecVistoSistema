unit uBuscaCEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.JSON, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, IPPeerClient, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Types;

type
  TfrmBuscaCEP = class(TForm)
    MSK_Cep: TMaskEdit;
    btn_BuscaCEP: TSpeedButton;
    Label1: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    EdtEndereco: TEdit;
    Label2: TLabel;
    EdtCEP: TEdit;
    Label3: TLabel;
    EdtCidade: TEdit;
    EdtBairro: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdtEstado: TEdit;
    Label7: TLabel;
    EdtComplemento: TEdit;
    Label8: TLabel;
    EdtIBGE: TEdit;
    Label9: TLabel;
    EdtDDD: TEdit;
    procedure btn_BuscaCEPClick(Sender: TObject);
    procedure MSK_CepKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Objeto,
    Objt: TJsonObject;
    ParRows,
    PRows: TJsonPair;
    strApiDataSet: string;
    function CharEspeciais(Texto:String):String;
    procedure BuscaCep(strURL: string); //busca Cep
  public
    { Public declarations }
  end;

var
  frmBuscaCEP: TfrmBuscaCEP;

implementation

{$R *.dfm}

{ TfrmBuscaCEP }

procedure TfrmBuscaCEP.btn_BuscaCEPClick(Sender: TObject);
begin
  BuscaCep('https://viacep.com.br/ws/'+MSK_Cep.Text+'/json/');
end;

procedure TfrmBuscaCEP.BuscaCep(strURL: string);
begin
  try
    RESTClient1.BaseURL := strURL;
    RESTRequest1.Method := rmGET;
    RESTRequest1.Execute;

    Objeto  := RESTResponse1.JSONValue as TJSONObject;

    //Logradouro
    ParRows := Objeto.Get('logradouro');
    EdtEndereco.Text :=CharEspeciais(ParRows.JsonValue.ToString);

    //Complemento
    ParRows := Objeto.Get('complemento');
    EdtComplemento.Text := CharEspeciais(ParRows.JsonValue.ToString);

    //CEP
    ParRows := Objeto.Get('cep');
    EdtCEP.Text :=CharEspeciais(ParRows.JsonValue.ToString);

    //Bairro
    ParRows := Objeto.Get('bairro');
    EdtBairro.Text :=CharEspeciais(ParRows.JsonValue.ToString);

    //Cidade
    ParRows := Objeto.Get('localidade');
    EdtCidade.Text := CharEspeciais(ParRows.JsonValue.ToString);

    //estado
    ParRows := Objeto.Get('uf');
    EdtEstado.Text :=CharEspeciais(ParRows.JsonValue.ToString);

    //Ibge
    ParRows := Objeto.Get('ibge');
    EdtIBGE.Text := CharEspeciais(ParRows.JsonValue.ToString);

    //Codigo DDD
    ParRows := Objeto.Get('ddd');
    EdtDDD.Text := CharEspeciais(ParRows.JsonValue.ToString);
  except
    on E: Exception do
    begin
      ShowMessage('CEP N�o encontrado.' );
      MSK_Cep.Text :='';
      EdtEndereco.Clear;
      EdtComplemento.Clear;
      EdtCEP.Clear;
      EdtBairro.Clear;
      EdtCidade.Clear;
      EdtEstado.Clear;
      EdtIBGE.Clear;
      EdtDDD.Clear;
    end;
  end;
end;

function TfrmBuscaCEP.CharEspeciais(Texto: String): String;
var
  i,t:integer;
begin
  t:=length(texto);
  i:=1;
  While i <= t do
    begin
     if texto[i] in ['0'..'9','a'..'z','A'..'Z',#32,'�','�','�','�',
                     '�','�','�','�','�','�','�','�','�','�','�','�',
                     '�','�','�','�','�','�','�','�','�','�','�','�',
                     '�','�','�','�','�','�','�','�','�','�','�','�',
                     '�','�','�','�','�','�','�','�','�','/','\','&'] Then
       result:=result+Texto[i];
     i:=i+1;
    end;
end;

procedure TfrmBuscaCEP.MSK_CepKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    btn_BuscaCEPClick(Self);
end;

end.
