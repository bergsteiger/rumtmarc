object en_MedicListSynchroView: Ten_MedicListSynchroView
  Left = 302
  Top = 123
  Width = 696
  Height = 480
  Caption = #1057#1080#1085#1093#1088#1086#1085#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
  Color = $00F9F8FA
  Zones = <
    item
      Control = ztChild
      ZoneType = vcm_ztChild
      FormStyle.Toolbars.Top.MergeWithContainer = vcm_bTrue
    end>
  PixelsPerInch = 96
  TextHeight = 13
  object ztChild: TvtPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 444
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Entities: TvcmEntities
    Entities = <
      item
        Name = 'enMedicListSynchroView'
        Operations = <
          item
            Name = 'opOpenDocument'
          end
          item
            Name = 'opOpenAttributesForm'
          end
          item
            Name = 'opOpenList'
          end>
      end>
    Left = 10
    Top = 10
  end
end
