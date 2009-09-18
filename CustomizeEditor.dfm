object fmCustomizeEditor: TfmCustomizeEditor
  Left = 188
  Top = 145
  HelpContext = 1450
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1088#1077#1076#1072#1082#1090#1086#1088#1072
  ClientHeight = 564
  ClientWidth = 749
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 8
    Top = 4
    Width = 281
    Height = 325
    Caption = ' '#1069#1083#1077#1084#1077#1085#1090#1099' '#1089#1080#1085#1090#1072#1082#1089#1080#1089#1072' '
    TabOrder = 0
    object Label1: TLabel
      Left = 204
      Top = 195
      Width = 30
      Height = 13
      Caption = #1057#1090#1080#1083#1100
    end
    object Label7: TLabel
      Left = 204
      Top = 18
      Width = 62
      Height = 13
      Caption = #1062#1074#1077#1090' '#1090#1077#1082#1089#1090#1072
    end
    object Label2: TLabel
      Left = 204
      Top = 106
      Width = 54
      Height = 13
      Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072
    end
    object lbSyntax: TipListBoxTS
      Left = 8
      Top = 20
      Width = 189
      Height = 293
      AllowGrayed = False
      BorderStyle = bsNone
      CheckMarks = False
      ItemHeight = 16
      Items.Strings = (
        #1054#1089#1085#1086#1074#1085#1086#1081' '#1090#1077#1082#1089#1090
        #1058#1101#1075
        #1044#1080#1088#1077#1082#1090#1080#1074#1072
        #1058#1101#1075'-'#1087#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1089#1090#1088#1072#1085#1080#1094#1091
        #1058#1101#1075' '#1080#1083#1080' '#1076#1080#1088#1077#1082#1090#1080#1074#1072' '#1089' '#1086#1096#1080#1073#1082#1086#1081
        #1040#1090#1088#1080#1073#1091#1090' '#1090#1101#1075#1072
        #1040#1090#1088#1080#1073#1091#1090' '#1076#1080#1088#1077#1082#1090#1080#1074#1099
        #1052#1077#1090#1082#1072' '#1089#1090#1088#1072#1085#1080#1094#1099
        #1042#1072#1088#1080#1072#1085#1090' '#1089#1090#1088#1072#1085#1080#1094#1099
        #1055#1086#1076#1089#1090#1072#1085#1086#1074#1082#1072
        #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        #1055#1088#1086#1073#1077#1083
        #1063#1080#1089#1083#1086
        #1057#1082#1088#1080#1087#1090
        #1057#1082#1088#1080#1087#1090' - '#1082#1083#1102#1095#1077#1074#1086#1077' '#1089#1083#1086#1074#1086
        #1057#1082#1088#1080#1087#1090' - '#1092#1091#1085#1082#1094#1080#1103
        #1057#1082#1088#1080#1087#1090' - '#1084#1077#1090#1082#1072
        #1057#1082#1088#1080#1087#1090' - '#1082#1086#1085#1089#1090#1072#1085#1090#1072)
      TabOrder = 0
      OnClick = lbSyntaxClick
    end
    object fssSyntax: TipFontStylesSet
      Left = 204
      Top = 210
      Enabled = False
      FontStyles = []
      ConsistentStyles = [fsBold, fsItalic, fsUnderline]
      OnChange = cgSyntaxChange
    end
    object cpText: TipColorPanel
      Left = 204
      Top = 34
      Width = 66
      Height = 66
      Enabled = False
      Caption = #1058#1077#1082#1089#1090
      TabOrder = 1
      OnChange = cpTextChange
      Color = 10791082
    end
    object cpBack: TipColorPanel
      Left = 204
      Top = 122
      Width = 66
      Height = 66
      Enabled = False
      Caption = #1060#1086#1085
      TabOrder = 2
      OnChange = cpBackChange
      Color = 10791082
    end
  end
  object bbOK: TipButton
    Left = 12
    Top = 524
    Width = 88
    ModalResult = 1
    TabOrder = 3
  end
  object bbCancel: TipButton
    Left = 104
    Top = 524
    Width = 88
    ModalResult = 2
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 340
    Width = 281
    Height = 173
    Caption = ' '#1054#1073#1097#1080#1077' '#1089#1074#1086#1081#1089#1090#1074#1072' '
    TabOrder = 1
    object Label8: TLabel
      Left = 12
      Top = 108
      Width = 110
      Height = 13
      Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072' '#1088#1077#1076#1072#1082#1090#1086#1088#1072
    end
    object Label5: TLabel
      Left = 12
      Top = 64
      Width = 105
      Height = 13
      Caption = #1062#1074#1077#1090' '#1087#1088#1072#1074#1086#1081' '#1082#1088#1086#1084#1082#1080
    end
    object Label6: TLabel
      Left = 212
      Top = 64
      Width = 35
      Height = 13
      Caption = #1054#1090#1089#1090#1091#1087
    end
    object Label3: TLabel
      Left = 12
      Top = 20
      Width = 34
      Height = 13
      Caption = #1064#1088#1080#1092#1090
    end
    object Label4: TLabel
      Left = 212
      Top = 20
      Width = 39
      Height = 13
      Caption = #1056#1072#1079#1084#1077#1088
    end
    object cpMain: TipColorPanel
      Left = 12
      Top = 123
      Width = 256
      Height = 39
      TabOrder = 4
      OnChange = cpMainChange
      Color = clBlack
    end
    object ccbRight: TipColorComboBox
      Left = 12
      Top = 80
      Width = 192
      TabOrder = 2
      OnChange = ccbRightChange
      ItemHeight = 16
      DefaultDrawList = False
      SelectedColor = -1
    end
    object fseRight: TipFontSizeEdit
      Left = 212
      Top = 80
      Width = 57
      Height = 20
      TabOrder = 3
      OnChange = fseRightChange
      Value = 1
    end
    object fcbText: TipFontComboBox
      Left = 12
      Top = 36
      Width = 192
      TabOrder = 0
      OnChange = fcbTextChange
      SelectedFont = 'fcbText'
      ItemHeight = 16
      DefaultDrawList = False
    end
    object fseText: TipFontSizeEdit
      Left = 212
      Top = 36
      Width = 57
      Height = 20
      TabOrder = 1
      OnChange = fseTextChange
      Value = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 300
    Top = 4
    Width = 441
    Height = 553
    Caption = ' '#1055#1088#1080#1084#1077#1088' '
    TabOrder = 2
    object mwSample: TmwCustomEdit
      Left = 10
      Top = 19
      Width = 421
      Height = 522
      Cursor = crIBeam
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnShadow
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Gutter.LeftOffset = 0
      Gutter.ShowLineNumbers = True
      HighLighter = Syn
      Keystrokes = <
        item
          ShortCut = 38
          ShortCut2 = 0
          Command = ecUp
        end
        item
          ShortCut = 8230
          ShortCut2 = 0
          Command = ecSelUp
        end
        item
          ShortCut = 16422
          ShortCut2 = 0
          Command = ecScrollUp
        end
        item
          ShortCut = 40
          ShortCut2 = 0
          Command = ecDown
        end
        item
          ShortCut = 8232
          ShortCut2 = 0
          Command = ecSelDown
        end
        item
          ShortCut = 16424
          ShortCut2 = 0
          Command = ecScrollDown
        end
        item
          ShortCut = 37
          ShortCut2 = 0
          Command = ecLeft
        end
        item
          ShortCut = 8229
          ShortCut2 = 0
          Command = ecSelLeft
        end
        item
          ShortCut = 16421
          ShortCut2 = 0
          Command = ecWordLeft
        end
        item
          ShortCut = 24613
          ShortCut2 = 0
          Command = ecSelWordLeft
        end
        item
          ShortCut = 39
          ShortCut2 = 0
          Command = ecRight
        end
        item
          ShortCut = 8231
          ShortCut2 = 0
          Command = ecSelRight
        end
        item
          ShortCut = 16423
          ShortCut2 = 0
          Command = ecWordRight
        end
        item
          ShortCut = 24615
          ShortCut2 = 0
          Command = ecSelWordRight
        end
        item
          ShortCut = 34
          ShortCut2 = 0
          Command = ecPageDown
        end
        item
          ShortCut = 8226
          ShortCut2 = 0
          Command = ecSelPageDown
        end
        item
          ShortCut = 16418
          ShortCut2 = 0
          Command = ecPageBottom
        end
        item
          ShortCut = 24610
          ShortCut2 = 0
          Command = ecSelPageBottom
        end
        item
          ShortCut = 33
          ShortCut2 = 0
          Command = ecPageUp
        end
        item
          ShortCut = 8225
          ShortCut2 = 0
          Command = ecSelPageUp
        end
        item
          ShortCut = 16417
          ShortCut2 = 0
          Command = ecPageTop
        end
        item
          ShortCut = 24609
          ShortCut2 = 0
          Command = ecSelPageTop
        end
        item
          ShortCut = 36
          ShortCut2 = 0
          Command = ecLineStart
        end
        item
          ShortCut = 8228
          ShortCut2 = 0
          Command = ecSelLineStart
        end
        item
          ShortCut = 16420
          ShortCut2 = 0
          Command = ecEditorTop
        end
        item
          ShortCut = 24612
          ShortCut2 = 0
          Command = ecSelEditorTop
        end
        item
          ShortCut = 35
          ShortCut2 = 0
          Command = ecLineEnd
        end
        item
          ShortCut = 8227
          ShortCut2 = 0
          Command = ecSelLineEnd
        end
        item
          ShortCut = 16419
          ShortCut2 = 0
          Command = ecEditorBottom
        end
        item
          ShortCut = 24611
          ShortCut2 = 0
          Command = ecSelEditorBottom
        end
        item
          ShortCut = 45
          ShortCut2 = 0
          Command = ecToggleMode
        end
        item
          ShortCut = 16429
          ShortCut2 = 0
          Command = ecCopy
        end
        item
          ShortCut = 8237
          ShortCut2 = 0
          Command = ecPaste
        end
        item
          ShortCut = 46
          ShortCut2 = 0
          Command = ecDeleteChar
        end
        item
          ShortCut = 8238
          ShortCut2 = 0
          Command = ecCut
        end
        item
          ShortCut = 8
          ShortCut2 = 0
          Command = ecDeleteLastChar
        end
        item
          ShortCut = 16392
          ShortCut2 = 0
          Command = ecDeleteLastWord
        end
        item
          ShortCut = 32776
          ShortCut2 = 0
          Command = ecUndo
        end
        item
          ShortCut = 40968
          ShortCut2 = 0
          Command = ecRedo
        end
        item
          ShortCut = 13
          ShortCut2 = 0
          Command = ecLineBreak
        end
        item
          ShortCut = 16449
          ShortCut2 = 0
          Command = ecSelectAll
        end
        item
          ShortCut = 16451
          ShortCut2 = 0
          Command = ecCopy
        end
        item
          ShortCut = 24649
          ShortCut2 = 0
          Command = ecBlockIndent
        end
        item
          ShortCut = 16461
          ShortCut2 = 0
          Command = ecLineBreak
        end
        item
          ShortCut = 16462
          ShortCut2 = 0
          Command = ecInsertLine
        end
        item
          ShortCut = 16468
          ShortCut2 = 0
          Command = ecDeleteWord
        end
        item
          ShortCut = 24661
          ShortCut2 = 0
          Command = ecBlockUnindent
        end
        item
          ShortCut = 16470
          ShortCut2 = 0
          Command = ecPaste
        end
        item
          ShortCut = 16472
          ShortCut2 = 0
          Command = ecCut
        end
        item
          ShortCut = 16473
          ShortCut2 = 0
          Command = ecDeleteLine
        end
        item
          ShortCut = 24665
          ShortCut2 = 0
          Command = ecDeleteEOL
        end
        item
          ShortCut = 16474
          ShortCut2 = 0
          Command = ecUndo
        end
        item
          ShortCut = 24666
          ShortCut2 = 0
          Command = ecRedo
        end
        item
          ShortCut = 16432
          ShortCut2 = 0
          Command = ecGotoMarker0
        end
        item
          ShortCut = 16433
          ShortCut2 = 0
          Command = ecGotoMarker1
        end
        item
          ShortCut = 16434
          ShortCut2 = 0
          Command = ecGotoMarker2
        end
        item
          ShortCut = 16435
          ShortCut2 = 0
          Command = ecGotoMarker3
        end
        item
          ShortCut = 16436
          ShortCut2 = 0
          Command = ecGotoMarker4
        end
        item
          ShortCut = 16437
          ShortCut2 = 0
          Command = ecGotoMarker5
        end
        item
          ShortCut = 16438
          ShortCut2 = 0
          Command = ecGotoMarker6
        end
        item
          ShortCut = 16439
          ShortCut2 = 0
          Command = ecGotoMarker7
        end
        item
          ShortCut = 16440
          ShortCut2 = 0
          Command = ecGotoMarker8
        end
        item
          ShortCut = 16441
          ShortCut2 = 0
          Command = ecGotoMarker9
        end
        item
          ShortCut = 24624
          ShortCut2 = 0
          Command = ecSetMarker0
        end
        item
          ShortCut = 24625
          ShortCut2 = 0
          Command = ecSetMarker1
        end
        item
          ShortCut = 24626
          ShortCut2 = 0
          Command = ecSetMarker2
        end
        item
          ShortCut = 24627
          ShortCut2 = 0
          Command = ecSetMarker3
        end
        item
          ShortCut = 24628
          ShortCut2 = 0
          Command = ecSetMarker4
        end
        item
          ShortCut = 24629
          ShortCut2 = 0
          Command = ecSetMarker5
        end
        item
          ShortCut = 24630
          ShortCut2 = 0
          Command = ecSetMarker6
        end
        item
          ShortCut = 24631
          ShortCut2 = 0
          Command = ecSetMarker7
        end
        item
          ShortCut = 24632
          ShortCut2 = 0
          Command = ecSetMarker8
        end
        item
          ShortCut = 24633
          ShortCut2 = 0
          Command = ecSetMarker9
        end
        item
          ShortCut = 24654
          ShortCut2 = 0
          Command = ecNormalSelect
        end
        item
          ShortCut = 24643
          ShortCut2 = 0
          Command = ecColumnSelect
        end
        item
          ShortCut = 24652
          ShortCut2 = 0
          Command = ecLineSelect
        end
        item
          ShortCut = 9
          ShortCut2 = 0
          Command = ecTab
        end
        item
          ShortCut = 8201
          ShortCut2 = 0
          Command = ecShiftTab
        end
        item
          ShortCut = 24642
          ShortCut2 = 0
          Command = ecMatchBracket
        end
        item
          ShortCut = 116
          ShortCut2 = 0
          Command = ecToggleBreak
        end>
      Lines.Strings = (
        '$title '#1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
        '$background 255:200:128'
        '!  '#1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1087#1086#1076#1089#1090#1072#1085#1086#1074#1082#1080
        '$define caption <hr><big>'#1050#1053#1048#1043#1040'!</big><hr><p>'
        '!  '#1044#1080#1088#1077#1082#1090#1080#1074#1072' '#1089' '#1086#1096#1080#1073#1082#1086#1081
        '$wrong '#1087#1088#1080#1084#1077#1088
        '!('
        '      /'#1084#1085#1086#1075#1086#1089#1090#1088#1086#1095#1085#1099#1081' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'/'
        '      '#1060#1091#1085#1082#1094#1080#1103' ('#1089#1082#1088#1080#1087#1090')'
        ')!'
        '$f test() ('
        '  a=*padd.0.0 br.go'
        '  l.do =*text.*a.TEST br.ee l.go =*f.my.1 bf.do'
        ')'
        ''
        ':root ('#1075#1083#1072#1074#1085#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072')'
        '  %caption%'
        '  <pc><b>'#1055#1088#1080#1084#1077#1088' '#1082#1085#1080#1075#1080'</b>'
        '  <hr>'
        '  <p>'#1058#1077#1082#1089#1090' '#1082#1085#1080#1075#1080' '#1086#1089#1085#1086#1074#1085#1086#1081
        '!  '#1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081', '#1080#1075#1085#1086#1088#1080#1088#1091#1077#1090#1089#1103' '#1087#1088#1080' '#1082#1086#1084#1087#1080#1083#1103#1094#1080#1080
        '  <page2(set x=0)> '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1089#1090#1088#1072#1085#1080#1094#1091' 2'
        ''
        ':page2 ('#1089#1090#1088#1072#1085#1080#1094#1072' 2)'
        '  %caption%'
        '  <forum:12345678> '#1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1092#1086#1088#1091#1084' 12345678'
        '  <wrong> '#1058#1101#1075' '#1089' '#1086#1096#1080#1073#1082#1086#1081
        '= ('#1076#1088#1091#1075#1086#1081' '#1074#1072#1088#1080#1072#1085#1090' '#1089#1090#1088#1072#1085#1080#1094#1099' 2)'
        '  <site:12345678 *'#1092#1086#1090#1086#1075#1088#1072#1092#1080#1103'*> '#1052#1086#1103' '#1092#1086#1090#1086#1075#1088#1072#1092#1080#1103
        '  <aboutme> '#1054#1073#1086' '#1084#1085#1077)
      MaxUndo = 10
      Options = [mweoAutoIndent, mweoDragDropEditing, mweoNoCaret, mweoScrollPastEol, mweoShowScrollHint, mweoTabsToSpaces, mweoSmartTabs]
      ReadOnly = True
      ScrollBars = ssNone
      WantTabs = False
    end
  end
  object bHelp: TipButton
    Left = 196
    Top = 524
    Width = 88
    ModalResult = 11
    TabOrder = 5
  end
  object ssFormPlacement1: TipFormPlacement
    Left = 156
    Top = 172
  end
  object Syn: TipBookSyn
    KeyWords.Strings = (
      '$BACKGROUND'
      '$BOOK'
      '$BOOKSMILE'
      '$DEFINE'
      '$F'
      '$HEADER'
      '$ID'
      '$INCLUDE'
      '$KEY'
      '$KEYPAD'
      '$KPSTYLE'
      '$NODEBUG'
      '$P'
      '$PAGE'
      '$PAY1'
      '$PAY2'
      '$PAY3'
      '$PC'
      '$PR'
      '$PS'
      '$SET'
      '$SMILE'
      '$STYLE'
      '$SUFFIX'
      '$TITLE'
      '$VOTE'
      '$VOTETO'
      '</B'
      '</BIG'
      '</COLOR'
      '</I'
      '</MONO'
      '</SMALL'
      '</U'
      '<A'
      '<ABOUTME'
      '<ATTACH'
      '<B'
      '<BIG'
      '<BR'
      '<CHAT'
      '<CITY'
      '<COLOR'
      '<COUNTER'
      '<DATE'
      '<EDIT'
      '<ELSE'
      '<ELSEIF'
      '<ELSEIFF'
      '<ELSEIFH'
      '<ELSEIFMASK'
      '<ENDIF'
      '<F'
      '<FORUM'
      '<G'
      '<GCHAT'
      '<GET'
      '<GFORUM'
      '<HR'
      '<HTTP'
      '<I'
      '<IF'
      '<IFF'
      '<IFH'
      '<IFMASK'
      '<IMG'
      '<INFO'
      '<JCHAT'
      '<JFORUM'
      '<KP'
      '<LGET'
      '<LPOST'
      '<MASK'
      '<MCHAT'
      '<MFORUM'
      '<MONO'
      '<NICK'
      '<P'
      '<PAY'
      '<PAYME'
      '<PC'
      '<PCHAT'
      '<PFORUM'
      '<POST'
      '<PR'
      '<PS'
      '<PSITE'
      '<RESETKPSTYLE'
      '<RESETSMILE'
      '<SELECT'
      '<SENDME'
      '<SETKPSTYLE'
      '<SETSMILE'
      '<SETVITRINA'
      '<SHOWKPSTYLE'
      '<SHOWSMILE'
      '<SHOWTOP'
      '<SHOWVOTE'
      '<SITE'
      '<SIZE'
      '<SMALL'
      '<STORE'
      '<SUBST'
      '<TOGGLE'
      '<U'
      '<VOTE'
      '<VOTEP'
      '<WRITETOP'
      '<Z')
    ScriptKeyWords.Strings = (
      'BF'
      'BGE'
      'BGT'
      'BLE'
      'BLT'
      'BNZ'
      'BR'
      'BREAK'
      'BT'
      'BZ'
      'ERR'
      'FLAG'
      'FOR'
      'ID'
      'L'
      'MASK'
      'NEXT')
    ScriptFuncs.Strings = (
      'ARC'
      'BACKGROUND'
      'BITCOUNT'
      'BOX'
      'COLOR'
      'COUNTER'
      'ERROR'
      'F'
      'FLAG'
      'FONT'
      'FREE'
      'GET'
      'HEIGHT'
      'INDEX'
      'INDEXOF'
      'LENGTH'
      'LINE'
      'MASK'
      'MEMORY'
      'NEW'
      'NEXT'
      'NEXTA'
      'NROW'
      'PADD'
      'PCOPY'
      'PDEL'
      'PMOVE'
      'PSWAP'
      'RANDOM'
      'SADD'
      'SCREEN'
      'SCRIPT'
      'SCROLL'
      'SET'
      'SH'
      'SIZE'
      'SMILE'
      'SS'
      'START'
      'SUBSTRING'
      'SW'
      'SX'
      'SXY'
      'SY'
      'SZ'
      'TEXT'
      'TIME'
      'TIMER'
      'V'
      'VH'
      'VSET'
      'VW'
      'VX'
      'VY'
      'WIDTH'
      'XY')
    LinkWords.Strings = (
      '<PAGE2'
      '<ROOT')
    IdentifierChars = 
      '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz'#1038 +
      #1118#1168#1025#1028#1031#1030#1110#1169#1105#1108#1111#1040#1041#1042#1043#1044#1045#1046#1047#1048#1049#1050#1051#1052#1053#1054#1055#1056#1057#1058#1059#1060#1061#1062#1063#1064#1065#1066#1067#1068#1069#1070#1071#1072#1073#1074#1075#1076#1077#1078#1079#1080#1081#1082#1083#1084#1085#1086#1087#1088#1089#1090#1091#1092 +
      #1093#1094#1095#1096#1097#1098#1099#1100#1101#1102#1103
    ArgAttri.Foreground = clBlue
    CommentAttri.Foreground = 11447982
    CommentAttri.Style = [fsItalic]
    DirectiveAttri.Foreground = clGreen
    DirectiveAttri.Style = [fsBold]
    InvalidAttri.Foreground = clRed
    InvalidAttri.Style = [fsBold]
    KeyAttri.Foreground = clBlue
    KeyAttri.Style = [fsBold]
    LinkAttri.Foreground = clPurple
    LinkAttri.Style = [fsBold]
    LabelAttri.Background = 8388607
    LabelAttri.Foreground = clMaroon
    LabelAttri.Style = [fsBold]
    NumberAttri.Foreground = clBlack
    SplitAttri.Background = 8388607
    SplitAttri.Foreground = clMaroon
    SplitAttri.Style = [fsBold]
    SubstAttri.Foreground = clFuchsia
    SymbolAttri.Foreground = clBlack
    ValueAttri.Foreground = clFuchsia
    ValueAttri.Style = [fsBold]
    ScriptAttri.Foreground = clMaroon
    ScriptKeywordAttri.Foreground = clMaroon
    ScriptKeywordAttri.Style = [fsBold]
    ScriptFuncAttri.Foreground = 33023
    ScriptLabelAttri.Foreground = clNavy
    ScriptLabelAttri.Style = [fsBold, fsUnderline]
    ScriptConstAttri.Foreground = clGreen
    Left = 184
    Top = 172
  end
end
