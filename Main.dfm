object fmMain: TfmMain
  Left = 266
  Top = 327
  Width = 828
  Height = 447
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1082#1085#1080#1075' 2.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 543
    Top = 28
    Width = 5
    Height = 335
    Cursor = crHSplit
    Align = alRight
    AutoSnap = False
    MinSize = 202
    ResizeStyle = rsUpdate
  end
  object Bevel1: TBevel
    Left = 0
    Top = 26
    Width = 812
    Height = 2
    Align = alTop
  end
  object pnBook: TPanel
    Left = 548
    Top = 28
    Width = 264
    Height = 335
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object splImages: TSplitter
      Left = 0
      Top = 217
      Width = 264
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      AutoSnap = False
      MinSize = 100
      ResizeStyle = rsUpdate
    end
    object pnImages: TPanel
      Left = 0
      Top = 222
      Width = 264
      Height = 113
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      object lvImages: TListView
        Left = 0
        Top = 19
        Width = 264
        Height = 61
        HelpContext = 1420
        Align = alClient
        Columns = <>
        IconOptions.AutoArrange = True
        ReadOnly = True
        ShowWorkAreas = True
        SmallImages = ilImages
        TabOrder = 0
        ViewStyle = vsSmallIcon
        OnDblClick = lvImagesDblClick
        OnEnter = lvImagesEnter
        OnExit = lvImagesExit
        OnSelectItem = lvImagesSelectItem
      end
      object Panel1: TPanel
        Left = 0
        Top = 80
        Width = 264
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object ipButton1: TipButton
          Left = 4
          Top = 4
          Width = 95
          Height = 25
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
          HelpContext = 1420
          Action = acAdd
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
        end
        object ipButton2: TipButton
          Left = 104
          Top = 4
          Width = 95
          Height = 25
          Hint = #1059#1076#1072#1083#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
          HelpContext = 1420
          Action = acDelete
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
        end
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 0
        Width = 264
        Height = 19
        Align = alTop
        AutoSize = False
        BevelKind = bkSoft
        Caption = ' '#1057#1087#1080#1089#1086#1082' '#1092#1072#1081#1083#1086#1074
        TabOrder = 2
      end
    end
    object pnEmul: TPanel
      Left = 0
      Top = 0
      Width = 264
      Height = 217
      Align = alClient
      BevelOuter = bvNone
      Caption = '('#1101#1084#1091#1083#1103#1090#1086#1088' '#1085#1077' '#1079#1072#1087#1091#1097#1077#1085')'
      TabOrder = 1
    end
  end
  object pnEditor: TPanel
    Left = 9
    Top = 28
    Width = 525
    Height = 335
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Editor: TmwCustomEdit
      Left = 0
      Top = 19
      Width = 525
      Height = 297
      Cursor = crIBeam
      HelpContext = 2000
      Align = alClient
      ParentColor = False
      ParentFont = False
      PopupMenu = pmEditor
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnShadow
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Gutter.LeftOffset = 0
      Gutter.ShowLineNumbers = True
      HighLighter = BookSyn
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
        '')
      MaxUndo = 100
      Options = [mweoAutoIndent, mweoDragDropEditing, mweoDropFiles, mweoScrollPastEol, mweoShowScrollHint, mweoTabsToSpaces, mweoSmartTabs]
      ReadOnly = False
      WantTabs = True
      OnChange = EditorChange
      OnDropFiles = EditorDropFiles
      OnSelectionChange = EditorSelectionChange
      OnSpecialLineColors = EditorSpecialLineColors
      OnScrollHint = EditorScrollHint
    end
    object StaticText2: TStaticText
      Left = 0
      Top = 0
      Width = 525
      Height = 19
      Align = alTop
      AutoSize = False
      BevelKind = bkSoft
      Caption = ' '#1048#1089#1093#1086#1076#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1082#1085#1080#1075#1080
      TabOrder = 1
      OnDblClick = StaticText2DblClick
    end
    object stStatus: TStaticText
      Left = 0
      Top = 316
      Width = 525
      Height = 19
      Align = alBottom
      AutoSize = False
      BevelKind = bkSoft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnDblClick = stStatusDblClick
    end
  end
  object sbMain: TStatusBar
    Left = 0
    Top = 372
    Width = 812
    Height = 19
    Panels = <
      item
        Text = ' '#1057#1090#1080#1083#1100': '#1086#1073#1099#1095#1085#1072#1103' '#1082#1085#1080#1075#1072
        Width = 140
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object TBDock1: TTBDock
    Left = 0
    Top = 0
    Width = 812
    Height = 26
    object TBToolbar1: TTBToolbar
      Left = 0
      Top = 0
      Caption = 'TBToolbar1'
      ChevronHint = #1045#1097#1077'...|'
      CloseButton = False
      DockMode = dmCannotFloat
      DockPos = -4
      Images = ImageList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TBItem3: TTBItem
        Action = acFileNew
      end
      object TBItem2: TTBItem
        Action = acFileOpen
      end
      object TBItem1: TTBItem
        Action = acFileSave
      end
      object TBSeparatorItem7: TTBSeparatorItem
        Blank = True
      end
      object TBItem6: TTBItem
        Action = acHelp
      end
      object TBItem5: TTBItem
        Action = acFileExit
      end
    end
    object TBToolbar2: TTBToolbar
      Left = 131
      Top = 0
      Caption = 'TBToolbar2'
      ChevronHint = #1045#1097#1077'...|'
      DockMode = dmCannotFloat
      DockPos = 26
      Images = ImageList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object TBItem16: TTBItem
        Action = acUndo
      end
      object TBItem9: TTBItem
        Action = acRedo
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBItem10: TTBItem
        Action = acCut
      end
      object TBItem8: TTBItem
        Action = acCopy
      end
      object TBItem7: TTBItem
        Action = acPaste
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object TBItem19: TTBItem
        Action = acFind
      end
      object TBItem18: TTBItem
        Action = acFindNext
      end
      object TBItem17: TTBItem
        Action = acReplace
      end
    end
    object TBToolbar3: TTBToolbar
      Left = 595
      Top = 0
      Caption = 'TBToolbar3'
      ChevronHint = #1045#1097#1077'...|'
      DockPos = 356
      Images = ImageList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      object TBItem20: TTBItem
        Action = acBackground
      end
      object TBItem11: TTBItem
        Action = acTitle
      end
      object TBItem4: TTBItem
        Action = acPicture
      end
      object TBItem12: TTBItem
        Action = acMusic
      end
      object TBSeparatorItem5: TTBSeparatorItem
      end
      object TBItem22: TTBItem
        Action = acSend
      end
      object TBItem21: TTBItem
        Action = acRefresh
      end
    end
    object TBToolbar4: TTBToolbar
      Left = 337
      Top = 0
      Caption = 'TBToolbar4'
      ChevronHint = #1045#1097#1077'...|'
      DockPos = 223
      Images = ImageList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      object TBItem27: TTBItem
        Action = acAlignLeft
      end
      object TBItem26: TTBItem
        Action = acAlignCenter
      end
      object TBItem25: TTBItem
        Action = acAlignRight
      end
      object TBItem24: TTBItem
        Action = acAlignPoet
      end
      object TBSeparatorItem8: TTBSeparatorItem
      end
      object TBItem30: TTBItem
        Action = acBold
      end
      object TBItem29: TTBItem
        Action = acItalic
      end
      object TBItem28: TTBItem
        Action = acUnderline
      end
      object TBSeparatorItem10: TTBSeparatorItem
      end
      object TBItem32: TTBItem
        Action = acBig
      end
      object TBItem31: TTBItem
        Action = acSmall
      end
      object TBSeparatorItem9: TTBSeparatorItem
      end
      object TBItem33: TTBItem
        Action = acColor
      end
    end
  end
  object TBDock2: TTBDock
    Left = 0
    Top = 363
    Width = 812
    Height = 9
    Position = dpBottom
  end
  object TBDock3: TTBDock
    Left = 0
    Top = 28
    Width = 9
    Height = 335
    Position = dpLeft
  end
  object TBDock4: TTBDock
    Left = 534
    Top = 28
    Width = 9
    Height = 335
    Position = dpRight
  end
  object Storage: TipFormStorage
    Options = [fpPosition]
    UseRegistry = False
    OnRestorePlacement = StorageRestorePlacement
    StoredProps.Strings = (
      'pnBook.Width'
      'SaveDialog.FileName'
      'OpenDialog.FileName'
      'OpenPictureDialog.FileName'
      'fdEditor.FindText'
      'fdEditor.Options'
      'rdEditor.FindText'
      'rdEditor.Options'
      'rdEditor.ReplaceText'
      'pnImages.Height'
      'MusicOpenDialog.FileName')
    StoredValues = <>
    Left = 252
    Top = 112
  end
  object MainMenu: TipMainMenu
    Images = ImageList
    Direction = mdLeft
    DirectionText = mdLeft
    HeaderFrame = False
    MergeColors = False
    HightColors = True
    ColorHot = clHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 308
    Top = 112
    object miFile: TMenuItem
      Caption = #1060#1072#1081#1083
      HelpContext = 1100
      Hint = #1054#1087#1077#1088#1072#1094#1080#1080' '#1089' '#1092#1072#1081#1083#1072#1084#1080
      object N3: TMenuItem
        Action = acFileNew
      end
      object N2: TMenuItem
        Action = acFileOpen
      end
      object N4: TMenuItem
        Action = acFileSave
      end
      object N5: TMenuItem
        Action = acFileSaveAs
      end
      object N50: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object N7: TMenuItem
        Action = acFileExit
      end
    end
    object N13: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      HelpContext = 1200
      Hint = #1055#1088#1072#1074#1082#1072' '#1090#1077#1082#1089#1090#1072' '#1074' '#1088#1077#1076#1072#1082#1090#1086#1088#1077
      object N21: TMenuItem
        Action = acUndo
      end
      object N23: TMenuItem
        Action = acRedo
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object N47: TMenuItem
        Action = acCut
      end
      object N48: TMenuItem
        Action = acCopy
      end
      object N49: TMenuItem
        Action = acPaste
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object N26: TMenuItem
        Action = acFind
      end
      object N27: TMenuItem
        Action = acFindNext
      end
      object N28: TMenuItem
        Action = acReplace
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object N25: TMenuItem
        Action = acSelectAll
      end
    end
    object N45: TMenuItem
      Caption = #1060#1086#1088#1084#1072#1090
      HelpContext = 1300
      Hint = #1060#1086#1088#1084#1072#1090' '#1096#1088#1080#1092#1090#1072' '#1080' '#1072#1073#1079#1072#1094#1077#1074
      object N40: TMenuItem
        Caption = #1042#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077
        HelpContext = 1310
        Hint = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1074#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077#1084' '#1072#1073#1079#1072#1094#1077#1074
        object N41: TMenuItem
          Action = acAlignLeft
          AutoCheck = True
        end
        object N42: TMenuItem
          Action = acAlignCenter
          AutoCheck = True
        end
        object N43: TMenuItem
          Action = acAlignRight
          AutoCheck = True
        end
        object N44: TMenuItem
          Action = acAlignPoet
          AutoCheck = True
        end
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object N37: TMenuItem
        Caption = #1057#1090#1080#1083#1100' '#1096#1088#1080#1092#1090#1072
        HelpContext = 1320
        Hint = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1089#1090#1080#1083#1103' '#1096#1088#1080#1092#1090#1072' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1075#1086' '#1090#1077#1082#1089#1090#1072
        object N15: TMenuItem
          Action = acBold
        end
        object N16: TMenuItem
          Action = acItalic
        end
        object N17: TMenuItem
          Action = acUnderline
        end
      end
      object N38: TMenuItem
        Caption = #1056#1072#1079#1084#1077#1088' '#1096#1088#1080#1092#1090#1072
        HelpContext = 1330
        Hint = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1088#1072#1079#1084#1077#1088#1072' '#1096#1088#1080#1092#1090#1072' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1075#1086' '#1090#1077#1082#1089#1090#1072
        object N19: TMenuItem
          Action = acBig
        end
        object N20: TMenuItem
          Action = acSmall
        end
      end
      object N39: TMenuItem
        Action = acColor
      end
      object N55: TMenuItem
        Caption = '-'
      end
      object miFormatMacro: TMenuItem
        Caption = #1052#1072#1082#1088#1086#1089#1099
        HelpContext = 1350
        Hint = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1084#1072#1082#1088#1086#1089#1072#1084#1080
        object N57: TMenuItem
          Caption = '-'
        end
        object N58: TMenuItem
          Action = acMacro
          HelpContext = 1350
        end
      end
    end
    object miView: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      HelpContext = 1400
      Hint = #1057#1077#1088#1074#1080#1089#1085#1099#1077' '#1092#1091#1085#1082#1094#1080#1080
      object N8: TMenuItem
        Action = acBackground
      end
      object N54: TMenuItem
        Action = acTitle
      end
      object N36: TMenuItem
        Action = acPicture
      end
      object N56: TMenuItem
        Action = acMusic
      end
      object N52: TMenuItem
        Action = acVote
      end
      object N53: TMenuItem
        Action = acVictor
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N14: TMenuItem
        Action = acSend
      end
      object N10: TMenuItem
        Action = acRefresh
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object N12: TMenuItem
        Action = acEditorSettings
      end
      object N9: TMenuItem
        Action = acCompilerSettings
      end
    end
    object miHelp: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      HelpContext = 1500
      Hint = #1050#1086#1084#1072#1085#1076#1099' '#1089#1087#1088#1072#1074#1082#1080
      object acHelp1: TMenuItem
        Action = acHelp
      end
      object N51: TMenuItem
        Caption = '-'
      end
      object miHelpAbout: TMenuItem
        Action = acAbout
      end
    end
  end
  object ActionList: TActionList
    Images = ImageList
    OnUpdate = ActionListUpdate
    Left = 280
    Top = 112
    object acAbout: TAction
      Category = #1057#1087#1088#1072#1074#1082#1072
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
      HelpContext = 1520
      Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'|'#1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077' "'#1056#1077#1076#1072#1082#1090#1086#1088' '#1082#1085#1080#1075'"'
      ImageIndex = 6
      OnExecute = acAboutExecute
    end
    object acFileNew: TAction
      Category = #1060#1072#1081#1083
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1080#1075#1072
      HelpContext = 1110
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1080#1075#1072'|'#1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1091#1102' '#1082#1085#1080#1075#1091
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = acFileNewExecute
    end
    object acFileOpen: TAction
      Category = #1060#1072#1081#1083
      Caption = #1054#1090#1082#1088#1099#1090#1100'...'
      HelpContext = 1120
      Hint = #1054#1090#1082#1088#1099#1090#1100'|'#1054#1090#1082#1088#1099#1090#1100' '#1082#1085#1080#1075#1091' '#1080#1079' '#1092#1072#1081#1083#1072
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = acFileOpenExecute
    end
    object acFileSave: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      HelpContext = 1130
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100'|'#1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074' '#1090#1077#1082#1091#1097#1077#1081' '#1082#1085#1080#1075#1077
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = acFileSaveExecute
    end
    object acFileSaveAs: TAction
      Category = #1060#1072#1081#1083
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
      HelpContext = 1130
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'|'#1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1085#1080#1075#1091' '#1074' '#1092#1072#1081#1083#1077' '#1089' '#1076#1088#1091#1075#1080#1084' '#1080#1084#1077#1085#1077#1084
      OnExecute = acFileSaveAsExecute
    end
    object acFileExit: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1099#1093#1086#1076
      HelpContext = 1100
      Hint = #1042#1099#1093#1086#1076'|'#1042#1099#1081#1090#1080' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      ImageIndex = 3
      OnExecute = acFileExitExecute
    end
    object acRefresh: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1050#1086#1084#1087#1080#1083#1103#1094#1080#1103
      HelpContext = 1430
      Hint = #1050#1086#1084#1087#1080#1083#1103#1094#1080#1103'|'#1050#1086#1084#1087#1080#1083#1080#1088#1086#1074#1072#1090#1100' '#1082#1085#1080#1075#1091
      ImageIndex = 5
      ShortCut = 116
      OnExecute = acRefreshExecute
    end
    object acHelp: TAction
      Category = #1057#1087#1088#1072#1074#1082#1072
      Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
      HelpContext = 1510
      Hint = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077'|'#1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1086#1081' '#1089#1080#1089#1090#1077#1084#1099
      ImageIndex = 31
      ShortCut = 16496
      OnExecute = acHelpExecute
    end
    object acBackground: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072' '#1082#1085#1080#1075#1080
      HelpContext = 1410
      Hint = 
        #1062#1074#1077#1090' '#1092#1086#1085#1072' '#1082#1085#1080#1075#1080'|'#1042#1099#1073#1088#1072#1090#1100' '#1080#1079' '#1087#1072#1083#1080#1090#1088#1099' '#1080' '#1091#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1094#1074#1077#1090' '#1092#1086#1085#1072' '#1082#1085#1080#1075#1080' ' +
        '('#1076#1080#1088#1077#1082#1090#1080#1074#1072' $background ...)'
      ImageIndex = 7
      ShortCut = 119
      OnExecute = acBackgroundExecute
    end
    object acCompilerSettings: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1082#1086#1084#1087#1080#1083#1103#1090#1086#1088#1072'...'
      HelpContext = 1460
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1082#1086#1084#1087#1080#1083#1103#1090#1086#1088#1072'|'#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1082#1086#1084#1087#1080#1083#1103#1090#1086#1088#1072
      ImageIndex = 4
      ShortCut = 16458
      OnExecute = acCompilerSettingsExecute
    end
    object acEditorSettings: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1088#1077#1076#1072#1082#1090#1086#1088#1072'...'
      HelpContext = 1450
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1088#1077#1076#1072#1082#1090#1086#1088#1072'|'#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1088#1077#1076#1072#1082#1090#1086#1088#1072'|'#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1088#1077#1076#1072#1082#1090#1086#1088#1072
      ImageIndex = 8
      ShortCut = 16459
      OnExecute = acEditorSettingsExecute
    end
    object acPickColor: TAction
      Caption = 'acPickColor'
      HelpContext = 1410
      ShortCut = 16504
      OnExecute = acPickColorExecute
    end
    object acSend: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1043#1086#1088#1086#1076
      HelpContext = 1440
      Hint = 
        #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1043#1086#1088#1086#1076'|'#1059#1087#1072#1082#1086#1074#1072#1090#1100' '#1080#1089#1093#1086#1076#1085#1099#1077' '#1092#1072#1081#1083#1099' '#1082#1085#1080#1075#1080' '#1080' '#1086#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1043 +
        #1086#1088#1086#1076' '#1087#1086' '#1101#1083#1077#1082#1090#1088#1086#1085#1085#1086#1081' '#1087#1086#1095#1090#1077
      ImageIndex = 9
      ShortCut = 113
      OnExecute = acSendExecute
    end
    object acBold: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1046#1080#1088#1085#1099#1081
      HelpContext = 1320
      Hint = 
        #1046#1080#1088#1085#1099#1081'|'#1042#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1074' '#1088#1077#1076#1072#1082#1090#1086#1088#1077' '#1090#1077#1082#1089#1090' '#1079#1072#1082#1083#1102#1095#1080#1090#1100' '#1074' '#1090#1101#1075#1080' <b>...</b> ' +
        '('#1078#1080#1088#1085#1086#1077' '#1085#1072#1095#1077#1088#1090#1072#1085#1080#1077')'
      ImageIndex = 10
      ShortCut = 16450
      OnExecute = acBoldExecute
    end
    object acItalic: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1053#1072#1082#1083#1086#1085#1085#1099#1081
      HelpContext = 1320
      Hint = 
        #1053#1072#1082#1083#1086#1085#1085#1099#1081'|'#1042#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1074' '#1088#1077#1076#1072#1082#1090#1086#1088#1077' '#1090#1077#1082#1089#1090' '#1079#1072#1082#1083#1102#1095#1080#1090#1100' '#1074' '#1090#1101#1075#1080' <i>...</' +
        'i> ('#1085#1072#1082#1083#1086#1085#1085#1086#1077' '#1085#1072#1095#1077#1088#1090#1072#1085#1080#1077')'
      ImageIndex = 11
      ShortCut = 16457
      OnExecute = acItalicExecute
    end
    object acUnderline: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1055#1086#1076#1095#1077#1088#1082#1085#1091#1090#1099#1081
      HelpContext = 1320
      Hint = 
        #1055#1086#1076#1095#1077#1088#1082#1085#1091#1090#1099#1081'|'#1042#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1074' '#1088#1077#1076#1072#1082#1090#1086#1088#1077' '#1090#1077#1082#1089#1090' '#1079#1072#1082#1083#1102#1095#1080#1090#1100' '#1074' '#1090#1101#1075#1080' <u>..' +
        '.</u> ('#1087#1086#1076#1095#1077#1088#1082#1085#1091#1090#1086#1077' '#1085#1072#1095#1077#1088#1090#1072#1085#1080#1077')'
      ImageIndex = 12
      ShortCut = 16469
      OnExecute = acUnderlineExecute
    end
    object acBig: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1041#1086#1083#1100#1096#1086#1081' '#1096#1088#1080#1092#1090
      HelpContext = 1330
      Hint = 
        #1041#1086#1083#1100#1096#1086#1081' '#1096#1088#1080#1092#1090'|'#1042#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1074' '#1088#1077#1076#1072#1082#1090#1086#1088#1077' '#1090#1077#1082#1089#1090' '#1079#1072#1082#1083#1102#1095#1080#1090#1100' '#1074' '#1090#1101#1075#1080' <big' +
        '>...</big> ('#1091#1074#1077#1083#1080#1095#1077#1085#1085#1099#1081' '#1096#1088#1080#1092#1090')'
      ImageIndex = 14
      ShortCut = 16460
      OnExecute = acBigExecute
    end
    object acSmall: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1052#1072#1083#1077#1085#1100#1082#1080#1081' '#1096#1088#1080#1092#1090
      HelpContext = 1330
      Hint = 
        #1052#1072#1083#1077#1085#1100#1082#1080#1081' '#1096#1088#1080#1092#1090'|'#1042#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1074' '#1088#1077#1076#1072#1082#1090#1086#1088#1077' '#1090#1077#1082#1089#1090' '#1079#1072#1082#1083#1102#1095#1080#1090#1100' '#1074' '#1090#1101#1075#1080' <s' +
        'mall>...</small> ('#1091#1084#1077#1085#1100#1096#1077#1085#1085#1099#1081' '#1096#1088#1080#1092#1090')'
      ImageIndex = 13
      ShortCut = 16452
      OnExecute = acSmallExecute
    end
    object acFind: TAction
      Category = #1055#1088#1072#1074#1082#1072
      Caption = #1053#1072#1081#1090#1080'...'
      HelpContext = 1230
      Hint = #1053#1072#1081#1090#1080'|'#1053#1072#1081#1090#1080' '#1074' '#1090#1077#1082#1089#1090#1077' '#1088#1077#1076#1072#1082#1090#1086#1088#1072' '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090
      ImageIndex = 15
      ShortCut = 16454
      OnExecute = acFindExecute
    end
    object acFindNext: TAction
      Category = #1055#1088#1072#1074#1082#1072
      Caption = #1053#1072#1081#1090#1080' '#1076#1072#1083#1077#1077
      HelpContext = 1230
      Hint = 
        #1053#1072#1081#1090#1080' '#1076#1072#1083#1077#1077'|'#1053#1072#1081#1090#1080' '#1089#1083#1077#1076#1091#1102#1097#1077#1077' '#1089#1086#1074#1087#1072#1076#1077#1085#1080#1077' '#1074' '#1090#1077#1082#1089#1090#1077' '#1088#1077#1076#1072#1082#1090#1086#1088#1072' '#1089' '#1091#1082#1072#1079 +
        #1072#1085#1085#1099#1084' '#1090#1077#1082#1089#1090#1086#1084
      ImageIndex = 16
      ShortCut = 114
      OnExecute = acFindNextExecute
    end
    object acReplace: TAction
      Category = #1055#1088#1072#1074#1082#1072
      Caption = #1047#1072#1084#1077#1085#1080#1090#1100'...'
      HelpContext = 1230
      Hint = 
        #1047#1072#1084#1077#1085#1080#1090#1100'|'#1053#1072#1081#1090#1080' '#1074' '#1090#1077#1082#1089#1090#1077' '#1088#1077#1076#1072#1082#1090#1086#1088#1072' '#1091#1082#1072#1079#1072#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1080' '#1079#1072#1084#1077#1085#1080#1090#1100' '#1077#1075#1086 +
        ' '#1076#1088#1091#1075#1080#1084
      ImageIndex = 17
      ShortCut = 16466
      OnExecute = acReplaceExecute
    end
    object acSelectAll: TAction
      Category = #1055#1088#1072#1074#1082#1072
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      HelpContext = 1200
      Hint = #1042#1080#1076#1077#1083#1080#1090#1100' '#1074#1089#1077'|'#1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1077#1089#1100' '#1090#1077#1082#1089#1090' '#1074' '#1086#1082#1085#1077' '#1088#1077#1076#1072#1082#1090#1086#1088#1072
      ShortCut = 16449
      OnExecute = acSelectAllExecute
    end
    object acCut: TAction
      Category = #1055#1088#1072#1074#1082#1072
      Caption = #1042#1099#1088#1077#1079#1072#1090#1100
      HelpContext = 1220
      Hint = #1042#1099#1088#1077#1079#1072#1090#1100'|'#1042#1099#1088#1077#1079#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1074' '#1088#1077#1076#1072#1082#1090#1086#1088#1077' '#1090#1077#1082#1089#1090' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      ImageIndex = 18
      ShortCut = 16472
      OnExecute = acCutExecute
    end
    object acCopy: TAction
      Category = #1055#1088#1072#1074#1082#1072
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      HelpContext = 1220
      Hint = 
        #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100'|'#1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1074' '#1088#1077#1076#1072#1082#1090#1086#1088#1077' '#1090#1077#1082#1089#1090' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085 +
        #1072
      ImageIndex = 19
      ShortCut = 16451
      OnExecute = acCopyExecute
    end
    object acPaste: TAction
      Category = #1055#1088#1072#1074#1082#1072
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      HelpContext = 1220
      Hint = 
        #1042#1089#1090#1072#1074#1080#1090#1100'|'#1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1089#1090' '#1080#1079' '#1073#1091#1092#1077#1088#1072' '#1086#1073#1084#1077#1085#1072' '#1074' '#1086#1082#1085#1086' '#1088#1077#1076#1072#1082#1090#1086#1088#1072' ('#1074#1084#1077#1089#1090 +
        #1086' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1075#1086')'
      ImageIndex = 20
      ShortCut = 16470
      OnExecute = acPasteExecute
    end
    object acUndo: TAction
      Category = #1055#1088#1072#1074#1082#1072
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      HelpContext = 1210
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100'|'#1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1077#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1077' '#1090#1077#1082#1089#1090#1072' '#1074' '#1088#1077#1076#1072#1082#1090#1086#1088#1077
      ImageIndex = 21
      ShortCut = 16474
      OnExecute = acUndoExecute
    end
    object acRedo: TAction
      Category = #1055#1088#1072#1074#1082#1072
      Caption = #1042#1077#1088#1085#1091#1090#1100
      HelpContext = 1210
      Hint = #1042#1077#1088#1085#1091#1090#1100'|'#1042#1077#1088#1085#1091#1090#1100' '#1086#1073#1088#1072#1090#1085#1086' '#1087#1086#1089#1083#1077#1076#1085#1077#1077' '#1086#1090#1084#1077#1085#1077#1085#1085#1086#1077' '#1076#1077#1081#1089#1090#1074#1080#1077
      ImageIndex = 22
      ShortCut = 24666
      OnExecute = acRedoExecute
    end
    object acPicture: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091'...'
      HelpContext = 1420
      Hint = 
        #1042#1089#1090#1072#1074#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091'|'#1042#1099#1073#1088#1072#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091' '#1080' '#1074#1089#1090#1072#1074#1080#1090#1100' '#1074' '#1082#1085#1080#1075#1091' ('#1090#1101#1075' <img:' +
        '...>)'
      ImageIndex = 23
      ShortCut = 16464
      OnExecute = acPictureExecute
    end
    object acMusic: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1084#1091#1079#1099#1082#1091'...'
      Enabled = False
      Hint = 
        #1042#1089#1090#1072#1074#1080#1090#1100' '#1084#1091#1079#1099#1082#1091'|'#1042#1099#1073#1088#1072#1090#1100' '#1084#1091#1079#1099#1082#1072#1083#1100#1085#1099#1081' '#1092#1072#1081#1083' '#1080' '#1074#1089#1090#1072#1074#1080#1090#1100' '#1074' '#1082#1085#1080#1075#1091' ('#1087#1072#1088 +
        #1072#1084#1077#1090#1088#1086#1084' '#1076#1080#1088#1077#1082#1090#1080#1074#1099' $style)'
      ImageIndex = 33
      ShortCut = 16461
      OnExecute = acMusicExecute
    end
    object acColor: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1062#1074#1077#1090' '#1096#1088#1080#1092#1090#1072
      HelpContext = 1340
      Hint = 
        #1062#1074#1077#1090' '#1096#1088#1080#1092#1090#1072'|'#1042#1099#1073#1088#1072#1090#1100' '#1080#1079' '#1087#1072#1083#1080#1090#1088#1099' '#1094#1074#1077#1090' '#1076#1083#1103' '#1096#1088#1080#1092#1090#1072' '#1080' '#1074#1089#1090#1072#1074#1080#1090#1100' '#1089#1086#1086#1090#1074#1077 +
        #1090#1089#1090#1074#1091#1102#1097#1080#1081' '#1077#1084#1091' '#1090#1101#1075' <color:...>'
      ImageIndex = 24
      ShortCut = 16471
      OnExecute = acColorExecute
    end
    object acAlignLeft: TAction
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = #1055#1086' '#1083#1077#1074#1086#1084#1091' '#1082#1088#1072#1102
      HelpContext = 1310
      Hint = 
        #1055#1086' '#1083#1077#1074#1086#1084#1091' '#1082#1088#1072#1102'|'#1042#1099#1088#1086#1074#1085#1103#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1072#1073#1079#1072#1094' '#1082#1085#1080#1075#1080' '#1087#1086' '#1083#1077#1074#1086#1084#1091' '#1082#1088#1072#1102' ('#1090#1101#1075 +
        ' <p>)'
      ImageIndex = 26
      ShortCut = 32844
      OnExecute = acAlignLeftExecute
    end
    object acAlignCenter: TAction
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = #1055#1086' '#1094#1077#1085#1090#1088#1091
      HelpContext = 1310
      Hint = #1055#1086' '#1094#1077#1085#1090#1088#1091'|'#1042#1099#1088#1086#1074#1085#1103#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1072#1073#1079#1072#1094' '#1082#1085#1080#1075#1080' '#1087#1086' '#1094#1077#1085#1090#1088#1091' ('#1090#1101#1075' <pc>)'
      ImageIndex = 25
      ShortCut = 32835
      OnExecute = acAlignCenterExecute
    end
    object acAlignRight: TAction
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = #1055#1086' '#1087#1088#1072#1074#1086#1084#1091' '#1082#1088#1072#1102
      HelpContext = 1310
      Hint = 
        #1055#1086' '#1087#1088#1072#1074#1086#1084#1091' '#1082#1088#1072#1102'|'#1042#1099#1088#1086#1074#1085#1103#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1072#1073#1079#1072#1094' '#1082#1085#1080#1075#1080' '#1087#1086' '#1087#1088#1072#1074#1086#1084#1091' '#1082#1088#1072#1102' ('#1090 +
        #1101#1075' <pr>)'
      ImageIndex = 27
      ShortCut = 32850
      OnExecute = acAlignRightExecute
    end
    object acAlignPoet: TAction
      Category = #1060#1086#1088#1084#1072#1090
      AutoCheck = True
      Caption = #1057#1090#1080#1093#1086#1090#1074#1086#1088#1077#1085#1080#1077
      HelpContext = 1310
      Hint = 
        #1057#1090#1080#1093#1086#1090#1074#1086#1088#1077#1085#1080#1077'|'#1042#1099#1088#1086#1074#1085#1103#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1072#1073#1079#1072#1094' '#1082#1085#1080#1075#1080' '#1074' '#1089#1090#1080#1083#1077' '#1089#1090#1080#1093#1086#1090#1074#1086#1088#1077#1085#1080 +
        #1103' ('#1090#1101#1075' <ps>)'
      ImageIndex = 28
      ShortCut = 32851
      OnExecute = acAlignPoetExecute
    end
    object acAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      HelpContext = 1420
      ImageIndex = 29
      OnExecute = acAddExecute
    end
    object acDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      HelpContext = 1420
      ImageIndex = 30
      OnExecute = acDeleteExecute
    end
    object acVote: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1043#1086#1083#1086#1089#1086#1074#1072#1085#1080#1077
      HelpContext = 1470
      Hint = #1043#1086#1083#1086#1089#1086#1074#1072#1085#1080#1077'|'#1052#1072#1089#1090#1077#1088' '#1087#1086#1089#1090#1088#1086#1077#1085#1080#1103' '#1075#1086#1083#1086#1089#1086#1074#1072#1085#1080#1081
      ShortCut = 32854
      OnExecute = acVoteExecute
    end
    object acVictor: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1042#1080#1082#1090#1086#1088#1080#1085#1072
      HelpContext = 1480
      Hint = #1042#1080#1082#1090#1086#1088#1080#1085#1072'|'#1052#1072#1089#1090#1077#1088' '#1087#1086#1089#1090#1088#1086#1077#1085#1080#1103' '#1074#1080#1082#1090#1086#1088#1080#1085
      ShortCut = 32849
      OnExecute = acVictorExecute
    end
    object acTitle: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
      HelpKeyword = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080'|'#1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080' ('#1076#1080#1088#1077#1082#1090#1080#1074#1072' $title ...)'
      ImageIndex = 32
      ShortCut = 16468
      OnExecute = acTitleExecute
    end
    object acMacro: TAction
      Category = #1060#1086#1088#1084#1072#1090
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1084#1072#1082#1088#1086#1089#1072#1084#1080
      Hint = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1084#1072#1082#1088#1086#1089#1072#1084#1080
      ShortCut = 16461
      OnExecute = acMacroExecute
    end
    object acBookFormat: TAction
      Caption = 'acBookFormat'
      ShortCut = 24646
      OnExecute = acBookFormatExecute
    end
    object acMakeSourceBook: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = 'acMakeSourceBook'
      ShortCut = 41043
      OnExecute = acMakeSourceBookExecute
    end
  end
  object ImageList: TImageList
    Left = 336
    Top = 196
    Bitmap = {
      494C010122002700040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000043414100615F5E004A48
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000018729C004951550093888500A29C9900988F
      8D004B494A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C86BB0015739F006D6C6D009F9895009B939000A099
      9700918785000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001375A2002590CB002892CC00467186009187850089858600958B8800A29C
      9900A7A4A3004D4D4F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000000000000080000000800000008000000080000000000000000000
      000000000000000000000000000000000000000000000000000000000000167F
      B0002892CC003495CE003495CE004A4F530049464600413F3F0067636200988F
      8D00A9B2B40080848A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000000000008000
      0000800000000000000080000000800000000000000080000000800000000000
      000000000000000000000000000000000000000000001C86BB00167FB0002892
      CC003495CE003495CE003E91BF00535454004B494A00494747002C2B2B008384
      8800A9B5B800A7A4A3002B2A2A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000000000008000
      0000800000000000000080000000800000000000000080000000800000000000
      000000000000000000000000000000000000137CAD003495CE00167FB0003495
      CE0076CCE8007ADBF4005E8FAA008685870083848800D0CECE00676362006F69
      6800D0CECE00D0CECE0038373700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000000000000080000000800000000000000080000000800000000000
      0000000000000000000000000000000000002D91C9007BDCF500167FB00076CC
      E8007DDDF5008BE1F2005E8FAA0089858600A3A6A600DED6DC00A4A2A1008985
      8600DED6DC00D4D1D1005A595800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000000000000080000000800000000000000080000000800000000000
      000000000000000000000000000000000000167FB0007BDCF500167FB00077D6
      F00092E3F00092E3F0005E8FAA00A7A4A300A1A8A800DED6DC00A7A4A300A099
      9700DED6DC00D4D1D10058565600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000000000000000000080000000800000008000000080000000000000000000
      000000000000000000000000000000000000000000001A84B600167FB00077D6
      F00092E3F00092E3F0005E8FAA00A2A09F0083848800A1ABAB0089858600A6B6
      BB00DED6DC00D0CECE0035343400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A84
      B6007DDDF50092E3F0008ABECE006461600080848A0083848800A1ABAB00D0CE
      CE00D0CECE00A7A4A3002B2B2B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001279A90076CCE80077D6F0006A6D7000A29C9900A7A4A300A4ADAE00A9B2
      B400A9B5B80080848A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000015739F003495CE005A6F7A00978D8B009D969300A29C9900A4A2
      A100A7A4A3004D4D4F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001A84B6003E91BF00706B6A00A09997009B939000A099
      9700898586000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000015739F004951550093888500A29C9900978D
      8B00494747000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000434141005F5D5C004946
      4600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009D731A009D731A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AD8A2D00743E0300743E0300A17A2D0000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEEEDB00FEEB
      D500FEE8CF00FEE7CC00FEE3C500FEE2C200FEDFBC00FEDDB800FDDBB500FDDB
      B500FDDBB500FDDBB500D5820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3DD2A00A08700008F6E0000804F180000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEF0DE00FEED
      DA00FEEBD500FEE9D100FEE5C900FEE3C500FEE2C200FEDFBD00FEDDB800FDDB
      B500FDDBB500FDDBB500D5820000000000000000000000000000000000000000
      0000000000000000000000000000FF808000A451510000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDC31500997C0000A5802D0000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEF2E400FEF2
      E400FEF0DE00FEEEDB00FEEBD500009800000098000000980000009800000098
      000000980000FDDBB500D5820000000000000000000000000000000000000000
      0000000000000000000000000000FF808000A451510000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEF5EA00FEF2
      E400FEF0DE00FEEEDB00FEEBD500FEE8CF00FEE7CC00FEE3C500FEE1C000FEDF
      BC00FEDDB800FDDBB500D5820000000000000000000000000000000000000000
      0000000000000000000000000000FF808000A451510000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0AD2B0097760000906403000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEF7EE00FEF7
      EE00FEF5EA00FEF3E60000980000009800000098000000980000009800000098
      000000980000FEDDB800D5820000000000000000000000000000000000000000
      0000000000000000000000000000FF808000A451510000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E01500A2870000937400007C4A180000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEF9F200FEF7
      EE00FEF5EA00FEF3E600FEF0DE00FEEEDB00FEEBD500FEE8CF00FEE5C900FEE3
      C500FEE1C000FEDFBC00D582000000000000000000000000000000000000A451
      5100A4515100A4515100A4515100FF808000A4515100A4515100A4515100A451
      5100A4515100000000000000000000000000000000000000000000000000A451
      5100A4515100A4515100A4515100A4515100A4515100A4515100A4515100A451
      5100A45151000000000000000000000000000000000000000000000000000000
      000000000000EFEB2A00C6A101009F7F000090640300895A2D00000000000000
      00000000000000000000000000000000000000000000D5820000FEFBF700FEFB
      F700FEF9F2000098000000980000009800000098000000980000009800000098
      000000980000FEE1C000D582000000000000000000000000000000000000FF80
      8000FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF80
      8000FF808000000000000000000000000000000000000000000000000000FF80
      8000FF808000FF808000FF808000FF808000FF808000FF808000FF808000FF80
      8000FF8080000000000000000000000000000000000000000000000000000000
      00000000000000000000EBE32A00C6A101009F7D010090640300895A2D000000
      00000000000000000000000000000000000000000000D5820000FEFCFA00FEFB
      F700FEF9F200FEF7EE00FEF4E900FEF2E400FEF0DE00FEEEDB00FEEBD500FEE8
      CF00FEE7CC00FEE3C500D5820000000000000000000000000000000000000000
      0000000000000000000000000000FF808000A451510000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBE32A00C5A001009F7D010090640300895A
      2D000000000000000000000000000000000000000000D5820000FEFCFA00FEFC
      FA00009800000098000000980000009800000098000000980000009800000098
      000000980000FEE5C900D5820000000000000000000000000000000000000000
      0000000000000000000000000000FF808000A451510000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008958
      2D0085552D00000000000000000000000000E1D92A00C49E01009B7B00009064
      030085552D0000000000000000000000000000000000D5820000FEFCFA00FEFC
      FA00FEFCF900FEFBF700FEF9F200FEF7EE00FEF5EA00FEF3E600FEEFDD00FEEE
      DB00FEEBD500FEE8CF00D5820000000000000000000000000000000000000000
      0000000000000000000000000000FF808000A451510000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5932D00B887
      020094660300895A2D00000000000000000000000000D5CB15009D8400009374
      00007845180000000000000000000000000000000000D5820000FEFCFA000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FEEBD500D5820000000000000000000000000000000000000000
      0000000000000000000000000000FF808000A451510000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E02B00CAA3
      01009F7D0100906403007C4A1800784518007C4A18009A730300977A00009375
      00007C4A180000000000000000000000000000000000D5820000FEFCFA00FEFC
      FA00FEFCFA00FEFCFA00FEFCF900FEFBF700FEF9F200FEF7EE00FEF5EA00FEF3
      E600FEF0DE00FEEEDB00D5820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBE3
      2A00C6A10100A2860000977700009375000093750000977A0000977C00009779
      0000A5802D000000000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEB2A00E6E01500C6A10100A28700009E8500009D8400009D830000A987
      2D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDE91700E7E50000E6E40000DBD90000DDDA17000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEEEDA00FEEB
      D500FEE8CF00FEE6CB00FEE4C600FEE1C200FEDFBC00FEDDB800FDDBB400FDDB
      B400FDDBB400FDDBB400D58200000000000000000000D5820000FEEEDB00FEEB
      D500FEE9D000FEE6CB00FEE3C500FEE1C000FEDFBC00FEDDB800FDDBB400FDDB
      B400FDDBB400FDDBB400D58200000000000000000000D5820000FEEEDA00FEEB
      D500FEE8CF00FEE6CA00FEE3C400FEE2C200FEDFBC00FEDDB800FDDBB400FDDB
      B400FDDBB400FDDBB400D58200000000000000000000FF000000FF000000FF00
      0000FF000000E0C0C0000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000000000000D5820000FEF0DF00FEED
      D900FEEBD500FEE9D100FEE6CB00FEE4C600FEE1C200FEDFBD00FEDDB800FDDB
      B400FDDBB400FDDBB400D58200000000000000000000D5820000FEF0E000FEED
      DA00FEEBD500FEE9D000FEE6CB00FEE3C500FEE1C000FEDFBC00FEDDB800FDDB
      B400FDDBB400FDDBB400D58200000000000000000000D5820000FEF1E100FEED
      DA00FEEBD500FEE9D100FEE6CA00FEE3C400FEE2C200FEDFBC00FEDDB800FDDB
      B400FDDBB400FDDBB400D5820000000000000000000000000000FF808000FF00
      0000E0C0C00000000000000000000000000000000000E0C0C000FF000000FF00
      0000FF80800000000000000000000000000000000000D5820000FEF3E5000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FDDBB400D58200000000000000000000D5820000FEF2E3000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FDDBB400D58200000000000000000000D5820000FEF2E3000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FDDBB400D582000000000000000000000000000000000000FF00
      0000FF00000000000000000000000000000000000000FF808000FF000000FF00
      00000000000000000000000000000000000000000000D5820000FEF5EB00FEF3
      E500FEF0DF00FEEEDA00FEEBD500FEE8CF00FEE6CB00FEE4C600FEE0C000FEDF
      BC00FEDDB800FDDBB400D58200000000000000000000D5820000FEF5EB00FEF2
      E300FEF0E000FEEEDB00FEEBD500FEE9D000FEE6CB00FEE3C500FEE1C000FEDF
      BC00FEDDB800FDDBB400D58200000000000000000000D5820000FEF5EA00FEF3
      E500FEEFDE00FEEEDA00FEEBD500FEE8CF00FEE6CA00FEE3C400FEE1C100FEDF
      BC00FEDDB800FDDBB400D582000000000000000000000000000000000000FF80
      8000FF000000E0C0C000000000000000000000000000FF000000FF000000FF80
      80000000000000000000000000000000000000000000D5820000FEF7EE00FEF5
      E900FEF3E500009800000098000000980000009800000098000000980000FEE0
      C000FEDFBC00FEDDB800D58200000000000000000000D5820000FEF7EE000098
      00000098000000980000009800000098000000980000FEE6CB00FEE4C700FEE1
      C000FEDFBC00FEDDB800D58200000000000000000000D5820000FEF7EE00FEF5
      EA00FEF3E500FEF1E100FEEDDA00009800000098000000980000009800000098
      000000980000FEDDB800D5820000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000000000D5820000FEF9F200FEF7
      EE00FEF5E900FEF3E500FEF0DF00FEEEDA00FEEBD500FEE8D000FEE6CB00FEE4
      C600FEE0C000FEDFBC00D58200000000000000000000D5820000FEF9F200FEF7
      EE00FEF5E900FEF3E600FEF0E000FEEEDB00FEEBD500FEE8CF00FEE6CB00FEE4
      C700FEE1C000FEDFBC00D58200000000000000000000D5820000FEF9F200FEF7
      EE00FEF5EA00FEF3E500FEF1E100FEEEDB00FEEBD500FEE8CF00FEE6CA00FEE4
      C800FEE1C100FEDFBC00D5820000000000000000000000000000000000000000
      0000FF808000FF000000E0C0C00000000000FF000000FF000000FF8080000000
      00000000000000000000000000000000000000000000D5820000FEFBF7000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FEE0C000D58200000000000000000000D5820000FEFBF7000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FEE1C000D58200000000000000000000D5820000FEFBF7000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FEE1C100D5820000000000000000000000000000000000000000
      000000000000FF000000FF000000E0C0C000FF000000FF000000000000000000
      00000000000000000000000000000000000000000000D5820000FEFCFA00FEFB
      F700FEF9F200FEF7EE00FEF4E800FEF3E500FEF0DF00FEEEDA00FEEBD500FEE8
      CF00FEE6CB00FEE4C600D58200000000000000000000D5820000FEFCFA00FEFB
      F700FEF9F200FEF7EE00FEF4E900FEF2E300FEF0E000FEEEDB00FEEBD500FEE8
      CF00FEE6CB00FEE4C700D58200000000000000000000D5820000FEFCFA00FEFB
      F700FEF9F200FEF7EE00FEF4E800FEF2E300FEF1E100FEEEDB00FEEBD500FEE8
      CF00FEE6CA00FEE4C800D5820000000000000000000000000000000000000000
      000000000000FF808000FF000000FF000000FF000000FF808000000000000000
      00000000000000000000000000000000000000000000D5820000FEFCFA00FEFC
      FA00FEFBF700009800000098000000980000009800000098000000980000FEEB
      D500FEE8D000FEE6CB00D58200000000000000000000D5820000FEFCFA000098
      00000098000000980000009800000098000000980000FEF0E000FEEDDA00FEEB
      D500FEE8CF00FEE6CB00D58200000000000000000000D5820000FEFCFA00FEFC
      FA00FEFBF700FEF9F200FEF6ED00009800000098000000980000009800000098
      000000980000FEE6CA00D5820000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEFCFA00FEFC
      FA00FEFCF900FEFBF700FEF9F200FEF7EE00FEF5E900FEF3E500FEF0DF00FEEE
      DA00FEEBD500FEE8D000D58200000000000000000000D5820000FEFCFA00FEFC
      FA00FEFCF900FEFBF700FEF9F200FEF7EE00FEF5E900FEF3E600FEF0E000FEEE
      DB00FEEBD500FEE8CF00D58200000000000000000000D5820000FEFCFA00FEFC
      FA00FEFCF900FEFBF700FEF9F200FEF7EE00FEF5EA00FEF3E500FEEFDE00FEEE
      DB00FEEBD500FEE8CF00D5820000000000000000000000000000000000000000
      00000000000000000000FF808000FF000000FF80800000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEFCFA000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FEEBD500D58200000000000000000000D5820000FEFCFA000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FEEBD500D58200000000000000000000D5820000FEFCFA000098
      0000009800000098000000980000009800000098000000980000009800000098
      000000980000FEEBD500D5820000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEFCFA00FEFC
      FA00FEFCFA00FEFCFA00FEFCF900FEFBF700FEF9F200FEF7EE00FEF5E900FEF3
      E500FEF0DF00FEEEDA00D58200000000000000000000D5820000FEFCFA00FEFC
      FA00FEFCFA00FEFCFA00FEFCF900FEFBF700FEF9F200FEF7EE00FEF5E900FEF3
      E600FEF0E000FEEEDB00D58200000000000000000000D5820000FEFCFA00FEFC
      FA00FEFCFA00FEFCFA00FEFCF900FEFBF700FEF9F200FEF7EE00FEF5EA00FEF3
      E500FEEFDE00FEEEDA00D5820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000669A000066
      9A0000669A00A37F7700A37F7700A37F7700A37F7700A37F7700A37F7700A37F
      7700A37F7700A37F77008F626100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000707070007070
      7000707070007070700070707000707070007070700070707000707070007070
      7000707070007070700070707000707070000000000000669A004BC3E4004BC3
      E4004BC3E400B3847600F7ECDE00FAF1E700F8EEE100F7ECDE00F7ECDE00F7EC
      DE00F7ECDE00F7ECDE008F626100000000000000000000000000854100008541
      0000763A00006B350000673301006B3500006B3500006B3500006B3500006B35
      00006B3500005B2E030000000000000000000000000000000000854302008340
      0000733900006B35000068340000683400006834000068340000683400006834
      0000683400005D2F030000000000000000000000000091919100919191009191
      9100919191009191910091919100919191009191910091919100919191009191
      9100919191009191910091919100707070000000000000669A004AC5E6004BC3
      E4004BC3E400B3847600F5E7D800E3A55B00E4A55900E4A55900E4A55900E4A5
      5900E4A55900F5E3D1008F6261000000000000000000AA540000CF660000CF66
      0000B6590000B5590000AF560000AD550000AF560000AF560000AF560000AF56
      0000B4590000964A00005B2E03000000000000000000AB540000D0670000BC5D
      0000BC5D0000B5590000B0570000AE550000AE550000AE550000AE550000AE55
      0000B5590000964A00005D2F030000000000000000009797970080CC800080CC
      800082CF880084D4930086D99F0086D99F0088DEAB008BE3B9008CE5BF008DE7
      C30090ECD10099ECCF0091919100707070000000000000669A004CC7E9004AC5
      E6004BC3E400B9877500F7ECDE00F5E4D200EFDCC900EFDCC900EFDCC900EBD8
      C600EFDCC900F5E4D2008F6261000000000000000000CF660000E7740300DC6D
      0100D66A0000D0670000CF660000B6590000B6590000B6590000B6590000B659
      0000CF660000B45900006B3500000000000000000000D0670000E7730100DA6E
      0300D46A0100D0670000D0670000BC5D0000BC5D0000BC5D0000BC5D0000BC5D
      0000BC5D0000B55900006834000000000000000000009A9B9B00207522002075
      2200227728002277280022772800237D2E0035894800469360005AB1810093F2
      DF0093F3E10095F7EB0091919100707070000000000000669A0057CDED0050C9
      EA004AC5E600B9877500F9EFE400E3A55B00E4A55900E4A55900E4A55900E4A5
      5900E4A55900F5E5D5008F6261000000000000000000D1670100EA760500E271
      0200DC6D0100D4690000E6934100E69A4F00E69A4F00E6974900D7611900B659
      0000B6590000AF5600006B3500000000000000000000D1680100EB760400E372
      0300DA6E0300EC862100E9974600F0A35800E9974600E8934000BA5C0000BA5C
      0000BC5D0000AE5500006834000000000000000000009F9F9F00004500000045
      000000430000004300000046000000460000004C0000003B0000227F2C0092F0
      D90096F8ED0094F5E70091919100707070000000000000669A005DD1EF0057CD
      ED0053CBEB00C18C7200FAF2E900F7ECDE00F5E4D200F5E4D200F5E3D100F3E1
      CD00F5E4D200F5E9DB008F6261000000000000000000D66A0000EA7E1400ED7A
      0800E7740300DF6F0100F8C99C00FCFAF800FCFAF800FCFAF800FCFAF800E69A
      4F00B6590000AF5600006B3500000000000000000000D46A0100EE7F1300ED7A
      0A00F0A35800FCF8F500FCF8F500FCF8F500FCF8F500F8CA9E00BC5D0000BA5C
      0000BC5D0000AE550000683400000000000000000000A4A4A500004F0000004F
      0000003B0000003800000038000000380000107310000867080078C6780080CC
      80007ACA7A0074C7740091919100707070000000000000669A0065D6F20061D4
      F1005BD0EE00C6906F00FAF4EE00E3A55B00E4A55900E4A55900E4A55900E4A5
      5900E4A55900F9EEE2008F6261000000000000000000D66A0000E98C3100EB81
      1900ED7A0800E7740300E5730300EA7E1400D7611900D7611900F4BF8C00FCFA
      F800B6590000AF5600006B3500000000000000000000D46A0100EC8D3100EE82
      1800FCF8F500F7C08B00ED841D00EE821800DA641600D5690400BC5D0000BC5D
      0000BC5D0000AE550000683400000000000000000000AAA9AA00207D2000207D
      20000049000000380000003E0000004F000044A1440064BE640066C2660095AB
      3C00D19C1800E5980C0091919100707070000000000000669A006DDBF50069D9
      F40061D4F100C6906F00FBF8F400FBF6F200F9F0E600F9EFE400F8EEE100F9EE
      E200F9F0E600F5E9DB008F6261000000000000000000D66A0000EDA45C00EA8A
      2C00EA7E1400ED7A0800F8C99C00E2710200DF6F0100D66A0000D4670A00FCFA
      F800CF660000B15700006B3500000000000000000000D46A0100F2A55B00ED8A
      2900FCF8F500ED841D00E9750300E3720300DF700300F8CA9E00D0670000D067
      0000BC5D0000B0570000683400000000000000000000AFAFAF005AB35A005AB3
      5A000055000000490000006300000C720C0090912800B4841200CA800800DF7A
      0000E37E0000E580000091919100707070000000000000669A0075DFF80071DD
      F60069D9F400D5A58900FBF8F400FCFAF900FCFAF900FCFAF900FCFAF900B384
      7600B3847600B3847600B38476000000000000000000D66A0000F4B27200E890
      3900EB811900F8C89900FCFAF800EA760500E5730300DF6F0100E89E5500FCFA
      F800CF660000B6590000723800000000000000000000D46A0100F6B37200EB90
      3700FCF8F500F5AA6200EC780600EB760400E7730100FCF8F500F8C59400D168
      0100D0670000B85B0000733900000000000000000000B4B4B50046B5460046B5
      46000A740A001678130010700D00785E0000C6600000C6600000C9630000CC66
      0000CC660000CC66000091919100707070000000000000669A007CE2F90078E1
      F90071DDF600D5A58900FCFAF800FCFAF900FCFAF900FCFAF900FCFAF900B384
      7600DDA57200E2A45B00000000000000000000000000D66A0000F5B97D00E693
      4100FADCBE00FCFAF800FCFAF800FBE8D500FAE1C700FAE1C700FCFAF800F4BF
      8C00D96C0000CF660000854100000000000000000000D46A0100F6B97E00E893
      4000F8CA9E00FCF8F500FBE3CB00FBE3CB00FBEBDA00FCF8F500FCF8F500F9D5
      B100D66B0200BC5D0000834000000000000000000000B8B9B90044AF310044AF
      310068A94100BFC97900AFBF6C00FAE09900ECBF7300D9994D00B34D0000B34D
      0000B34D0000B852000091919100707070000000000000669A007EE3F9007CE2
      F90078E1F900D5A58900D9A68200D9A68200D9A68200D9A68200D9A68200B384
      7600C6AE9A0000669A00000000000000000000000000D66A0000F4BC8500E89E
      5500F9D8B700FCFAF800FCFAF800FAE1C700F8C99C00F8C99C00EDA45C00E271
      0200E2710200CF660000904700000000000000000000D46A0100F7BE8700ED9C
      4C00EB903700F6B37200F8CA9E00F8CA9E00FADEC300FCF8F500FCF8F500F9D0
      A800E3720300D0670000914800000000000000000000BDBDBE00FFD27300FFD2
      7300FFD27300FFD27300FFD27300FFD27300FFD27300FFD27300FDD78200EFCF
      9600C68D6300A03A000091919100707070000000000000669A0088E5F9007EE3
      F9007EE3F9007EE3F90078E1F90075DFF8006DDBF50065D6F2005DD1EF0057CD
      ED0053CBEB0000669A00000000000000000000000000D66A0000F8C79600EEA7
      6100E8903900F8CCA100FCFAF800EA831D00EB811900ED7A0800EC780600EA76
      0500EA760500D66A00009E4E00000000000000000000D46A0100F8C59400F5AA
      6200E9923C00EB903700ED882500ED841D00EE821800FCF8F500F7C08B00EB76
      0400E9750300D46A01009D4D00000000000000000000C1C1C200FDD07700FDD0
      7700FFAD2600FFAD2600FEBC4900FEB73E00FFB23200FDD07700F8E9B900F8ED
      C400F8EDC400F9E6BB0091919100707070000000000000669A0088E5F90088E5
      F9007372720073727200737272007372720073727200737272007372720061D4
      F1005BD0EE0000669A00000000000000000000000000D66A0000F8C89900F5C2
      9000F5B97D00F1AC6800F9D3AE00E6974900E98C3100EB811900ED7A0800EC78
      0600EC780600E2710200AA5400000000000000000000D46A0100F8C79800F8C3
      8E00F7B67800F6B06C00F2A55B00ED9C4C00EB903700F7C08B00ED7A0A00EC78
      0600EC780600DF700300AB5400000000000000000000C4C4C600F4D5A300F4D5
      A300F6C98300F6C98300F4D5A300F4D5A300F4D5A300F4D5A300F4D5A300F4D5
      A300F4D5A300F7D5A20091919100707070000000000000669A0088E5F90088E5
      F90073727200D1C5BA00D1C5BA00D1C5BA00D1C5BA00C9BFB6007372720069D9
      F40061D4F10000669A00000000000000000000000000D66A0000F5B97D00F8C9
      9C00F8CCA100F8C79600F4BC8500F4B27200E6974900EA882800ED7A0800ED7A
      0800ED7A0800E7740300B55900000000000000000000D46A0100F7B67800F8CA
      9E00F8CA9E00F8C59400F7BC8300F6B06C00ED9C4C00ED882500EE7D0E00EC78
      0600EC780600E9750300B55900000000000000000000C7C7C800F3CF9D00F3CF
      9D00F3CE9C00F3CE9C00F3CC9A00F3CC9A00F3CB9900F3CA9800F3C99700F3C9
      9700F3C89600F6CB99009191910070707000000000000000000000669A000066
      9A0073727200EBD8C600FAFAF900FCF9F700FCF9F700D1C5BA00737272000066
      9A0000669A000000000000000000000000000000000000000000EA7E1400E98C
      3100E98C3100E98C3100EA8A2C00EA852200EA7E1400D4670A00D96C0000D66A
      0000D66A0000CF66000000000000000000000000000000000000DA641600EC8D
      3100EC8D3100EC8D3100ED8A2900EC862100DA641600D8670C00D66B0200D66B
      0200D66B0200D0670000000000000000000000000000C2C3C300C2C3C300C0C0
      C100BEBDBF00BBBBBD00B9B8B900B6B6B600B3B3B400B0B1B100AEADAE00AAAB
      AB00A8A7A900A4A5A60091919100000000000000000000000000000000000000
      0000000000007372720073727200737272007372720073727200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A4410800A4410700A23F080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5787300A5787300A5787300A5787300A5787300A5787300A578
      7300A5787300A57873008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A23F0800A4410800A23F0800A441080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A97B7500FCE3CA00FDE1C500FDDFC100FCDAB900FCDAB900F9D4
      B000F9D4B000F5CCA6008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A44107000000000000000000A23F0800A23F080000000000A23F
      0800A44107000000000000000000000000000000000000000000000000000000
      000000000000AD7E7500FAE6D400E5A55600E5A55600E5A55600E5A55600E5A5
      5600E5A55600F9D4B0008C5D5C00000000000000000000000000000000008000
      0000000000008000000000000000800000000000000080000000800000008000
      0000800000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A44107000000000000000000A23F080000000000A23F0800A23F
      0800A23F0800A441080000000000000000000000000000000000000000000000
      000000000000B5867A00FBEEE200F9E9D900FBE4CF00FCE3CA00FDE1C500FCDD
      BD00FCDAB900F9D4B0008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4410800A23F0800A23F0800A23F080000000000A23F08000000
      000000000000A44107000000000000000000A5787300A5787300A5787300A578
      7300A5787300BA8C7D00FBF1E700E5A55600E5A55600E5A55600E5A55600E5A5
      5600E5A55600FCDAB9008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A23F0800A4410700A4410800A23F0800A44108000000
      000000000000A23F08000000000000000000A97B7500FCE3CA00FDE1C500FDDF
      C100FCDAB900BD918400FDF5ED00FBF1E700FBEEE200F9E9D900FAE6D400FCE3
      CA00FDE1C500FDDFC1008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009E420E0091471E00A23F0800A4410700A441
      0800A4410800A23F08000000000000000000AD7E7500FAE6D400E5A55600E5A5
      5600E5A55600BD918400FEF9F300E5A55600E5A55600E5A55600E5A55600E5A5
      5600E5A55600FCE3CA008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000000000008080
      8000000000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000917E75008E7B71007C4E3500A23F0800A23F
      0800A23F0800000000000000000000000000B5867A00FBEEE200F9E9D900FBE4
      CF00FCE3CA00DEAB8400FEFBF900FEF9F500FDF7F000FCF4EA00FBF1E700FBEE
      E200F9E9D900FAE5D1008C5D5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080808000000000000000000000000000000000000000
      000000000000000000008E7C72009C918D008E7C72008E7C7200000000000000
      000000000000000000000000000000000000BA8C7D00FBF1E700E5A55600E5A5
      5600E5A55600DEAB8400FEFBF900FEFBF900FEF9F500FEF9F300FDF5ED00F9E9
      D900ECC5A200BD9184008C5D5C00000000000000000080808000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000008E7C7200C8BEBD008E7C72009D9591008E7C7200000000000000
      000000000000000000000000000000000000BD918400FDF5ED00FBF1E700FBEE
      E200F9E9D900E2B18A00FEFBF900FEFBF900FEFBF900FEFBF800FEF9F300B281
      7600B2817600B2817600B07F75000000000000000000C0C0C000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000808080000000000000000000000000000000
      00008E7C7200D3CBCB008E7C72009D959100C6BBB9008E7C7200000000000000
      000000000000000000000000000000000000BD918400FEF9F300E5A55600E5A5
      5600E5A55600E5B68E00FEFBF900FEFBF900FEFBF900FEFBF900FEFBF800B281
      7600E5AE7000E4A3530000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000008E7C
      7200D3CBCB008E7C7200000000008E7C7200D3CBCB008E7C7200000000000000
      000000000000000000000000000000000000DEAB8400FEFBF900FEF9F500FDF7
      F000FCF4EA00E5B68E00DEAB8400DEAB8400DEAB8400DEAB8400DEAB8400B281
      7600E8AB5E000000000000000000000000000000000000000000808080000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E7C
      72008E7C720000000000000000008E7C7200D3CBCB008E7C7200000000000000
      000000000000000000000000000000000000DEAB8400FEFBF900FEFBF900FEF9
      F500FEF9F300FDF5ED00F9E9D900ECC5A200BD9184008C5D5C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000800000000000000000000000000000008E7C
      72000000000000000000000000008E7C7200D3CBCB008E7C7200000000000000
      000000000000000000000000000000000000E2B18A00FEFBF900FEFBF900FEFB
      F900FEFBF800FEF9F300B2817600B2817600B2817600B07F7500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000808080008000000080000000000000000000000000000000000000000000
      00000000000000000000000000008E7C72008E7C720000000000000000000000
      000000000000000000000000000000000000E5B68E00FEFBF900FEFBF900FEFB
      F900FEFBF900FEFBF800B2817600E5AE7000E4A3530000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000808080008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008E7C72000000000000000000000000000000
      000000000000000000000000000000000000E5B68E00DEAB8400DEAB8400DEAB
      8400DEAB8400DEAB8400B2817600E8AB5E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D4D4D004D4D4D004D4D4D004D4D
      4D00000000000000000000000000000000000000000000000000000000004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEEAD500FDE8
      D100FCE7CF00FBE4CB00FBE1C400FBDFC000FBDEBD00FBDDBC00FBDAB500FBDA
      B500FBD8B200FBD8B200D5820000000000000000000000000000000000004D4D
      4D004D4D4D004D4D4D00000000004D4D4D004D4D4D004D4D4D00000000000000
      000000000000000000000000000000000000000000004D4D4D004D4D4D000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A6004D4D4D004D4D4D00A6A6A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEEDDA00FEEB
      D700CF834400CF834400CF834400CF834400CF834400CF834400CF834400CF83
      4400FBDAB500FBD8B200D582000000000000000000000000000000000000A6A6
      A6004D4D4D000000000000000000000000004D4D4D00A6A6A600000000000000
      00000000000000000000000000000000000000000000A6A6A6004D4D4D00A6A6
      A600000000000000000000000000000000000000000000000000000000004D4D
      4D004D4D4D004D4D4D00000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000D5820000FEF0E000FEEE
      DC00FEECD800FEEAD500FCE7CF00FBE4CB00FBE1C400FBE0C200FBDEBE00FBDE
      BD00FBDBB700FBDAB500D5820000000000000000000000000000000000000000
      00004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D0000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D004D4D
      4D00000000000000000000000000000000000000000000000000A6A6A6004D4D
      4D004D4D4D00A6A6A600000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000D5820000FEF2E500FEF0
      E000FEEEDC00F6D1AA00CF844000CF834400D4895700CF834400EEC6A000FBDF
      C000FBDEBD00FBDBB700D5820000000000000000000000000000000000000000
      0000A6A6A6004D4D4D00000000004D4D4D00A6A6A60000000000000000000000
      0000000000000000000000000000000000000000000000000000A6A6A6004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D4D004D4D
      4D004D4D4D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEF5EA00FEF2
      E500FEEEDC00D4895700D6875D00FDE9D300FDE8D100DAAF8D00D4895700FBDD
      BC00FBDFC000FBDEBD00D5820000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D004D4D4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D004D4D4D0000000000000000000000000000000000A6A6A6004D4D4D004D4D
      4D00A6A6A6000000000000000000000000000000000000000000DEDEDE000000
      00000000000000000000000000000000000000000000DEDEDE00000000000000
      00005F5F5F0000000000000000000000000000000000D5820000FEF6EE00FEF5
      EA00FEEBD700D2884900E1B59100FEEDDA00FEEAD500FADBB900D4895700FAD7
      B100FBE1C400FBDFC000D5820000000000000000000000000000000000000000
      000000000000A6A6A6004D4D4D00A6A6A6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A6A6
      A6004D4D4D00A6A6A6000000000000000000000000004D4D4D004D4D4D004D4D
      4D00000000000000000000000000000000000000000000000000DEDEDE000000
      00000000000000000000000000000000000000000000DEDEDE00000000000000
      00005F5F5F0000000000000000000000000000000000D5820000FEF9F300FEF7
      EF00FEEEDD00D2884900DDB28E00FEEFDE00FEEDDA00FADBB900D6875D00FADB
      B900FBE4CB00FBE1C400D5820000000000000000000000000000000000000000
      000000000000000000004D4D4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004D4D4D004D4D4D000000000000000000A6A6A6004D4D4D004D4D4D00A6A6
      A600000000000000000000000000000000000000000000000000DEDEDE000000
      00000000000000000000000000000000000000000000DEDEDE00000000000000
      00005F5F5F0000000000000000000000000000000000D5820000FEFAF500FEF9
      F300FEF0E100D3894C00E0B49000FEF1E300FEF0E000FBDFC000D6875D00FBDF
      C000FDE8D100FBE4CB00D5820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A6A6A6004D4D4D00A6A6A600000000004D4D4D004D4D4D004D4D4D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEFCF800FEFB
      F700FEF3E800D3894C00E6BB9600FEF4E900FEF2E500FAE1C800D6875D00FAE1
      C800FEEAD500FDE8D100D5820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D004D4D4D00A6A6A6004D4D4D004D4D4D00A6A6A6000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000D5820000FEFCF800FEFC
      F800E4B89300D1833300D4895700FBE5CE00FEF4E900DAAF8D00D0833A00DDB2
      8E00FEECD800FEEAD500D5820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004D4D4D000000000000000000000000000000000000000000000000000000
      000000000000A6A6A6004D4D4D004D4D4D004D4D4D004D4D4D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEFCF800FEFC
      F800FEFCF800FEFCF800FEFAF400FEF8F100FEF6EE00FEF5EA00FEF2E600FEF1
      E200FEEFDE00FEEDDA00D5820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D004D4D4D004D4D4D0000000000000000000000000000000000000000000000
      000000000000000000004D4D4D004D4D4D004D4D4D00A6A6A600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5820000FEFCF800FEFC
      F800FEFCF800FEFCF800FEFCF800FEFAF500FEF8F200FEF7EF00FEF5EA00FEF3
      E800FEF1E200FEEFDE00D5820000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4D004D4D
      4D004D4D4D004D4D4D004D4D4D00000000000000000000000000000000000000
      00000000000000000000A6A6A6004D4D4D004D4D4D0000000000000000004D4D
      4D004D4D4D004D4D4D004D4D4D004D4D4D000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000D5820000D582
      0000D5820000D5820000D5820000D5820000D5820000D5820000D5820000D582
      0000D5820000D582000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004D4D4D00A6A6A60000000000000000000000
      00004D4D4D004D4D4D004D4D4D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D4D4D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7A67B00B571520084513100945131000000
      0000F79A8400B571520094594200AD79630000000000A3787400A3787400A378
      7400A3787400A3787400A3787400A3787400A3787400A3787400A3787400A378
      7400A3787400A3787400A3787400000000000000000000000000D5810000D581
      0000D5810000D5810000D5810000D5810000D5810000D5810000D5810000D581
      0000D5810000D581000000000000000000000000000000000000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D682000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7A68400B5695200C6A294000000
      000000000000E7966B00A559420000000000A3787400C4969000ECD0B800F6D7
      B600F6D7B600F6D7B600F6D7B600F6D7B600F6D7B600F6D7B600F6D7B600F6D7
      B600F6D7B600ECD0B800C3958E00A378740000000000D5810000FEF7EF00FDED
      DC00FDEAD600FDE8D100FDE7CE00FEE4C700FEE3C400FEE1C200FDDFBC00FDDE
      BB00FDDDBA00FEE1C200D58100000000000000000000D6820000FEF7EE00FEED
      D800FEEBD400FDE8D000FDE8D000FCE3C800FDE1C300FEE0BE00FEDEBB00FDDD
      B800FDDDB800FDE1C100D6820000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7A68400A5614200CEB2
      AD0000000000000000009459420000000000A3787400CEADA400C5979300F4D9
      BF00F4D9BF00F4D9BF00F4D9BF00F4D9BF00F4D9BF00F4D9BF00F4D9BF00F4D9
      BF00F0D3B700C4969000CEAFA700A378740000000000D5810000FDF2E600FDE9
      D300FDE5CA00FDE5CA00FEE4C700FDE0BE00FDDDBA00FDDEBB00FDDFBC00FDDD
      BA00F7D7B700FDDDBA00D58100000000000000000000D6820000FEF3E500FEEA
      D200FDE8D000FCE2C600FDE1C300FDE1C100FDDCB800FDDCB700FDDBB500FBD9
      B500FAD7B300FDDDB800D6820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7966B00A561
      4200A56142009C5939009459310000000000A3787400F1DAC300CBA59F00CEAB
      A200EFE4DA00EEE1D600EEE1D600EEE1D600EEE1D600EEE1D600EEE1D600EFE4
      DA00CBA59F00CDA8A000EEDDD000A378740000000000D5810000FDF5EC00FDED
      DC00E7B78A00D2884400D78A4000CE884A00CE884A00D3884200E1A26500F2D0
      AE00FDDDBA00FDDEBB00D58100000000000000000000D6820000FEF5EA00FEED
      D800FEEED900ECC29C00D9814200D7823700E2B08300FEDEBB00FEDDB900FDDB
      B500FBD9B500FEDDB900D6820000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D68E
      6B00BD866B00000000008451310000000000A3787400EFE4DA00F1DAC300C395
      8E00DED0C000EFE8E200EFE8E200EFE8E200EFE8E200EFE8E200EEE9E400DED0
      C000C4969000EFE4DA00EFE4DA00A378740000000000D5810000FEF8F100FDEF
      E000FEE4C700DB8D3F00D87B0F00E3A76D00EDC6A200DA732000D2710300DF97
      4F00FDDFBC00FDE0BE00D58100000000000000000000D6820000FEF8F100FEEF
      DB00FEEDD800FEECD600DBAE8500D3801F00F1CDAA00FCE2C600FEE0BE00FDDD
      B800FDDBB500FEE0BE00D6820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6865A00B56142009451310000000000A3787400EDEAE500F9F6FB00ECD0
      B800C3958E00EEE1D600EEE9E400EFE8E200EFE8E200EEE9E400EEDDD000C395
      8F00E4CFBC00F9F6FB00EEE9E400A378740000000000D5810000FEFBF600FDF2
      E600FDE8D100E0995100DA732000E8BB9100FDEFE000E1A26500D2710300DA73
      2000FDDFBC00FEE1C200D58100000000000000000000D6820000FEFBF600FEF1
      E100FEEFDB00FEF1DF00F3D0AD00D2802700E8B98E00FDE8D000FDE1C100FEDE
      BB00FDDDB800FEE0BE00D6820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7A68400C67D5A009451310000000000A3787400F9F6FB00F9FAFD00CEAF
      A700C3958E00A3787400A3787400A3787400A3787400A3787400A3787400C395
      8E00DED0C000F9FDFD00F9F6FB00A378740000000000D5810000FEFDFA00FEF7
      EF00FDE9D300E19C5800DE8F3D00E4AE7B00EDC6A200D78A4000D2710300E1A0
      6000FEE1C200FEE4C700D58100000000000000000000D6820000FEFDFA00FEF3
      E500FEF1E100FEF2E200FCE5CC00D9814200E0AF8300FDE7CF00FCE2C600FDE1
      C100FEDEBB00FDE1C300D6820000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7A68400B569420000000000A3787400EDDED200C49E9B00C8A2
      9E00E5EEED00EBF5F500EDEAE500EBEBE800EAEBE900E5EEED00F1F9F900EDDE
      D200C0999600CBA59F00EFE8E200A378740000000000D5810000FEFEFD00FEF7
      EF00FCEBD900E19E5B00DE903E00CE884A00D3884200D2710300CE884A00FBDC
      BA00FEE3C400FDE5CA00D58100000000000000000000D6820000FEFDFC00FEF6
      EC00FEF3E500FEF2E200FEF1E100E2B08300DB7C4F00FCE1C400FDE8D000FCE2
      C600FDE1C100FCE4CA00D68200000000000000000000000000005271F7004A69
      BD006BB6BD0039A6A50000000000000000000000000000000000000000000000
      00000000000000000000D682520000000000A3787400C0999600DED0C000F9FD
      FD00F9FDFD00F9FDFD00F7FDFD00F7FDFD00F3FCFB00F3FCFB00F3FCFB00F3FC
      FB00EFF8F700C1B6B600C29C9800A378740000000000D5810000FEFEFD00FEFB
      F600F1E9E100E1A06000DE903E00E7B78A00EFCBA900DB8D3F00DA732000E8BB
      9100FDE7CE00FDE7CE00D58100000000000000000000D6820000FEFDFC00FEF8
      F100FEF6EC00FEF3E500FEF5EA00EDC5A000D9814200F3D0AD00FEECD600FCE4
      CA00FCE2C600FDE7CF00D6820000000000005271F7002151E7002141C6002149
      B50021B2C6001092A50039A6A500000000000000000000000000000000000000
      000000000000000000000000000000000000A3787400B1DBDD00F9FDFD00F9FD
      FD00F9FDFD00F9FDFD00F9FDFD00F9FDFD00F9FDFD00F7FDFD00F1F9F900E8F4
      F400E6F1F100E6F1F100C2D6D100A378740000000000D5810000FEFEFD00FEFD
      FA00F7F0E900E3A76D00DF924200EDC6A200FDF2E600E19C5800D87B0F00E4AB
      7300FDE8D100FDE9D300D58100000000000000000000D6820000FEFDFC00FEFA
      F400FEF7EF00FEF5EA00FEF6EC00FCE5CC00DB7C4F00EBC09800FEF1DF00FDE8
      D000FCE4CA00FEEAD200D6820000000000006386E7005271F7004261D6002151
      B50042E3F70031D3E70039A6A500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3787400F9FDFD00F9FD
      FD00F9FDFD00F1F9F900E6F1F100E7ECEB00B1DBDD00A6CDD400A6CDD400A8C7
      CE00A3D1D800A8C7CE00A37874000000000000000000D5810000FEFEFD00FEFE
      FD00F2D0AE00E0995100DE903E00E1A26500E3A76D00DE8F3D00DF924200EFCB
      A900FDEAD600FCEBD900D58100000000000000000000D6820000FEFDFC00FEFB
      F800FEFAF400FEF7EF00FEF7EF00E8DCCF00DB7C4F00DB7C4F00F6D4B100FEEE
      D900FDE8D000FEECD600D6820000000000005A71D60084A2FF00738AE7004261
      B50042DBE70042CBD60018868400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3787400B1DB
      DD008DEAF5008FE5EF0092E0EA0092E0EA008EE3EF008CE4F0008CE4F0008CE4
      F000A0D7DE00A3787400000000000000000000000000D5810000FEFEFD00FEFD
      FB00EFCBA900EBC19A00EDC6A200EBC19A00E7B78A00EBC19A00F7D7B700FDED
      DC00FDEAD600FDEFE000D58100000000000000000000D6820000FEFDFC00FEFD
      FA00FEFBF800FEFAF400FEF9F200E1D4C600EABE9500E6B68A00F3D0AD00FEF1
      DF00FEEBD400FEF0DD00D682000000000000A5A2A500A5AAA500A59A94008479
      7300C6823100B5793100B5824A00000000005A5D5A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A378
      7400A8C7CE008DEAF5008DEAF5008DEAF5008DEAF5008DEAF5008DEAF500B2C1
      C500A378740000000000000000000000000000000000D5810000FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFEFD00FEFCF800FEF7
      EF00FDF3E900FEF9F300D58100000000000000000000D6820000FEFDFC00FEFD
      FC00FEFDFC00FEFDFC00FEFDFC00FEFDFC00FEFDFC00FEFDFC00FEFDFA00FEF6
      EC00FEF4E800FEF9F200D6820000000000000000000094929400B5B2B500A59A
      9400D6823100C6712100E7C3AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3787400A378740099E2EA008DEAF5008DEAF50096DEE700A3787400A378
      7400000000000000000000000000000000000000000000000000D5810000D581
      0000D5810000D5810000D5810000D5810000D5810000D5810000D5810000D581
      0000D5810000D581000000000000000000000000000000000000D6820000D682
      0000D6820000D6820000D6820000D6820000D6820000D6820000D6820000D682
      0000D6820000D682000000000000000000000000000000000000BDBABD009486
      8400E7AA6300EFCFB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A3787400A3787400A3787400A3787400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BC3DE004A92B5004A92
      B5004A92B5004A92B5004A92B5004A92B5004A92B5004A92B5004A92B5004A92
      B5004A92B5004A92B5004A92B5004A92B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000947D6B00947D6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BC3DE00CEEFFF00CEEF
      FF00CEEFFF00CEEFFF00CEEFFF00C6E7FF00B5E3F700A5DBEF009CD7EF008CD3
      EF0084CBE70073C7E7006BC3DE004A92B5000000000000000000000000000000
      00008B0C4C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000947D6B00F7F3F700F7F3F700947D6B00000000000000
      00000000000000000000000000000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000000000006BC3DE00CEEFFF004A96
      B500CEEFFF004A96B500CEEFFF004A96B500C6E7FF004A96B500A5DBEF004A96
      B5008CD3EF004A96B50073C7E7004A92B5000000000000000000000000000000
      0000961757009719580000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000947D6B00F7F3F700B56D4A00B56D4A00F7F3F700947D6B000000
      00000000000000000000000000000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000000000006BC3DE006BC3DE005AA6
      C6006BC3DE005AA6C6006BC3DE005AA6C6006BC3DE005AA6C6006BC3DE005AA6
      C6006BC3DE005AA6C6006BC3DE006BC3DE000000000000000000000000000000
      0000A1236200A2256400A3256400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000947D6B00F7F3F700B56D4A00FFAA8400FFA27B00B56D4A00F7F3F700947D
      6B000000000000000000000000000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400B5754A00B5754A00B575
      4A00B5754A00B5754A00B5754A00B5754A00B5754A00B5754A00B5754A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AB2E6D00AD316F00AD316F00AC2F6E000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000947D
      6B00F7F3F700B56D4A00D6B29C00D6B29C00D6B29C00D6B29C00B56D4A00F7F3
      F700947D6B0000000000000000000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400F7C79C00F7BE9400F7BA
      8C00F7B68400F7AE7B0063616300B5929400B5929400DE969400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B63A7800B83C7A00B83C7A00B73B7900B438760000000000000000000000
      0000000000000000000000000000000000000000000000000000947D6B00F7F3
      F700B56D4A00FFBA9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6967B00B56D
      4A00F7F3F700947D6B00000000000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400FFCFAD00B5754A00B575
      4A00B5754A00B5754A00DEB6B500FFFFFF004AB6DE0063616300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0458300C3478500C3488600C2468400BE438100BA3E7C00000000000000
      00000000000000000000000000000000000000000000947D6B00F7F3F700B56D
      4A00FFCBAD00FFC7A500FFBA9C00FFFFFF00FFFFFF00C6967B00FFAA8400FFA2
      7B00B56D4A00F7F3F700947D6B000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400FFD7B500B5754A00E7EF
      F700DE969400F7BE9400DEB6B5004AB6DE0084D3EF004AB6DE00636163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CB508E00CE539100CE549100CC528F00C84D8B00C3478500BC407E000000
      000000000000000000000000000000000000B56D4A00FFFBF700DE924A00FFD7
      BD00FFCFB500FFCBAD00FFC7A500FFFFFF00FFFFFF00C6967B00FFAE8C00FFAA
      8400FFA27B00B56D4A00F7F3F700947D6B0000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400FFD7B500B5754A00DE96
      9400F7CBA500F7C39C00DE9694004AB6DE00B5EFFF0084D3EF004AB6DE006361
      6300000000000000000000000000000000000000000000000000000000000000
      0000D55B9800D85E9C00D95F9C00D75D9A00D2579500CB518E00C3488600BA3E
      7D0000000000000000000000000000000000B56D4A00FFFFFF00DE924A00FFD7
      BD00FFD7BD00FFCFB500FFCBAD00FFFFFF00FFFFFF00C6967B00FFB29400FFAE
      8C00FFAA8400B56D4A00F7F3F700947D6B0000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400FFD7B500DE969400FFD7
      B500FFD3AD00DE96940000000000000000004AB6DE00B5EFFF0084D3EF004AB6
      DE00636163000000000000000000000000000000000000000000000000000000
      0000DE64A100E36AA600E46BA800E167A400DB619E00D3599600C94E8C000000
      00000000000000000000000000000000000000000000B56D4A00FFFFFF00DE92
      4A00FFD7BD00FFD7BD00FFFFFF00FFFFFF00FFFFFF00C6967B00FFBA9C00FFB2
      9400B56D4A00F7F3F700947D6B000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400FFD7B500FFD7B500FFD7
      B500DE969400000000000000000000000000000000004AB6DE00B5EFFF0084D3
      EF004AB6DE006361630000000000000000000000000000000000000000000000
      0000E66DAA00ED74B100EF76B300EA71AE00E269A500D85E9C00000000000000
      0000000000000000000000000000000000000000000000000000B56D4A00FFFF
      FF00DE924A00FFD7BD00FFD7BD00D6B29C00D6B29C00FFC7A500FFBA9C00B56D
      4A00F7F3F700947D6B00000000000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400FFD7B500FFD7B500DE96
      94000000000000000000000000000000000000000000000000004AB6DE00B5EF
      FF0084D3EF00A5A6A5004A4DBD00000000000000000000000000000000000000
      0000EB73AF00FF88C400FF88C400F179B500E66DAA0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B56D
      4A00FFFFFF00DE924A00FFD7BD00FFFFFF00FFFFFF00C6967B00B56D4A00F7F3
      F700947D6B0000000000000000000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400FFD7B500DE9694000000
      0000000000000000000000000000000000000000000000000000000000004AB6
      DE00E7CFC600A5AEB5004A4DBD004A4DBD000000000000000000000000000000
      0000EB73AF00FF88C400FF88C400F179B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B56D4A00FFFFFF00DE924A00FFFFFF00FFFFFF00B56D4A00F7F3F700947D
      6B000000000000000000000000000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE969400DE969400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A6DFF009CAEFF004A6DFF004A4DBD000000000000000000000000000000
      0000E66DAA00ED74B100EF76B300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B56D4A00FFFFFF00DE924A00DE924A00F7F3F700947D6B000000
      00000000000000000000000000000000000000000000000000000000FF0000B2
      FF0000D7FF0000FFFF0000FFE30000FF6400B2FF0000FFFF0000FF6F0000FF00
      0000F000AA00FF00FF00BA00BA0000000000DE96940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A6DFF004A6DFF00000000000000000000000000000000000000
      0000DE64A100E36AA60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B56D4A00FFFFFF00FFFBF700947D6B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D55B98000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B56D4A00B56D4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7818200B781
      8200B7818200B7818200B7818200B7818200B7818200B7818200B7818200B781
      8200B7818200B7818200B78182000000000000000000078DBE00078DBE00078D
      BE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078D
      BE00078DBE00078DBE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B58E8C00946D6B00946D6B00946D6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C8A79D00F8EA
      D900F4E0C800F2DABD00F2D8B300F2D4AA00F1D3A600EFCFA200EFCFA200EFCF
      A200EFCFA200F0D1A100B781820000000000078DBE001A9DAA005EC7EB0084E1
      FA0066CDF20066CDF20066CDF20066CDF20066CDF20066CDF20066CDF20066CD
      F20046B8D400078DBE000000000000000000000000000000000097433F009743
      3F00C2999900C2999900C2999900C2999900C2999900C2999900C29999009230
      2F0097433F0000000000000000000000000000000000AD8E8C00946D6B00946D
      6B00BD868400C68A8400BD8A8400946D6B00946D6B00946D6B00946D6B00946D
      6B00946D6B00946D6B00946D6B00000000000000000000000000C8A79D00F8EA
      D900F5E4CF00F3DEC500F2D9B900F2D8B300F2D4AA00F0D1A100EECEA200EECE
      A200EECEA200F0D1A100B781820000000000078DBE004BBBDD0046B8D4009BF1
      FC0072D6F80072D6F8006DD2F60072D6F80072D6F80072D6F80072D6F8006DD2
      F60048B9D90080DEF900078DBE00000000000000000097433F00CD666600C663
      6300E4E0E400922B2B00922B2B00E6E5E700E5E3E500E4E0E400CECACC00922B
      2B009E43410097433F000000000000000000AD8E8C00BD868400CE928C00CE92
      8C00CE8E8C00C68E8C00BD8A8400946D6B00F7B2AD00F7B2AD00F7B2AD00F7B2
      AD00F7B2AD00F7B2AD00946D6B00000000000000000000000000C9A99E00FAF1
      E800F7E7D500F5E4CF00F3DEC500F2DABD00F2D8B300F2D4AA00F0D1A100EECE
      A200EECEA200F0D1A100B781820000000000078DBE0072D6F800078DBE00ACF7
      FC007BDCFA007BDCFA007BDCFA007BDCFA007BDCFA007BDCFA007BDCFA007BDC
      FA0048B9D900ACF7FC00078DBE00000000000000000097433F00CD656600C162
      6200E5E3E500922B2B00922B2B00E4E0E400E6E5E700E4E0E400CECBCC00922B
      2B009E43410097433F000000000000000000AD8E8C00D6969400D6929400D692
      8C00CE928C00CE8E8C00C68E8400946D6B004A7D4A004A7D4A004A7D4A004A82
      4A00638A5A00F7B2AD00946D6B00000000000000000000000000CAAEA300FBF5
      EF00F8EAD900F7E7D500F5E4CF00F3DEC500F2D9B900F2D8B300F2D4AA00F0D1
      A100EECEA200F0D1A100B781820000000000078DBE007BDCFA001396B60099F0
      FC0092EBFB0086E3FB0086E3FB0086E3FB0086E3FB0086E3FB0086E3FB0086E3
      FB0048B9D900B1F7FC00078DBE00000000000000000097433F00CD656600C162
      6200E5E3E500922B2B00922B2B00E4E0E400E6E5E700E6E5E700CECBCC00922B
      2B009E43410097433F000000000000000000AD8E8C00D6969400D6969400D692
      9400CE8E8C00C68E8C00C68E8400946D6B004A824A004A7D4A004A7D4A004A92
      52006B966300F7B2AD00946D6B00000000000000000000000000CEACA800FDFA
      F600FAF1E800F8EAD900F7E7D500F3E1CC00F3DEC500F2DABD00F2D8B300F2D4
      AA00F0D1A100F0D1A100B781820000000000078DBE0086E3FB0048B9D90058C3
      E700ACF7FC008FE9FB008FE9FB008FE9FB008FE9FB008FE9FB008FE9FB000C84
      18004BBBDD00B6F7FD0066CDF200078DBE000000000097433F00CD656600C162
      6200E6E5E700E6E5E700E4E0E400E4E0E400E4E0E400E4E0E400CECBCC00922B
      2B009E43410097433F000000000000000000AD8E8C00DE969400DE969400D69A
      9400E7CBC600B58E8C00BD8A8400946D6B004A8A4A004A824A004A8E520052A6
      63006B9E6300F7B2AD00946D6B00000000000000000000000000D0A9AB00FEFC
      FB00FBF5EF00FAF1E800F8EAD900F7E7D500F4E0C800F3DEC500F2D9B900F2D8
      B300F2D4AA00F1D3A600B781820000000000078DBE008CE7FB0077DAF9001A9D
      AA00D8F7FB00CAF6FD00CAF6FD00CAF6FD00CAF6FD00CAF6FD000C84180035BC
      73000C841800D8F7FB00D6F6FB00078DBE000000000097433F00CD656600C663
      6300C8676700C6717000C6717000C86A6A00C4636300C86C6C00CA666600C463
      6300CD65660097433F000000000000000000AD8E8C00DE9A9400DE969400E7CB
      C600FFF3F700E7CBC600BD8A8400946D6B004A925200528A5200639A5A0052AE
      63006B9A6300F7B2AD00946D6B00000000000000000000000000E6BDAF00FEFC
      FB00FDFAF600FBF5EF00F9EDDE00F8EAD900F7E7D500F5E4CF00F3DEC500F2D9
      B900F2D8B300F2D6AF00B781820000000000078DBE0095EEFC0095EEFC001396
      B600078DBE00078DBE00078DBE00078DBE00078DBE000C84180046CC80004BCC
      98003DC374000C841800078DBE00078DBE000000000097433F00B8646400C47C
      7B00C89E9E00CAA8A800CAA8A800CAA8A800C9A0A000C9A0A000CAA8A800CAA8
      A800CC66660097433F000000000000000000AD8E8C00DE9A9C00DE9A9400DE9A
      9C00E7CBC600D69A9400C68E8C00946D6B0052965200ADA66300DEBE7B00739E
      5A00DEBE7B00F7B2AD00946D6B00000000000000000000000000E6BDAF00FEFC
      FB00FEFCFB00FCF8F400FBF5EF00F9EDDE00F8EAD900F7E7D500F3E1CC00F2DC
      C100F2D9B900F2D8B300B781820000000000078DBE009EF4FD009FF6FD009FF6
      FD009EF4FD009FF6FD009FF6FD009EF4FD000C84180046CC800049CD890049CD
      89004BCC98003DC374000C841800000000000000000097433F00CC666600F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800CC66660097433F000000000000000000AD8E8C00E79E9C00E79A9C00DE9A
      9400DE9A9400DE969400C6928C00946D6B009CA66B00F7D3A500F7D3A500F7D3
      A500F7D3A500F7B2AD00946D6B00000000000000000000000000E6BDAF00FEFC
      FB00FEFCFB00FEFCFB00FCF8F400FBF5EF00F9EDDE00F8EAD900F7E7D500F4E0
      C800F4E0C800F2D9B900B781820000000000078DBE00D8F7FB00A2F7FD00A2F7
      FD00A2F7FD00A2F7FD00A2F7FD000C8418000C8418000C8418000C84180049CD
      890046CC80000C8418000C8418000C8418000000000097433F00CC666600F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800CC66660097433F000000000000000000AD8E8C00E79E9C00E79E9C00E79A
      9C00DE9A9400DE9A9400CE928C00946D6B00F7D3A500F7D3A500F7D3A500F7D3
      A500F7D3A500F7B2AD00946D6B00000000000000000000000000E7C4AD00FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FCF8F400FBF5EF00F9EDDE00F9EDDE00F8EA
      D900F2DCC100CCAFA600B78182000000000000000000078DBE00D8F7FB00A5F7
      FC00A5F7FC00A5F7FC00078DBB0048B9D90048B9D90048B9D9000C84180046CC
      800035BC73000C84180000000000000000000000000097433F00CC666600F8F8
      F800CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00F8F8
      F800CC66660097433F000000000000000000AD8E8C00EF9E9C00E79E9C00E79E
      9C00E79A9C00DE9A9400CE928C00946D6B00F7D3A500F7D3A500F7D3A500C6C7
      BD0063BEFF00F7B2AD00946D6B00000000000000000000000000E7C4AD00FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FCF8F400FBF5EF00F3E1CC00C6A1
      9600C0958800BA8F8600B7818200000000000000000000000000078DBE00078D
      BE00078DBE00078DBE00000000000000000000000000000000000C8418003FC6
      79000C8418000000000000000000000000000000000097433F00CC666600F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800CC66660097433F000000000000000000AD8E8C00EFA29C00EF9E9C00E79E
      9C00E79E9C00E79E9C00CE928C00946D6B00F7D3A500F7D3A500C6C7BD0063CB
      F70063BEFF00F7B2AD00946D6B00000000000000000000000000EACAAC00FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFBF900F3DEC500C188
      7500DF9D5600DF9D5600C58B7200000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C84180030B8720030B8
      72000C8418000000000000000000000000000000000097433F00CC666600F8F8
      F800CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00F8F8
      F800CC66660097433F000000000000000000AD8E8C00E79E9C00EF9E9C00EF9E
      9C00E79E9C00E79E9C00CE928C00946D6B00F7D3A500C6C7BD005AD3FF005AD3
      FF0063CBF700F7B2AD00946D6B00000000000000000000000000EACAAC00FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00F3E1CC00C39A
      8D00EECEA200CD906A0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C84180030B872000C84
      1800000000000000000000000000000000000000000097433F00CC666600F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800CC66660097433F00000000000000000000000000C69A9400AD8E8C00D696
      9400D6969400DE9A9C00CE928C00946D6B00AD8E8C00AD8E8C00AD8E8C00AD8E
      8C00AD8E8C00AD8E8C00AD8E8C00000000000000000000000000EACAAC00FCF8
      F400FCF8F400FCF8F400FCF8F400FBF5EF00FBF5EF00FBF5EF00F3E1CC00C197
      8900C39A8D000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C8418000C8418000C8418000C8418000000
      000000000000000000000000000000000000000000000000000097433F00F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F80097433F00000000000000000000000000000000000000000000000000C69A
      9400AD8E8C00D6969400D6969400946D6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E9C8AB00EACA
      AC00EACAAC00EACAAC00EACAAC00EACAAC00EACAAC00EACAAC00E6BDAF00BD85
      7900000000000000000000000000000000000000000000000000000000000000
      0000000000000C8418000C8418000C8418000C84180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C69A9400AD8E8C00AD8E8C000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF8F00000000FFFFFE0700000000
      FFFFFC0700000000FFE4F00300000000843BE00300000000249B800100000000
      249B000100000000849B000100000000E49B0001000000008C3B800100000000
      FCFBE00100000000FCFBF00300000000FFE4F80300000000FFFFFC0700000000
      FFFFFE0700000000FFFFFF8F00000000FFFFFFFFFFFFFCFFC003FFFFFFFFF87F
      8001FFFFFFFFF87F8001FE7FFFFFFC7F8001FE7FFFFFFFFF8001FE7FFFFFF8FF
      8001FE7FFFFFF87F8001E007E007F83F8001E007E007FC1F8001FE7FFFFFFE0F
      8001FE7FFFFFE7078001FE7FFFFFC3878001FE7FFFFFC0078001FFFFFFFFE007
      C003FFFFFFFFF00FFFFFFFFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFC003C003C003
      FFFF8001800180018303800180018001C787800180018001E78F800180018001
      E38F800180018001F01F800180018001F11F800180018001F83F800180018001
      F83F800180018001FC7F800180018001FC7F800180018001FEFF800180018001
      FFFFC003C003C003FFFFFFFFFFFFFFFFC001FFFFFFFFC0008001C003C0038000
      8001800180018000800180018001800080018001800180008001800180018000
      8001800180018000800180018001800080018001800180008003800180018000
      8003800180018000800380018001800080038001800180008003800180018000
      C007C003C0038001F83FFFFFFFFFFFFFFFFF8F8FFC7FF801FFF78F8FF87FF801
      FFF3870FFB27F801EA81800FFB43F801FFF3800FF85B0001FFF7800FFC1B0001
      FFFF800FFE0300011C7FC00BFE0700011C7F8721FC3F0001087F2739F83F0001
      087FE730F03F0003007F7FFEE23F000780FF0FFFE63F003FC9FF9FFCEE3F003F
      C9FF87F1FE7F007FFFFFD007FEFF00FFFFFFFFFFFFFFFFFFC003FFFF0FE0FFFF
      8001E23F9FE107C18001E73F8FE307C18001F07FCFC307C18001F27FC0070101
      8001F8FFE78700018001F8FFE38F02018001FDFFF30F02018001FFFFF11F8003
      8001FFFFF81FC1078001FFF7F83FC1078001FFE3FC3FE38F8001FFC1FC60E38F
      C003FFFFFE71E38FFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFF86108001C003C003
      FF19000080018001818D000080018001FFC10000800180018065000080018001
      FFF10000800180018031000080018001FFF9000080018001C30D000080018001
      01FF000080018001010180018001800101FFC003800180010101E00780018001
      81FFF00FC003C003C3FFFC3FFFFFFFFF8000FFFFFE7F80008000F7FFFC3F8000
      8000F3FFF81F80008000F1FFF00F8000001FF0FFE0078000003FF07FC0038000
      003FF03F80018000001FF01F00008000000FF00F000080000307F01F80018000
      0783F03FC00380000FC1F07FE00780001FE0F0FFF00F80003FF0F1FFF81F8000
      7FF9F3FFFC3F8000FFFFF7FFFE7FFFFFC0018003FFFFF0FFC0010003C0078001
      C001000180030001C001000180030001C001000180030001C001000080030001
      C001000080030001C001000080030001C001000180030001C001000080030001
      C001800380030001C001C3C780030001C001FF8780030001C003FF8F80038001
      C007FE1FC007E0FFC00FF87FFFFFF8FF00000000000000000000000000000000
      000000000000}
  end
  object OpenDialog: TOpenDialog
    HelpContext = 1120
    DefaultExt = 'ini'
    Filter = 
      #1060#1072#1081#1083#1099' INI (*.ini)|*.ini|'#1060#1072#1081#1083#1099' ART (*.art)|*.art|'#1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099' ' +
      '(*.txt)|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 224
    Top = 140
  end
  object SaveDialog: TSaveDialog
    HelpContext = 1130
    DefaultExt = 'ini'
    Filter = 
      #1060#1072#1081#1083#1099' INI (*.ini)|*.ini|'#1060#1072#1081#1083#1099' ART (*.art)|*.art|'#1058#1077#1082#1089#1090#1086#1074#1099#1077' '#1092#1072#1081#1083#1099' ' +
      '(*.txt)|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofNoReadOnlyReturn, ofEnableSizing]
    Left = 364
    Top = 196
  end
  object BookSyn: TipBookSyn
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
    Left = 336
    Top = 112
  end
  object ColorDialog: TColorDialog
    Ctl3D = True
    Options = [cdFullOpen, cdAnyColor]
    Left = 224
    Top = 112
  end
  object SMTP: TSmtpCli
    Tag = 0
    ShareMode = smtpShareDenyWrite
    LocalAddr = '0.0.0.0'
    Port = 'smtp'
    AuthType = smtpAuthAutoSelect
    HdrPriority = smtpPriorityNone
    CharSet = 'iso-8859-1'
    ContentType = smtpPlainText
    OwnHeaders = False
    OnDisplay = SMTPDisplay
    OnRequestDone = SMTPRequestDone
    OnSessionConnected = SMTPSessionConnected
    OnSessionClosed = SMTPSessionClosed
    Left = 280
    Top = 196
  end
  object fdEditor: TFindDialog
    HelpContext = 1230
    OnFind = fdEditorFind
    Left = 224
    Top = 168
  end
  object rdEditor: TReplaceDialog
    HelpContext = 1230
    OnFind = fdEditorFind
    OnReplace = rdEditorReplace
    Left = 252
    Top = 168
  end
  object pmEditor: TipPopupMenu
    Images = ImageList
    Direction = mdLeft
    DirectionText = mdLeft
    HeaderFrame = False
    MergeColors = False
    HightColors = True
    ColorHot = clHighlight
    TopPlace = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 308
    Top = 140
    object N29: TMenuItem
      Action = acUndo
    end
    object N30: TMenuItem
      Caption = '-'
    end
    object N31: TMenuItem
      Action = acCut
    end
    object N32: TMenuItem
      Action = acCopy
    end
    object N33: TMenuItem
      Action = acPaste
    end
    object N34: TMenuItem
      Caption = '-'
    end
    object N35: TMenuItem
      Action = acSelectAll
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    HelpContext = 1420
    Filter = 
      'All (*.png;*.jpg;*.jpeg;*.gif;*.bmp)|*.png;*.jpg;*.jpeg;*.gif;*.' +
      'bmp|Portable Network Graphics (*.png)|*.png|JPEG Image File (*.j' +
      'pg;*.jpeg)|*.jpg;*.jpeg|GIF Image (*.gif)|*.gif|Bitmaps (*.bmp)|' +
      '*.bmp|All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 280
    Top = 140
  end
  object Zip: TAbZipper
    AutoSave = False
    DOSMode = False
    StoreOptions = [soStripPath, soRemoveDots]
    Left = 364
    Top = 112
  end
  object ilImages: TImageList
    Left = 308
    Top = 196
  end
  object tmLoad: TTimer
    Enabled = False
    Interval = 50
    OnTimer = tmLoadTimer
    Left = 280
    Top = 168
  end
  object CompletionProposal: TMwCompletionProposal
    OnPaintItem = CompletionProposalPaintItem
    ItemList.Strings = (
      '$background'
      '$book'
      '$booksmile'
      '$define'
      '$f'
      '$header'
      '$id'
      '$include'
      '$key'
      '$keypad'
      '$kpstyle'
      '$nodebug'
      '$p'
      '$page'
      '$pay1'
      '$pay2'
      '$pay3'
      '$pc'
      '$pr'
      '$ps'
      '$set'
      '$smile'
      '$style'
      '$suffix'
      '$title'
      '$vote'
      '$voteto'
      '</b>'
      '</big>'
      '</color>'
      '</i>'
      '</mono>'
      '</small>'
      '</u>'
      '<a:'
      '<aboutme>'
      '<attach:'
      '<b>'
      '<big>'
      '<br>'
      '<chat:'
      '<city:'
      '<color:'
      '<counter>'
      '<date>'
      '<edit:'
      '<else>'
      '<elseif:'
      '<elseiff:'
      '<elseifh:'
      '<elseifmask:'
      '<endif>'
      '<f:'
      '<forum:'
      '<g:'
      '<gchat:'
      '<get:http://'
      '<gforum:'
      '<hr>'
      '<http:'
      '<i>'
      '<if:'
      '<iff:'
      '<ifh:'
      '<ifmask:'
      '<img:'
      '<info:'
      '<jchat:'
      '<jforum:'
      '<kp:'
      '<lget:http://'
      '<lpost:http://'
      '<mask>'
      '<mchat:'
      '<mforum:'
      '<mono>'
      '<nick>'
      '<p>'
      '<pay:'
      '<payme>'
      '<pc>'
      '<pchat:'
      '<pforum:'
      '<post:http://'
      '<pr>'
      '<ps>'
      '<psite:'
      '<resetkpstyle>'
      '<resetsmile>'
      '<select:'
      '<sendme>'
      '<setkpstyle:'
      '<setsmile>'
      '<setvitrina>'
      '<showkpstyle:'
      '<showsmile>'
      '<showtop>'
      '<showvote:'
      '<site:'
      '<size>'
      '<small>'
      '<store>'
      '<subst:'
      '<toggle:'
      '<u>'
      '<vote:'
      '<votep:'
      '<writetop>'
      '<z:'
      '*arc'
      '*background'
      '*box'
      '*color'
      '*f'
      '*font'
      '*get'
      '*index'
      '*indexof'
      '*length'
      '*line'
      '*memory.free'
      '*new'
      '*nrow'
      '*padd'
      '*pcopy'
      '*pdel'
      '*pmove'
      '*pswap'
      '*random'
      '*sadd'
      '*screen.width'
      '*screen.height'
      '*script.error'
      '*set'
      '*sh'
      '*smile'
      '*ss'
      '*substring'
      '*sw'
      '*sx'
      '*sxy'
      '*sy'
      '*sz'
      '*text'
      '*timer.start'
      '*timer.time'
      '*v.next'
      '*v.nexta'
      '*v.scroll'
      '*v.size'
      '*vh'
      '*vset'
      '*vw'
      '*vx'
      '*vy'
      '*xy')
    Position = 0
    NbLinesInWindow = 6
    ClSelect = clSkyBlue
    AnsiStrings = True
    ShortCut = 16416
    Editor = Editor
    EndOfTokenChr = '()[].'
    Left = 336
    Top = 140
  end
  object HTMLHelp: TipHTMLHelp
    HelpDirectory = 'help'
    HelpContentsFile = 'index.htm'
    HelpFileAliasing.Strings = (
      '1=Main.htm'
      '2=Text.htm'
      '3=Book.htm'
      '4=Tumick.htm')
    ResetStartPage = False
    Left = 252
    Top = 196
  end
  object LinksTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = LinksTimerTimer
    Left = 308
    Top = 168
  end
  object SelTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = SelTimerTimer
    Left = 336
    Top = 168
  end
  object tmEmul: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmEmulTimer
    Left = 364
    Top = 168
  end
  object MusicOpenDialog: TOpenDialog
    DefaultExt = 'mid'
    Filter = 
      #1042#1089#1077' '#1084#1091#1079#1099#1082#1072#1083#1100#1085#1099#1077' '#1092#1072#1081#1083#1099' (*.midi; *.mid; *.mp3; *.amr)|*.midi;*.mid' +
      ';*.mp3;*.amr|'#1060#1072#1081#1083#1099' MIDI (*.midi; *.mid)|*.midi;*.mid|'#1060#1072#1081#1083#1099' MP3 (' +
      '*.mp3)|*.mp3|'#1060#1072#1081#1083#1099' AMR (*.amr)|*.amr'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 252
    Top = 140
  end
  object Unzip: TAbUnZipper
    Left = 364
    Top = 140
  end
end
