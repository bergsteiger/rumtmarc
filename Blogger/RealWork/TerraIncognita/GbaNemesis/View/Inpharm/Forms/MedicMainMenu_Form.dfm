object en_MedicMainMenu: Ten_MedicMainMenu
  Left = 471
  Top = 118
  Width = 696
  Height = 445
  Caption = #1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1043#1040#1056#1040#1053#1058'-'#1048#1085#1060#1072#1088#1084': '#1051#1077#1082#1072#1088#1089#1090#1074#1072' '#1080' '#1092#1080#1088#1084#1099
  Color = $00F9F8FA
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TvtPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 409
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object hfOperations: TnscHideField
      Left = 16
      Top = 8
      Width = 200
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1080
      ClientControl = tvOperations
      ClientIndent = 20
      HeaderImage = 2
      Images = dmMedicMainMenuRes.ilMedicMainMenu
      LeftHeaderIndent = 20
      LeftImageIndent = 10
      Options = []
      TopHeaderIndent = 15
      TabOrder = 0
      StyleId = -33
      object tvOperations: TnscTreeView
        Left = 20
        Top = 37
        Width = 180
        Height = 63
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        MultiStrokeItem = True
        ActionElementMode = l3_amSingleClick
        ViewOptions = [voShowIcons, voShowExpandable, voWithoutImages]
        ClearTreeStructOnSaveState = False
        StyleId = -31
      end
    end
    object hfInfo: TnscHideField
      Left = 464
      Top = 112
      Width = 200
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      ClientControl = tvInfo
      ClientIndent = 20
      HeaderImage = 1
      Images = dmMedicMainMenuRes.ilMedicMainMenu
      LeftHeaderIndent = 20
      LeftImageIndent = 10
      Options = []
      TopHeaderIndent = 15
      TabOrder = 3
      StyleId = -33
      object tvInfo: TnscTreeView
        Left = 20
        Top = 37
        Width = 180
        Height = 63
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        MultiStrokeItem = True
        ActionElementMode = l3_amSingleClick
        ViewOptions = [voShowIcons, voShowExpandable, voWithoutImages]
        ClearTreeStructOnSaveState = False
        StyleId = -31
      end
    end
    object hfReferenses: TnscHideField
      Left = 464
      Top = 8
      Width = 200
      Height = 97
      Caption = #1056#1072#1079#1076#1077#1083#1099' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072
      ClientControl = tvReferences
      ClientIndent = 20
      HeaderImage = 0
      Images = dmMedicMainMenuRes.ilMedicMainMenu
      LeftHeaderIndent = 20
      LeftImageIndent = 10
      Options = []
      TopHeaderIndent = 15
      TabOrder = 1
      StyleId = -33
      object tvReferences: TnscTreeViewHotTruck
        Left = 20
        Top = 37
        Width = 180
        Height = 60
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        MultiStrokeItem = True
        ActionElementMode = l3_amSingleClick
        ViewOptions = [voShowIcons, voShowExpandable, voWithoutImages]
        ClearTreeStructOnSaveState = False
        StyleId = -31
      end
    end
    object hfStandardInformation: TnscHideField
      Left = 16
      Top = 112
      Width = 200
      Height = 89
      Caption = #1053#1086#1088#1084#1072#1090#1080#1074#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      ClientControl = tvStandardInformation
      ClientIndent = 20
      HeaderImage = 1
      Images = dmMainMenuNew.ilMainMenuNew
      LeftHeaderIndent = 20
      LeftImageIndent = 10
      Options = []
      TopHeaderIndent = 15
      TabOrder = 2
      StyleId = -33
      object tvStandardInformation: TnscTreeView
        Left = 20
        Top = 37
        Width = 180
        Height = 52
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        MultiStrokeItem = True
        ActionElementMode = l3_amSingleClick
        ViewOptions = [voShowIcons, voShowExpandable, voWithoutImages]
        ClearTreeStructOnSaveState = False
        StyleId = -31
      end
    end
    object hfLastOpenDocs: TnscHideField
      Left = 16
      Top = 216
      Width = 649
      Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1086#1090#1082#1088#1099#1090#1099#1077' '#1087#1088#1077#1087#1072#1088#1072#1090#1099
      ButtonCloseImage = 1
      ButtonImageList = dmMainMenuNew.ilSmallIcons
      ButtonOpenImage = 0
      ClientControl = tvLastOpenDocs
      ClientIndent = 20
      HeaderImage = 2
      Images = dmMainMenuNew.ilMainMenuNew
      LeftHeaderIndent = 20
      LeftImageIndent = 10
      Options = []
      TopHeaderIndent = 15
      TabOrder = 4
      StyleId = -33
      object tvLastOpenDocs: TnscTreeViewHotTruck
        Left = 20
        Top = 37
        Width = 629
        Height = 63
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        MultiStrokeItem = True
        ActionElementMode = l3_amSingleClick
        ViewOptions = [voShowInterRowSpace, voShowExpandable, voVariableItemHeight, voWithoutImages]
        ClearTreeStructOnSaveState = False
        StyleId = -32
      end
    end
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enEdit'
        Controls = <
          item
            Control = tvOperations
          end
          item
            Control = tvInfo
          end
          item
            Control = tvReferences
          end
          item
            Control = tvStandardInformation
          end
          item
            Control = tvLastOpenDocs
          end>
      end
      item
        Name = 'enTree'
        Operations = <
          item
            Name = 'opExpandAll'
            OnTest = enTreeopExpandAllTest
          end
          item
            Name = 'opCollapseAll'
            OnTest = enTreeopCollapseAllTest
          end
          item
            Name = 'opWrap'
            OnTest = enTreeopWrapTest
          end>
        Controls = <
          item
            Control = tvOperations
          end
          item
            Control = tvInfo
          end
          item
            Control = tvReferences
          end
          item
            Control = tvStandardInformation
          end
          item
            Control = tvLastOpenDocs
          end>
      end>
    Left = 10
    Top = 10
  end
end
