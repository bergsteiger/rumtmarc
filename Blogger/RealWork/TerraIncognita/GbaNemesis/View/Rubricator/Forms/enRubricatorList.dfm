object efRubricator: TefRubricator
  Left = 395
  Top = 351
  Width = 499
  Height = 346
  ActiveControl = RubricatorList
  Caption = #1055#1088#1072#1074#1086#1074#1086#1081' '#1085#1072#1074#1080#1075#1072#1090#1086#1088
  Color = $00F9F8FA
  Scaled = False
  ZoneType = vcm_ztParent
  OnLoadState = vcmEntityFormLoadState
  OnSaveState = vcmEntityFormSaveState
  PixelsPerInch = 96
  TextHeight = 13
  object RubricatorList: TnscTreeView
    Left = 0
    Top = 53
    Width = 483
    Height = 257
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 1
    MultiStrokeItem = True
    ActionElementMode = l3_amSingleClick
    ViewOptions = [voShowInterRowSpace, voShowIcons, voShowExpandable, voShowLines]
    OnGetItemImage = RubricatorListGetItemImage
    OnActionElement = RubricatorListActionElement
    OnTreeChanged = RubricatorListTreeChanged
    SettingId = 'stidRubricatorList'
  end
  object TopPanel: TvtPanel
    Left = 0
    Top = 12
    Width = 483
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 0
    Visible = False
    object PaintBox: TPaintBox
      Left = 0
      Top = 0
      Width = 25
      Height = 41
      Align = alLeft
      OnPaint = PaintBoxPaint
    end
    object NewDocLabel: TnscSimpleEditor
      Left = 25
      Top = 0
      Width = 458
      Height = 41
      Align = alClient
      TabOrder = 0
      TextSource = ExampleTextSource
      IsStaticText = True
      ScrollStyle = ssNone
      OnGetHotSpotInfo = NewDocLabelGetHotSpotInfo
      OnJumpTo = NewDocLabelJumpTo
      OnBreakingPara = NewDocLabelBreakingPara
    end
  end
  object DelimiterPanel: TvtPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 12
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 2
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enRubric'
        Operations = <
          item
            Name = 'opExecute'
          end>
      end
      item
        Name = 'enTree'
        Controls = <
          item
            Control = RubricatorList
          end>
      end
      item
        Name = 'enEdit'
        Controls = <
          item
            Control = RubricatorList
          end>
      end>
    Left = 10
    Top = 34
  end
  object ExampleTextSource: TnscTextSource
    OnMakeDocumentContainer = ExampleTextSourceMakeDocumentContainer
    Left = 72
    Top = 12
  end
end
