object fmShowMusic: TfmShowMusic
  Left = 275
  Top = 346
  HelpContext = 1420
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = #1052#1077#1083#1086#1076#1080#1103
  ClientHeight = 28
  ClientWidth = 245
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbMelody: TLabel
    Left = 96
    Top = 8
    Width = 53
    Height = 13
    Caption = #1052#1077#1083#1086#1076#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MediaPlayer: TMediaPlayer
    Left = 4
    Top = 4
    Width = 85
    Height = 21
    EnabledButtons = [btPlay, btPause, btStop]
    VisibleButtons = [btPlay, btPause, btStop]
    TabOrder = 0
  end
  object Placement: TipFormPlacement
    Left = 188
  end
  object Timer: TTimer
    Interval = 10
    OnTimer = TimerTimer
    Left = 216
  end
end
