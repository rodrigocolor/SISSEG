object unFormMenuP: TunFormMenuP
  Left = 0
  Top = 0
  Caption = 'Gerenciamento de Seguros'
  ClientHeight = 477
  ClientWidth = 1012
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ImageBG: TImage
    Left = 0
    Top = 49
    Width = 1012
    Height = 409
    Align = alClient
    Stretch = True
    ExplicitTop = 43
    ExplicitWidth = 1011
    ExplicitHeight = 426
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1012
    Height = 49
    CustomHint = BalloonHint1
    Caption = 'ToolBar1'
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 458
    Width = 1012
    Height = 19
    CustomHint = BalloonHint1
    Panels = <
      item
        Width = 300
      end
      item
        Alignment = taRightJustify
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Width = 50
      end>
  end
  object ActionList1: TActionList
    Left = 976
    Top = 160
    object FileExit: TFileExit
      Caption = 'E&xit'
      Hint = 'Sair|Sair da aplica'#231#227'o'
      ImageIndex = 43
    end
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object MainMenu1: TMainMenu
    Left = 968
    Top = 104
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Sair1: TMenuItem
        Action = FileExit
        Caption = '&Sair'
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 976
    Top = 432
  end
  object ImageList1: TImageList
    Left = 968
    Top = 56
  end
  object BalloonHint1: TBalloonHint
    Delay = 350
    Left = 864
    Top = 216
  end
  object ApplicationEvents1: TApplicationEvents
    OnHint = ApplicationEvents1Hint
    Left = 960
    Top = 216
  end
end
