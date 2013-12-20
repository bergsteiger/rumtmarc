object Form1: TForm1
  Left = 259
  Top = 164
  Width = 751
  Height = 516
  Caption = 'DrawObjectsDemo'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 443
    Width = 743
    Height = 19
    Panels = <>
    ParentFont = True
    SimplePanel = True
    SimpleText = '  Copyright '#169' 2006,2007 - Angus Johnson'
    UseSystemFont = False
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 743
    Height = 443
    Align = alClient
    TabOrder = 1
    OnClick = ScrollBox1Click
    OnMouseDown = ScrollBox1MouseDown
    OnMouseMove = ScrollBox1MouseMove
    OnMouseUp = ScrollBox1MouseUp
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 739
      Height = 439
      Align = alClient
      Visible = False
      OnMouseDown = ScrollBox1MouseDown
      OnMouseMove = ScrollBox1MouseMove
      OnMouseUp = ScrollBox1MouseUp
      OnPaint = PaintBox1Paint
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 80
    Top = 48
    object Properties1: TMenuItem
      Action = actProperties
      Default = True
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object NewRectangle1: TMenuItem
      Action = actRectangle
    end
    object NewDiamond1: TMenuItem
      Action = actDiamond
    end
    object NewEllipse1: TMenuItem
      Action = actEllipse
    end
    object NewPlainText1: TMenuItem
      Action = actPlainText
    end
    object NewTextBezier1: TMenuItem
      Action = actTextBezier
    end
    object NewArc1: TMenuItem
      Action = actArc
    end
    object NewPolygon1: TMenuItem
      Action = actPolygon
    end
    object NewStar1: TMenuItem
      Action = actStar
    end
    object NewSolidArrow1: TMenuItem
      Action = actArrow
    end
    object NewSolidBezier1: TMenuItem
      Action = actSolidBezier
    end
    object NewBitmapPic1: TMenuItem
      Action = actPic
    end
    object NewSolidPoint1: TMenuItem
      Action = actSolidPoint
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object NewLine1: TMenuItem
      Action = actLine
    end
    object NewLLine1: TMenuItem
      Action = actLLine
    end
    object NewZLine1: TMenuItem
      Action = actZLine
    end
    object NewBezier1: TMenuItem
      Action = actBezier
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Action = actDelete
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object BringtoFront1: TMenuItem
      Action = actBringToFront
    end
    object SendtoBack1: TMenuItem
      Action = actSendToBack
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object GrowLinefromTop1: TMenuItem
      Action = actGrowTop
    end
    object GrowLine1: TMenuItem
      Action = actGrow
    end
    object ShrinkLinefromTop1: TMenuItem
      Action = actShrinkTop
    end
    object ShrinkLinefromBottom1: TMenuItem
      Action = actShrink
    end
    object Rotate1: TMenuItem
      Action = actRotate
    end
    object FlipHorizontally1: TMenuItem
      Action = actFlip
    end
    object SplitPolyButton1: TMenuItem
      Caption = 'Split Polygon Button'
      OnClick = SplitPolyButton1Click
    end
    object DeletePolyButton1: TMenuItem
      Caption = 'Delete Polygon Button'
      OnClick = DeletePolyButton1Click
    end
    object SavePictoBMPfile1: TMenuItem
      Action = actSavePicToBMP
    end
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 48
    object File1: TMenuItem
      Caption = '&File'
      OnClick = PopupMenu1Popup
      object New1: TMenuItem
        Caption = '&New'
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Action = actOpen
      end
      object Save2: TMenuItem
        Action = actSave
      end
      object Save1: TMenuItem
        Action = actSaveAs
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object DisableDesigning1: TMenuItem
        Caption = '&Disable Designing'
        OnClick = DisableDesigning1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object Print1: TMenuItem
        Action = actPrint
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
    object Object1: TMenuItem
      Caption = '&Objects'
      OnClick = PopupMenu1Popup
      object Properties2: TMenuItem
        Action = actProperties
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object DeleteObjects1: TMenuItem
        Action = actDelete
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object CutFocusedObjects2: TMenuItem
        Action = actCut
      end
      object CopyFocusedObjects1: TMenuItem
        Action = actCopy
      end
      object CopyAllObjectsasImage1: TMenuItem
        Action = actCopyAsBitmap
      end
      object CopyAllObjectsasMetafile1: TMenuItem
        Action = actCopyAsMetafile
      end
      object PasteObjects1: TMenuItem
        Action = actPaste
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object Align1: TMenuItem
        Caption = '&Align'
        object AlignLeft1: TMenuItem
          Action = actAlignLeft
        end
        object AlignTop1: TMenuItem
          Action = actAlignTop
        end
        object AlignRight1: TMenuItem
          Action = actAlignRight
        end
        object AlignBottom1: TMenuItem
          Action = actAlignBottom
        end
        object AlignCenterHorzontally1: TMenuItem
          Action = actAlignCenterHorz
        end
        object AlignCenterHorzontally2: TMenuItem
          Action = actAlignCenterVert
        end
        object N15: TMenuItem
          Caption = '-'
        end
        object SnaptoGrid1: TMenuItem
          Action = actSnapToGrid
        end
      end
      object Spacing1: TMenuItem
        Caption = '&Spacing'
        object SpaceEquallyHorizontally1: TMenuItem
          Action = actSpaceHorz
        end
        object SpaceEquallyVertically1: TMenuItem
          Action = actSpaceVert
        end
      end
      object Sizing1: TMenuItem
        Caption = 'Si&zing'
        object EqualWidths1: TMenuItem
          Action = actEqualWidths
        end
        object EqualHeights1: TMenuItem
          Action = actEqualHeights
        end
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object GrowLinefromTop2: TMenuItem
        Action = actGrowTop
      end
      object GrowLine2: TMenuItem
        Action = actGrow
      end
      object ShrinkLinefromTop2: TMenuItem
        Action = actShrinkTop
      end
      object ShrinkLinefromBottom2: TMenuItem
        Action = actShrink
      end
      object Rotate2: TMenuItem
        Action = actRotate
      end
    end
    object Configure1: TMenuItem
      Caption = '&Configure'
      object DefaultLineProperties1: TMenuItem
        Caption = 'Default &Line Properties'
        OnClick = DefaultLineProperties1Click
      end
      object DefaultSolidProperties1: TMenuItem
        Caption = 'Default &Solid Properties'
        OnClick = DefaultSolidProperties1Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object SetBackgroundColor1: TMenuItem
        Action = actBackground
      end
      object ShowGrid1: TMenuItem
        Action = actGrid
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object UseTextDialogPrompt1: TMenuItem
        Caption = 'Prompt for Text when creating new Solids'
        OnClick = UseTextDialogPrompt1Click
      end
      object UseHitTest1: TMenuItem
        Caption = 'Use HitTest for Object Selection'
        Checked = True
        OnClick = UseHitTest1Click
      end
    end
  end
  object ColorDialog1: TColorDialog
    Left = 120
    Top = 48
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'dob'
    Filter = 'DrawObject Files|*.dob'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 40
    Top = 88
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'dob'
    Filter = 'DrawObject Files|*.dob'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 80
    Top = 88
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 120
    Top = 88
  end
  object ActionManager1: TActionManager
    Left = 160
    Top = 48
    StyleName = 'XP Style'
    object actRectangle: TAction
      Caption = 'New Rectangle'
      OnExecute = NewSolidBezier1Click
    end
    object actDiamond: TAction
      Caption = 'New Diamond'
      OnExecute = NewSolidBezier1Click
    end
    object actEllipse: TAction
      Caption = 'New Ellipse'
      OnExecute = NewSolidBezier1Click
    end
    object actPlainText: TAction
      Caption = 'New Plain Text'
      OnExecute = NewSolidBezier1Click
    end
    object actArc: TAction
      Caption = 'New Arc'
      OnExecute = NewSolidBezier1Click
    end
    object actPolygon: TAction
      Caption = 'New Polygon'
      OnExecute = NewSolidBezier1Click
    end
    object actStar: TAction
      Caption = 'New Star'
      OnExecute = NewSolidBezier1Click
    end
    object actArrow: TAction
      Caption = 'New Solid Arrow'
      OnExecute = NewSolidBezier1Click
    end
    object actTextBezier: TAction
      Caption = 'New Bezier Text'
      OnExecute = NewSolidBezier1Click
    end
    object actSolidBezier: TAction
      Caption = 'New Solid Bezier'
      OnExecute = NewSolidBezier1Click
    end
    object actPic: TAction
      Caption = 'New Bitmap Pic '
      OnExecute = NewSolidBezier1Click
    end
    object actSolidPoint: TAction
      Caption = 'New Solid Point'
      OnExecute = NewSolidBezier1Click
    end
    object actLine: TAction
      Caption = 'New Line'
      OnExecute = NewSolidBezier1Click
    end
    object actLLine: TAction
      Caption = 'New LLine'
      OnExecute = NewSolidBezier1Click
    end
    object actZLine: TAction
      Caption = 'New ZLine'
      OnExecute = NewSolidBezier1Click
    end
    object actBezier: TAction
      Caption = 'New Bezier'
      OnExecute = NewSolidBezier1Click
    end
    object actSendToBack: TAction
      Caption = 'Send to Back'
      ShortCut = 16450
      OnExecute = SendtoBack1Click
    end
    object actBringToFront: TAction
      Caption = 'Bring to Front'
      ShortCut = 16454
      OnExecute = BringtoFront1Click
    end
    object actProperties: TAction
      Caption = '&Properties'
      OnExecute = Properties1Click
    end
    object actDelete: TAction
      Caption = 'Delete Selected Objects'
      ShortCut = 46
      OnExecute = Delete1Click
    end
    object actCut: TAction
      Caption = 'Cut Focused Objects'
      ShortCut = 16472
      OnExecute = actCutExecute
    end
    object actCopy: TAction
      Caption = 'Copy Focused Objects'
      ShortCut = 16451
      OnExecute = CopyObject1Click
    end
    object actCopyAsBitmap: TAction
      Caption = 'Copy Objects as Bitmap'
      OnExecute = CopyAsBitmapClick
    end
    object actCopyAsMetafile: TAction
      Caption = 'Copy Objects as Metafile'
      OnExecute = actCopyAsMetafileClick
    end
    object actPaste: TAction
      Caption = '&Paste Objects'
      ShortCut = 16470
      OnExecute = PasteObject1Click
    end
    object actGrowTop: TAction
      Caption = 'Grow Line from Top'
      OnExecute = GrowLine1Click
    end
    object actGrow: TAction
      Caption = 'Grow Line from Bottom'
      OnExecute = GrowLine1Click
    end
    object actShrinkTop: TAction
      Caption = 'Shrink Line from Top'
      OnExecute = ShrinkLine1Click
    end
    object actShrink: TAction
      Caption = 'Shrink Line from Bottom'
      OnExecute = ShrinkLine1Click
    end
    object actRotate: TAction
      Caption = '&Rotate ...'
      ShortCut = 16466
      OnExecute = Rotate1Click
    end
    object actPrint: TAction
      Caption = '&Print Preview'
      ShortCut = 16464
      OnExecute = actPrintClick
    end
    object actBackground: TAction
      Caption = 'Bac&kground Color'
      ShortCut = 16459
      OnExecute = actBackgroundClick
    end
    object actSaveAs: TAction
      Caption = 'Save &As'
      OnExecute = actSaveAsClick
    end
    object actOpen: TAction
      Caption = '&Open'
      ShortCut = 16463
      OnExecute = actOpenClick
    end
    object actFlip: TAction
      Caption = 'Flip &Horizontally'
      OnExecute = actFlipExecute
    end
    object actSave: TAction
      Caption = '&Save'
      ShortCut = 16467
      OnExecute = actSaveClick
    end
    object actSavePicToBMP: TAction
      Caption = 'Save Pic to &BMP file ...'
      OnExecute = actSavePicToBMPClick
    end
    object actAlignLeft: TAction
      Caption = 'Align &Left'
      OnExecute = actAlignLeftClick
    end
    object actAlignTop: TAction
      Caption = 'Align &Top'
      OnExecute = actAlignLeftClick
    end
    object actAlignRight: TAction
      Caption = 'Align &Right'
      OnExecute = actAlignLeftClick
    end
    object actAlignBottom: TAction
      Caption = 'Align &Bottom'
      OnExecute = actAlignLeftClick
    end
    object actAlignCenterHorz: TAction
      Caption = 'Align Center &Horizontally'
      OnExecute = actAlignLeftClick
    end
    object actAlignCenterVert: TAction
      Caption = 'Align Center &Vertically'
      OnExecute = actAlignLeftClick
    end
    object actSpaceHorz: TAction
      Caption = 'Space Equally &Horizontally'
      OnExecute = actSpaceHorzClick
    end
    object actSpaceVert: TAction
      Caption = 'Space Equally &Vertically'
      OnExecute = actSpaceHorzClick
    end
    object actEqualWidths: TAction
      Caption = 'Equal &Widths'
      OnExecute = actEqualWidthsClick
    end
    object actEqualHeights: TAction
      Caption = 'Equal &Heights'
      OnExecute = actEqualWidthsClick
    end
    object actGrid: TAction
      Caption = 'Show &Grid'
      ShortCut = 16455
      OnExecute = actGridClick
    end
    object actSnapToGrid: TAction
      Caption = 'Snap to Grid'
      OnExecute = actSnapToGridClick
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmap Pictures (*.bmp)|*.bmp'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 80
    Top = 120
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'bmp'
    Filter = 'Bitmap Pictures (*.bmp)|*.bmp'
    Left = 120
    Top = 120
  end
  object PrintDialog1: TPrintDialog
    Left = 48
    Top = 216
  end
end
