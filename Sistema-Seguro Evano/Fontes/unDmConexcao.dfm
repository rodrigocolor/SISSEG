object Dmconexcao: TDmconexcao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 197
  Width = 362
  object SQLConnection1: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver200.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=20.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver200.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=20.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=database.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 176
    Top = 8
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_SEGURADO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 300
      end
      item
        Name = 'TELEFONE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TIPO_APOLICE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DTA_CONTRATO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'DTA_VENCIMENTO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'APOLICE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    StoreDefs = True
    OnNewRecord = ClientDataSet1NewRecord
    Left = 224
    Top = 56
    object ClientDataSet1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientDataSet1NOME_SEGURADO: TStringField
      FieldName = 'NOME_SEGURADO'
      Required = True
      Size = 300
    end
    object ClientDataSet1TIPO_APOLICE: TStringField
      FieldName = 'TIPO_APOLICE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1DTA_CONTRATO: TDateField
      FieldName = 'DTA_CONTRATO'
      Required = True
    end
    object ClientDataSet1DTA_VENCIMENTO: TDateField
      FieldName = 'DTA_VENCIMENTO'
      Required = True
    end
    object ClientDataSet1APOLICE: TStringField
      FieldName = 'APOLICE'
      Required = True
      Size = 100
    end
    object ClientDataSet1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      EditMask = '!\(999\)0000-0000;0;_'
      Size = 14
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from NEW_TABLE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 40
    Top = 56
    object SQLDataSet1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLDataSet1NOME_SEGURADO: TStringField
      FieldName = 'NOME_SEGURADO'
      Required = True
      Size = 300
    end
    object SQLDataSet1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      Size = 10
    end
    object SQLDataSet1TIPO_APOLICE: TStringField
      FieldName = 'TIPO_APOLICE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object SQLDataSet1DTA_CONTRATO: TDateField
      FieldName = 'DTA_CONTRATO'
      Required = True
    end
    object SQLDataSet1DTA_VENCIMENTO: TDateField
      FieldName = 'DTA_VENCIMENTO'
      Required = True
    end
    object SQLDataSet1APOLICE: TStringField
      FieldName = 'APOLICE'
      Required = True
      Size = 100
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 112
    Top = 56
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'DTA_VENCIMENTO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'NOME_SEGURADO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 300
      end
      item
        Name = 'TIPO_APOLICE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DTA_CONTRATO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'APOLICE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TELEFONE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    StoreDefs = True
    OnNewRecord = ClientDataSet1NewRecord
    Left = 232
    Top = 112
    object ClientDataSet2DTA_VENCIMENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data vencimento'
      FieldName = 'DTA_VENCIMENTO'
      Required = True
    end
    object ClientDataSet2NOME_SEGURADO: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_SEGURADO'
      Required = True
      Size = 300
    end
    object ClientDataSet2TIPO_APOLICE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_APOLICE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ClientDataSet2DTA_CONTRATO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data contrato'
      FieldName = 'DTA_CONTRATO'
      Required = True
    end
    object ClientDataSet2APOLICE: TStringField
      DisplayLabel = 'Ap'#243'lice'
      FieldName = 'APOLICE'
      Required = True
      Size = 100
    end
    object ClientDataSet2TELEFONE: TStringField
      DisplayWidth = 14
      FieldName = 'TELEFONE'
      Required = True
      EditMask = '!\(999\)0000-0000;0;_'
      Size = 14
    end
  end
  object DataSetProvider2: TDataSetProvider
    DataSet = SQLDataSet2
    Left = 120
    Top = 112
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 
      'select new_table.dta_vencimento,'#13#10'new_table.nome_segurado,'#13#10' new' +
      '_table.tipo_apolice, '#13#10'new_table.dta_contrato,'#13#10'new_table.apolic' +
      'e,'#13#10'new_table.telefone,'#13#10'new_table.id'#13#10' from new_table'#13#10'order by' +
      ' new_table.dta_vencimento'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 24
    Top = 120
  end
end
