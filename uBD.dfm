object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 415
  Width = 424
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=SenhaF0rte123;Persist Security Info' +
      '=True;User ID=sa;Initial Catalog=LAB'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 96
  end
  object QDisciplina: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CADASTRO.DISCIPLINA;')
    Left = 144
    Top = 200
  end
  object MDisciplina: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PDisciplina'
    AfterInsert = MDisciplinaAfterInsert
    AfterPost = MDisciplinaAfterPost
    AfterCancel = MDisciplinaAfterCancel
    AfterDelete = MDisciplinaAfterDelete
    Left = 256
    Top = 200
    object MDisciplinaID: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object MDisciplinaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object MDisciplinaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 400
    end
    object MDisciplinaMEDIA: TIntegerField
      DisplayLabel = 'M'#233'dia'
      FieldName = 'MEDIA'
      ProviderFlags = [pfInUpdate]
    end
    object MDisciplinaOPCIONAL: TBooleanField
      DisplayLabel = 'Opcional'
      FieldName = 'OPCIONAL'
      ProviderFlags = [pfInUpdate]
    end
    object MDisciplinaDATA_CRIACAO: TDateTimeField
      DisplayLabel = 'Criado em'
      FieldName = 'DATA_CRIACAO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object PDisciplina: TDataSetProvider
    DataSet = QDisciplina
    Left = 200
    Top = 200
  end
end
