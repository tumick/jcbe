object fmInfo: TfmInfo
  Left = 249
  Top = 186
  ActiveControl = reInfo
  BorderStyle = bsDialog
  Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
  ClientHeight = 337
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bOK: TipButton
    Left = 180
    Top = 304
    ModalResult = 1
    TabOrder = 0
  end
  object reInfo: TRichEdit
    Left = 8
    Top = 8
    Width = 445
    Height = 289
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    WantReturns = False
  end
end
