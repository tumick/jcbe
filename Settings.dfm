object fmSettings: TfmSettings
  Left = 245
  Top = 155
  HelpContext = 1460
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1082#1086#1084#1087#1080#1083#1103#1090#1086#1088#1072
  ClientHeight = 318
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  DesignSize = (
    301
    318)
  PixelsPerInch = 96
  TextHeight = 13
  object bOK: TipButton
    Left = 8
    Top = 282
    Width = 92
    ModalResult = 1
    Anchors = [akLeft, akBottom]
    TabOrder = 1
  end
  object bCancel: TipButton
    Left = 104
    Top = 282
    Width = 92
    ModalResult = 2
    Anchors = [akLeft, akBottom]
    TabOrder = 2
  end
  object PageControl: TPageControl
    Left = 4
    Top = 4
    Width = 293
    Height = 269
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1054#1073#1097#1080#1077
      object Label1: TLabel
        Left = 8
        Top = 12
        Width = 80
        Height = 13
        Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088
      end
      object Label3: TLabel
        Left = 148
        Top = 12
        Width = 108
        Height = 13
        Caption = #1052#1072#1082#1089'. '#1091#1088#1086#1074#1077#1085#1100' '#1086#1090#1084#1077#1085
      end
      object Label4: TLabel
        Left = 8
        Top = 56
        Width = 38
        Height = 13
        Caption = #1055#1072#1088#1086#1083#1100
      end
      object Label5: TLabel
        Left = 8
        Top = 116
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
        Left = 8
        Top = 136
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
      object Label7: TLabel
        Left = 8
        Top = 196
        Width = 115
        Height = 13
        Caption = #1040#1076#1088#1077#1089' '#1089#1077#1088#1074#1077#1088#1072' '#1043#1086#1088#1086#1076#1072
      end
      object Label8: TLabel
        Left = 204
        Top = 196
        Width = 25
        Height = 13
        Caption = #1055#1086#1088#1090
      end
      object eID: TipEditTS
        Left = 8
        Top = 28
        Width = 129
        TabOrder = 0
        Text = 'eID'
      end
      object GroupBox1: TGroupBox
        Left = 148
        Top = 60
        Width = 129
        Height = 69
        Caption = ' '#1057#1090#1080#1083#1100' '#1082#1085#1080#1075' '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        object rbPhone: TRadioButton
          Left = 8
          Top = 44
          Width = 109
          Height = 17
          Hint = 
            '* '#1089#1090#1088#1072#1085#1080#1094#1072' root '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1072' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102'|* '#1082#1072#1088#1090#1080#1085#1082#1080' '#1091#1082#1072#1079#1099#1074#1072#1102#1090#1089#1103' '#1087 +
            #1086' '#1085#1086#1084#1077#1088#1091' '#1074#1083#1086#1078#1077#1085#1080#1103
          Caption = #1050#1072#1082' '#1089' '#1090#1077#1083#1077#1092#1086#1085#1072
          TabOrder = 1
        end
        object rbRegular: TRadioButton
          Left = 8
          Top = 20
          Width = 101
          Height = 17
          Hint = 
            '* '#1085#1091#1078#1085#1086' '#1086#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1084#1080#1085#1080#1084#1091#1084' 1 '#1089#1090#1088#1072#1085#1080#1094#1091'|* '#1082#1072#1088#1090#1080#1085#1082#1080' '#1091#1082#1072#1079#1099#1074#1072#1102#1090#1089#1103' '#1087#1086' ' +
            #1080#1084#1077#1085#1080' '#1092#1072#1081#1083#1072
          Caption = #1054#1073#1099#1095#1085#1072#1103' '#1082#1085#1080#1075#1072
          TabOrder = 0
        end
      end
      object seUndo: TipSpinEditTS
        Left = 148
        Top = 28
        Width = 129
        TabOrder = 2
        MinValue = 0
        MaxValue = 0
        Value = 0
      end
      object ePwd: TipEditTS
        Left = 8
        Top = 72
        Width = 129
        TabOrder = 1
        Text = 'ePwd'
      end
      object bInfo: TipButton
        Left = 164
        Top = 148
        Caption = #1048#1085#1089#1090#1088#1091#1082#1094#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = bInfoClick
      end
      object eJCHost: TipEditTS
        Left = 8
        Top = 212
        Width = 185
        TabOrder = 5
      end
      object eJCPort: TipEditTS
        Left = 204
        Top = 212
        Width = 71
        TabOrder = 6
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1086#1095#1090#1072
      ImageIndex = 1
      object Label16: TLabel
        Left = 8
        Top = 12
        Width = 168
        Height = 13
        Caption = #1057#1077#1088#1074#1077#1088' '#1080#1089#1093#1086#1076#1103#1097#1077#1081' '#1087#1086#1095#1090#1099' (SMTP)'
      end
      object Label18: TLabel
        Left = 8
        Top = 56
        Width = 31
        Height = 13
        Caption = #1051#1086#1075#1080#1085
      end
      object Label19: TLabel
        Left = 148
        Top = 56
        Width = 38
        Height = 13
        Caption = #1055#1072#1088#1086#1083#1100
      end
      object Label23: TLabel
        Left = 8
        Top = 144
        Width = 91
        Height = 13
        Caption = #1040#1076#1088#1077#1089' '#1087#1086#1083#1091#1095#1072#1090#1077#1083#1103
      end
      object Label21: TLabel
        Left = 8
        Top = 100
        Width = 98
        Height = 13
        Caption = #1040#1076#1088#1077#1089' '#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1103
      end
      object Label2: TLabel
        Left = 204
        Top = 12
        Width = 25
        Height = 13
        Caption = #1055#1086#1088#1090
      end
      object eHost: TipEditTS
        Left = 8
        Top = 28
        Width = 185
        TabOrder = 0
        Text = 'eHost'
      end
      object eLogin: TipEditTS
        Left = 8
        Top = 72
        Width = 129
        TabOrder = 2
        Text = 'eLogin'
      end
      object ePassword: TipPasswordEditTS
        Left = 148
        Top = 72
        Width = 129
        TabOrder = 3
        PasswordChar = '*'
      end
      object eTo: TipEditTS
        Left = 8
        Top = 160
        Width = 267
        TabOrder = 5
        Text = 'eTo'
      end
      object eFrom: TipEditTS
        Left = 8
        Top = 116
        Width = 267
        TabOrder = 4
        Text = 'eFrom'
      end
      object rgAuth: TRadioGroup
        Left = 8
        Top = 188
        Width = 273
        Height = 45
        Caption = ' '#1040#1091#1090#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1103' '
        Columns = 4
        Items.Strings = (
          'None'
          'Plain'
          'Login'
          'Cram')
        TabOrder = 6
      end
      object ePort: TipEditTS
        Left = 204
        Top = 28
        Width = 71
        TabOrder = 1
        Text = 'ePort'
      end
    end
  end
  object bHelp: TipButton
    Left = 200
    Top = 282
    Width = 92
    ModalResult = 11
    Anchors = [akLeft, akBottom]
    TabOrder = 3
  end
  object Storage: TipFormStorage
    StoredProps.Strings = (
      'PageControl.ActivePage')
    StoredValues = <>
    Left = 160
    Top = 4
  end
end
