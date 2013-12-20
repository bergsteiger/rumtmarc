object TextForm: TTextForm
  Left = 299
  Top = 156
  Width = 661
  Height = 372
  Caption = #1058#1077#1082#1089#1090' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  Color = clWindow
  ShowHint = True
  OnCloseQueryEx = vcmEntityFormCloseQueryEx
  ZoneType = vcm_ztParent
  PixelsPerInch = 96
  TextHeight = 13
  object fEntities: TvcmEntities
    Entities = <
      item
        Name = 'enFile'
        Operations = <
          item
            Name = 'opSave'
          end
          item
            Name = 'opToMSWord'
          end
          item
            Name = 'opSaveToFolder'
          end
          item
            Name = 'opLoadFromFolder'
          end
          item
            Name = 'opPrint'
          end
          item
            Name = 'opPrintDialog'
          end
          item
            Name = 'opPrintPreview'
            AutoLock = True
          end
          item
            Name = 'SendMailAsAttachment'
          end>
      end
      item
        Name = 'enEdit'
        Operations = <
          item
            Name = 'opUndo'
          end
          item
            Name = 'opRedo'
          end
          item
            Name = 'opCopy'
          end
          item
            Name = 'opCut'
          end
          item
            Name = 'opPaste'
          end
          item
            Name = 'opSelectAll'
          end
          item
            Name = 'opDeselect'
          end
          item
            Name = 'opFindContext'
            AutoFocus = True
          end
          item
            Name = 'opFindNext'
          end
          item
            Name = 'opFindPrev'
          end>
      end
      item
        Name = 'enSubsPanel'
        Operations = <
          item
            Name = 'opCopySubNumber'
          end>
      end
      item
        Name = 'enDocumentBlockHeader'
        Operations = <
          item
            Name = 'opUserCR1'
            OnContextTest = enDocumentBlockHeaderopUserCR1ContextTest
            OnContextExecute = enDocumentBlockHeaderopUserCR1ContextExecute
          end
          item
            Name = 'opUserCR2'
            OnContextTest = enDocumentBlockHeaderopUserCR2ContextTest
            OnContextExecute = enDocumentBlockHeaderopUserCR2ContextExecute
          end
          item
            Name = 'opGetTypedCorrespondentList'
            OnContextTest = enDocumentBlockHeaderopGetTypedCorrespondentListContextTest
            OnContextExecute = enDocumentBlockHeaderopGetTypedCorrespondentListContextExecute
          end
          item
            Name = 'opAddBookmark'
            OnContextTest = enDocumentBlockHeaderopAddBookmarkContextTest
            OnContextExecute = enDocumentBlockopAddBookmarkExecute
          end
          item
            Name = 'opToMSWord'
            OnContextTest = enDocumentBlockHeaderopToMSWordContextTest
            OnContextExecute = enDocumentBlockHeaderopToMSWordContextExecute
          end
          item
            Name = 'opPrint'
            OnContextTest = enDocumentBlockHeaderopPrintContextTest
            OnContextExecute = enDocumentBlockHeaderopPrintContextExecute
          end
          item
            Name = 'opPrintDialog'
            OnContextTest = enDocumentBlockHeaderopPrintDialogContextTest
            OnContextExecute = enDocumentBlockHeaderopPrintDialogContextExecute
          end
          item
            Name = 'opBlockNameLabel'
            OnTest = enDocumentBlockHeaderopBlockNameLabelTest
            OnContextTest = enDocumentBlockHeaderopBlockNameLabelContextTest
            OnContextExecute = enDocumentBlockHeaderopBlockNameLabelContextExecute
          end>
      end
      item
        Name = 'enDocumentBlock'
        Operations = <
          item
            Name = 'opGetTypedCorrespondentList'
            OnContextTest = enDocumentBlockopGetTypedCorrespondentListContextTest
            OnContextExecute = enDocumentBlockopGetTypedCorrespondentListContextExecute
          end
          item
            Name = 'opToMSWord'
            OnContextTest = enDocumentBlockopToMSWordContextTest
            OnContextExecute = enDocumentBlockopToMSWordContextExecute
          end
          item
            Name = 'opPrintDialog'
            OnContextTest = enDocumentBlockopPrintDialogContextTest
            OnContextExecute = enDocumentBlockopPrintDialogContextExecute
          end
          item
            Name = 'opCopy'
            OnContextTest = enDocumentBlockopCopyContextTest
            OnContextExecute = enDocumentBlockopCopyContextExecute
          end>
      end
      item
        Name = 'enDocumentBlockBookmarks'
        Operations = <
          item
            Name = 'opAddBookmark'
            OnContextTest = enDocumentBlockopAddBookmarkContextTest
          end>
      end
      item
        Name = 'enTimeMachine'
        Operations = <
          item
            Name = 'opTimeMachineOnOffNew'
          end>
      end
      item
        Name = 'enRedactions'
        Operations = <
          item
            Name = 'opPrevRedaction'
          end
          item
            Name = 'opActualRedaction'
          end
          item
            Name = 'opNextRedaction'
          end
          item
            Name = 'opOpenRedactionListFrmAct'
          end>
      end
      item
        Name = 'enDocument'
        Operations = <
          item
            Name = 'opGetRelatedDocFrmAct'
          end
          item
            Name = 'opGetAnnotationDocFrmAct'
          end
          item
            Name = 'opGetCorrespondentList'
          end
          item
            Name = 'opGetRespondentList'
          end
          item
            Name = 'opGetCorrespondentListExFrmAct'
          end
          item
            Name = 'opGetRespondentListExFrmAct'
          end
          item
            Name = 'opGetAttributesFrmAct'
          end
          item
            Name = 'opOpenContentsFrmAct'
          end
          item
            Name = 'opDictListOpenFrmAct'
          end
          item
            Name = 'opShowJurorComments'
          end
          item
            Name = 'opShowUserComments'
          end
          item
            Name = 'opShowTechComments'
          end
          item
            Name = 'opAddToControl'
          end
          item
            Name = 'opGotoBookmark'
          end
          item
            Name = 'opPrevDocumentInList'
          end
          item
            Name = 'opReturnToList'
          end
          item
            Name = 'opNextDocumentInList'
          end
          item
            Name = 'opGetGraphicImage'
          end
          item
            Name = 'DocumentSynchroOpenWindow'
          end
          item
            Name = 'DocumentSynchroOpenNewWindow'
          end
          item
            Name = 'opAddBookmark'
          end
          item
            Name = 'opUserCR1'
          end
          item
            Name = 'opUserCR2'
          end
          item
            Name = 'opLiteratureListForDictionary'
          end
          item
            Name = 'opShowDocumentPicture'
          end
          item
            Name = 'opSimilarDocuments'
          end
          item
            Name = 'opShowCommentsGroup'
          end
          item
            Name = 'opOpenProducedDrugList'
          end
          item
            Name = 'opOpenSimilarDrugList'
          end
          item
            Name = 'opShowVersionComments'
          end
          item
            Name = 'opCompareEditions'
          end
          item
            Name = 'opChangesButton'
          end>
      end
      item
        Name = 'enText'
        Operations = <
          item
            Name = 'opAddToControl'
          end
          item
            Name = 'opOpenNewWindow'
          end
          item
            Name = 'opAddBookmark'
            OnContextTest = enTextopAddBookmarkContextTest
            OnContextExecute = enTextopAddBookmarkContextExecute
          end
          item
            Name = 'opMakeHyperlinkToDocument'
          end
          item
            Name = 'opEditBookmark'
            OnContextTest = enTextopEditBookmarkContextTest
            OnContextExecute = enTextopEditBookmarkContextExecute
          end
          item
            Name = 'opDeleteBookmark'
            OnContextTest = enTextopEditBookmarkContextTest
            OnContextExecute = enTextopDeleteBookmarkContextExecute
          end
          item
            Name = 'opAddUserComment'
            OnContextTest = enTextopAddUserCommentContextTest
            OnContextExecute = enTextopAddUserCommentContextExecute
          end
          item
            Name = 'opSelectWord'
            OnContextTest = enTextopSelectOpsTest
            OnContextExecute = enTextopSelectWordContextExecute
          end
          item
            Name = 'opSelectPara'
            OnContextTest = enTextopSelectOpsTest
            OnContextExecute = enTextopSelectParaContextExecute
          end
          item
            Name = 'opWordLeft'
          end
          item
            Name = 'opWordRight'
          end>
      end
      item
        Name = 'enHyperLink'
        Operations = <
          item
            Name = 'opOpen'
            AutoLock = True
          end
          item
            Name = 'opOpenNewWindow'
            AutoLock = True
          end
          item
            Name = 'Delete'
            OnContextTest = enHyperLinkDeleteContextTest
          end
          item
            Name = 'opNextHyperLink'
          end
          item
            Name = 'opPrevHyperLink'
          end>
      end
      item
        Name = 'enSelection'
        Operations = <
          item
            Name = 'opShowCorrespondentListToPart'
          end
          item
            Name = 'opShowRespondentListToPart'
          end
          item
            Name = 'InsertHyperlink'
            OnContextTest = enSelectionInsertHyperlinkContextTest
          end
          item
            Name = 'opFindInDict'
          end>
      end
      item
        Name = 'enUserComment'
        Operations = <
          item
            Name = 'opDelete'
            OnContextTest = enUserCommentopEditContextTest
            OnContextExecute = enUserCommentopDeleteContextExecute
          end>
      end
      item
        Name = 'enExternalObject'
        Operations = <
          item
            Name = 'opOpen'
            OnContextTest = enExternalObjectopOpenContextTest
            OnContextExecute = enExternalObjectopOpenContextExecute
          end
          item
            Name = 'opSave'
            OnContextTest = enExternalObjectopOpenContextTest
            OnContextExecute = enExternalObjectopSaveContextExecute
          end>
      end
      item
        Name = 'enBookmarkIcon'
        Operations = <
          item
            Name = 'opDelete'
            OnContextTest = enBookmarkopDeleteContextTest
            OnContextExecute = enBookmarkopDeleteContextExecute
          end
          item
            Name = 'opEdit'
            OnContextTest = enBookmarkopDeleteContextTest
            OnContextExecute = enBookmarkopEditContextExecute
          end>
      end
      item
        Name = 'enUserCommentIcon'
        Operations = <
          item
            Name = 'opDelete'
            OnContextTest = enUserCommentIconopDeleteContextTest
            OnContextExecute = enUserCommentIconopDeleteContextExecute
          end
          item
            Name = 'opHideShow'
            OnContextExecute = enUserCommentIconopHideShowContextExecute
          end>
      end
      item
        Name = 'enWarnRedaction'
        Operations = <
          item
            Name = 'ShowInfo'
          end
          item
            Name = 'OpenActualRedaction'
          end>
      end
      item
        Name = 'enWarnTimeMachine'
        Operations = <
          item
            Name = 'opShowInfo'
          end
          item
            Name = 'opTimeMachineOnOffNew'
          end>
      end
      item
        Name = 'enWarnJuror'
        Operations = <
          item
            Name = 'ShowInfo'
          end>
      end
      item
        Name = 'enWarnOnControl'
        Operations = <
          item
            Name = 'opShowChanges'
          end
          item
            Name = 'opClearStatus'
          end
          item
            Name = 'opClearStatusSettings'
          end>
      end
      item
        Name = 'enTable'
      end
      item
        Name = 'enFont'
      end
      item
        Name = 'enSubPanelSettings'
        Operations = <
          item
            Name = 'opShow'
          end
          item
            Name = 'opShowInfo'
          end
          item
            Name = 'opShowSpecial'
          end
          item
            Name = 'opShowByShortCut'
            OnExecute = SubPanelSettingsopShowByShortCutExecute
          end>
      end
      item
        Name = 'enReminder'
        Operations = <
          item
            Name = 'opRemWarnJuror'
          end
          item
            Name = 'opRemWarnTimeMachineOn'
          end
          item
            Name = 'opRemWarnRedaction'
          end
          item
            Name = 'opRemWarnOnControl'
          end
          item
            Name = 'opRemWarnIsAbolished'
          end
          item
            Name = 'opRemWarnTimeMachineException'
          end
          item
            Name = 'opRemWarnPreActive'
          end
          item
            Name = 'opRemWarnTimeMachineWarning'
          end
          item
            Name = 'opViewInactualDocument'
          end>
      end>
    Left = 40
    Top = 72
  end
end
