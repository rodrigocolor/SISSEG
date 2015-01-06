object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 377
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 133
    Top = 52
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
    Top = 54
    Width = 119
    Height = 13
    Caption = 'Numero de identifica'#231#227'o:'
  end
  object Label3: TLabel
    Left = 8
    Top = 117
    Width = 251
    Height = 13
    Caption = 'Favor enviar o codigo abaixo para o admistrador do '
  end
  object Label4: TLabel
    Left = 8
    Top = 8
    Width = 118
    Height = 13
    Caption = 'Insira o c'#243'digo recebido:'
  end
  object Label5: TLabel
    Left = 90
    Top = 306
    Width = 55
    Height = 13
    Caption = 'Resultado: '
  end
  object Label6: TLabel
    Left = 9
    Top = 213
    Width = 39
    Height = 13
    Caption = 'Encode:'
  end
  object Label7: TLabel
    Left = 9
    Top = 259
    Width = 40
    Height = 13
    Caption = 'Decode:'
  end
  object Label8: TLabel
    Left = 151
    Top = 306
    Width = 3
    Height = 13
  end
  object Label9: TLabel
    Left = 9
    Top = 332
    Width = 3
    Height = 13
  end
  object Label10: TLabel
    Left = 9
    Top = 352
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 8
    Top = 27
    Width = 376
    Height = 21
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
    OnKeyPress = Edit1KeyPress
    OnKeyUp = Edit1KeyUp
  end
  object Edit2: TEdit
    Left = 8
    Top = 136
    Width = 376
    Height = 21
    ReadOnly = True
    TabOrder = 1
    TextHint = 'Codigo de ativa'#231#227'o'
  end
  object Button2: TButton
    Left = 71
    Top = 86
    Width = 104
    Height = 25
    Caption = 'Gerar Ativa'#231#227'o'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit3: TEdit
    Left = 8
    Top = 274
    Width = 371
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 8
    Top = 232
    Width = 371
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 9
    Top = 301
    Width = 75
    Height = 25
    Caption = 'Testar'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 248
    Top = 163
    Width = 121
    Height = 25
    Caption = 'Criptografar Arquivo'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 248
    Top = 194
    Width = 121
    Height = 25
    Caption = 'descriptografar Arquivo'
    TabOrder = 7
    OnClick = Button4Click
  end
end
