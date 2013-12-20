object PictureForm: TPictureForm
  Left = 530
  Top = 242
  Width = 374
  Height = 354
  ActiveControl = ieViewer
  Caption = #1056#1080#1089#1091#1085#1086#1082
  Color = $00F9F8FA
  OnCreate = vcmEntityFormCreate
  ZoneType = vcm_ztParent
  OnInit = vcmEntityFormInit
  OnLoadState = vcmEntityFormLoadState
  OnSaveState = vcmEntityFormSaveState
  PixelsPerInch = 96
  TextHeight = 13
  object ieViewer: TImageEnView
    Left = 0
    Top = 0
    Width = 358
    Height = 318
    Cursor = crArrow
    ParentCtl3D = False
    BorderStyle = bsNone
    LegacyBitmap = False
    ZoomFilter = rfLanczos3
    MouseInteract = [miScroll]
    DelayZoomFilter = True
    Align = alClient
    TabOrder = 0
  end
  object fEntities: TvcmEntities
    Entities = <>
    Left = 290
    Top = 12
  end
  object ieIO: TImageEnIO
    AttachedImageEn = ieViewer
    Background = $00F9F8FA
    PreviewFont.Charset = RUSSIAN_CHARSET
    PreviewFont.Color = clWindowText
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    Left = 8
    Top = 8
  end
  object ieProc: TImageEnProc
    AttachedImageEn = ieViewer
    Background = $00F9F8FA
    PreviewFont.Charset = RUSSIAN_CHARSET
    PreviewFont.Color = clWindowText
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    Left = 40
    Top = 8
  end
end
