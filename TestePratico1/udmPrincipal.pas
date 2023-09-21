unit udmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Dialogs, Forms, dxBarDBNav;

type
  TdmPrincipal = class(TDataModule)
    FDConn: TFDConnection;
    QryPessoa: TFDQuery;
    ds_Pessoa: TDataSource;
    QryPessoaID: TIntegerField;
    QryPessoaNOME: TStringField;
    QryPessoaSOBRENOME: TStringField;
    QryPessoaIDADE: TIntegerField;
    QryPessoaFOTO: TBlobField;
    OPD_AbreBanco: TOpenDialog;
    UPD_CadPessoa: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPrincipal: TdmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmPrincipal.DataModuleCreate(Sender: TObject);
begin
  OPD_AbreBanco.InitialDir := ExtractFilePath(Application.ExeName);
  if OPD_AbreBanco.Execute then
  begin
    FDConn.Close;
    FDConn.Params.Database := OPD_AbreBanco.FileName;
    FDConn.Open();
  end;
  QryPessoa.Close;
  QryPessoa.Open();
end;

end.
