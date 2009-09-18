object fmVote: TfmVote
  Left = 251
  Top = 343
  HelpContext = 1470
  BorderStyle = bsDialog
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1086#1083#1086#1089#1086#1074#1072#1085#1080#1103
  ClientHeight = 345
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label2: TLabel
    Left = 8
    Top = 52
    Width = 37
    Height = 13
    Caption = #1042#1086#1087#1088#1086#1089
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 227
    Height = 13
    Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1086#1090#1074#1077#1090#1086#1074' ('#1082#1072#1078#1076#1099#1081' '#1089' '#1085#1086#1074#1086#1081' '#1089#1090#1088#1086#1095#1082#1080')'
  end
  object eName: TipEditTS
    Left = 8
    Top = 24
    Width = 177
    TabOrder = 0
    OnChange = eNameChange
  end
  object eQuestion: TipEditTS
    Left = 8
    Top = 68
    Width = 385
    TabOrder = 3
    OnChange = eNameChange
  end
  object mAnswers: TipMemoTS
    Left = 8
    Top = 112
    Width = 385
    Height = 133
    TabOrder = 4
    OnChange = eNameChange
    ScrollBars = ssVertical
  end
  object bOK: TipButton
    Left = 47
    Top = 308
    ModalResult = 1
    Default = False
    TabOrder = 6
  end
  object bCancel: TipButton
    Left = 151
    Top = 308
    ModalResult = 2
    TabOrder = 7
  end
  object bHelp: TipButton
    Left = 255
    Top = 308
    ModalResult = 11
    TabOrder = 8
  end
  object chTimeLimit: TipCheckBoxTS
    Left = 194
    Top = 4
    Width = 182
    Alignment = taRightJustify
    AllowGrayed = False
    TabOrder = 1
    Caption = #1043#1086#1083#1086#1089#1072' '#1087#1088#1080#1085#1080#1084#1072#1102#1090#1089#1103' '#1085#1077' '#1087#1086#1079#1078#1077
    OnChange = chTimeLimitChange
    Checked = False
    State = cbUnchecked
  end
  object dteTime: TipDateTimeEditTS
    Left = 196
    Top = 24
    Width = 197
    Always2D = False
    Enabled = False
    TimeWidth = 80
    ReadOnly = False
    ShowSeconds = False
    TabOrder = 2
    Date = 38911
    Time = 0.864202002318052
    DateTime = 38911.8642020023
  end
  object chMoney: TipCheckBoxTS
    Left = 6
    Top = 252
    Width = 384
    Alignment = taRightJustify
    AllowGrayed = False
    TabOrder = 5
    Caption = #1043#1086#1083#1086#1089#1086#1074#1072#1085#1080#1077' '#1088#1072#1079#1088#1077#1096#1077#1085#1086' '#1090#1086#1083#1100#1082#1086' '#1078#1080#1090#1077#1083#1103#1084' '#1089' '#1085#1077#1085#1091#1083#1077#1074#1099#1084' '#1089#1095#1077#1090#1086#1084' '#1078#1080#1079#1085#1077#1081
    Checked = False
    State = cbUnchecked
  end
  object chShow: TipCheckBoxTS
    Left = 6
    Top = 276
    Width = 209
    Alignment = taRightJustify
    AllowGrayed = False
    TabOrder = 9
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1075#1086#1083#1086#1089#1086#1074#1072#1085#1080#1103
    Checked = False
    State = cbUnchecked
  end
  object Storage: TipFormStorage
    StoredProps.Strings = (
      'chTimeLimit.Checked'
      'dteTime.Date'
      'dteTime.Time'
      'eName.Text'
      'eQuestion.Text'
      'mAnswers.Lines'
      'chMoney.Checked'
      'chShow.Checked')
    StoredValues = <>
    Left = 168
    Top = 156
  end
end
