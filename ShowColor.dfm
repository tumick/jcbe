object fmShowColor: TfmShowColor
  Left = 294
  Top = 138
  HelpContext = 1410
  BorderStyle = bsDialog
  Caption = #1062#1074#1077#1090
  ClientHeight = 96
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 92
    Top = 28
    Width = 202
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1101#1090#1086#1090' '#1094#1074#1077#1090' '#1087#1086#1076#1083#1086#1078#1082#1080' '#1082#1085#1080#1075#1080'?'
  end
  object lColor: TLabel
    Left = 92
    Top = 12
    Width = 72
    Height = 13
    Caption = '255:255:255'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ColorPanel: TipColorPanel
    Left = 8
    Top = 8
    Width = 73
    Height = 41
    TabOrder = 0
    OnChange = ColorPanelChange
    Color = clBlack
  end
  object bOK: TipButton
    Left = 12
    Top = 60
    Width = 92
    ModalResult = 1
    TabOrder = 1
  end
  object bCancel: TipButton
    Left = 108
    Top = 60
    Width = 92
    ModalResult = 2
    TabOrder = 2
  end
  object bHelp: TipButton
    Left = 204
    Top = 60
    Width = 92
    ModalResult = 11
    TabOrder = 3
  end
end
