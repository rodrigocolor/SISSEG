object Form1: TForm1
  Left = 880
  Top = 478
  Caption = 'Ativa'#231#227'o'
  ClientHeight = 180
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 133
    Top = 20
    Width = 42
    Height = 16
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 19
    Width = 119
    Height = 13
    Caption = 'Numero de identifica'#231#227'o:'
  end
  object Label3: TLabel
    Left = 8
    Top = 42
    Width = 251
    Height = 13
    Caption = 'Favor enviar o codigo abaixo para o admistrador do '
  end
  object Label4: TLabel
    Left = 265
    Top = 42
    Width = 107
    Height = 13
    Caption = 'sistema para liberacao'
  end
  object Label5: TLabel
    Left = 8
    Top = 88
    Width = 216
    Height = 13
    Caption = 'Insira o codigo repassado pelo adminstrador:'
  end
  object Edit1: TEdit
    Left = 8
    Top = 61
    Width = 394
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 104
    Width = 394
    Height = 21
    TabOrder = 1
    TextHint = 'Codigo de ativa'#231#227'o'
  end
  object Button2: TButton
    Left = 173
    Top = 145
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = Button2Click
  end
end
