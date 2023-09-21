unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, DB, jpeg, Clipbrd;

type
  TfrmCadClientes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Edt_ID: TDBEdit;
    Edt_Idade: TDBEdit;
    Edt_Nome: TDBEdit;
    Edt_Sobrenome: TDBEdit;
    DBI_Foto: TDBImage;
    btnSalvar: TButton;
    OPD_AbreImagem: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBI_FotoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

Uses udmPrincipal;

{$R *.dfm}

procedure TfrmCadClientes.btnSalvarClick(Sender: TObject);
begin
  if dmPrincipal.QryPessoa.State in [DsEdit,DsInsert] then
    dmPrincipal.QryPessoa.Post;
end;

procedure TfrmCadClientes.DBI_FotoClick(Sender: TObject);
var
  jpg: TJpegImage;
begin
  OPD_AbreImagem.InitialDir := ExtractFilePath(Application.ExeName);
  if dmPrincipal.QryPessoa.State in [DsEdit,DsInsert] then
  begin
    if OPD_AbreImagem.Execute then
    begin
      jpg := TJpegImage.Create();
      jpg.LoadFromFile(OPD_AbreImagem.FileName);
      clipboard.Assign(jpg);
      DBI_Foto.PasteFromClipboard;
      jpg.Free;
    end;
  end;
end;

procedure TfrmCadClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
