object fmFirstStart: TfmFirstStart
  Left = 234
  Top = 133
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
  ClientHeight = 326
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 274
    Height = 45
    AutoSize = False
    Caption = 
      #1042#1099' '#1079#1072#1087#1091#1089#1090#1080#1083#1080' '#1056#1077#1076#1072#1082#1090#1086#1088' '#1082#1085#1080#1075' '#1074#1087#1077#1088#1074#1099#1077'. '#1042#1074#1077#1076#1080#1090#1077', '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072', '#1085#1077#1086#1073#1093#1086#1076 +
      #1080#1084#1099#1077' '#1076#1083#1103' '#1077#1075#1086' '#1088#1072#1073#1086#1090#1099' '#1089#1074#1077#1076#1077#1085#1080#1103':'
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 52
    Width = 273
    Height = 113
    Caption = ' '#1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072' '
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 20
      Width = 205
      Height = 13
      Caption = #1040#1076#1088#1077#1089' '#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1103' ('#1085#1077'-'#1075#1086#1088#1086#1076#1089#1082#1086#1081' e-mail)'
    end
    object Label8: TLabel
      Left = 12
      Top = 64
      Width = 183
      Height = 13
      Caption = #1040#1076#1088#1077#1089' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103' ('#1075#1086#1088#1086#1076#1089#1082#1086#1081' e-mail)'
    end
    object eTo: TipEditTS
      Left = 12
      Top = 80
      Width = 249
      TabOrder = 1
    end
    object eFrom: TipEditTS
      Left = 12
      Top = 36
      Width = 249
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 172
    Width = 273
    Height = 113
    Caption = ' '#1043#1086#1088#1086#1076#1089#1082#1072#1103' '#1091#1095#1077#1090#1085#1072#1103' '#1079#1072#1087#1080#1089#1100' '
    TabOrder = 1
    object Label3: TLabel
      Left = 12
      Top = 20
      Width = 80
      Height = 13
      Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
    end
    object Label4: TLabel
      Left = 12
      Top = 64
      Width = 38
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object Label5: TLabel
      Left = 128
      Top = 20
      Width = 129
      Height = 17
      AutoSize = False
      Caption = #1042#1053#1048#1052#1040#1053#1048#1045'!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 128
      Top = 36
      Width = 129
      Height = 45
      AutoSize = False
      Caption = 
        #1055#1088#1077#1078#1076#1077' '#1095#1077#1084' '#1074#1074#1086#1076#1080#1090#1100' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1080' '#1087#1072#1088#1086#1083#1100', '#1087#1088#1086#1095#1080#1090#1072#1081#1090#1077' '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1102 +
        '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object eID: TipEditTS
      Left = 12
      Top = 36
      Width = 101
      TabOrder = 0
      Text = 'eID'
    end
    object ePwd: TipEditTS
      Left = 12
      Top = 80
      Width = 101
      TabOrder = 1
      Text = 'ePwd'
    end
    object bInfo: TipButton
      Left = 140
      Top = 80
      Height = 21
      Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bInfoClick
    end
  end
  object bOK: TipButton
    Left = 51
    Top = 292
    Width = 92
    ModalResult = 1
    TabOrder = 2
  end
  object bCancel: TipButton
    Left = 147
    Top = 292
    Width = 92
    ModalResult = 2
    TabOrder = 3
  end
end
