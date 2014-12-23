object FormCadastro: TFormCadastro
  Left = 780
  Top = 312
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Ap'#243'lices'
  ClientHeight = 422
  ClientWidth = 264
  Color = clBtnFace
  Constraints.MaxHeight = 460
  Constraints.MaxWidth = 280
  Constraints.MinHeight = 460
  Constraints.MinWidth = 280
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 8
    Top = 100
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label4: TLabel
    Left = 8
    Top = 296
    Width = 69
    Height = 13
    Caption = 'Data Contrato'
  end
  object Label5: TLabel
    Left = 8
    Top = 336
    Width = 81
    Height = 13
    Caption = 'Data vencimento'
  end
  object Label3: TLabel
    Left = 8
    Top = 54
    Width = 34
    Height = 13
    Caption = 'Ap'#243'lice'
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 146
    Width = 134
    Height = 143
    Caption = 'Tipo de ap'#243'lice'
    Items.Strings = (
      '1 - Pessoal'
      '2 - Empresarial'
      '3 - Veic. Pessoal'
      '4- Veic. Empresarial')
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object dtpContrato: TDateTimePicker
    Left = 8
    Top = 313
    Width = 94
    Height = 21
    Date = 41995.651742500000000000
    Time = 41995.651742500000000000
    TabOrder = 4
  end
  object dtpVencimento: TDateTimePicker
    Left = 8
    Top = 355
    Width = 94
    Height = 21
    Date = 41995.651742500000000000
    Time = 41995.651742500000000000
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 389
    Width = 81
    Height = 25
    Caption = 'Cadastrar'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 389
    Width = 81
    Height = 25
    Caption = 'Cancelar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 7
  end
  object EditNome: TEdit
    Left = 8
    Top = 27
    Width = 250
    Height = 21
    TabOrder = 0
    TextHint = 'Nome'
  end
  object EditApolice: TEdit
    Left = 8
    Top = 73
    Width = 250
    Height = 21
    TabOrder = 1
    TextHint = 'Ap'#243'lice'
  end
  object EditTelefone: TEdit
    Left = 8
    Top = 119
    Width = 250
    Height = 21
    TabOrder = 2
    TextHint = 'telefone'
  end
  object DataSource1: TDataSource
    DataSet = Dmconexcao.ClientDataSet1
    Left = 192
    Top = 96
  end
end
