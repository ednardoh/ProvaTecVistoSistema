object frmCadClientes: TfrmCadClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 245
  ClientWidth = 507
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 18
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 231
    Top = 64
    Width = 54
    Height = 13
    Caption = 'Sobrenome'
  end
  object Label4: TLabel
    Left = 8
    Top = 112
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label5: TLabel
    Left = 368
    Top = 64
    Width = 22
    Height = 13
    Caption = 'Foto'
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 192
    Width = 340
    Height = 33
    DataSource = dmPrincipal.ds_Pessoa
    TabOrder = 5
  end
  object Edt_ID: TDBEdit
    Left = 8
    Top = 35
    Width = 121
    Height = 21
    DataField = 'ID'
    DataSource = dmPrincipal.ds_Pessoa
    TabOrder = 0
  end
  object Edt_Idade: TDBEdit
    Left = 8
    Top = 131
    Width = 121
    Height = 21
    DataField = 'IDADE'
    DataSource = dmPrincipal.ds_Pessoa
    TabOrder = 3
  end
  object Edt_Nome: TDBEdit
    Left = 8
    Top = 80
    Width = 217
    Height = 21
    DataField = 'NOME'
    DataSource = dmPrincipal.ds_Pessoa
    TabOrder = 1
  end
  object Edt_Sobrenome: TDBEdit
    Left = 232
    Top = 80
    Width = 121
    Height = 21
    DataField = 'SOBRENOME'
    DataSource = dmPrincipal.ds_Pessoa
    TabOrder = 2
  end
  object DBI_Foto: TDBImage
    Left = 368
    Top = 80
    Width = 121
    Height = 103
    Cursor = crHandPoint
    Hint = 'Clique aqui para abrir uma imagem...'
    DataField = 'FOTO'
    DataSource = dmPrincipal.ds_Pessoa
    ParentShowHint = False
    Proportional = True
    ShowHint = True
    Stretch = True
    TabOrder = 4
    OnClick = DBI_FotoClick
    OnDblClick = DBI_FotoClick
  end
  object btnSalvar: TButton
    Left = 368
    Top = 192
    Width = 121
    Height = 33
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = btnSalvarClick
  end
  object OPD_AbreImagem: TOpenDialog
    Left = 440
    Top = 24
  end
end
