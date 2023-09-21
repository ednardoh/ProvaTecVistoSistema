object dmPrincipal: TdmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 257
  Width = 392
  object FDConn: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object QryPessoa: TFDQuery
    Connection = FDConn
    UpdateObject = UPD_CadPessoa
    SQL.Strings = (
      'select * from pessoa')
    Left = 120
    Top = 24
    object QryPessoaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPessoaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object QryPessoaSOBRENOME: TStringField
      FieldName = 'SOBRENOME'
      Origin = 'SOBRENOME'
      Size = 50
    end
    object QryPessoaIDADE: TIntegerField
      FieldName = 'IDADE'
      Origin = 'IDADE'
    end
    object QryPessoaFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
  end
  object ds_Pessoa: TDataSource
    DataSet = QryPessoa
    Left = 200
    Top = 24
  end
  object OPD_AbreBanco: TOpenDialog
    Left = 280
    Top = 24
  end
  object UPD_CadPessoa: TFDUpdateSQL
    Connection = FDConn
    InsertSQL.Strings = (
      'INSERT INTO PESSOA'
      '(ID, NOME, SOBRENOME, IDADE, FOTO)'
      
        'VALUES (:NEW_ID, :NEW_NOME, :NEW_SOBRENOME, :NEW_IDADE, :NEW_FOT' +
        'O)')
    ModifySQL.Strings = (
      'UPDATE PESSOA'
      'SET NOME = :NEW_NOME, SOBRENOME = :NEW_SOBRENOME, '
      '  IDADE = :NEW_IDADE, FOTO = :NEW_FOTO'
      'WHERE ID = :OLD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM PESSOA'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      'SELECT ID, NOME, SOBRENOME, IDADE, FOTO'
      'FROM PESSOA'
      'WHERE ID = :ID')
    Left = 40
    Top = 88
  end
end
