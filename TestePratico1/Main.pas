unit MAIN;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.Menus, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Buttons, Winapi.Messages,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin,
  Vcl.ImgList, System.ImageList, System.Actions;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    Help1: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    OpenDialog: TOpenDialog;
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    ToolBar2: TToolBar;
    ToolButton9: TToolButton;
    ImageList1: TImageList;
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure FileNewItemClick(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses About, uCadCliente;


procedure TfrmPrincipal.FileNewItemClick(Sender: TObject);
begin
  frmCadClientes := TfrmCadClientes.create(Self);
  frmCadClientes.showmodal;
end;

procedure TfrmPrincipal.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TfrmPrincipal.ToolButton9Click(Sender: TObject);
begin
  FileNewItemClick(self);
end;

procedure TfrmPrincipal.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

end.
