object frmBuscaCEP: TfrmBuscaCEP
  Left = 0
  Top = 0
  Caption = 'Busca CEP'
  ClientHeight = 312
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn_BuscaCEP: TSpeedButton
    Left = 111
    Top = 37
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btn_BuscaCEPClick
  end
  object Label1: TLabel
    Left = 14
    Top = 22
    Width = 58
    Height = 13
    Caption = 'Digite o CEP'
  end
  object Label2: TLabel
    Left = 14
    Top = 66
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label3: TLabel
    Left = 14
    Top = 141
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object Label4: TLabel
    Left = 113
    Top = 141
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label5: TLabel
    Left = 14
    Top = 181
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label6: TLabel
    Left = 510
    Top = 181
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label7: TLabel
    Left = 14
    Top = 104
    Width = 65
    Height = 13
    Caption = 'Complemento'
  end
  object Label8: TLabel
    Left = 14
    Top = 225
    Width = 22
    Height = 13
    Caption = 'Ibge'
  end
  object Label9: TLabel
    Left = 113
    Top = 225
    Width = 57
    Height = 13
    Caption = 'C'#243'digo DDD'
  end
  object MSK_Cep: TMaskEdit
    Left = 12
    Top = 37
    Width = 95
    Height = 21
    EditMask = '##.###-###;0; '
    MaxLength = 10
    TabOrder = 0
    Text = ''
    OnKeyPress = MSK_CepKeyPress
  end
  object EdtEndereco: TEdit
    Left = 12
    Top = 80
    Width = 588
    Height = 21
    TabOrder = 1
  end
  object EdtCEP: TEdit
    Left = 12
    Top = 156
    Width = 91
    Height = 21
    TabOrder = 2
  end
  object EdtCidade: TEdit
    Left = 12
    Top = 197
    Width = 487
    Height = 21
    TabOrder = 3
  end
  object EdtBairro: TEdit
    Left = 112
    Top = 155
    Width = 488
    Height = 21
    TabOrder = 4
  end
  object EdtEstado: TEdit
    Left = 507
    Top = 197
    Width = 93
    Height = 21
    TabOrder = 5
  end
  object EdtComplemento: TEdit
    Left = 12
    Top = 118
    Width = 588
    Height = 21
    TabOrder = 6
  end
  object EdtIBGE: TEdit
    Left = 11
    Top = 241
    Width = 93
    Height = 21
    TabOrder = 7
  end
  object EdtDDD: TEdit
    Left = 110
    Top = 241
    Width = 93
    Height = 21
    TabOrder = 8
  end
  object RESTClient1: TRESTClient
    Params = <>
    HandleRedirects = True
    Left = 216
    Top = 28
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 250
    Top = 28
  end
  object RESTResponse1: TRESTResponse
    Left = 282
    Top = 28
  end
  object RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Response = RESTResponse1
    Left = 314
    Top = 28
  end
end
