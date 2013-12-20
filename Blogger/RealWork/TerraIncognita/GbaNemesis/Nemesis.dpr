program Nemesis;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Nemesis.dpr"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMGUI::Category>> F1::Nemesis
//
// ГАРАНТ. Оболочка
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  nsApplication,
  l3ExceptionsLog
  {$If not defined(XE)}
  ,
  F1Test in 'F1Test.pas'
  {$IfEnd} //not XE
  ,
  l3Interfaces in 'w:\common\components\rtl\Garant\L3\l3Interfaces.pas'
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces in 'w:\common\components\gui\Garant\VCM\vcmExternalInterfaces.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces in 'w:\common\components\gui\Garant\VCM\vcmInterfaces.pas'
  {$IfEnd} //not NoVCM
  ,
  Messages {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\Messages.pas' {$EndIf},
  OfficeLike_Usual_Controls in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLike_Usual_Controls.pas',
  bsInterfaces in 'Model\bsInterfaces.pas',
  SysUtils,
  afwInterfaces in 'w:\common\components\gui\Garant\AFW\afwInterfaces.pas',
  Types,
  ActiveX {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\ActiveX.pas' {$EndIf},
  Classes {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\Classes.pas' {$EndIf},
  Windows {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\Windows.pas' {$EndIf},
  Controls {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Controls.pas' {$EndIf},
  Forms {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Forms.pas' {$EndIf},
  l3Core in 'w:\common\components\rtl\Garant\L3\l3Core.pas',
  l3Types in 'w:\common\components\rtl\Garant\L3\l3Types.pas',
  l3HackPersistentOwner in 'w:\common\components\rtl\Garant\L3\l3HackPersistentOwner.pas',
  l3HackPersistentOwner1 in 'w:\common\components\rtl\Garant\L3\l3HackPersistentOwner1.pas',
  l3CastablePersistent in 'w:\common\components\rtl\Garant\L3\l3CastablePersistent.pas',
  l3ProtoPersistent in 'w:\common\components\rtl\Garant\L3\l3ProtoPersistent.pas',
  l3IID in 'w:\common\components\rtl\Garant\L3\l3IID.pas',
  l3InterfacesMisc in 'w:\common\components\rtl\Garant\L3\l3InterfacesMisc.pas',
  l3CBase in 'w:\common\components\rtl\Garant\L3\l3CBase.pas',
  l3_Base in 'w:\common\components\rtl\Garant\L3\l3_Base.pas',
  l3CacheableBase in 'w:\common\components\rtl\Garant\L3\l3CacheableBase.pas',
  l3SomeDataContainer in 'w:\common\components\rtl\Garant\L3\l3SomeDataContainer.pas',
  l3InternalInterfaces in 'w:\common\components\rtl\Garant\L3\l3InternalInterfaces.pas',
  l3BaseStream in 'w:\common\components\rtl\Garant\L3\l3BaseStream.pas',
  l3Memory in 'w:\common\components\rtl\Garant\L3\l3Memory.pas',
  l3Except in 'w:\common\components\rtl\Garant\L3\l3Except.pas',
  RTLConsts {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\RTLConsts.pas' {$EndIf},
  l3MinMax in 'w:\common\components\rtl\Garant\L3\l3MinMax.pas',
  l3ObjectRefList1 in 'w:\common\components\rtl\Garant\L3\l3ObjectRefList1.pas',
  l3DataContainerWithoutIUnknown in 'w:\common\components\rtl\Garant\L3\l3DataContainerWithoutIUnknown.pas',
  l3String in 'w:\common\components\rtl\Garant\L3\l3String.pas',
  l3PrimString in 'w:\common\components\rtl\Garant\L3\l3PrimString.pas',
  l3CustomString in 'w:\common\components\rtl\Garant\L3\l3CustomString.pas',
  l3_String in 'w:\common\components\rtl\Garant\L3\l3_String.pas',
  l3CProtoObject in 'w:\common\components\rtl\Garant\L3\l3CProtoObject.pas',
  l3Chars in 'w:\common\components\rtl\Garant\L3\l3Chars.pas',
  l3TwoByteCString in 'w:\common\components\rtl\Garant\L3\l3TwoByteCString.pas',
  l3OneByteCString in 'w:\common\components\rtl\Garant\L3\l3OneByteCString.pas',
  l3CEmptyStringPrim in 'w:\common\components\rtl\Garant\L3\l3CEmptyStringPrim.pas',
  l3CEmptyString in 'w:\common\components\rtl\Garant\L3\l3CEmptyString.pas',
  l3FourByteCString in 'w:\common\components\rtl\Garant\L3\l3FourByteCString.pas',
  l3Base in 'w:\common\components\rtl\Garant\L3\l3Base.pas',
  l3ProtoObject in 'w:\common\components\rtl\Garant\L3\l3ProtoObject.pas',
  l3ProtoDataContainer in 'w:\common\components\rtl\Garant\L3\l3ProtoDataContainer.pas',
  afwSettingsImplPrimPrim in 'w:\common\components\gui\Garant\AFW\afwSettingsImplPrimPrim.pas',
  afwSettingsImplPrim in 'w:\common\components\gui\Garant\AFW\afwSettingsImplPrim.pas',
  afwSettingsImpl in 'w:\common\components\gui\Garant\AFW\afwSettingsImpl.pas',
  l3InterfacedComponent in 'w:\common\components\rtl\Garant\L3\l3InterfacedComponent.pas',
  l3ProgressComponent in 'w:\common\components\rtl\Garant\L3\l3ProgressComponent.pas',
  l3ConstStrings1 in 'w:\common\components\rtl\Garant\L3\l3ConstStrings1.pas',
  l3ConstStrings in 'w:\common\components\rtl\Garant\L3\l3ConstStrings.pas',
  l3StringIDEx in 'w:\common\components\rtl\Garant\L3\l3StringIDEx.pas',
  Dialogs {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Dialogs.pas' {$EndIf},
  Pl3StringIDExList in 'w:\common\components\rtl\Garant\L3\Pl3StringIDExList.pas',
  Pl3MessageIDListPrim in 'w:\common\components\rtl\Garant\L3\Pl3MessageIDListPrim.pas',
  Pl3MessageIDList in 'w:\common\components\rtl\Garant\L3\Pl3MessageIDList.pas',
  l3MessageID in 'w:\common\components\rtl\Garant\L3\l3MessageID.pas',
  l3FilerRes in 'w:\common\components\rtl\Garant\L3\l3FilerRes.pas',
  l3Filer in 'w:\common\components\rtl\Garant\L3\l3Filer.pas',
  l3NCString in 'w:\common\components\rtl\Garant\L3\l3NCString.pas',
  l3InterfacedString in 'w:\common\components\rtl\Garant\L3\l3InterfacedString.pas',
  afwSettingsImplPersistent in 'w:\common\components\gui\Garant\AFW\afwSettingsImplPersistent.pas',
  afwSettingsImplSing in 'w:\common\components\gui\Garant\AFW\afwSettingsImplSing.pas',
  IafwSettingListenerPtrList in 'w:\common\components\gui\Garant\AFW\IafwSettingListenerPtrList.pas',
  IafwSettingsReplaceListenerPtrList in 'w:\common\components\gui\Garant\AFW\IafwSettingsReplaceListenerPtrList.pas',
  l3Stream in 'w:\common\components\rtl\Garant\L3\l3Stream.pas',
  l3ProtoPersistentDataContainer in 'w:\common\components\rtl\Garant\L3\l3ProtoPersistentDataContainer.pas',
  l3StringListPrim in 'w:\common\components\rtl\Garant\L3\l3StringListPrim.pas',
  l3StringList1 in 'w:\common\components\rtl\Garant\L3\l3StringList1.pas',
  l3StringList2 in 'w:\common\components\rtl\Garant\L3\l3StringList2.pas',
  l3StringList in 'w:\common\components\rtl\Garant\L3\l3StringList.pas',
  l3CastableStrings in 'w:\common\components\rtl\Garant\L3\l3CastableStrings.pas',
  l3VCLStringsItems in 'w:\common\components\rtl\Garant\L3\l3VCLStringsItems.pas',
  l3VCLStrings in 'w:\common\components\rtl\Garant\L3\l3VCLStrings.pas',
  afwAString in 'w:\common\components\gui\Garant\AFW\afwAString.pas',
  afwSettingsPrimPrim in 'w:\common\components\gui\Garant\AFW\afwSettingsPrimPrim.pas',
  afwSettings in 'w:\common\components\gui\Garant\AFW\afwSettings.pas',
  afwSettingsImplemented in 'w:\common\components\gui\Garant\AFW\afwSettingsImplemented.pas',
  afwFacade in 'w:\common\components\gui\Garant\AFW\afwFacade.pas'
  {$If not defined(NoVCM)}
  ,
  vcmUserControls in 'w:\common\components\gui\Garant\VCM\vcmUserControls.pas'
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscNewInterfaces in 'w:\common\components\gui\Garant\Nemesis\nscNewInterfaces.pas'
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmToolbarsInterfaces in 'w:\common\components\gui\Garant\VCM\vcmToolbarsInterfaces.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormDispatcherInterfaces in 'w:\common\components\gui\Garant\VCM\vcmFormDispatcherInterfaces.pas'
  {$IfEnd} //not NoVCM
  ,
  l3Forms in 'w:\common\components\rtl\Garant\L3\l3Forms.pas'
  {$If not defined(NoVCM)}
  ,
  vcmGUI in 'w:\common\components\gui\Garant\VCM\vcmGUI.pas'
  {$IfEnd} //not NoVCM
  ,
  nevBase in 'w:\common\components\gui\Garant\Everest\new\nevBase.pas',
  ExtCtrls {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\ExtCtrls.pas' {$EndIf},
  StdCtrls {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\StdCtrls.pas' {$EndIf},
  l3ProtoObjectWithCOMQI in 'w:\common\components\rtl\Garant\L3\l3ProtoObjectWithCOMQI.pas',
  l3SimpleObjectPrim in 'w:\common\components\rtl\Garant\L3\l3SimpleObjectPrim.pas',
  l3SimpleObject in 'w:\common\components\rtl\Garant\L3\l3SimpleObject.pas',
  l3SimpleDataContainer in 'w:\common\components\rtl\Garant\L3\l3SimpleDataContainer.pas',
  l3ObjectList in 'w:\common\components\rtl\Garant\L3\l3ObjectList.pas'
  {$If not defined(NoVGScene)}
  ,
  vgAnyObjectList in 'w:\common\components\rtl\external\VGScene\vgAnyObjectList.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgComponent in 'w:\common\components\rtl\external\VGScene\vgComponent.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgCustomObject in 'w:\common\components\rtl\external\VGScene\vgCustomObject.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgTypesPrim in 'w:\common\components\rtl\external\VGScene\vgTypesPrim.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgSortableObjectList in 'w:\common\components\rtl\external\VGScene\vgSortableObjectList.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgCustomObjectList in 'w:\common\components\rtl\external\VGScene\vgCustomObjectList.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgObject in 'w:\common\components\rtl\external\VGScene\vgObject.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgTypes in 'w:\common\components\rtl\external\VGScene\vgTypes.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgObjectList in 'w:\common\components\rtl\external\VGScene\vgObjectList.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgPersistent in 'w:\common\components\rtl\external\VGScene\vgPersistent.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgBounds in 'w:\common\components\rtl\external\VGScene\vgBounds.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgPosition in 'w:\common\components\rtl\external\VGScene\vgPosition.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgVisualObject in 'w:\common\components\rtl\external\VGScene\vgVisualObject.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgCustomResources in 'w:\common\components\rtl\external\VGScene\vgCustomResources.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgCustomCanvas in 'w:\common\components\rtl\external\VGScene\vgCustomCanvas.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgInterfaces in 'w:\common\components\rtl\external\VGScene\vgInterfaces.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgSceneList in 'w:\common\components\rtl\external\VGScene\vgSceneList.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgCustomGradientPoint in 'w:\common\components\rtl\external\VGScene\vgCustomGradientPoint.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgGradientPoint in 'w:\common\components\rtl\external\VGScene\vgGradientPoint.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgGradientPoints in 'w:\common\components\rtl\external\VGScene\vgGradientPoints.pas'
  {$IfEnd} //not NoVGScene
  ,
  OvcController in 'w:\common\components\rtl\external\Orpheus\OvcController.pas',
  OvcConst in 'w:\common\components\rtl\external\Orpheus\OvcConst.pas'
  {$If not defined(NoVGScene)}
  ,
  vgCustomControl in 'w:\common\components\rtl\external\VGScene\vgCustomControl.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgScenePrim in 'w:\common\components\rtl\external\VGScene\vgScenePrim.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgVisual in 'w:\common\components\rtl\external\VGScene\vgVisual.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgInterfacedPersistent in 'w:\common\components\rtl\external\VGScene\vgInterfacedPersistent.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgCustomBitmap in 'w:\common\components\rtl\external\VGScene\vgCustomBitmap.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vgVisualObjectList in 'w:\common\components\rtl\external\VGScene\vgVisualObjectList.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vg_extctrls in 'w:\common\components\rtl\external\VGScene\vg_extctrls.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vg_scene in 'w:\common\components\rtl\external\VGScene\vg_scene.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vg_controls in 'w:\common\components\rtl\external\VGScene\vg_controls.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVGScene)}
  ,
  vtVGButton in 'w:\common\components\gui\Garant\VT\vtVGButton.pas'
  {$IfEnd} //not NoVGScene
  ,
  vtDialogsRes in 'w:\common\components\gui\Garant\VT\vtDialogsRes.pas',
  vtDialogsResEx in 'w:\common\components\gui\Garant\VT\vtDialogsResEx.pas'
  {$If not defined(NoVCM) AND not defined(NoVGScene)}
  ,
  vcmMessageFormPrim in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmMessageFormPrim.pas'
  {$IfEnd} //not NoVCM AND not NoVGScene
  ,
  evDef in 'w:\common\components\gui\Garant\Everest\evDef.pas',
  nevTools in 'w:\common\components\gui\Garant\Everest\new\nevTools.pas',
  evCustomTextSource in 'w:\common\components\gui\Garant\Everest\evCustomTextSource.pas',
  evTypes in 'w:\common\components\gui\Garant\Everest\evTypes.pas',
  k2Interfaces in 'w:\common\components\rtl\Garant\K2\k2Interfaces.pas',
  nevBasePointList in 'w:\common\components\gui\Garant\Everest\new\nevBasePointList.pas',
  l3Units in 'w:\common\components\rtl\Garant\L3\l3Units.pas',
  Graphics {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Graphics.pas' {$EndIf},
  l3Defaults in 'w:\common\components\rtl\Garant\L3\l3Defaults.pas',
  l3LongintListPrim in 'w:\common\components\rtl\Garant\L3\l3LongintListPrim.pas',
  l3LongintList in 'w:\common\components\rtl\Garant\L3\l3LongintList.pas',
  l3RectList in 'w:\common\components\rtl\Garant\L3\l3RectList.pas',
  l3Math in 'w:\common\components\rtl\Garant\L3\l3Math.pas',
  l3Const in 'w:\common\components\rtl\Garant\L3\l3Const.pas',
  l3CanvasPrim in 'w:\common\components\rtl\Garant\L3\l3CanvasPrim.pas',
  l3LineArray in 'w:\common\components\rtl\Garant\L3\l3LineArray.pas',
  l3Region in 'w:\common\components\rtl\Garant\L3\l3Region.pas',
  l3Canvas in 'w:\common\components\rtl\Garant\L3\l3Canvas.pas',
  l3Bitmap in 'w:\common\components\rtl\Garant\L3\l3Bitmap.pas',
  afwCustomCaretType in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwCustomCaretType.pas',
  afwSingleCaret in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwSingleCaret.pas',
  afwInsCaretType in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwInsCaretType.pas',
  afwOvrCaretType in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwOvrCaretType.pas',
  afwCaretPair in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwCaretPair.pas',
  afwCaret in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwCaret.pas',
  l3PureMixIns in 'w:\common\components\rtl\Garant\L3\l3PureMixIns.pas',
  k2BaseTypes in 'w:\common\components\rtl\Garant\K2\k2BaseTypes.pas',
  k2Types in 'w:\common\components\rtl\Garant\K2\k2Types.pas',
  TypInfo {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\TypInfo.pas' {$EndIf},
  l3BitArr in 'w:\common\components\rtl\Garant\L3\l3BitArr.pas',
  k2Tags in 'w:\common\components\rtl\Garant\K2\k2Tags.pas',
  k2Const in 'w:\common\components\rtl\Garant\K2\k2Const.pas',
  k2BaseHack in 'w:\common\components\rtl\Garant\K2\k2BaseHack.pas',
  k2Prim in 'w:\common\components\rtl\Garant\K2\k2Prim.pas',
  k2PureMixIns in 'w:\common\components\rtl\Garant\K2\k2PureMixIns.pas',
  k2SortTagsListPrim in 'w:\common\components\rtl\Garant\K2\k2SortTagsListPrim.pas',
  k2SortTagsList in 'w:\common\components\rtl\Garant\K2\k2SortTagsList.pas',
  k2TypeModelPart in 'w:\common\components\rtl\Garant\K2\k2TypeModelPart.pas',
  k2AtomWrapPrim in 'w:\common\components\rtl\Garant\K2\k2AtomWrapPrim.pas',
  k2PropSorter in 'w:\common\components\rtl\Garant\K2\k2PropSorter.pas',
  k2Strings in 'w:\common\components\rtl\Garant\K2\k2Strings.pas',
  k2NullTagImplPrim in 'w:\common\components\rtl\Garant\K2\k2NullTagImplPrim.pas',
  k2NullTagImpl in 'w:\common\components\rtl\Garant\K2\k2NullTagImpl.pas',
  k2Base in 'w:\common\components\rtl\Garant\K2\k2Base.pas',
  evMsgCode in 'w:\common\components\gui\Garant\Everest\evMsgCode.pas',
  evOp in 'w:\common\components\gui\Garant\Everest\evOp.pas',
  k2TagGen in 'w:\common\components\rtl\Garant\K2\k2TagGen.pas',
  k2BaseStackGenerator in 'w:\common\components\rtl\Garant\K2\k2BaseStackGenerator.pas',
  k2DocumentGenerator in 'w:\common\components\rtl\Garant\K2\k2DocumentGenerator.pas',
  evHighLevelDocumentGenerator in 'w:\common\components\gui\Garant\Everest\evHighLevelDocumentGenerator.pas',
  evGeneratorsInterfaces in 'w:\common\components\gui\Garant\Everest\evGeneratorsInterfaces.pas',
  evDocumentPartGeneratorPrim in 'w:\common\components\gui\Garant\Everest\evDocumentPartGeneratorPrim.pas',
  evDocumentPartGenerator in 'w:\common\components\gui\Garant\Everest\evDocumentPartGenerator.pas',
  evdTypes in 'w:\common\components\rtl\Garant\EVD\evdTypes.pas',
  afwNavigation in 'w:\common\components\gui\Garant\AFW\afwNavigation.pas',
  nevNavigation in 'w:\common\components\gui\Garant\Everest\new\nevNavigation.pas',
  evdStyles in 'w:\common\components\rtl\Garant\EVD\evdStyles.pas',
  k2Long_Const in 'w:\common\components\rtl\Garant\K2\k2Long_Const.pas',
  k2Object_Const in 'w:\common\components\rtl\Garant\K2\k2Object_Const.pas',
  k2SomeDataContainer_Const in 'w:\common\components\rtl\Garant\K2\k2SomeDataContainer_Const.pas',
  k2Tag_Const in 'w:\common\components\rtl\Garant\K2\k2Tag_Const.pas',
  k2Inch_Const in 'w:\common\components\rtl\Garant\K2\k2Inch_Const.pas',
  k2Enum_Const in 'w:\common\components\rtl\Garant\K2\k2Enum_Const.pas',
  k2Bool_Const in 'w:\common\components\rtl\Garant\K2\k2Bool_Const.pas',
  k2Color_Const in 'w:\common\components\rtl\Garant\K2\k2Color_Const.pas',
  k2l3Base_Const in 'w:\common\components\rtl\Garant\K2\k2l3Base_Const.pas',
  Object_Wrap in 'w:\common\components\rtl\Garant\K2\Object_Wrap.pas',
  k2BaseStruct in 'w:\common\components\rtl\Garant\K2\k2BaseStruct.pas',
  k2TagListPrim in 'w:\common\components\rtl\Garant\K2\k2TagListPrim.pas',
  k2TagList in 'w:\common\components\rtl\Garant\K2\k2TagList.pas',
  k2List in 'w:\common\components\rtl\Garant\K2\k2List.pas',
  l3DictionaryPrim in 'w:\common\components\rtl\Garant\L3\l3DictionaryPrim.pas',
  l3IDIndexPrim in 'w:\common\components\rtl\Garant\L3\l3IDIndexPrim.pas',
  l3IDIndex in 'w:\common\components\rtl\Garant\L3\l3IDIndex.pas',
  l3Dict in 'w:\common\components\rtl\Garant\L3\l3Dict.pas',
  k2Except in 'w:\common\components\rtl\Garant\K2\k2Except.pas',
  k2Facade in 'w:\common\components\rtl\Garant\K2\k2Facade.pas',
  k2AtomicTag in 'w:\common\components\rtl\Garant\K2\k2AtomicTag.pas',
  Long_Wrap in 'w:\common\components\rtl\Garant\K2\Long_Wrap.pas',
  Enumeration_Wrap in 'w:\common\components\rtl\Garant\K2\Enumeration_Wrap.pas',
  Bool_Wrap in 'w:\common\components\rtl\Garant\K2\Bool_Wrap.pas',
  Color_Wrap in 'w:\common\components\rtl\Garant\K2\Color_Wrap.pas',
  k2RawData_Const in 'w:\common\components\rtl\Garant\K2\k2RawData_Const.pas',
  Persistent_Wrap in 'w:\common\components\rtl\Garant\K2\Persistent_Wrap.pas',
  l3String_Wrap in 'w:\common\components\rtl\Garant\K2\l3String_Wrap.pas',
  k2OList_Const in 'w:\common\components\rtl\Garant\K2\k2OList_Const.pas',
  l3List_Wrap in 'w:\common\components\rtl\Garant\K2\l3List_Wrap.pas',
  k2SmallTagObject in 'w:\common\components\rtl\Garant\K2\k2SmallTagObject.pas',
  k2Tag_Wrap in 'w:\common\components\rtl\Garant\K2\k2Tag_Wrap.pas',
  k2IUnknown_Const in 'w:\common\components\rtl\Garant\K2\k2IUnknown_Const.pas',
  k2Handle_Const in 'w:\common\components\rtl\Garant\K2\k2Handle_Const.pas',
  k2Int64_Const in 'w:\common\components\rtl\Garant\K2\k2Int64_Const.pas',
  k2Native_Schema in 'w:\common\components\rtl\Garant\K2\k2Native_Schema.pas',
  k2String_Const in 'w:\common\components\rtl\Garant\K2\k2String_Const.pas',
  Justification_Const in 'w:\common\components\rtl\Garant\EVD\Justification_Const.pas',
  Position_Const in 'w:\common\components\rtl\Garant\EVD\Position_Const.pas',
  Date_Const in 'w:\common\components\rtl\Garant\EVD\Date_Const.pas',
  Time_Const in 'w:\common\components\rtl\Garant\EVD\Time_Const.pas',
  Type_Const in 'w:\common\components\rtl\Garant\EVD\Type_Const.pas',
  Address_Const in 'w:\common\components\rtl\Garant\EVD\Address_Const.pas',
  SgLHandle_Const in 'w:\common\components\rtl\Garant\EVD\SgLHandle_Const.pas',
  SbLHandle_Const in 'w:\common\components\rtl\Garant\EVD\SbLHandle_Const.pas',
  l3FontManager in 'w:\common\components\rtl\Garant\L3\l3FontManager.pas',
  FontName_Const in 'w:\common\components\rtl\Garant\EVD\FontName_Const.pas',
  Font_Const in 'w:\common\components\rtl\Garant\EVD\Font_Const.pas',
  Style_Const in 'w:\common\components\rtl\Garant\EVD\Style_Const.pas',
  FramePart_Const in 'w:\common\components\rtl\Garant\EVD\FramePart_Const.pas',
  k2Dictionary in 'w:\common\components\rtl\Garant\K2\k2Dictionary.pas',
  evdStyleContainer in 'w:\common\components\rtl\Garant\EVD\evdStyleContainer.pas',
  evdTextStyle_Const in 'w:\common\components\rtl\Garant\EVD\evdTextStyle_Const.pas',
  NSRCTag_Const in 'w:\common\components\rtl\Garant\EVD\NSRCTag_Const.pas',
  DictRec_Const in 'w:\common\components\rtl\Garant\EVD\DictRec_Const.pas',
  DictItem_Const in 'w:\common\components\rtl\Garant\EVD\DictItem_Const.pas',
  DictItemEx_Const in 'w:\common\components\rtl\Garant\EVD\DictItemEx_Const.pas',
  AutoClass_Const in 'w:\common\components\rtl\Garant\EVD\AutoClass_Const.pas',
  Sub_Const in 'w:\common\components\rtl\Garant\EVD\Sub_Const.pas',
  DocumentSub_Const in 'w:\common\components\rtl\Garant\EVD\DocumentSub_Const.pas',
  SubLayer_Const in 'w:\common\components\rtl\Garant\EVD\SubLayer_Const.pas',
  Segment_Const in 'w:\common\components\rtl\Garant\EVD\Segment_Const.pas',
  LogRecordPrim_Const in 'w:\common\components\rtl\Garant\EVD\LogRecordPrim_Const.pas',
  StagePrim_Const in 'w:\common\components\rtl\Garant\EVD\StagePrim_Const.pas',
  TextSegment_Const in 'w:\common\components\rtl\Garant\EVD\TextSegment_Const.pas',
  PageProperties_Const in 'w:\common\components\rtl\Garant\EVD\PageProperties_Const.pas',
  PageBreak_Const in 'w:\common\components\rtl\Garant\EVD\PageBreak_Const.pas',
  evSbLHandle_Wrap in 'w:\common\components\rtl\Garant\EVD\evSbLHandle_Wrap.pas',
  evFontName_Wrap in 'w:\common\components\rtl\Garant\EVD\evFontName_Wrap.pas',
  evFont_Wrap in 'w:\common\components\rtl\Garant\EVD\evFont_Wrap.pas',
  k2DictRec in 'w:\common\components\rtl\Garant\K2\k2DictRec.pas',
  k2DictRec_Wrap in 'w:\common\components\rtl\Garant\K2\k2DictRec_Wrap.pas',
  evStyle_Wrap in 'w:\common\components\rtl\Garant\EVD\evStyle_Wrap.pas',
  evFramePart_Wrap in 'w:\common\components\rtl\Garant\EVD\evFramePart_Wrap.pas',
  evFrame_Wrap in 'w:\common\components\rtl\Garant\EVD\evFrame_Wrap.pas',
  evdDictRec_Wrap in 'w:\common\components\rtl\Garant\EVD\evdDictRec_Wrap.pas',
  evSub_Wrap in 'w:\common\components\rtl\Garant\EVD\evSub_Wrap.pas',
  SegmentsLayer_Const in 'w:\common\components\rtl\Garant\EVD\SegmentsLayer_Const.pas',
  evLayer_Wrap in 'w:\common\components\rtl\Garant\EVD\evLayer_Wrap.pas',
  evChangeLayer_Wrap in 'w:\common\components\rtl\Garant\EVD\evChangeLayer_Wrap.pas',
  evPara_Wrap in 'w:\common\components\rtl\Garant\EVD\evPara_Wrap.pas',
  evSgLHandle_Wrap in 'w:\common\components\rtl\Garant\EVD\evSgLHandle_Wrap.pas',
  SectionBreak_Const in 'w:\common\components\rtl\Garant\EVD\SectionBreak_Const.pas',
  Bullet_Const in 'w:\common\components\rtl\Garant\EVD\Bullet_Const.pas',
  TabStop_Const in 'w:\common\components\rtl\Garant\EVD\TabStop_Const.pas',
  l3Drawer in 'w:\common\components\rtl\Garant\L3\l3Drawer.pas',
  ExprDraw in 'w:\common\components\rtl\external\Expr\ExprDraw.pas',
  evQueryCardInt in 'w:\common\components\gui\Garant\Everest\qf\evQueryCardInt.pas',
  l3TreeInterfaces in 'w:\common\components\rtl\Garant\L3\l3TreeInterfaces.pas',
  l3Tree_TLB in 'w:\common\components\rtl\Garant\L3\l3Tree_TLB.pas',
  l3NotifyPtrList in 'w:\common\components\rtl\Garant\L3\l3NotifyPtrList.pas',
  l3ItemsStorage in 'w:\common\components\rtl\Garant\L3\l3ItemsStorage.pas',
  l3Tree in 'w:\common\components\rtl\Garant\L3\l3Tree.pas',
  DocSubLayer_Const in 'w:\common\components\rtl\Garant\EVD\DocSubLayer_Const.pas',
  ActiveInterval_Const in 'w:\common\components\rtl\Garant\EVD\ActiveInterval_Const.pas',
  Alarm_Const in 'w:\common\components\rtl\Garant\EVD\Alarm_Const.pas',
  LogRecord_Const in 'w:\common\components\rtl\Garant\EVD\LogRecord_Const.pas',
  Stage_Const in 'w:\common\components\rtl\Garant\EVD\Stage_Const.pas',
  NumANDDate_Const in 'w:\common\components\rtl\Garant\EVD\NumANDDate_Const.pas',
  Check_Const in 'w:\common\components\rtl\Garant\EVD\Check_Const.pas',
  PIRec_Const in 'w:\common\components\rtl\Garant\EVD\PIRec_Const.pas',
  HyperLink_Const in 'w:\common\components\rtl\Garant\EVD\HyperLink_Const.pas',
  ObjectSegment_Const in 'w:\common\components\rtl\Garant\EVD\ObjectSegment_Const.pas',
  ControlPara_Const in 'w:\common\components\gui\Garant\Everest\ControlPara_Const.pas',
  ParaList_Const in 'w:\common\components\gui\Garant\Everest\ParaList_Const.pas',
  evParaListHotSpotTester in 'w:\common\components\gui\Garant\Everest\evParaListHotSpotTester.pas',
  k2TagPointer in 'w:\common\components\rtl\Garant\K2\k2TagPointer.pas',
  k2TagTool in 'w:\common\components\rtl\Garant\K2\k2TagTool.pas',
  k2ProcTagTool in 'w:\common\components\rtl\Garant\K2\k2ProcTagTool.pas',
  evdInterfaces in 'w:\common\components\rtl\Garant\EVD\evdInterfaces.pas',
  nevGUIInterfaces in 'w:\common\components\gui\Garant\Everest\new\nevGUIInterfaces.pas',
  evHotSpot in 'w:\common\components\gui\Garant\Everest\evHotSpot.pas',
  evHotSpotProxy in 'w:\common\components\gui\Garant\Everest\evHotSpotProxy.pas',
  nevActiveHyperlinkProxy in 'w:\common\components\gui\Garant\Everest\nevActiveHyperlinkProxy.pas',
  nevDecorActiveHyperlink in 'w:\common\components\gui\Garant\Everest\nevDecorActiveHyperlink.pas',
  evHyperlinkProxy in 'w:\common\components\gui\Garant\Everest\evHyperlinkProxy.pas',
  evInternalInterfaces in 'w:\common\components\gui\Garant\Everest\evInternalInterfaces.pas',
  evSearch in 'w:\common\components\gui\Garant\Everest\evSearch.pas',
  nevConfirm in 'w:\common\components\gui\Garant\Everest\new\nevConfirm.pas',
  evExcept in 'w:\common\components\gui\Garant\Everest\evExcept.pas',
  evEditorInterfaces in 'w:\common\components\gui\Garant\Everest\evEditorInterfaces.pas',
  k2TagTools in 'w:\common\components\rtl\Garant\K2\k2TagTools.pas',
  evSegLst in 'w:\common\components\gui\Garant\Everest\evSegLst.pas',
  nevFacade in 'w:\common\components\gui\Garant\Everest\new\nevFacade.pas',
  k2OpMisc in 'w:\common\components\rtl\Garant\K2\k2OpMisc.pas',
  evCursorTools in 'w:\common\components\gui\Garant\Everest\evCursorTools.pas'
  {$If defined(evNeedEditableCursors)}
  ,
  evCustomParaListUtils in 'w:\common\components\gui\Garant\Everest\evCustomParaListUtils.pas'
  {$IfEnd} //evNeedEditableCursors
  
  {$If defined(evNeedEditableCursors)}
  ,
  evParaUtilClasses in 'w:\common\components\gui\Garant\Everest\evParaUtilClasses.pas'
  {$IfEnd} //evNeedEditableCursors
  ,
  ContentsElement_Const in 'w:\common\components\gui\Garant\Everest\ContentsElement_Const.pas',
  evConst in 'w:\common\components\gui\Garant\Everest\evConst.pas',
  TreePara_Const in 'w:\common\components\gui\Garant\Everest\TreePara_Const.pas',
  Participant_Const in 'w:\common\components\gui\Garant\Everest\Participant_Const.pas',
  Version_Const in 'w:\common\components\gui\Garant\Everest\Version_Const.pas',
  Document_Const in 'w:\common\components\gui\Garant\Everest\Document_Const.pas',
  evDocumentPart in 'w:\common\components\gui\Garant\Everest\evDocumentPart.pas',
  Block_Const in 'w:\common\components\gui\Garant\Everest\Block_Const.pas',
  TableTextPara_Const in 'w:\common\components\gui\Garant\Everest\TableTextPara_Const.pas',
  TableCell_Const in 'w:\common\components\gui\Garant\Everest\TableCell_Const.pas',
  k2NilOp in 'w:\common\components\rtl\Garant\K2\k2NilOp.pas',
  k2Op in 'w:\common\components\rtl\Garant\K2\k2Op.pas',
  l3ProtoPersistentOwnedDataContainer in 'w:\common\components\rtl\Garant\L3\l3ProtoPersistentOwnedDataContainer.pas',
  k2OpRefList in 'w:\common\components\rtl\Garant\K2\k2OpRefList.pas',
  l3BaseWithID in 'w:\common\components\rtl\Garant\L3\l3BaseWithID.pas',
  l3BaseWithIDListPrim in 'w:\common\components\rtl\Garant\L3\l3BaseWithIDListPrim.pas',
  l3BaseWithIDList in 'w:\common\components\rtl\Garant\L3\l3BaseWithIDList.pas',
  l3ValueMap in 'w:\common\components\rtl\Garant\L3\l3ValueMap.pas',
  l3ValueMapManagerPrim in 'w:\common\components\rtl\Garant\L3\l3ValueMapManagerPrim.pas',
  l3ValueMapManager in 'w:\common\components\rtl\Garant\L3\l3ValueMapManager.pas',
  l3IntegerValueMapManager in 'w:\common\components\rtl\Garant\L3\l3IntegerValueMapManager.pas',
  k2OperationContainer in 'w:\common\components\rtl\Garant\K2\k2OperationContainer.pas',
  k2Context in 'w:\common\components\rtl\Garant\K2\k2Context.pas',
  evParaTools in 'w:\common\components\gui\Garant\Everest\evParaTools.pas',
  evDecorHyperlink in 'w:\common\components\gui\Garant\Everest\evDecorHyperlink.pas',
  evDecorHotSpot in 'w:\common\components\gui\Garant\Everest\evDecorHotSpot.pas',
  evParaListHotSpotTesterPrim in 'w:\common\components\gui\Garant\Everest\evParaListHotSpotTesterPrim.pas',
  HFParent_Const in 'w:\common\components\gui\Garant\Everest\HFParent_Const.pas',
  Header_Const in 'w:\common\components\gui\Garant\Everest\Header_Const.pas',
  Footer_Const in 'w:\common\components\gui\Garant\Everest\Footer_Const.pas',
  l3GraphicContainerStack in 'w:\common\components\rtl\Garant\L3\l3GraphicContainerStack.pas',
  l3GraphicContainer in 'w:\common\components\rtl\Garant\L3\l3GraphicContainer.pas',
  l3IEBitmapContainerStack in 'w:\common\components\rtl\Garant\L3\l3IEBitmapContainerStack.pas',
  l3IEBitmapContainer in 'w:\common\components\rtl\Garant\L3\l3IEBitmapContainer.pas',
  evBitmapParaBitmapContainer in 'w:\common\components\rtl\Garant\EVD\evBitmapParaBitmapContainer.pas',
  BitmapPara_Const in 'w:\common\components\gui\Garant\Everest\BitmapPara_Const.pas',
  ImageListBitmap_Const in 'w:\common\components\gui\Garant\Everest\ImageListBitmap_Const.pas',
  evTextStyle_Const in 'w:\common\components\gui\Garant\Everest\evTextStyle_Const.pas',
  SimpleDocumentTextPara_Const in 'w:\common\components\gui\Garant\Everest\SimpleDocumentTextPara_Const.pas',
  SimpleDocument_Const in 'w:\common\components\gui\Garant\Everest\SimpleDocument_Const.pas',
  DictEntryBlock_Const in 'w:\common\components\gui\Garant\Everest\DictEntryBlock_Const.pas',
  SBSCell_Const in 'w:\common\components\gui\Garant\Everest\SBSCell_Const.pas',
  TableRow_Const in 'w:\common\components\gui\Garant\Everest\TableRow_Const.pas',
  SBSRow_Const in 'w:\common\components\gui\Garant\Everest\SBSRow_Const.pas',
  Table_Const in 'w:\common\components\gui\Garant\Everest\Table_Const.pas',
  evTableHotSpot in 'w:\common\components\gui\Garant\Everest\evTableHotSpot.pas',
  evSelectingHotSpot in 'w:\common\components\gui\Garant\Everest\evSelectingHotSpot.pas',
  ReqCell_Const in 'w:\common\components\gui\Garant\Everest\ReqCell_Const.pas',
  ReqRow_Const in 'w:\common\components\gui\Garant\Everest\ReqRow_Const.pas',
  evControlsBlockConst in 'w:\common\components\gui\Garant\Everest\evControlsBlockConst.pas',
  ControlsBlock_Const in 'w:\common\components\gui\Garant\Everest\ControlsBlock_Const.pas',
  evControlsBlockHotSpotTester in 'w:\common\components\gui\Garant\Everest\evControlsBlockHotSpotTester.pas',
  nevInterfaces in 'w:\common\components\gui\Garant\Everest\new\nevInterfaces.pas',
  evHotSpotMisc in 'w:\common\components\gui\Garant\Everest\evHotSpotMisc.pas',
  evDocumentPartHotSpotTester in 'w:\common\components\gui\Garant\Everest\evDocumentPartHotSpotTester.pas',
  evControlsBlockHotSpotTesterPrim in 'w:\common\components\gui\Garant\Everest\evControlsBlockHotSpotTesterPrim.pas',
  XMLTag_Const in 'w:\common\components\gui\Garant\Everest\XMLTag_Const.pas',
  AttrName_Const in 'w:\common\components\gui\Garant\Everest\AttrName_Const.pas',
  evTextPara_Wrap in 'w:\common\components\gui\Garant\Everest\evTextPara_Wrap.pas',
  evControlParaConst in 'w:\common\components\gui\Garant\Everest\evControlParaConst.pas',
  ReqGroup_Const in 'w:\common\components\gui\Garant\Everest\ReqGroup_Const.pas'
  {$If defined(evReqGroupNeedsRadio)}
  ,
  evReqGroupHotSpotTester in 'w:\common\components\gui\Garant\Everest\evReqGroupHotSpotTester.pas'
  {$IfEnd} //evReqGroupNeedsRadio
  ,
  evControlPara_Wrap in 'w:\common\components\gui\Garant\Everest\evControlPara_Wrap.pas',
  Formula_Const in 'w:\common\components\gui\Garant\Everest\Formula_Const.pas',
  evBitmapPara_Wrap in 'w:\common\components\gui\Garant\Everest\evBitmapPara_Wrap.pas',
  exprTokensList in 'w:\common\components\rtl\external\Expr\exprTokensList.pas',
  ExprMake in 'w:\common\components\rtl\external\Expr\ExprMake.pas',
  evFormula_Wrap in 'w:\common\components\gui\Garant\Everest\evFormula_Wrap.pas',
  evHugeParaListPrim in 'w:\common\components\rtl\Garant\K2\evHugeParaListPrim.pas',
  evHugeParaListPrimWithFind in 'w:\common\components\rtl\Garant\K2\evHugeParaListPrimWithFind.pas',
  evHugeParaList in 'w:\common\components\rtl\Garant\K2\evHugeParaList.pas',
  evBaseDocument in 'w:\common\components\rtl\Garant\EVD\evBaseDocument.pas',
  evDocument_Wrap in 'w:\common\components\gui\Garant\Everest\evDocument_Wrap.pas',
  evReqRow_Wrap in 'w:\common\components\gui\Garant\Everest\evReqRow_Wrap.pas',
  evTreePara_Wrap in 'w:\common\components\gui\Garant\Everest\evTreePara_Wrap.pas',
  CommentPara_Const in 'w:\common\components\gui\Garant\Everest\CommentPara_Const.pas',
  evCommentPara_Wrap in 'w:\common\components\gui\Garant\Everest\evCommentPara_Wrap.pas',
  evReqGroup_Wrap in 'w:\common\components\gui\Garant\Everest\evReqGroup_Wrap.pas',
  evLeafParaPainter in 'w:\common\components\gui\Garant\Everest\evLeafParaPainter.pas',
  nevRealTools in 'w:\common\components\gui\Garant\Everest\new\nevRealTools.pas',
  l3SmartCanvas in 'w:\common\components\rtl\Garant\L3\l3SmartCanvas.pas',
  Mark_Const in 'w:\common\components\rtl\Garant\EVD\Mark_Const.pas',
  nevAfterEndPoint in 'w:\common\components\gui\Garant\Everest\nevAfterEndPoint.pas',
  nevLeafPara in 'w:\common\components\gui\Garant\Everest\new\nevLeafPara.pas',
  evTabStops in 'w:\common\components\gui\Garant\Everest\new\evTabStops.pas',
  nevParaPrim in 'w:\common\components\gui\Garant\Everest\new\nevParaPrim.pas',
  nevPara in 'w:\common\components\gui\Garant\Everest\new\nevPara.pas',
  afwTypes in 'w:\common\components\gui\Garant\AFW\afwTypes.pas',
  evTextParaCursor in 'w:\common\components\gui\Garant\Everest\evTextParaCursor.pas',
  evDocumentPreviewInfoList in 'w:\common\components\gui\Garant\Everest\new\evDocumentPreviewInfoList.pas',
  nevWaiterList in 'w:\common\components\gui\Garant\Everest\new\nevWaiterList.pas',
  nevInternalInterfaces in 'w:\common\components\gui\Garant\Everest\new\nevInternalInterfaces.pas',
  k2InternalInterfaces in 'w:\common\components\rtl\Garant\K2\k2InternalInterfaces.pas',
  l3InterfacePtrList in 'w:\common\components\rtl\Garant\L3\l3InterfacePtrList.pas',
  evStyleInterface in 'w:\common\components\gui\Garant\Everest\evStyleInterface.pas',
  evResultFont in 'w:\common\components\gui\Garant\Everest\evResultFont.pas'
  {$If not defined(DesignTimeLibrary)}
  ,
  evStyleTableSpy in 'w:\common\components\gui\Garant\Everest\evStyleTableSpy.pas'
  {$IfEnd} //not DesignTimeLibrary
  ,
  nevFormatPoolBase in 'w:\common\components\gui\Garant\Everest\new\nevFormatPoolBase.pas',
  evResultFontInterfaces in 'w:\common\components\gui\Garant\Everest\evResultFontInterfaces.pas',
  SBS_Const in 'w:\common\components\gui\Garant\Everest\SBS_Const.pas',
  nevTableCellFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevTableCellFormatInfo.pas',
  evSectionPara in 'w:\common\components\gui\Garant\Everest\new\evSectionPara.pas',
  Math {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\Math.pas' {$EndIf},
  l3UnitsTools in 'w:\common\components\rtl\Garant\L3\l3UnitsTools.pas',
  evTableCellUtils in 'w:\common\components\gui\Garant\Everest\evTableCellUtils.pas',
  nevTableRowRenderInfo in 'w:\common\components\gui\Garant\Everest\new\nevTableRowRenderInfo.pas',
  nevRubberCellsRenderInfo in 'w:\common\components\gui\Garant\Everest\new\nevRubberCellsRenderInfo.pas',
  nevFormatInfoList in 'w:\common\components\gui\Garant\Everest\new\nevFormatInfoList.pas',
  nevParaFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevParaFormatInfo.pas',
  nevLeafRenderInfo in 'w:\common\components\gui\Garant\Everest\new\nevLeafRenderInfo.pas',
  evTextParaConst in 'w:\common\components\gui\Garant\Everest\evTextParaConst.pas',
  l3Utils in 'w:\common\components\rtl\Garant\L3\l3Utils.pas',
  nevSegmentObject in 'w:\common\components\gui\Garant\Everest\nevSegmentObject.pas',
  l3SingleLineInfo in 'w:\common\components\rtl\Garant\L3\l3SingleLineInfo.pas',
  nevTextParaRenderInfo in 'w:\common\components\gui\Garant\Everest\new\nevTextParaRenderInfo.pas',
  nevZoomedCellsRenderInfo in 'w:\common\components\gui\Garant\Everest\new\nevZoomedCellsRenderInfo.pas',
  nevZoomedRubberCellsRenderInfo in 'w:\common\components\gui\Garant\Everest\new\nevZoomedRubberCellsRenderInfo.pas',
  nevDocumentPartFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevDocumentPartFormatInfo.pas',
  nevCommentFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevCommentFormatInfo.pas',
  nevBitmapFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevBitmapFormatInfo.pas',
  nevControlFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevControlFormatInfo.pas',
  evFormulaParaBitmapContainer in 'w:\common\components\rtl\Garant\EVD\evFormulaParaBitmapContainer.pas',
  nevFormulaFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevFormulaFormatInfo.pas',
  nevControlsBlockFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevControlsBlockFormatInfo.pas',
  nevCloakFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevCloakFormatInfo.pas',
  Cloak_Const in 'w:\common\components\gui\Garant\Everest\Cloak_Const.pas',
  evResultFontHolder in 'w:\common\components\gui\Garant\Everest\evResultFontHolder.pas',
  nevSegmentFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevSegmentFormatInfo.pas',
  evGlyphFont in 'w:\common\components\gui\Garant\Everest\evGlyphFont.pas',
  nevObjectSegmentFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevObjectSegmentFormatInfo.pas',
  nevSBSCellFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevSBSCellFormatInfo.pas',
  nevSBSRowFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevSBSRowFormatInfo.pas',
  nevTableRowRenderInfoEx in 'w:\common\components\gui\Garant\Everest\new\nevTableRowRenderInfoEx.pas',
  nevReqRowFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevReqRowFormatInfo.pas',
  evdBasePara in 'w:\common\components\rtl\Garant\EVD\evdBasePara.pas',
  evTreePara in 'w:\common\components\rtl\Garant\EVD\evTreePara.pas',
  nevTreeParaFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevTreeParaFormatInfo.pas',
  nevPageBreakFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevPageBreakFormatInfo.pas',
  nevNodeGroupFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevNodeGroupFormatInfo.pas',
  NodeGroup_Const in 'w:\common\components\gui\Garant\Everest\NodeGroup_Const.pas',
  nevFormatInfoFactory in 'w:\common\components\gui\Garant\Everest\new\nevFormatInfoFactory.pas',
  evStandardStylesListPrim in 'w:\common\components\gui\Garant\Everest\evStandardStylesListPrim.pas',
  evStandardStylesList in 'w:\common\components\gui\Garant\Everest\evStandardStylesList.pas',
  evDefaultStylesFontSizesPrim in 'w:\common\components\gui\Garant\Everest\evDefaultStylesFontSizesPrim.pas',
  evDefaultStylesFontSizesPrim1 in 'w:\common\components\gui\Garant\Everest\evDefaultStylesFontSizesPrim1.pas',
  evDefaultStylesFontSizes in 'w:\common\components\gui\Garant\Everest\evDefaultStylesFontSizes.pas',
  evStandardStyles in 'w:\common\components\gui\Garant\Everest\evStandardStyles.pas',
  evdStylesRes in 'w:\common\components\rtl\Garant\EVD\evdStylesRes.pas' {evdStyles_Res: TDataModule},
  ImgList {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\ImgList.pas' {$EndIf},
  l3ImageList in 'w:\common\components\rtl\Garant\L3\l3ImageList.pas',
  nevFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevFormatInfo.pas',
  nevFormatInfoArray in 'w:\common\components\gui\Garant\Everest\new\nevFormatInfoArray.pas',
  nevListFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevListFormatInfo.pas',
  nevDocumentFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevDocumentFormatInfo.pas',
  Printers {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Printers.pas' {$EndIf},
  l3ScreenIC in 'w:\common\components\rtl\Garant\L3\l3ScreenIC.pas',
  Consts {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Consts.pas' {$EndIf},
  l3Printer in 'w:\common\components\rtl\Garant\L3\l3Printer.pas',
  l3PrinterIC in 'w:\common\components\rtl\Garant\L3\l3PrinterIC.pas',
  nevRootFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevRootFormatInfo.pas',
  nevRootFormatInfoListPrim in 'w:\common\components\gui\Garant\Everest\new\nevRootFormatInfoListPrim.pas',
  nevPrintingRootFormatInfo in 'w:\common\components\gui\Garant\Everest\new\nevPrintingRootFormatInfo.pas',
  nevFormatPool in 'w:\common\components\gui\Garant\Everest\new\nevFormatPool.pas',
  nevSectionBreakListPrim in 'w:\common\components\gui\Garant\Everest\nevSectionBreakListPrim.pas',
  nevSectionBreakList in 'w:\common\components\gui\Garant\Everest\nevSectionBreakList.pas',
  nevDocumentContainerPrim in 'w:\common\components\gui\Garant\Everest\nevDocumentContainerPrim.pas',
  nevObjectHolderPrim in 'w:\common\components\gui\Garant\Everest\nevObjectHolderPrim.pas',
  nevDocumentContainerListPrim in 'w:\common\components\gui\Garant\Everest\new\nevDocumentContainerListPrim.pas',
  nevDocumentContainerList in 'w:\common\components\gui\Garant\Everest\new\nevDocumentContainerList.pas',
  evDocumentsCache in 'w:\common\components\gui\Garant\Everest\new\evDocumentsCache.pas',
  nevTextSourcePool in 'w:\common\components\gui\Garant\Everest\new\nevTextSourcePool.pas',
  afwPreviewNotifierPtrList in 'w:\common\components\gui\Garant\AFW\implementation\afwPreviewNotifierPtrList.pas',
  afwComplexDocumentPreview in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwComplexDocumentPreview.pas',
  afwComplexDocumentPreviewFactory in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwComplexDocumentPreviewFactory.pas',
  evSubImplementation in 'w:\common\components\gui\Garant\Everest\new\evSubImplementation.pas',
  l3Nodes in 'w:\common\components\rtl\Garant\L3\l3Nodes.pas',
  evNode in 'w:\common\components\gui\Garant\Everest\new\evNode.pas',
  evSubNode in 'w:\common\components\gui\Garant\Everest\new\evSubNode.pas',
  l3Bits in 'w:\common\components\rtl\Garant\L3\l3Bits.pas',
  Bookmark_Const in 'w:\common\components\rtl\Garant\EVD\Bookmark_Const.pas',
  LeafParaDecorationsHolder_Const in 'w:\common\components\gui\Garant\Everest\LeafParaDecorationsHolder_Const.pas',
  nevDocumentContainer in 'w:\common\components\gui\Garant\Everest\new\nevDocumentContainer.pas',
  evOpProc in 'w:\common\components\gui\Garant\Everest\evOpProc.pas',
  evDefaultContext in 'w:\common\components\gui\Garant\Everest\evDefaultContext.pas',
  evDocumentContainerWithProcessor in 'w:\common\components\gui\Garant\Everest\new\evDocumentContainerWithProcessor.pas',
  k2CustomStackGenerator in 'w:\common\components\rtl\Garant\K2\k2CustomStackGenerator.pas',
  k2CustomReader in 'w:\common\components\rtl\Garant\K2\k2CustomReader.pas',
  k2CustomFileReader in 'w:\common\components\rtl\Garant\K2\k2CustomFileReader.pas',
  evCustomTxtReader in 'w:\common\components\gui\Garant\Everest\evCustomTxtReader.pas',
  k2CustomFileParser in 'w:\common\components\rtl\Garant\K2\k2CustomFileParser.pas',
  evdNativeReader in 'w:\common\components\rtl\Garant\EVD\evdNativeReader.pas',
  k2CustomStackGeneratorEx in 'w:\common\components\rtl\Garant\K2\k2CustomStackGeneratorEx.pas',
  k2CustomFileGenerator in 'w:\common\components\rtl\Garant\K2\k2CustomFileGenerator.pas',
  evdDocumentFilter in 'w:\common\components\rtl\Garant\EVD\evdDocumentFilter.pas',
  evCustomTextFormatterModelPart in 'w:\common\components\gui\Garant\Everest\evCustomTextFormatterModelPart.pas',
  evCustomTextFormatter in 'w:\common\components\gui\Garant\Everest\evCustomTextFormatter.pas',
  evTextFormatter in 'w:\common\components\gui\Garant\Everest\evTextFormatter.pas',
  evdCustomPlainTextWriter in 'w:\common\components\rtl\Garant\EVD\evdCustomPlainTextWriter.pas',
  evdPlainTextWriter in 'w:\common\components\rtl\Garant\EVD\evdPlainTextWriter.pas',
  evdCustomNativeWriter in 'w:\common\components\rtl\Garant\EVD\evdCustomNativeWriter.pas',
  evdNativeWriter in 'w:\common\components\rtl\Garant\EVD\evdNativeWriter.pas',
  evEpsilonLongIntList in 'w:\common\components\gui\Garant\Everest\evEpsilonLongIntList.pas',
  evCellsOffsets in 'w:\common\components\gui\Garant\Everest\evCellsOffsets.pas',
  k2TagTerminator in 'w:\common\components\rtl\Garant\K2\k2TagTerminator.pas',
  k2TagFilter in 'w:\common\components\rtl\Garant\K2\k2TagFilter.pas',
  evMergedCellFilter in 'w:\common\components\gui\Garant\Everest\evMergedCellFilter.pas',
  ShellAPI {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\ShellAPI.pas' {$EndIf},
  l3ProtoIntegerList in 'w:\common\components\rtl\Garant\L3\l3ProtoIntegerList.pas',
  evStyleTableTools in 'w:\common\components\gui\Garant\Everest\evStyleTableTools.pas',
  afwFont in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwFont.pas',
  StrUtils {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\StrUtils.pas' {$EndIf},
  evCustomWikiReader in 'w:\common\components\gui\Garant\Everest\evCustomWikiReader.pas',
  evdLeafParaFilter in 'w:\common\components\rtl\Garant\EVD\evdLeafParaFilter.pas',
  evStyleHeaderAdder in 'w:\common\components\gui\Garant\Everest\evStyleHeaderAdder.pas',
  evdNativeUnpackedWriter in 'w:\common\components\rtl\Garant\EVD\evdNativeUnpackedWriter.pas',
  nevPersistentDocumentContainer in 'w:\common\components\gui\Garant\Everest\new\nevPersistentDocumentContainer.pas',
  evLocationBase in 'w:\common\components\gui\Garant\Everest\evLocationBase.pas',
  evLocation in 'w:\common\components\gui\Garant\Everest\evLocation.pas',
  evCursor in 'w:\common\components\gui\Garant\Everest\evCursor.pas',
  evMarker in 'w:\common\components\gui\Garant\Everest\evMarker.pas',
  evParaCursor in 'w:\common\components\gui\Garant\Everest\evParaCursor.pas',
  evLeafParaCursor in 'w:\common\components\gui\Garant\Everest\evLeafParaCursor.pas',
  evTextParaTools in 'w:\common\components\gui\Garant\Everest\evTextParaTools.pas',
  evCursorConst in 'w:\common\components\gui\Garant\Everest\evCursorConst.pas',
  evHyperlink in 'w:\common\components\gui\Garant\Everest\evHyperlink.pas',
  evDrawLineTool in 'w:\common\components\gui\Garant\Everest\evDrawLineTool.pas',
  evTextParaOp in 'w:\common\components\gui\Garant\Everest\evTextParaOp.pas',
  evAlignBySeparatorUtils in 'w:\common\components\gui\Garant\Everest\evAlignBySeparatorUtils.pas',
  evTabIndentMarker in 'w:\common\components\gui\Garant\Everest\evTabIndentMarker.pas',
  evTextParaMarkers in 'w:\common\components\gui\Garant\Everest\evTextParaMarkers.pas',
  evTextParaOpEx in 'w:\common\components\gui\Garant\Everest\evTextParaOpEx.pas',
  evTextManipulationInterfaces in 'w:\common\components\gui\Garant\Everest\new\evTextManipulationInterfaces.pas',
  evSegment in 'w:\common\components\gui\Garant\Everest\evSegment.pas',
  evTextParaPainterEx in 'w:\common\components\gui\Garant\Everest\evTextParaPainterEx.pas',
  evTextParaPainterPrim in 'w:\common\components\gui\Garant\Everest\evTextParaPainterPrim.pas',
  evParaString in 'w:\common\components\gui\Garant\Everest\evParaString.pas',
  evTextParaPainter in 'w:\common\components\gui\Garant\Everest\evTextParaPainter.pas',
  evLinePainter in 'w:\common\components\gui\Garant\Everest\evLinePainter.pas',
  k2InterfacesEx in 'w:\common\components\rtl\Garant\K2\k2InterfacesEx.pas',
  nevActiveHyperlink in 'w:\common\components\gui\Garant\Everest\nevActiveHyperlink.pas',
  nevTextPara in 'w:\common\components\gui\Garant\Everest\new\nevTextPara.pas',
  evControlParaPainter in 'w:\common\components\gui\Garant\Everest\evControlParaPainter.pas',
  l3Date in 'w:\common\components\rtl\Garant\L3\l3Date.pas',
  evControlParaTools in 'w:\common\components\gui\Garant\Everest\qf\evControlParaTools.pas',
  nevControlPara in 'w:\common\components\gui\Garant\Everest\new\nevControlPara.pas',
  nevFontPrim in 'w:\common\components\gui\Garant\Everest\new\nevFontPrim.pas',
  evControlParaHotSpot in 'w:\common\components\gui\Garant\Everest\evControlParaHotSpot.pas',
  evFormulaPainter in 'w:\common\components\gui\Garant\Everest\evFormulaPainter.pas',
  nevFormulaPara in 'w:\common\components\gui\Garant\Everest\new\nevFormulaPara.pas',
  evParaListCursor in 'w:\common\components\gui\Garant\Everest\evParaListCursor.pas',
  nevParaListAnchorModifyTypes in 'w:\common\components\gui\Garant\Everest\nevParaListAnchorModifyTypes.pas',
  evParaListCursorPrim in 'w:\common\components\gui\Garant\Everest\evParaListCursorPrim.pas',
  evParaListCursorInsertable in 'w:\common\components\gui\Garant\Everest\evParaListCursorInsertable.pas',
  evParaListCursorDeletable in 'w:\common\components\gui\Garant\Everest\evParaListCursorDeletable.pas',
  evParaListPainter in 'w:\common\components\gui\Garant\Everest\evParaListPainter.pas',
  l3VirtualCanvas in 'w:\common\components\rtl\Garant\L3\l3VirtualCanvas.pas',
  nevShapePrim in 'w:\common\components\gui\Garant\Everest\new\nevShapePrim.pas',
  nevShapePrimRefList in 'w:\common\components\gui\Garant\Everest\new\nevShapePrimRefList.pas',
  nevShapesPaintedSpy in 'w:\common\components\gui\Garant\Everest\new\nevShapesPaintedSpy.pas',
  nevShapesPainted in 'w:\common\components\gui\Garant\Everest\new\nevShapesPainted.pas',
  nevBaseView in 'w:\common\components\gui\Garant\Everest\new\nevBaseView.pas',
  nevBaseDetachedView in 'w:\common\components\gui\Garant\Everest\new\nevBaseDetachedView.pas',
  nevVirtualDrawView in 'w:\common\components\gui\Garant\Everest\new\nevVirtualDrawView.pas',
  evParaDrawTools in 'w:\common\components\gui\Garant\Everest\evParaDrawTools.pas',
  nevParaList in 'w:\common\components\gui\Garant\Everest\new\nevParaList.pas',
  nevParas in 'w:\common\components\gui\Garant\Everest\new\nevParas.pas',
  evDocumentPartCursor in 'w:\common\components\gui\Garant\Everest\evDocumentPartCursor.pas',
  OvcCmd in 'w:\common\components\rtl\external\Orpheus\OvcCmd.pas',
  evDocumentPartPainter in 'w:\common\components\gui\Garant\Everest\evDocumentPartPainter.pas',
  evDocumentCursor in 'w:\common\components\gui\Garant\Everest\evDocumentCursor.pas',
  evDocumentMarkers in 'w:\common\components\gui\Garant\Everest\evDocumentMarkers.pas',
  evDocumentPainter in 'w:\common\components\gui\Garant\Everest\evDocumentPainter.pas',
  evDocumentHotSpotTester in 'w:\common\components\gui\Garant\Everest\evDocumentHotSpotTester.pas',
  evTableCellPainter in 'w:\common\components\gui\Garant\Everest\evTableCellPainter.pas',
  nevTableCell in 'w:\common\components\gui\Garant\Everest\new\nevTableCell.pas',
  evTableRowPainter in 'w:\common\components\gui\Garant\Everest\evTableRowPainter.pas'
  {$If defined(nsTest)}
  ,
  PrintRowHeightsSpy in 'w:\common\components\gui\Garant\Everest\new\PrintRowHeightsSpy.pas'
  {$IfEnd} //nsTest
  ,
  nevTableRow in 'w:\common\components\gui\Garant\Everest\new\nevTableRow.pas',
  evSBSCellPainter in 'w:\common\components\gui\Garant\Everest\evSBSCellPainter.pas',
  evTablePainter in 'w:\common\components\gui\Garant\Everest\evTablePainter.pas',
  evSelectedParts in 'w:\common\components\gui\Garant\Everest\evSelectedParts.pas',
  evDelayedPaintersSpy in 'w:\common\components\gui\Garant\Everest\evDelayedPaintersSpy.pas',
  evFramedParaListPainter in 'w:\common\components\gui\Garant\Everest\evFramedParaListPainter.pas',
  QueryCard_Const in 'w:\common\components\gui\Garant\Everest\QueryCard_Const.pas',
  evControlsBlockPainter in 'w:\common\components\gui\Garant\Everest\evControlsBlockPainter.pas',
  nevControlsBlock in 'w:\common\components\gui\Garant\Everest\new\nevControlsBlock.pas',
  evBitmapParaCursor in 'w:\common\components\gui\Garant\Everest\evBitmapParaCursor.pas',
  evSolidParaCursor in 'w:\common\components\gui\Garant\Everest\evSolidParaCursor.pas',
  evBitmapParaPainter in 'w:\common\components\gui\Garant\Everest\evBitmapParaPainter.pas',
  evCommentParaCursor in 'w:\common\components\gui\Garant\Everest\evCommentParaCursor.pas',
  evCommentParaPainter in 'w:\common\components\gui\Garant\Everest\evCommentParaPainter.pas',
  evReqGroup_InterfaceFactory in 'w:\common\components\gui\Garant\Everest\evReqGroup_InterfaceFactory.pas'
  {$If defined(evReqGroupNeedsRadio)}
  ,
  evReqGroupPainter in 'w:\common\components\gui\Garant\Everest\evReqGroupPainter.pas'
  {$IfEnd} //evReqGroupNeedsRadio
  ,
  AutoreferatDocument_Const in 'w:\common\components\gui\Garant\Everest\AutoreferatDocument_Const.pas',
  evAutoreferatDocument_InterfaceFactory in 'w:\common\components\gui\Garant\Everest\evAutoreferatDocument_InterfaceFactory.pas',
  nevAutoreferatDocumentAnchor in 'w:\common\components\gui\Garant\Everest\new\nevAutoreferatDocumentAnchor.pas',
  nevAnchor in 'w:\common\components\gui\Garant\Everest\new\nevAnchor.pas',
  nevParaListAnchor in 'w:\common\components\gui\Garant\Everest\new\nevParaListAnchor.pas',
  evBitmapPara in 'w:\common\components\rtl\Garant\EVD\evBitmapPara.pas',
  DecorTextPara_Const in 'w:\common\components\gui\Garant\Everest\DecorTextPara_Const.pas',
  Division_Const in 'w:\common\components\gui\Garant\Everest\Division_Const.pas',
  AnnoTopic_Const in 'w:\common\components\gui\Garant\Everest\AnnoTopic_Const.pas',
  XML_Const in 'w:\common\components\gui\Garant\Everest\XML_Const.pas',
  ExtDataPara_Const in 'w:\common\components\gui\Garant\Everest\ExtDataPara_Const.pas',
  AttrValue_Const in 'w:\common\components\gui\Garant\Everest\AttrValue_Const.pas',
  Attr_Const in 'w:\common\components\gui\Garant\Everest\Attr_Const.pas',
  TagName_Const in 'w:\common\components\gui\Garant\Everest\TagName_Const.pas',
  TagBody_Const in 'w:\common\components\gui\Garant\Everest\TagBody_Const.pas',
  TinyDocument_Const in 'w:\common\components\gui\Garant\Everest\TinyDocument_Const.pas',
  DictEntry_Const in 'w:\common\components\gui\Garant\Everest\DictEntry_Const.pas',
  evNative_AttrValues in 'w:\common\components\gui\Garant\Everest\evNative_AttrValues.pas',
  evNative_Schema in 'w:\common\components\gui\Garant\Everest\evNative_Schema.pas',
  evStyleInterfaceEx in 'w:\common\components\gui\Garant\Everest\evStyleInterfaceEx.pas',
  StyledLeafPara_Const in 'w:\common\components\gui\Garant\Everest\StyledLeafPara_Const.pas',
  TextPara_Const in 'w:\common\components\gui\Garant\Everest\TextPara_Const.pas',
  evTextParaHotSpotTester in 'w:\common\components\gui\Garant\Everest\evTextParaHotSpotTester.pas',
  evSegmentHotSpot in 'w:\common\components\gui\Garant\Everest\evSegmentHotSpot.pas',
  evTextParaHeaderHotSpot in 'w:\common\components\gui\Garant\Everest\evTextParaHeaderHotSpot.pas',
  evParaCollapser in 'w:\common\components\gui\Garant\Everest\evParaCollapser.pas',
  evBreakParaCursor in 'w:\common\components\gui\Garant\Everest\evBreakParaCursor.pas',
  evPageBreakPainter in 'w:\common\components\gui\Garant\Everest\evPageBreakPainter.pas',
  evSectionBreakPainter in 'w:\common\components\gui\Garant\Everest\evSectionBreakPainter.pas',
  evStdInt in 'w:\common\components\gui\Garant\Everest\evStdInt.pas',
  evParaPainter in 'w:\common\components\gui\Garant\Everest\evParaPainter.pas',
  k2ParentedTagObject in 'w:\common\components\rtl\Garant\K2\k2ParentedTagObject.pas',
  k2DictItem in 'w:\common\components\rtl\Garant\K2\k2DictItem.pas',
  k2Layer in 'w:\common\components\rtl\Garant\K2\k2Layer.pas',
  evBaseSegment in 'w:\common\components\rtl\Garant\EVD\evBaseSegment.pas',
  evHyperTextSegment in 'w:\common\components\rtl\Garant\EVD\evHyperTextSegment.pas',
  evdNativeObjectSegmentClass in 'w:\common\components\rtl\Garant\EVD\evdNativeObjectSegmentClass.pas',
  evdSegmentsLayer in 'w:\common\components\rtl\Garant\EVD\evdSegmentsLayer.pas',
  evdNative_AttrValues in 'w:\common\components\rtl\Garant\EVD\evdNative_AttrValues.pas',
  evdNative_Schema in 'w:\common\components\rtl\Garant\EVD\evdNative_Schema.pas',
  ObjectWithHandle_Const in 'w:\common\components\rtl\Garant\EVD\ObjectWithHandle_Const.pas',
  evdFrame_Const in 'w:\common\components\rtl\Garant\EVD\evdFrame_Const.pas',
  Para_Const in 'w:\common\components\rtl\Garant\EVD\Para_Const.pas',
  LeafPara_Const in 'w:\common\components\rtl\Garant\EVD\LeafPara_Const.pas',
  evCursorController in 'w:\common\components\gui\Garant\Everest\evCursorController.pas',
  evWindowCursor in 'w:\common\components\gui\Garant\Everest\evWindowCursor.pas',
  evEditorInterfacesMisc in 'w:\common\components\gui\Garant\Everest\evEditorInterfacesMisc.pas',
  evBitmapReader in 'w:\common\components\gui\Garant\Everest\evBitmapReader.pas',
  evParaFrame in 'w:\common\components\gui\Garant\Everest\evParaFrame.pas',
  evUsialParagraph in 'w:\common\components\gui\Garant\Everest\evUsialParagraph.pas',
  evRange in 'w:\common\components\gui\Garant\Everest\evRange.pas',
  evBlockCursor in 'w:\common\components\gui\Garant\Everest\evBlockCursor.pas',
  evSelectConst in 'w:\common\components\gui\Garant\Everest\evSelectConst.pas',
  nevSelection in 'w:\common\components\gui\Garant\Everest\nevSelection.pas',
  l3Tool in 'w:\common\components\rtl\Garant\L3\l3Tool.pas',
  l3DataObjectEnum in 'w:\common\components\rtl\Garant\L3\l3DataObjectEnum.pas',
  ShlObj {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\ShlObj.pas' {$EndIf},
  l3DataObject in 'w:\common\components\rtl\Garant\L3\l3DataObject.pas',
  l3StorableDataObject in 'w:\common\components\rtl\Garant\L3\l3StorableDataObject.pas',
  evDataObject in 'w:\common\components\gui\Garant\Everest\evDataObject.pas',
  evEditorWindowHotSpot in 'w:\common\components\gui\Garant\Everest\evEditorWindowHotSpot.pas',
  OvcBase in 'w:\common\components\rtl\external\Orpheus\OvcBase.pas',
  afwControlPrim in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwControlPrim.pas',
  l3ControlCanvas in 'w:\common\components\rtl\Garant\L3\l3ControlCanvas.pas',
  l3WinControlCanvas in 'w:\common\components\rtl\Garant\L3\l3WinControlCanvas.pas',
  l3Operations in 'w:\common\components\rtl\Garant\L3\l3Operations.pas',
  l3SysUtils in 'w:\common\components\rtl\Garant\L3\l3SysUtils.pas',
  l3DropTarget in 'w:\common\components\rtl\Garant\L3\l3DropTarget.pas',
  l3DropSource in 'w:\common\components\rtl\Garant\L3\l3DropSource.pas',
  afwVCL in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwVCL.pas',
  afwHintManager in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwHintManager.pas',
  l3CustomControlCanvas in 'w:\common\components\rtl\Garant\L3\l3CustomControlCanvas.pas',
  afwBaseControl in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwBaseControl.pas',
  afwControl in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwControl.pas',
  nevControl in 'w:\common\components\gui\Garant\Everest\nevControl.pas',
  evCustomEditorWindowPrim in 'w:\common\components\gui\Garant\Everest\evCustomEditorWindowPrim.pas',
  nevObjectList in 'w:\common\components\gui\Garant\Everest\new\nevObjectList.pas',
  nevBaseDrawView in 'w:\common\components\gui\Garant\Everest\new\nevBaseDrawView.pas',
  nevView in 'w:\common\components\gui\Garant\Everest\new\nevView.pas',
  evCustomEditorWindow in 'w:\common\components\gui\Garant\Everest\evCustomEditorWindow.pas',
  evCustomEditorWindowModelPart in 'w:\common\components\gui\Garant\Everest\evCustomEditorWindowModelPart.pas',
  nevRangeList in 'w:\common\components\gui\Garant\Everest\new\nevRangeList.pas',
  evMultiSelectionLocation in 'w:\common\components\gui\Garant\Everest\evMultiSelectionLocation.pas',
  evLeafParaMultiSelectionBlock in 'w:\common\components\gui\Garant\Everest\evLeafParaMultiSelectionBlock.pas',
  k2DocumentBuffer in 'w:\common\components\rtl\Garant\K2\k2DocumentBuffer.pas',
  evdSegmentsLayerJoiner in 'w:\common\components\rtl\Garant\EVD\evdSegmentsLayerJoiner.pas',
  evTextParaPartFilter in 'w:\common\components\gui\Garant\Everest\evTextParaPartFilter.pas',
  evTextParaMultiSelectionBlock in 'w:\common\components\gui\Garant\Everest\evTextParaMultiSelectionBlock.pas',
  evMultiSelectionRange in 'w:\common\components\gui\Garant\Everest\evMultiSelectionRange.pas',
  evMultiSelectionDataFormatting in 'w:\common\components\gui\Garant\Everest\evMultiSelectionDataFormatting.pas',
  evMultiSelectionText in 'w:\common\components\gui\Garant\Everest\evMultiSelectionText.pas',
  evMultiSelectionBlock in 'w:\common\components\gui\Garant\Everest\evMultiSelectionBlock.pas',
  evRangeTools in 'w:\common\components\gui\Garant\Everest\new\evRangeTools.pas',
  nevRangeListTools in 'w:\common\components\gui\Garant\Everest\new\nevRangeListTools.pas',
  evMultiSelection in 'w:\common\components\gui\Garant\Everest\evMultiSelection.pas',
  evMultiSelectEditorWindowHotSpot in 'w:\common\components\gui\Garant\Everest\evMultiSelectEditorWindowHotSpot.pas',
  evMultiSelectEditorWindow in 'w:\common\components\gui\Garant\Everest\evMultiSelectEditorWindow.pas',
  evCustomEditorModelPart in 'w:\common\components\gui\Garant\Everest\evCustomEditorModelPart.pas',
  evCustomEditor in 'w:\common\components\gui\Garant\Everest\evCustomEditor.pas',
  evEditorWithOperations in 'w:\common\components\gui\Garant\Everest\evEditorWithOperations.pas',
  evTextSource in 'w:\common\components\gui\Garant\Everest\evTextSource.pas',
  l3BaseWithLargeIDListPrim in 'w:\common\components\rtl\Garant\L3\l3BaseWithLargeIDListPrim.pas',
  l3BaseWithLargeIDList in 'w:\common\components\rtl\Garant\L3\l3BaseWithLargeIDList.pas',
  afwPreviewPageList in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwPreviewPageList.pas',
  l3Metafile in 'w:\common\components\rtl\Garant\L3\l3Metafile.pas',
  l3DataCache in 'w:\common\components\rtl\Garant\L3\l3DataCache.pas'
  {$If defined(nsTest)}
  ,
  afwPreviewPageSpy in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwPreviewPageSpy.pas'
  {$IfEnd} //nsTest
  ,
  afwPreviewPage in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwPreviewPage.pas',
  afwPreviewCanvas in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwPreviewCanvas.pas',
  l3TimeEstimation in 'w:\common\components\rtl\Garant\L3\l3TimeEstimation.pas',
  afwCanvasEx in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwCanvasEx.pas',
  nevPrintView in 'w:\common\components\gui\Garant\Everest\new\nevPrintView.pas',
  l3Prg in 'w:\common\components\rtl\Garant\L3\l3Prg.pas',
  evAbortFilter in 'w:\common\components\gui\Garant\Everest\evAbortFilter.pas',
  evCommentsEliminator in 'w:\common\components\gui\Garant\Everest\evCommentsEliminator.pas',
  evHiddenFilter in 'w:\common\components\gui\Garant\Everest\evHiddenFilter.pas',
  evdPageParamsFilter in 'w:\common\components\rtl\Garant\EVD\evdPageParamsFilter.pas',
  evNotifiedProcessor in 'w:\common\components\gui\Garant\Everest\evNotifiedProcessor.pas',
  evPreviewProcessor in 'w:\common\components\gui\Garant\Everest\evPreviewProcessor.pas',
  evdHeaderHyperlinkAdder in 'w:\common\components\gui\Garant\Everest\evdHeaderHyperlinkAdder.pas',
  evdBlockNameAdder in 'w:\common\components\gui\Garant\Everest\evdBlockNameAdder.pas',
  evPreviewForTestsTuning in 'w:\common\components\gui\Garant\Everest\evPreviewForTestsTuning.pas',
  nevDocumentProvider in 'w:\common\components\gui\Garant\Everest\nevDocumentProvider.pas',
  l3FileUtils in 'w:\common\components\rtl\Garant\L3\l3FileUtils.pas'
  {$If defined(InsiderTest)}
  ,
  evCustomPrintDataSaver in 'w:\common\components\gui\Garant\Everest\evCustomPrintDataSaver.pas'
  {$IfEnd} //InsiderTest
  ,
  evDocumentPreviewPrim in 'w:\common\components\gui\Garant\Everest\evDocumentPreviewPrim.pas',
  evDocumentPreview in 'w:\common\components\gui\Garant\Everest\evDocumentPreview.pas',
  evHAFPainter in 'w:\common\components\gui\Garant\Everest\evHAFPainter.pas',
  evHAFPainterEx in 'w:\common\components\gui\Garant\Everest\evHAFPainterEx.pas',
  evCustomEditorWindowProcessor in 'w:\common\components\gui\Garant\Everest\evCustomEditorWindowProcessor.pas',
  evEditorWindowProcessor in 'w:\common\components\gui\Garant\Everest\evEditorWindowProcessor.pas',
  evCustomHAFMacroReplacer in 'w:\common\components\gui\Garant\Everest\evCustomHAFMacroReplacer.pas',
  evFormatHAFMacroReplacer in 'w:\common\components\gui\Garant\Everest\evFormatHAFMacroReplacer.pas',
  evFixedHAFMacroReplacer in 'w:\common\components\gui\Garant\Everest\new\evFixedHAFMacroReplacer.pas',
  nevDocumentProviderEx in 'w:\common\components\gui\Garant\Everest\nevDocumentProviderEx.pas',
  nevPrintableDocumentContainer in 'w:\common\components\gui\Garant\Everest\new\nevPrintableDocumentContainer.pas',
  evTagsListFilter in 'w:\common\components\gui\Garant\Everest\evTagsListFilter.pas',
  evMemoProcessor in 'w:\common\components\gui\Garant\Everest\evMemoProcessor.pas',
  evCustomMemoContainer in 'w:\common\components\gui\Garant\Everest\evCustomMemoContainer.pas',
  evCustomMemoTextSource in 'w:\common\components\gui\Garant\Everest\evCustomMemoTextSource.pas',
  evMemoContextMenu in 'w:\common\components\gui\Garant\Everest\evMemoContextMenu.pas',
  evCustomMemo in 'w:\common\components\gui\Garant\Everest\evCustomMemo.pas',
  nscSimpleEditor in 'w:\common\components\gui\Garant\Nemesis\nscSimpleEditor.pas',
  nscSimpleEditorForDialogsContainer in 'w:\common\components\gui\Garant\Nemesis\nscSimpleEditorForDialogsContainer.pas',
  nscSimpleEditorForDialogsTextSource in 'w:\common\components\gui\Garant\Nemesis\nscSimpleEditorForDialogsTextSource.pas',
  nscSimpleEditorForDialogs in 'w:\common\components\gui\Garant\Nemesis\nscSimpleEditorForDialogs.pas',
  vtStdRes in 'w:\common\components\gui\Garant\VT\vtStdRes.pas' {vtStdResources: TDataModule},
  vtFocusLabel in 'w:\common\components\gui\Garant\VT\vtFocusLabel.pas',
  l3FormCanvas in 'w:\common\components\rtl\Garant\L3\l3FormCanvas.pas'
  {$If not defined(NoVGScene)}
  ,
  vg_objects in 'w:\common\components\rtl\external\VGScene\vg_objects.pas'
  {$IfEnd} //not NoVGScene
  ,
  vtUtils in 'w:\common\components\gui\Garant\VT\vtUtils.pas'
  {$If not defined(NoVGScene)}
  ,
  vtVGSceneRes in 'w:\common\components\gui\Garant\VT\vtVGSceneRes.pas' {vtVGSceneResources: TDataModule}
  {$IfEnd} //not NoVGScene
  ,
  vtF1InterfaceConst in 'w:\common\components\gui\Garant\VT\vtF1InterfaceConst.pas'
  {$If defined(nsTest)}
  ,
  afwAnswer in 'w:\common\components\gui\Garant\AFW\afwAnswer.pas'
  {$IfEnd} //nsTest
  
  {$If not defined(NoVCM)}
  ,
  vcmMessagesCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmMessagesCollectionItem.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmStringIDExHelper in 'w:\common\components\gui\Garant\VCM\implementation\vcmStringIDExHelper.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMakeParams in 'w:\common\components\gui\Garant\VCM\implementation\vcmMakeParams.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmBase in 'w:\common\components\gui\Garant\VCM\implementation\vcmBase.pas'
  {$IfEnd} //not NoVCM
  ,
  l3VCLFormPtrList in 'w:\common\components\rtl\Garant\L3\l3VCLFormPtrList.pas'
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwEntityOperation in 'w:\common\components\gui\Garant\VCM\implementation\Scripting\kwEntityOperation.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces in 'w:\common\components\rtl\Garant\ScriptEngine\tfwScriptingInterfaces.pas'
  {$IfEnd} //not NoScripts
  ,
  l3Parser in 'w:\common\components\rtl\Garant\L3\l3Parser.pas'
  {$If not defined(NoScripts)}
  ,
  tfwCStringListPrim in 'w:\common\components\rtl\Garant\ScriptEngine\tfwCStringListPrim.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwCStringList in 'w:\common\components\rtl\Garant\ScriptEngine\tfwCStringList.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwCStringArray in 'w:\common\components\rtl\Garant\ScriptEngine\tfwCStringArray.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwCStringArraySing in 'w:\common\components\rtl\Garant\ScriptEngine\tfwCStringArraySing.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwCStringArraySing2 in 'w:\common\components\rtl\Garant\ScriptEngine\tfwCStringArraySing2.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwCStringFactory in 'w:\common\components\rtl\Garant\ScriptEngine\tfwCStringFactory.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwDictionaryPrimPrimPrim in 'w:\common\components\rtl\Garant\ScriptEngine\tfwDictionaryPrimPrimPrim.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwDictionaryPrimPrim in 'w:\common\components\rtl\Garant\ScriptEngine\tfwDictionaryPrimPrim.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwDictionaryPrim in 'w:\common\components\rtl\Garant\ScriptEngine\tfwDictionaryPrim.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction in 'w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteredDiction.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEmitString in 'w:\common\components\rtl\Garant\ScriptEngine\kwEmitString.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwProcessMessages in 'w:\common\components\rtl\Garant\ScriptEngine\kwProcessMessages.pas'
  {$IfEnd} //not NoScripts
  ,
  l3ParserInterfaces in 'w:\common\components\rtl\Garant\L3\l3ParserInterfaces.pas'
  {$If not defined(NoScripts)}
  ,
  tfwParser in 'w:\common\components\rtl\Garant\ScriptEngine\tfwParser.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledIn in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledIn.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledVarWorker in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledVarWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledPopToVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledPopToVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIn in 'w:\common\components\rtl\Garant\ScriptEngine\kwIn.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopToVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopToVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwStoredValues in 'w:\common\components\rtl\Garant\ScriptEngine\tfwStoredValues.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwValueList in 'w:\common\components\rtl\Garant\ScriptEngine\tfwValueList.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwArray in 'w:\common\components\rtl\Garant\ScriptEngine\tfwArray.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwInteger in 'w:\common\components\rtl\Garant\ScriptEngine\kwInteger.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwString in 'w:\common\components\rtl\Garant\ScriptEngine\kwString.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIntegerList in 'w:\common\components\rtl\Garant\ScriptEngine\kwIntegerList.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIntegerArray in 'w:\common\components\rtl\Garant\ScriptEngine\kwIntegerArray.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIntegerFactory in 'w:\common\components\rtl\Garant\ScriptEngine\kwIntegerFactory.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringListPrim in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringListPrim.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringList in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringList.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringFactory in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringFactory.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWordContainer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWordContainer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledFor in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledFor.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFor in 'w:\common\components\rtl\Garant\ScriptEngine\kwFor.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDualCompiledWordContainer in 'w:\common\components\rtl\Garant\ScriptEngine\kwDualCompiledWordContainer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledIF in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledIF.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIF in 'w:\common\components\rtl\Garant\ScriptEngine\kwIF.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAssert in 'w:\common\components\rtl\Garant\ScriptEngine\kwAssert.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAssertS in 'w:\common\components\rtl\Garant\ScriptEngine\kwAssertS.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwConstant in 'w:\common\components\rtl\Garant\ScriptEngine\kwConstant.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledTryFinally in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledTryFinally.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledTryExcept in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledTryExcept.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTryFinally in 'w:\common\components\rtl\Garant\ScriptEngine\kwTryFinally.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBeginWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwBeginWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwRaise in 'w:\common\components\rtl\Garant\ScriptEngine\kwRaise.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDefault in 'w:\common\components\rtl\Garant\ScriptEngine\kwDefault.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledCase in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledCase.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCase in 'w:\common\components\rtl\Garant\ScriptEngine\kwCase.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNOP in 'w:\common\components\rtl\Garant\ScriptEngine\kwNOP.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSleep in 'w:\common\components\rtl\Garant\ScriptEngine\kwSleep.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledProcedure in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledProcedure.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwProcedure in 'w:\common\components\rtl\Garant\ScriptEngine\kwProcedure.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBracketBegin in 'w:\common\components\rtl\Garant\ScriptEngine\kwBracketBegin.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwConst in 'w:\common\components\rtl\Garant\ScriptEngine\kwConst.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwValueStack in 'w:\common\components\rtl\Garant\ScriptEngine\tfwValueStack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwStoredValuesStack in 'w:\common\components\rtl\Garant\ScriptEngine\tfwStoredValuesStack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledIncluded in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledIncluded.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSystemIncluded in 'w:\common\components\rtl\Garant\ScriptEngine\kwSystemIncluded.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledMain in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledMain.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  seThreadSupport in 'w:\common\components\rtl\Garant\ScriptEngine\seThreadSupport.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEtalonNeedsComputerName in 'w:\common\components\rtl\Garant\ScriptEngine\kwEtalonNeedsComputerName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEtalonNeedsXE in 'w:\common\components\rtl\Garant\ScriptEngine\kwEtalonNeedsXE.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEtalonNeedsOSName in 'w:\common\components\rtl\Garant\ScriptEngine\kwEtalonNeedsOSName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEtalonNeeds64 in 'w:\common\components\rtl\Garant\ScriptEngine\kwEtalonNeeds64.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMain in 'w:\common\components\rtl\Garant\ScriptEngine\kwMain.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWordWorker in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWordWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledPushWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledPushWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPushWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwPushWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDoPushedWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwDoPushedWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWhile in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWhile.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWhile in 'w:\common\components\rtl\Garant\ScriptEngine\kwWhile.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledLoop in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledLoop.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwLoop in 'w:\common\components\rtl\Garant\ScriptEngine\kwLoop.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNeeds in 'w:\common\components\rtl\Garant\ScriptEngine\kwNeeds.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledIncVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledIncVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIncVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwIncVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledAtomicIF in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledAtomicIF.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAtomicIF in 'w:\common\components\rtl\Garant\ScriptEngine\kwAtomicIF.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWordWorkerWordRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWordWorkerWordRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWordWorkerWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWordWorkerWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWordWorkerWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwWordWorkerWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopToVar1 in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopToVar1.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledPopToVarRef in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledPopToVarRef.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopToVarRef in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopToVarRef.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopToVarRef1 in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopToVarRef1.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNil in 'w:\common\components\rtl\Garant\ScriptEngine\kwNil.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWordProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWordProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWordProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwWordProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledNamedWordProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledNamedWordProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNamedWordProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwNamedWordProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledClass in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledClass.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledClassProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledClassProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwClassProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwClassProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWordAlias in 'w:\common\components\rtl\Garant\ScriptEngine\kwWordAlias.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledAssign in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledAssign.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAssign in 'w:\common\components\rtl\Garant\ScriptEngine\kwAssign.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledImmediateWordWorkerWordRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledImmediateWordWorkerWordRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledImmediateWordWorkerWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledImmediateWordWorkerWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwImmediateWordWorker in 'w:\common\components\rtl\Garant\ScriptEngine\kwImmediateWordWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledImmediateCallerAndWordWorkerWordRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledImmediateCallerAndWordWorkerWordRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledImmediateCallerWordWorkerWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledImmediateCallerWordWorkerWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwImmediateCallerAndWordWorker in 'w:\common\components\rtl\Garant\ScriptEngine\kwImmediateCallerAndWordWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWordAliasByRef in 'w:\common\components\rtl\Garant\ScriptEngine\kwWordAliasByRef.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledCallerAndWordWorkerWordRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledCallerAndWordWorkerWordRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledCallerAndWordWorkerWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledCallerAndWordWorkerWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCallerAndWordWorker in 'w:\common\components\rtl\Garant\ScriptEngine\kwCallerAndWordWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledCallerWordRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledCallerWordRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledCallerWorkerWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledCallerWorkerWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCallerWorker in 'w:\common\components\rtl\Garant\ScriptEngine\kwCallerWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledCallerFirstParamWordRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledCallerFirstParamWordRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledCallerFirstParamWorkerWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledCallerFirstParamWorkerWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCallerFirstParamWorker in 'w:\common\components\rtl\Garant\ScriptEngine\kwCallerFirstParamWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledImmediateCallerWordRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledImmediateCallerWordRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledImmediateCallerWorkerWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledImmediateCallerWorkerWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwImmediateCallerWorker in 'w:\common\components\rtl\Garant\ScriptEngine\kwImmediateCallerWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWordWorkerWord2Runner in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWordWorkerWord2Runner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWordWorker2Word in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWordWorker2Word.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWORDWORKER2 in 'w:\common\components\rtl\Garant\ScriptEngine\kwWORDWORKER2.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine in 'w:\common\components\rtl\Garant\ScriptEngine\tfwScriptEngine.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  vcmBaseOperationsCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmBaseOperationsCollectionItem.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmRepOperationsCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmRepOperationsCollectionItem.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmBaseMenuManager in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmBaseMenuManager.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmSettings in 'w:\common\components\gui\Garant\VCM\implementation\vcmSettings.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMessageQueuePrim in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmMessageQueuePrim.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMessageQueue in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmMessageQueue.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMessagesSupport in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmMessagesSupport.pas'
  {$IfEnd} //not NoVCM
  ,
  eeCheckBox in 'w:\common\components\gui\Garant\VT\eeCheckBox.pas',
  vtCheckBox in 'w:\common\components\gui\Garant\VT\vtCheckBox.pas'
  {$If not defined(NoVCM) AND not defined(NoVGScene)}
  ,
  vcmDialogs in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmDialogs.pas'
  {$IfEnd} //not NoVCM AND not NoVGScene
  
  {$If not defined(NoVCM)}
  ,
  vcmUserInteractiveForm in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmUserInteractiveForm.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmLayoutImplementation in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmLayoutImplementation.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmForm in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmForm.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmControllers in 'w:\common\components\gui\Garant\VCM\vcmControllers.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmContainerFormModelPart in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmContainerFormModelPart.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmContainerForm in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmContainerForm.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMainFormModelPart in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmMainFormModelPart.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmIEntityList in 'w:\common\components\gui\Garant\VCM\implementation\vcmIEntityList.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMainFormRes in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmMainFormRes.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMainForm in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmMainForm.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmEntityFormModelPart in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmEntityFormModelPart.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmEntityFormImplementationModelPart in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmEntityFormImplementationModelPart.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmPrimCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmPrimCollectionItem.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmBaseCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmBaseCollectionItem.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserTypesCollectionItemPrim in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmUserTypesCollectionItemPrim.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmBaseUserTypesCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmBaseUserTypesCollectionItem.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserTypesCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmUserTypesCollectionItem.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormsUtils in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormsUtils.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmEntityForm.pas'
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscStatusBarOperationDefsList in 'w:\common\components\gui\Garant\Nemesis\nscStatusBarOperationDefsList.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscStatusBarItemDef in 'w:\common\components\gui\Garant\Nemesis\nscStatusBarItemDef.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscStatusBarOperationDef in 'w:\common\components\gui\Garant\Nemesis\nscStatusBarOperationDef.pas'
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  StdRes in 'StdRes.pas' {dmStdRes: TvcmApplicationRes}
  {$IfEnd} //not NoVCM
  ,
  F1_Without_Usecases_System_Controls in 'View\F1_Without_Usecases_System_Controls.pas',
  F1_Application_Template_InternalOperations_Controls in 'View\F1_Application_Template_InternalOperations_Controls.pas',
  PresentationInterfaces in 'w:\common\components\gui\Garant\VCM\View\PresentationInterfaces.pas'
  {$If defined(Nemesis)}
  ,
  nscNavigator in 'w:\common\components\gui\Garant\Nemesis\nscNavigator.pas'
  {$IfEnd} //Nemesis
  ,
  vtSizeablePanel in 'w:\common\components\gui\Garant\VT\vtSizeablePanel.pas',
  afwTextControlPrim in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwTextControlPrim.pas',
  afwTextControl in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwTextControl.pas',
  Themes {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Themes.pas' {$EndIf},
  vtPanel in 'w:\common\components\gui\Garant\VT\vtPanel.pas',
  vtProportionalPanel in 'w:\common\components\gui\Garant\VT\vtProportionalPanel.pas'
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemPrim in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormSetFormsCollectionItemPrim.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionPrimPrim in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormSetFormsCollectionPrimPrim.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItemModelPart in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormSetFormsCollectionItemModelPart.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionPrim in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormSetFormsCollectionPrim.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollection in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormSetFormsCollection.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFormsCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormSetFormsCollectionItem.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactoryPrim in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormSetFactoryPrim.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSet in 'w:\common\components\gui\Garant\VCM\implementation\vcmFormSet.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmLocalInterfaces in 'w:\common\components\gui\Garant\VCM\implementation\vcmLocalInterfaces.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetDataSource in 'w:\common\components\gui\Garant\VCM\implementation\vcmFormSetDataSource.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetRefreshParams in 'w:\common\components\gui\Garant\VCM\implementation\vcmFormSetRefreshParams.pas'
  {$IfEnd} //not NoVCM
  ,
  ActnList {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\ActnList.pas' {$EndIf}
  {$If not defined(NoVCM)}
  ,
  vcmHistory in 'w:\common\components\gui\Garant\VCM\implementation\vcmHistory.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmFormSetFactory in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormSetFactory.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmModule in 'w:\common\components\gui\Garant\VCM\implementation\vcmModule.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmBaseOperationState in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmBaseOperationState.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmModulesCollection in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmModulesCollection.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmRepEntitiesCollection in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmRepEntitiesCollection.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmApplication in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmApplication.pas'
  {$IfEnd} //not NoVCM
  ,
  PrimCustomizeTools_Form in 'w:\common\components\gui\Garant\VCM\View\ToolbarMenu\Forms\PrimCustomizeTools_Form.pas'
  {$If not defined(NoScripts)}
  ,
  tfwInteger in 'w:\common\components\rtl\Garant\ScriptEngine\tfwInteger.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwString in 'w:\common\components\rtl\Garant\ScriptEngine\tfwString.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwClassRef in 'w:\common\components\rtl\Garant\ScriptEngine\tfwClassRef.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString in 'w:\common\components\rtl\Garant\ScriptEngine\tfwControlString.pas'
  {$IfEnd} //not NoScripts
  ,
  CustomizeTools_ut_CustomizeTools_UserType in 'w:\common\components\gui\Garant\VCM\View\ToolbarMenu\Forms\CustomizeTools_ut_CustomizeTools_UserType.pas',
  CustomizeTools_Form in 'w:\common\components\gui\Garant\VCM\View\ToolbarMenu\Forms\CustomizeTools_Form.pas' {CustomizeToolsForm: TvcmEntityForm}
  {$If not defined(NoVCM)}
  ,
  vcmToolbarMenuRes in 'w:\common\components\gui\Garant\VCM\implementation\vcmToolbarMenuRes.pas'
  {$IfEnd} //not NoVCM
  ,
  afwDrawing in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwDrawing.pas'
  {$If not defined(NoVCM)}
  ,
  vcmOperationsDefIteratorForContextMenu in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmOperationsDefIteratorForContextMenu.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmEntityDefForContextMenu in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmEntityDefForContextMenu.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmEntitiesDefIteratorForContextMenu in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmEntitiesDefIteratorForContextMenu.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMenuManager in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmMenuManager.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmCustomizeAvailableToolbarOps in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmCustomizeAvailableToolbarOps.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmMenus in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmMenus.pas'
  {$IfEnd} //not NoVCM
  ,
  kw_ToolbarMenu_Customize in 'w:\common\components\gui\Garant\VCM\View\ToolbarMenu\kw_ToolbarMenu_Customize.pas',
  kw_ToolbarMenu_AvailableOperations in 'w:\common\components\gui\Garant\VCM\View\ToolbarMenu\kw_ToolbarMenu_AvailableOperations.pas',
  kw_ToolbarMenu_IconsSize in 'w:\common\components\gui\Garant\VCM\View\ToolbarMenu\kw_ToolbarMenu_IconsSize.pas',
  kw_ToolbarMenu_Fasten in 'w:\common\components\gui\Garant\VCM\View\ToolbarMenu\kw_ToolbarMenu_Fasten.pas',
  PrimToolbarMenu_Module in 'w:\common\components\gui\Garant\VCM\View\ToolbarMenu\PrimToolbarMenu_Module.pas',
  moToolbarMenu in 'w:\common\components\gui\Garant\VCM\View\ToolbarMenu\moToolbarMenu.pas' {mo_ToolbarMenu: TvcmModule},
  OfficeLikeRes in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLikeRes.pas',
  OfficeLikeMain_Form in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLikeMain_Form.pas',
  l3ProtoObjectRefList in 'w:\common\components\rtl\Garant\L3\l3ProtoObjectRefList.pas',
  afwCustomCommonControlPrim in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwCustomCommonControlPrim.pas',
  afwCustomCommonControl in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwCustomCommonControl.pas',
  tb97Control in 'w:\common\components\rtl\external\tb97\tb97Control.pas',
  TB97 in 'w:\common\components\rtl\external\tb97\TB97.pas',
  tb97GraphicControl in 'w:\common\components\rtl\external\tb97\tb97GraphicControl.pas',
  TB97Tlbr in 'w:\common\components\rtl\external\tb97\TB97Tlbr.pas',
  tb97Ctls in 'w:\common\components\rtl\external\tb97\tb97Ctls.pas'
  {$If defined(Nemesis)}
  ,
  StatusBarUtils in 'w:\common\components\gui\Garant\Nemesis\StatusBarUtils.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscSizeGripPanel in 'w:\common\components\gui\Garant\Nemesis\nscSizeGripPanel.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscStatusBarButton in 'w:\common\components\gui\Garant\Nemesis\nscStatusBarButton.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscStatusBarPanel in 'w:\common\components\gui\Garant\Nemesis\nscStatusBarPanel.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscStatusBarSep in 'w:\common\components\gui\Garant\Nemesis\nscStatusBarSep.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscStatusBar in 'w:\common\components\gui\Garant\Nemesis\nscStatusBar.pas'
  {$IfEnd} //Nemesis
  
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush in 'w:\common\components\rtl\Garant\ScriptEngine\kwBynameControlPush.pas'
  {$IfEnd} //not NoScripts
  ,
  OfficeLike_System_Controls in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLike_System_Controls.pas',
  F1Like_InternalOperations_Controls in 'w:\common\components\gui\Garant\VCM\View\F1Like_InternalOperations_Controls.pas',
  Menus {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Menus.pas' {$EndIf}
  {$If not defined(NoVCM)}
  ,
  vcmTaskPanelInterfaces in 'w:\common\components\gui\Garant\VCM\vcmTaskPanelInterfaces.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmPopupMenuPrim in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmPopupMenuPrim.pas'
  {$IfEnd} //not NoVCM
  ,
  PrimCustomizeTasksPanel_Form in 'w:\common\components\gui\Garant\VCM\View\TasksPanel\Forms\PrimCustomizeTasksPanel_Form.pas',
  CustomizeTasksPanel_ut_CustomizeTasksPanel_UserType in 'w:\common\components\gui\Garant\VCM\View\TasksPanel\Forms\CustomizeTasksPanel_ut_CustomizeTasksPanel_UserType.pas',
  CustomizeTasksPanel_Form in 'w:\common\components\gui\Garant\VCM\View\TasksPanel\Forms\CustomizeTasksPanel_Form.pas' {CustomizeTasksPanelForm: TvcmEntityForm},
  kw_TasksPanelMenu_Customize in 'w:\common\components\gui\Garant\VCM\View\TasksPanel\kw_TasksPanelMenu_Customize.pas',
  PrimTasksPanelMenu_Module in 'w:\common\components\gui\Garant\VCM\View\TasksPanel\PrimTasksPanelMenu_Module.pas',
  moTasksPanelMenu in 'w:\common\components\gui\Garant\VCM\View\TasksPanel\moTasksPanelMenu.pas' {mo_TasksPanelMenu: TvcmModule},
  ElPgCtl in 'w:\common\components\gui\Garant\VT\elClone\Source\ElPgCtl.pas'
  {$If defined(Nemesis)}
  ,
  nscFormsPageControl in 'w:\common\components\gui\Garant\Nemesis\nscFormsPageControl.pas'
  {$IfEnd} //Nemesis
  ,
  PrimChild_cutUsual_UserType in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\Forms\PrimChild_cutUsual_UserType.pas',
  PrimChild_cutForDiction_UserType in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\Forms\PrimChild_cutForDiction_UserType.pas',
  nsFormUtils in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\nsFormUtils.pas',
  PrimChild_Form in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\Forms\PrimChild_Form.pas',
  PrimParent_utHistory_UserType in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\Forms\PrimParent_utHistory_UserType.pas',
  PrimParent_Form in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\Forms\PrimParent_Form.pas',
  F1Like_FormDefinitions_Controls in 'w:\common\components\gui\Garant\VCM\View\F1Like_FormDefinitions_Controls.pas',
  Parent_Form in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\Forms\Parent_Form.pas' {ParentForm: TvcmEntityForm},
  Child_Form in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\Forms\Child_Form.pas' {ChildForm: TvcmEntityForm},
  ParentAndChildPrim_Module in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\ParentAndChildPrim_Module.pas',
  moParentAndChild in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\moParentAndChild.pas' {mo_ParentAndChild: TvcmModule},
  F1LikeRes in 'w:\common\components\gui\Garant\VCM\View\F1LikeRes.pas',
  OfficeLikeAppInterfaces in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLikeAppInterfaces.pas'
  {$If not defined(NoVCM)}
  ,
  vcmStringList in 'w:\common\components\gui\Garant\VCM\implementation\vcmStringList.pas'
  {$IfEnd} //not NoVCM
  ,
  nsWindowNode in 'w:\common\components\gui\Garant\VCM\UserInteraction\nsWindowNode.pas',
  nsWindowsListPrim in 'w:\common\components\gui\Garant\VCM\UserInteraction\nsWindowsListPrim.pas',
  nsWindowsList in 'w:\common\components\gui\Garant\VCM\UserInteraction\nsWindowsList.pas',
  vtNavigatorForm in 'w:\common\components\gui\Garant\VT\vtNavigatorForm.pas',
  vtNavigatorFormListPrimPrim in 'w:\common\components\gui\Garant\VT\vtNavigatorFormListPrimPrim.pas',
  vtNavigatorFormListPrim in 'w:\common\components\gui\Garant\VT\vtNavigatorFormListPrim.pas',
  vtNavigatorFormList in 'w:\common\components\gui\Garant\VT\vtNavigatorFormList.pas',
  vtNavigatorRes in 'w:\common\components\gui\Garant\VT\vtNavigatorRes.pas',
  npControls in 'w:\common\components\gui\Garant\VT\npControls.pas',
  npControlsListPrim in 'w:\common\components\gui\Garant\VT\npControlsListPrim.pas',
  npControlsList in 'w:\common\components\gui\Garant\VT\npControlsList.pas',
  npNavigatorListPrim in 'w:\common\components\gui\Garant\VT\npNavigatorListPrim.pas',
  l3CBTListenersList in 'w:\common\components\rtl\Garant\L3\l3CBTListenersList.pas',
  l3GetMessageListenersList in 'w:\common\components\rtl\Garant\L3\l3GetMessageListenersList.pas',
  l3WndProcListenersList in 'w:\common\components\rtl\Garant\L3\l3WndProcListenersList.pas',
  l3WndProcRetListenersList in 'w:\common\components\rtl\Garant\L3\l3WndProcRetListenersList.pas',
  l3MouseListenersList in 'w:\common\components\rtl\Garant\L3\l3MouseListenersList.pas',
  l3MouseWheelListenersList in 'w:\common\components\rtl\Garant\L3\l3MouseWheelListenersList.pas',
  l3ListenersHooks in 'w:\common\components\rtl\Garant\L3\l3ListenersHooks.pas',
  l3ListenersManager in 'w:\common\components\rtl\Garant\L3\l3ListenersManager.pas',
  npNavigatorListCBT in 'w:\common\components\gui\Garant\VT\npNavigatorListCBT.pas',
  npNavigatorList in 'w:\common\components\gui\Garant\VT\npNavigatorList.pas',
  vtNavigator in 'w:\common\components\gui\Garant\VT\vtNavigator.pas',
  nsSettingsConst in 'w:\common\components\gui\Garant\VCM\View\ParentAndChild\nsSettingsConst.pas',
  MainPrim_Form in 'w:\common\components\gui\Garant\VCM\View\MainPrim_Form.pas',
  SearchUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\SearchUnit.pas',
  lgTypes in 'View\lgTypes.pas',
  LoggingInterfaces in 'Model\LoggingInterfaces.pas',
  LoggingUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\LoggingUnit.pas',
  AdminDomainInterfaces in 'Model\AdminDomainInterfaces.pas',
  DataAdapterInterfaces in 'Model\DataAdapterInterfaces.pas',
  nsQuestionsWithChoices in 'Data\nsQuestionsWithChoices.pas',
  DataAdapter in 'Data\Common\DataAdapter.pas',
  nsLogEvent in 'Data\nsLogEvent.pas',
  InsDefferedEventList in 'Data\InsDefferedEventList.pas',
  DateUtils {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\DateUtils.pas' {$EndIf},
  nsPrimCachedEventsProcessor in 'Data\nsPrimCachedEventsProcessor.pas',
  nsCachedEventsProcessor in 'Data\nsCachedEventsProcessor.pas',
  nsPrimCachedEvent in 'Data\nsPrimCachedEvent.pas',
  BaseTypesUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\BaseTypesUnit.pas',
  afwConsts in 'w:\common\components\gui\Garant\AFW\afwConsts.pas',
  StartUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\StartUnit.pas',
  SPHTMLHelp in 'w:\common\components\gui\Garant\AFW\SPHTMLHelp.pas',
  GblAdapter,
  SearchInterfaces in 'Search\SearchInterfaces.pas',
  IOUnit in 'w:\shared\GCI\IOUnit.pas',
  nsTypesNew in 'Model\nsTypesNew.pas',
  nsTypes in 'Model\nsTypes.pas',
  OfficeLike_Text_Controls in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLike_Text_Controls.pas',
  DynamicTreeUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\DynamicTreeUnit.pas',
  nsUtils in 'Data\Common\nsUtils.pas',
  TreeAttribute_Form in 'View\LiteSearch\Forms\TreeAttribute_Form.pas',
  SearchDomainInterfaces in 'Model\SearchDomainInterfaces.pas',
  eeInterfaces in 'w:\common\components\gui\Garant\Everest_Engine\eeInterfaces.pas',
  l3ControlsTypes in 'w:\common\components\rtl\Garant\L3\l3ControlsTypes.pas',
  afwInputControl in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwInputControl.pas',
  vtHeader in 'w:\common\components\gui\Garant\VT\vtHeader.pas',
  l3LogicalArray in 'w:\common\components\rtl\Garant\L3\l3LogicalArray.pas',
  OvcColor in 'w:\common\components\rtl\external\Orpheus\OvcColor.pas',
  l3DatLst in 'w:\common\components\rtl\Garant\L3\l3DatLst.pas',
  l3FontTools in 'w:\common\components\rtl\Garant\L3\l3FontTools.pas',
  OvcData in 'w:\common\components\rtl\external\Orpheus\OvcData.pas',
  OvcExcpt in 'w:\common\components\rtl\external\Orpheus\OvcExcpt.pas',
  l3TabStops in 'w:\common\components\rtl\Garant\L3\l3TabStops.pas',
  l3SimpleObjectRefList in 'w:\common\components\rtl\Garant\L3\l3SimpleObjectRefList.pas',
  l3FormattedLines in 'w:\common\components\rtl\Garant\L3\l3FormattedLines.pas',
  vtHintManager in 'w:\common\components\gui\Garant\VT\vtHintManager.pas',
  vtMultilineHint in 'w:\common\components\gui\Garant\VT\vtMultilineHint.pas',
  vtLister in 'w:\common\components\gui\Garant\VT\vtLister.pas',
  vtTreeSource in 'w:\common\components\gui\Garant\VT\vtTreeSource.pas',
  l3TreeUtils in 'w:\common\components\rtl\Garant\L3\l3TreeUtils.pas',
  vtOutliner in 'w:\common\components\gui\Garant\VT\vtOutliner.pas',
  vtOutlinerWithQuickSearch in 'w:\common\components\gui\Garant\VT\vtOutlinerWithQuickSearch.pas',
  vtOutlinerWithDragDropRes in 'w:\common\components\gui\Garant\VT\vtOutlinerWithDragDropRes.pas',
  vtOutlinerWithDragDrop in 'w:\common\components\gui\Garant\VT\vtOutlinerWithDragDrop.pas',
  eeTreeViewExport in 'w:\common\components\gui\Garant\Everest_Engine\eeTreeViewExport.pas',
  eeCustomTreeView in 'w:\common\components\gui\Garant\Everest_Engine\eeCustomTreeView.pas',
  eeTreeView in 'w:\common\components\gui\Garant\Everest_Engine\eeTreeView.pas',
  evStorable in 'w:\common\components\gui\Garant\Everest\evStorable.pas',
  evStringStorable in 'w:\common\components\gui\Garant\Everest\evStringStorable.pas',
  evNodeStorable in 'w:\common\components\gui\Garant\Everest\evNodeStorable.pas',
  evPersistentDataObject in 'w:\common\components\gui\Garant\Everest\evPersistentDataObject.pas',
  evPersistentDataObjectEx in 'w:\common\components\gui\Garant\Everest\evPersistentDataObjectEx.pas',
  evFormats in 'w:\common\components\gui\Garant\Everest\evFormats.pas',
  evNodeDataObject in 'w:\common\components\gui\Garant\Everest\evNodeDataObject.pas',
  l3TreeConst in 'w:\common\components\rtl\Garant\L3\l3TreeConst.pas',
  evdAllParaEliminator in 'w:\common\components\rtl\Garant\EVD\evdAllParaEliminator.pas',
  ddDocument in 'w:\common\components\rtl\Garant\dd\ddDocument.pas',
  ddRTFWriter in 'w:\common\components\rtl\Garant\dd\ddRTFWriter.pas',
  evNodeData in 'w:\common\components\gui\Garant\EverestCommon\evNodeData.pas',
  FoldersUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\FoldersUnit.pas',
  DocumentUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\DocumentUnit.pas',
  BaseTreeSupportUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\BaseTreeSupportUnit.pas'
  {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
  ,
  nsNodeStorable in 'w:\common\components\gui\Garant\Nemesis\Tree\nsNodeStorable.pas'
  {$IfEnd} //Nemesis AND not DesignTimeLibrary
  
  {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
  ,
  nsNodeDataObject in 'w:\common\components\gui\Garant\Nemesis\Tree\nsNodeDataObject.pas'
  {$IfEnd} //Nemesis AND not DesignTimeLibrary
  
  {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
  ,
  nsEntitiesTreeDataObject in 'w:\common\components\gui\Garant\Nemesis\Tree\nsEntitiesTreeDataObject.pas'
  {$IfEnd} //Nemesis AND not DesignTimeLibrary
  
  {$If defined(Nemesis)}
  ,
  nscTreeViewRes in 'w:\common\components\gui\Garant\Nemesis\nscTreeViewRes.pas'
  {$IfEnd} //Nemesis
  ,
  OfficeLike_Tree_Controls in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLike_Tree_Controls.pas'
  {$If defined(Nemesis)}
  ,
  nscTreeView in 'w:\common\components\gui\Garant\Nemesis\nscTreeView.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscContextFilterRes in 'w:\common\components\gui\Garant\Nemesis\nscContextFilterRes.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscContextFilter in 'w:\common\components\gui\Garant\Nemesis\nscContextFilter.pas'
  {$IfEnd} //Nemesis
  ,
  SearchLite_Strange_Controls in 'View\SearchLite_Strange_Controls.pas',
  PrimTreeAttributeSelect_astNone_UserType in 'View\LiteSearch\Forms\PrimTreeAttributeSelect_astNone_UserType.pas',
  PrimTreeAttributeSelect_astOneLevel_UserType in 'View\LiteSearch\Forms\PrimTreeAttributeSelect_astOneLevel_UserType.pas',
  PrimTreeAttributeSelect_astFirstLevel_UserType in 'View\LiteSearch\Forms\PrimTreeAttributeSelect_astFirstLevel_UserType.pas'
  {$If defined(Nemesis)}
  ,
  nscContextFilterState in 'w:\common\components\gui\Garant\Nemesis\nscContextFilterState.pas'
  {$IfEnd} //Nemesis
  ,
  PrimTreeAttributeSelect_astTaxesPublishSearch_UserType in 'View\LiteSearch\Forms\PrimTreeAttributeSelect_astTaxesPublishSearch_UserType.pas',
  DynamicTreeDefinesUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\DynamicTreeDefinesUnit.pas',
  nsLogicOperationToFlags in 'Tree\nsLogicOperationToFlags.pas',
  nsINodeWrapBase in 'Data\Tree\nsINodeWrapBase.pas',
  nsRootManager in 'Data\Tree\nsRootManager.pas',
  nsINodeWrap in 'Data\Tree\nsINodeWrap.pas',
  nsINodeRootWrap in 'Data\Tree\nsINodeRootWrap.pas',
  nsTreeStruct in 'Data\Tree\nsTreeStruct.pas',
  l3TreeFilters in 'w:\common\components\rtl\Garant\L3\l3TreeFilters.pas',
  SecurityUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\SecurityUnit.pas',
  nsAdapterFilters in 'Data\Tree\nsAdapterFilters.pas',
  bsConvert in 'Data\Common\bsConvert.pas',
  Il3ContextFilterParamsNotifierPtrList in 'Data\Tree\Il3ContextFilterParamsNotifierPtrList.pas',
  nsContextFilterParams in 'Data\Tree\nsContextFilterParams.pas',
  nsFilterableTreeStruct in 'Data\Tree\nsFilterableTreeStruct.pas',
  nsDataResetTreeStruct in 'Data\Tree\nsDataResetTreeStruct.pas',
  nsINodeOneLevelWrap in 'Data\Tree\nsINodeOneLevelWrap.pas',
  nsINodeOneLevelRootWrap in 'Data\Tree\nsINodeOneLevelRootWrap.pas',
  nsOneLevelTreeStruct in 'Data\Tree\nsOneLevelTreeStruct.pas',
  DynamicDocListUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\DynamicDocListUnit.pas',
  bsUtils in 'Data\Common\bsUtils.pas',
  nsAttributeTreeFilters in 'Data\Search\nsAttributeTreeFilters.pas',
  l3InterfacedStringList in 'w:\common\components\rtl\Garant\L3\l3InterfacedStringList.pas',
  nsAttributeTreeCacheNew in 'Data\Search\nsAttributeTreeCacheNew.pas',
  nsAttributeOneLevelTreeStruct in 'Data\Search\nsAttributeOneLevelTreeStruct.pas',
  nsAttrBranchStruct in 'Data\Search\nsAttrBranchStruct.pas',
  PrimTreeAttributeSelect_Form in 'View\LiteSearch\Forms\PrimTreeAttributeSelect_Form.pas',
  OfficeLike_Result_Controls in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLike_Result_Controls.pas',
  PrimTreeAttributeSelectOptions_Form in 'View\LiteSearch\Forms\PrimTreeAttributeSelectOptions_Form.pas',
  PrimSelectedAttributes_utSelectedAttributes_UserType in 'View\LiteSearch\Forms\PrimSelectedAttributes_utSelectedAttributes_UserType.pas',
  nsTreeAttributeNodesNew in 'View\LiteSearch\nsTreeAttributeNodesNew.pas',
  PrimSelectedAttributes_Form in 'View\LiteSearch\Forms\PrimSelectedAttributes_Form.pas',
  PrimSelectedAttributesOptions_Form in 'View\LiteSearch\Forms\PrimSelectedAttributesOptions_Form.pas',
  nsQueryInterfaces in 'Search\nsQueryInterfaces.pas',
  OfficeLike_ResultEx_Controls in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLike_ResultEx_Controls.pas',
  PrimAttributeSelect_utAttributeSelect_UserType in 'View\LiteSearch\Forms\PrimAttributeSelect_utAttributeSelect_UserType.pas',
  PrimAttributeSelect_utSingleSearch_UserType in 'View\LiteSearch\Forms\PrimAttributeSelect_utSingleSearch_UserType.pas',
  SearchRes in 'View\SearchRes.pas' {nsSearchRes: TDataModule},
  nsQueryAttribute in 'Search\nsQueryAttribute.pas',
  nsQueryUtils in 'Search\nsQueryUtils.pas',
  OldTreeInterfaces in 'Model\OldTreeInterfaces.pas',
  nsWrapperNode in 'Data\Tree\nsWrapperNode.pas',
  l3VirtualNode in 'w:\common\components\rtl\Garant\L3\l3VirtualNode.pas',
  eeVirtualNode in 'w:\common\components\gui\Garant\Everest_Engine\eeVirtualNode.pas',
  nsPrimNode in 'Data\Tree\nsPrimNode.pas',
  nsPrimAdapterNode in 'Data\Tree\nsPrimAdapterNode.pas',
  nsPrimCacheableNode in 'Data\Tree\nsPrimCacheableNode.pas',
  nsBaseNode in 'Data\Tree\nsBaseNode.pas',
  nsNodes in 'Data\Tree\nsNodes.pas',
  nsQuery in 'View\LiteSearch\nsQuery.pas',
  PrimAttributeSelect_Form in 'View\LiteSearch\Forms\PrimAttributeSelect_Form.pas',
  PrimAttributeSelectOptions_Form in 'View\LiteSearch\Forms\PrimAttributeSelectOptions_Form.pas',
  SearchLite_FormDefinitions_Controls in 'View\SearchLite_FormDefinitions_Controls.pas',
  TreeAttributeSelect_Form in 'View\LiteSearch\Forms\TreeAttributeSelect_Form.pas' {efTreeAttributeSelect: TvcmEntityForm},
  AttributeSelect_Form in 'View\LiteSearch\Forms\AttributeSelect_Form.pas' {cfAttributeSelect: TvcmEntityForm},
  SelectedAttributes_Form in 'View\LiteSearch\Forms\SelectedAttributes_Form.pas' {enSelectedAttributes: TvcmEntityForm},
  LiteSearch_Module in 'View\LiteSearch\LiteSearch_Module.pas',
  moLiteSearch in 'View\LiteSearch\moLiteSearch.pas' {mo_LiteSearch: TvcmModule},
  l3GraphicControlCanvas in 'w:\common\components\rtl\Garant\L3\l3GraphicControlCanvas.pas',
  vtLabel in 'w:\common\components\gui\Garant\VT\vtLabel.pas',
  PrimShutDown_sftNone_UserType in 'View\PrimCommon\Forms\PrimShutDown_sftNone_UserType.pas',
  PrimShutDown_Form in 'View\PrimCommon\Forms\PrimShutDown_Form.pas',
  vtGroupBox in 'w:\common\components\gui\Garant\VT\vtGroupBox.pas',
  evEditProcessor in 'w:\common\components\gui\Garant\Everest\evEditProcessor.pas',
  evCustomEditDocumentContainer in 'w:\common\components\gui\Garant\Everest\evCustomEditDocumentContainer.pas',
  evEditDocumentContainer in 'w:\common\components\gui\Garant\Everest\evEditDocumentContainer.pas',
  evCustomEditTextSource in 'w:\common\components\gui\Garant\Everest\evCustomEditTextSource.pas',
  evConvertTextTools in 'w:\common\components\gui\Garant\Everest\evConvertTextTools.pas',
  evCustomEdit in 'w:\common\components\gui\Garant\Everest\evCustomEdit.pas',
  elCustomEdit in 'w:\common\components\gui\Garant\Everest\elCustomEdit.pas',
  CustomElGraphicButton in 'w:\common\components\gui\Garant\Everest\CustomElGraphicButton.pas',
  elCustomButtonEdit in 'w:\common\components\gui\Garant\Everest\elCustomButtonEdit.pas',
  ctButtonEdit in 'w:\common\components\gui\Garant\Everest\ctButtonEdit.pas',
  Clipbrd {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Clipbrd.pas' {$EndIf},
  ctAbstractEdit in 'w:\common\components\gui\Garant\VT\ComboTree\ctAbstractEdit.pas',
  AbstractDropDown in 'w:\common\components\gui\Garant\VT\ComboTree\AbstractDropDown.pas',
  DropDownTree in 'w:\common\components\gui\Garant\VT\ComboTree\DropDownTree.pas',
  l3SimpleTree in 'w:\common\components\rtl\Garant\L3\l3SimpleTree.pas',
  EditableBox in 'w:\common\components\gui\Garant\VT\ComboTree\EditableBox.pas',
  ctComboBoxStringsItemNode in 'w:\common\components\gui\Garant\VT\ComboTree\ctComboBoxStringsItemNode.pas',
  ComboBoxStrings in 'w:\common\components\gui\Garant\VT\ComboTree\ComboBoxStrings.pas',
  ctFakeBoxStrings in 'w:\common\components\gui\Garant\VT\ComboTree\ctFakeBoxStrings.pas',
  FakeBox in 'w:\common\components\gui\Garant\VT\ComboTree\FakeBox.pas'
  {$If defined(Nemesis)}
  ,
  nscComboBox in 'w:\common\components\gui\Garant\Nemesis\nscComboBox.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscComboBoxWithReadOnly in 'w:\common\components\gui\Garant\Nemesis\nscComboBoxWithReadOnly.pas'
  {$IfEnd} //Nemesis
  ,
  ElPopBtn in 'w:\common\components\gui\Garant\Everest\ElPopBtn.pas',
  nsStartupSupport in 'Data\Common\nsStartupSupport.pas',
  nsFlashWindow in 'View\nsFlashWindow.pas',
  nsConst in 'Data\Common\nsConst.pas',
  PrimLogin_Form in 'View\PrimCommon\Forms\PrimLogin_Form.pas',
  Login_ut_Login_UserType in 'View\PrimCommon\Forms\Login_ut_Login_UserType.pas',
  Login_Form in 'View\PrimCommon\Forms\Login_Form.pas' {LoginForm: TvcmEntityForm},
  PrimLongProcess_Form in 'View\PrimCommon\Forms\PrimLongProcess_Form.pas',
  ShutDown_Form in 'View\PrimCommon\Forms\ShutDown_Form.pas' {ShutDownForm: TvcmEntityForm},
  LongProcess_ut_LongProcess_UserType in 'View\PrimCommon\Forms\LongProcess_ut_LongProcess_UserType.pas',
  LongProcess_Form in 'View\PrimCommon\Forms\LongProcess_Form.pas' {LongProcessForm: TvcmEntityForm},
  PrimCommon_Module in 'View\PrimCommon\PrimCommon_Module.pas',
  moRealCommon in 'View\PrimCommon\moRealCommon.pas' {mo_RealCommon: TvcmModule},
  SearchDefinesUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\SearchDefinesUnit.pas',
  SearchProgressIndicatorUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\SearchProgressIndicatorUnit.pas',
  DebugStr in 'Data\Common\DebugStr.pas',
  f1TextStyle_Const in 'w:\common\components\gui\Garant\Everest_Engine\f1TextStyle_Const.pas',
  eeDocumentSchema in 'w:\common\components\gui\Garant\Everest_Engine\eeDocumentSchema.pas',
  F1_AttrValues in 'w:\common\components\gui\Garant\Everest_Engine\F1_AttrValues.pas',
  F1_Schema in 'w:\common\components\gui\Garant\Everest_Engine\F1_Schema.pas',
  SettingsUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\SettingsUnit.pas',
  InsUserSettingsListenerPtrList in 'Data\Settings\InsUserSettingsListenerPtrList.pas',
  InsUserSettingsEditListenerPtrList in 'Data\Settings\InsUserSettingsEditListenerPtrList.pas',
  nsSettings in 'Data\Settings\nsSettings.pas',
  nsContextFilterEventDataList in 'Data\nsContextFilterEventDataList.pas',
  nsContextFilterEventListener in 'Data\nsContextFilterEventListener.pas',
  evdSchema in 'w:\common\components\gui\Garant\Everest\evdSchema.pas',
  Logo_ut_Logo_UserType in 'View\PrimCommon\Forms\Logo_ut_Logo_UserType.pas',
  kw_Form_Logo in 'View\PrimCommon\kw_Form_Logo.pas',
  Logo_Form in 'View\PrimCommon\Forms\Logo_Form.pas' {LogoForm: TvcmEntityForm},
  PrimF1Res in 'View\PrimF1Res.pas',
  PrimMain_Form in 'View\PrimMain_Form.pas',
  PrimMainOptions_Form in 'View\PrimMainOptions_Form.pas',
  ShellAndMonitoringsMain_Form in 'View\ShellAndMonitoringsMain_Form.pas',
  Search_Strange_Controls in 'View\Search_Strange_Controls.pas',
  MainWindowInterfaces in 'MainWindowControllers\MainWindowInterfaces.pas',
  ConfigInterfaces in 'Model\ConfigInterfaces.pas',
  nsStyleEditor in 'View\nsStyleEditor.pas',
  nsSettingsUtils in 'View\nsSettingsUtils.pas',
  NemesisMain_utMainWindow_UserType in 'View\NemesisMain_utMainWindow_UserType.pas',
  resWarnImages in 'View\resWarnImages.pas' {nsWarnImages: TDataModule},
  Base_Operations_View_Controls in 'View\Base_Operations_View_Controls.pas',
  DocumentAndListInterfaces in 'BusinessInterfaces\Common\DocumentAndListInterfaces.pas',
  DocumentInterfaces in 'F1DocumentProcessingInterfaces\DocumentInterfaces.pas',
  dsWarning in 'Business\Document\dsWarning.pas',
  WarningUserTypes_Warning_UserType in 'View\WarningUserTypes_Warning_UserType.pas',
  BaloonWarningUserTypes_Fake_UserType in 'View\BaloonWarningUserTypes_Fake_UserType.pas',
  BaloonWarningUserTypes_WarnJuror_UserType in 'View\BaloonWarningUserTypes_WarnJuror_UserType.pas',
  BaloonWarningUserTypes_WarnPreActive_UserType in 'View\BaloonWarningUserTypes_WarnPreActive_UserType.pas',
  BaloonWarningUserTypes_WarnIsAbolished_UserType in 'View\BaloonWarningUserTypes_WarnIsAbolished_UserType.pas',
  BaloonWarningUserTypes_WarnOnControl_UserType in 'View\BaloonWarningUserTypes_WarnOnControl_UserType.pas',
  BaloonWarningUserTypes_WarnInactualDocument_UserType in 'View\BaloonWarningUserTypes_WarnInactualDocument_UserType.pas',
  BaloonWarningUserTypes_WarnTimeMachineOn_UserType in 'View\BaloonWarningUserTypes_WarnTimeMachineOn_UserType.pas',
  BaloonWarningUserTypes_WarnRedaction_UserType in 'View\BaloonWarningUserTypes_WarnRedaction_UserType.pas',
  BaloonWarningUserTypes_WarnTimeMachineWarning_UserType in 'View\BaloonWarningUserTypes_WarnTimeMachineWarning_UserType.pas',
  BaloonWarningUserTypes_WarnTimeMachineException_UserType in 'View\BaloonWarningUserTypes_WarnTimeMachineException_UserType.pas',
  BaloonWarningUserTypes_remListModified_UserType in 'View\BaloonWarningUserTypes_remListModified_UserType.pas',
  BaloonWarningUserTypes_remListFiltered_UserType in 'View\BaloonWarningUserTypes_remListFiltered_UserType.pas',
  BaloonWarningUserTypes_remTimeMachineWarning_UserType in 'View\BaloonWarningUserTypes_remTimeMachineWarning_UserType.pas',
  BaloonWarningUserTypes_remUnreadConsultations_UserType in 'View\BaloonWarningUserTypes_remUnreadConsultations_UserType.pas',
  BaloonWarningUserTypes_remOnlineDead_UserType in 'View\BaloonWarningUserTypes_remOnlineDead_UserType.pas',
  BaloonWarningUserTypes_TrialModeWarning_UserType in 'View\BaloonWarningUserTypes_TrialModeWarning_UserType.pas',
  BaloonWarningUserTypes_OldBaseWarning_UserType in 'View\BaloonWarningUserTypes_OldBaseWarning_UserType.pas',
  BaloonWarningUserTypes_ControlledChangingWarning_UserType in 'View\BaloonWarningUserTypes_ControlledChangingWarning_UserType.pas',
  sdsMainWindow in 'MainWindowControllers\sdsMainWindow.pas',
  NemesisMain_Form in 'View\NemesisMain_Form.pas',
  L10nInterfaces in 'Model\L10nInterfaces.pas',
  BaseSearchInterfaces in 'View\BaseSearchInterfaces.pas'
  {$If not defined(NoVGScene)}
  ,
  vg_layouts in 'w:\common\components\rtl\external\VGScene\vg_layouts.pas'
  {$IfEnd} //not NoVGScene
  ,
  l3DockTree in 'w:\common\components\rtl\Garant\L3\l3DockTree.pas'
  {$If not defined(NoVCM)}
  ,
  vcmDockTree in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmDockTree.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVGScene)}
  ,
  vtPopupForm in 'w:\common\components\gui\Garant\VT\vtPopupForm.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoVCM) AND not defined(NoVGScene)}
  ,
  vtPopupFormModelPart in 'w:\common\components\gui\Garant\VT\vtPopupFormModelPart.pas'
  {$IfEnd} //not NoVCM AND not NoVGScene
  ,
  vtReminderUtils in 'w:\common\components\gui\Garant\VT\vtReminderUtils.pas',
  vtInterfaces in 'w:\common\components\gui\Garant\VT\vtInterfaces.pas',
  vtCustomReminder in 'w:\common\components\gui\Garant\VT\vtCustomReminder.pas',
  vtReminder in 'w:\common\components\gui\Garant\VT\vtReminder.pas'
  {$If not defined(NoVCM)}
  ,
  vtReminderModelPart in 'w:\common\components\gui\Garant\VT\vtReminderModelPart.pas'
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscCustomReminderModelPart in 'w:\common\components\gui\Garant\Nemesis\nscCustomReminderModelPart.pas'
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmCommandIDsListPrim in 'w:\common\components\gui\Garant\VCM\implementation\vcmCommandIDsListPrim.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmCommandIDsList in 'w:\common\components\gui\Garant\VCM\implementation\vcmCommandIDsList.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmOVCCommands in 'w:\common\components\gui\Garant\VCM\implementation\vcmOVCCommands.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUtils in 'w:\common\components\gui\Garant\VCM\implementation\vcmUtils.pas'
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscReminder in 'w:\common\components\gui\Garant\Nemesis\nscReminder.pas'
  {$IfEnd} //Nemesis
  ,
  nsIntegrationSupport in 'View\nsIntegrationSupport.pas',
  ddHTMLWriterRes in 'w:\common\components\rtl\Garant\dd\ddHTMLWriterRes.pas',
  ddHTMLWriter in 'w:\common\components\rtl\Garant\dd\ddHTMLWriter.pas',
  nsExternalObjectModelPart in 'ExternalObjects\nsExternalObjectModelPart.pas',
  nsExternalObject in 'ExternalObjects\nsExternalObject.pas',
  FoldersDomainInterfaces in 'Search\FoldersDomainInterfaces.pas',
  nsFolderFilterInfo in 'Search\nsFolderFilterInfo.pas',
  nsDataResetTree in 'Data\Tree\nsDataResetTree.pas',
  nsRubricatorCache in 'Common\nsRubricatorCache.pas',
  nsNewCachableNode in 'Data\Tree\nsNewCachableNode.pas',
  MainMenuDomainInterfaces in 'Common\MainMenuDomainInterfaces.pas',
  nsMainMenuNode in 'Common\nsMainMenuNode.pas',
  nsBaseMainMenuTree in 'Common\nsBaseMainMenuTree.pas',
  MainMenuUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\MainMenuUnit.pas',
  nsOpenUtils in 'Data\Common\nsOpenUtils.pas',
  Common_FormDefinitions_Controls in 'View\Common_FormDefinitions_Controls.pas',
  Common_Rubricator_Controls in 'View\Common_Rubricator_Controls.pas',
  ExternalObjectUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\ExternalObjectUnit.pas',
  UnderControlUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\UnderControlUnit.pas',
  MainOptions_Form in 'View\MainOptions_Form.pas',
  PrimBaseSearchInterfaces in 'Search\PrimBaseSearchInterfaces.pas',
  bsTypes in 'Model\bsTypes.pas'
  {$If defined(vcmUseProfilers)}
  ,
  ProfilersInterfaces in 'Model\ProfilersInterfaces.pas'
  {$IfEnd} //vcmUseProfilers
  ,
  nsManagers in 'Data\Common\nsManagers.pas',
  FiltersUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\FiltersUnit.pas',
  nsFiltersInterfaces in 'Filters\nsFiltersInterfaces.pas',
  nsFiltersNode in 'Filters\nsFiltersNode.pas',
  nsFiltersListenersList in 'Filters\nsFiltersListenersList.pas',
  nsFiltersListenersManagerPrim in 'Filters\nsFiltersListenersManagerPrim.pas',
  nsFiltersListenersDocManager in 'Filters\nsFiltersListenersDocManager.pas',
  nsFiltersListenersDrugsManager in 'Filters\nsFiltersListenersDrugsManager.pas',
  eeTreeMisc in 'w:\common\components\gui\Garant\Everest_Engine\eeTreeMisc.pas',
  nsTreeUtils in 'Data\Tree\nsTreeUtils.pas',
  nsFiltersRootNode in 'Filters\nsFiltersRootNode.pas',
  nsFiltersTree in 'Filters\nsFiltersTree.pas',
  nsFiltersContainerPrim in 'Filters\nsFiltersContainerPrim.pas',
  nsFiltersContainer in 'Filters\nsFiltersContainer.pas',
  nsBaseSearcher in 'Search\nsBaseSearcher.pas',
  InsContextSearchHistoryNotifierList in 'View\InsContextSearchHistoryNotifierList.pas',
  nsDocumentContextHistoryPrim in 'View\nsDocumentContextHistoryPrim.pas',
  nsDocumentContextHistory in 'View\nsDocumentContextHistory.pas',
  nsInpharmContextHistoryPrim in 'View\nsInpharmContextHistoryPrim.pas',
  nsInpharmContextHistory in 'View\nsInpharmContextHistory.pas',
  nsContextHistory in 'View\nsContextHistory.pas',
  MemoryUsage_ut_MemoryUsage_UserType in 'View\MemoryUsage_ut_MemoryUsage_UserType.pas',
  kw_Form_MemoryUsage in 'View\kw_Form_MemoryUsage.pas',
  MemoryUsage_Form in 'View\MemoryUsage_Form.pas' {MemoryUsageForm: TvcmEntityForm},
  l3AsincMessageWindowRes in 'w:\common\components\rtl\Garant\L3\l3AsincMessageWindowRes.pas',
  l3AsincMessageWindow in 'w:\common\components\rtl\Garant\L3\l3AsincMessageWindow.pas',
  vtRemindersList in 'w:\common\components\gui\Garant\VT\vtRemindersList.pas',
  abssubtree in 'w:\common\components\gui\Garant\VT\ComboTree\abssubtree.pas',
  vtDateEdit in 'w:\common\components\gui\Garant\VT\vtDateEdit.pas',
  vtRemindersLine in 'w:\common\components\gui\Garant\VT\vtRemindersLine.pas',
  afwDockingInterfaces in 'w:\common\components\gui\Garant\AFW\afwDockingInterfaces.pas',
  vtRemindersLineModelPart in 'w:\common\components\gui\Garant\VT\vtRemindersLineModelPart.pas'
  {$If defined(Nemesis)}
  ,
  nscRemindersLine in 'w:\common\components\gui\Garant\Nemesis\nscRemindersLine.pas'
  {$IfEnd} //Nemesis
  ,
  MainWithReminders_Form in 'View\MainWithReminders_Form.pas',
  IntegrationProjectUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\IntegrationProjectUnit.pas',
  HelpIntfs {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\HelpIntfs.pas' {$EndIf},
  vtVerInf in 'w:\common\components\gui\Garant\VT\vtVerInf.pas',
  nsConfiguration in 'View\nsConfiguration.pas',
  nsIntegerValueMapFactory in 'Data\Common\nsIntegerValueMapFactory.pas',
  nsStringValueMapFactoryRes in 'Data\Common\nsStringValueMapFactoryRes.pas',
  nsStringValueMapFactory in 'Data\Common\nsStringValueMapFactory.pas',
  nsValueMaps in 'Data\Common\nsValueMaps.pas',
  nsValueMapsIDs in 'Data\Common\nsValueMapsIDs.pas',
  Main_Form in 'View\Main_Form.pas',
  MainWindow_Form in 'View\MainWindow_Form.pas' {nsMainWindow: TvcmMainForm},
  vtCustomPreviewPanel in 'w:\common\components\gui\Garant\VT\vtCustomPreviewPanel.pas',
  eePreviewPanel in 'w:\common\components\gui\Garant\Everest_Engine\eePreviewPanel.pas'
  {$If defined(Nemesis)}
  ,
  nscPreviewPanel in 'w:\common\components\gui\Garant\Nemesis\nscPreviewPanel.pas'
  {$IfEnd} //Nemesis
  ,
  PrimPreview_utPrintPreview_UserType in 'View\Search\Forms\PrimPreview_utPrintPreview_UserType.pas',
  nsTrialSupport in 'View\nsTrialSupport.pas',
  PrimPreview_Form in 'View\Search\Forms\PrimPreview_Form.pas',
  Search_FormDefinitions_Controls in 'View\Search_FormDefinitions_Controls.pas',
  vtComboBoxQS in 'w:\common\components\gui\Garant\VT\vtComboBoxQS.pas',
  PrimPrintDialog_Form in 'View\Search\Forms\PrimPrintDialog_Form.pas',
  vtSpinEdit in 'w:\common\components\gui\Garant\VT\vtSpinEdit.pas',
  eeButton in 'w:\common\components\gui\Garant\VT\eeButton.pas',
  PreviewInterfaces in 'Model\PreviewInterfaces.pas',
  l3RangeManager in 'w:\common\components\rtl\Garant\L3\l3RangeManager.pas',
  PrimPrintDialogOptions_Form in 'View\Search\Forms\PrimPrintDialogOptions_Form.pas',
  evTunedEditor in 'w:\common\components\gui\Garant\Everest\evTunedEditor.pas',
  evEditor in 'w:\common\components\gui\Garant\Everest\evEditor.pas',
  evQueryCardEditorHotSpot in 'w:\common\components\gui\Garant\Everest\evQueryCardEditorHotSpot.pas',
  evQueryCardSelection in 'w:\common\components\gui\Garant\Everest\evQueryCardSelection.pas',
  evQueryCardEditor in 'w:\common\components\gui\Garant\Everest\evQueryCardEditor.pas',
  QueryCardInterfaces in 'Search\QueryCardInterfaces.pas',
  PrimQueryCard_utqcAttributeSearch_UserType in 'View\Search\Forms\PrimQueryCard_utqcAttributeSearch_UserType.pas',
  PrimQueryCard_utqcPostingOrder_UserType in 'View\Search\Forms\PrimQueryCard_utqcPostingOrder_UserType.pas',
  PrimQueryCard_utqcLegislationReview_UserType in 'View\Search\Forms\PrimQueryCard_utqcLegislationReview_UserType.pas',
  PrimQueryCard_utqcSendConsultation_UserType in 'View\Search\Forms\PrimQueryCard_utqcSendConsultation_UserType.pas',
  PrimQueryCard_utqcInpharmSearch_UserType in 'View\Search\Forms\PrimQueryCard_utqcInpharmSearch_UserType.pas',
  nsDocumentPreview in 'Search\nsDocumentPreview.pas',
  evStreamedDataObject in 'w:\common\components\gui\Garant\Everest\evStreamedDataObject.pas',
  evReaderDataObject in 'w:\common\components\gui\Garant\Everest\evReaderDataObject.pas',
  evEvdDataObject in 'w:\common\components\gui\Garant\Everest\evEvdDataObject.pas',
  PrimeUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\PrimeUnit.pas'
  {$If defined(Monitorings) AND not defined(Admin)}
  ,
  PrimeDomainInterfaces in 'View\PrimeDomainInterfaces.pas'
  {$IfEnd} //Monitorings AND not Admin
  
  {$If defined(Monitorings) AND not defined(Admin)}
  ,
  nsPrimeNode in 'View\Search\nsPrimeNode.pas'
  {$IfEnd} //Monitorings AND not Admin
  
  {$If defined(Monitorings) AND not defined(Admin)}
  ,
  nsPostingsLine in 'View\Search\nsPostingsLine.pas'
  {$IfEnd} //Monitorings AND not Admin
  
  {$If defined(Monitorings) AND not defined(Admin)}
  ,
  nsPostingsTreeSingle in 'View\Search\nsPostingsTreeSingle.pas'
  {$IfEnd} //Monitorings AND not Admin
  ,
  nsHAFPainter in 'Search\nsHAFPainter.pas',
  nsFixedHAFMacroReplacer in 'Search\nsFixedHAFMacroReplacer.pas',
  eeProcessor in 'w:\common\components\gui\Garant\Everest_Engine\eeProcessor.pas',
  eeDocumentPartGenerator in 'w:\common\components\gui\Garant\Everest_Engine\eeDocumentPartGenerator.pas',
  eeSubExport in 'w:\common\components\gui\Garant\Everest_Engine\eeSubExport.pas',
  eeDocumentContainerPrim in 'w:\common\components\gui\Garant\Everest_Engine\eeDocumentContainerPrim.pas',
  evCommentParaDecorator in 'w:\common\components\gui\Garant\Everest\evCommentParaDecorator.pas',
  evLeafParaDecorationsHolderEliminator in 'w:\common\components\gui\Garant\EverestCommon\evLeafParaDecorationsHolderEliminator.pas',
  evBlocksEliminator in 'w:\common\components\gui\Garant\EverestCommon\evBlocksEliminator.pas',
  evdBufferedFilter in 'w:\common\components\rtl\Garant\EVD\evdBufferedFilter.pas',
  evUserCommentFilter in 'w:\common\components\gui\Garant\Everest\evUserCommentFilter.pas',
  evCommentDecorator in 'w:\common\components\gui\Garant\Everest\evCommentDecorator.pas',
  evNestedDocumentEliminator in 'w:\common\components\gui\Garant\Everest\evNestedDocumentEliminator.pas',
  evCommentParaAdder in 'w:\common\components\gui\Garant\Everest\evCommentParaAdder.pas',
  evPageBreakEliminator in 'w:\common\components\gui\Garant\Everest\evPageBreakEliminator.pas',
  evControlParaFilter in 'w:\common\components\gui\Garant\Everest\evControlParaFilter.pas',
  evBlocksButNotCommentsEliminator in 'w:\common\components\gui\Garant\Everest\evBlocksButNotCommentsEliminator.pas',
  evStrictContentsElementEliminator in 'w:\common\components\gui\Garant\EverestCommon\evStrictContentsElementEliminator.pas',
  eeDocumentContainer in 'w:\common\components\gui\Garant\Everest_Engine\eeDocumentContainer.pas',
  ComObj {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\ComObj.pas' {$EndIf},
  evQueryCardDropControlsInt in 'w:\common\components\gui\Garant\Everest\qf\evQueryCardDropControlsInt.pas',
  evCustomControlTool in 'w:\common\components\gui\Garant\Everest\qf\evCustomControlTool.pas',
  evQueryGroupList in 'w:\common\components\gui\Garant\Everest\qf\evQueryGroupList.pas',
  evReqList in 'w:\common\components\gui\Garant\Everest\qf\evReqList.pas',
  evDescriptionReqList in 'w:\common\components\gui\Garant\Everest\qf\evDescriptionReqList.pas',
  evEditorControlList in 'w:\common\components\gui\Garant\Everest\qf\evEditorControlList.pas',
  evEditorControlFieldList in 'w:\common\components\gui\Garant\Everest\qf\evEditorControlFieldList.pas',
  evControl in 'w:\common\components\gui\Garant\Everest\qf\evControl.pas',
  evQueryCardConst in 'w:\common\components\gui\Garant\Everest\qf\evQueryCardConst.pas',
  evButtonControl in 'w:\common\components\gui\Garant\Everest\qf\evButtonControl.pas',
  evEditControl in 'w:\common\components\gui\Garant\Everest\qf\evEditControl.pas',
  evDropControl in 'w:\common\components\gui\Garant\Everest\qf\evDropControl.pas',
  evDropCalendarControl in 'w:\common\components\gui\Garant\Everest\qf\evDropCalendarControl.pas',
  evDropCombo in 'w:\common\components\gui\Garant\Everest\qf\evDropCombo.pas',
  evLabel in 'w:\common\components\gui\Garant\Everest\qf\evLabel.pas',
  evSimpleEdit in 'w:\common\components\gui\Garant\Everest\qf\evSimpleEdit.pas',
  evMemoEdit in 'w:\common\components\gui\Garant\Everest\qf\evMemoEdit.pas',
  evEmailEdit in 'w:\common\components\gui\Garant\Everest\qf\evEmailEdit.pas',
  evPhoneEdit in 'w:\common\components\gui\Garant\Everest\qf\evPhoneEdit.pas',
  evTableImplementation in 'w:\common\components\gui\Garant\Everest\evTableImplementation.pas',
  evReq in 'w:\common\components\gui\Garant\Everest\qf\evReq.pas',
  evDescriptionReq in 'w:\common\components\gui\Garant\Everest\qf\evDescriptionReq.pas',
  evControlGroup in 'w:\common\components\gui\Garant\Everest\qf\evControlGroup.pas',
  evControlContainer in 'w:\common\components\gui\Garant\Everest\qf\evControlContainer.pas',
  evDropTree in 'w:\common\components\gui\Garant\Everest\qf\evDropTree.pas',
  evDropCalendar in 'w:\common\components\gui\Garant\Everest\qf\evDropCalendar.pas',
  evControlContainerEX in 'w:\common\components\gui\Garant\Everest\qf\evControlContainerEX.pas',
  PrimQueryCard_Form in 'View\Search\Forms\PrimQueryCard_Form.pas',
  PrimQueryCardOptions_Form in 'View\Search\Forms\PrimQueryCardOptions_Form.pas'
  {$If defined(Nemesis)}
  ,
  nscPageControl in 'w:\common\components\gui\Garant\Nemesis\nscPageControl.pas'
  {$IfEnd} //Nemesis
  ,
  PrimPageSetup_pstNone_UserType in 'View\Search\Forms\PrimPageSetup_pstNone_UserType.pas',
  nsPageSetup in 'View\nsPageSetup.pas',
  PrimPageSetup_Form in 'View\Search\Forms\PrimPageSetup_Form.pas',
  evHAFPainterMacros in 'w:\common\components\gui\Garant\Everest\evHAFPainterMacros.pas',
  PrimPageSetupOptions_Form in 'View\Search\Forms\PrimPageSetupOptions_Form.pas',
  PrimSaveLoadUserTypes_slqtKW_UserType in 'View\Search\Forms\PrimSaveLoadUserTypes_slqtKW_UserType.pas',
  PrimSaveLoadUserTypes_slqtOldKW_UserType in 'View\Search\Forms\PrimSaveLoadUserTypes_slqtOldKW_UserType.pas',
  PrimSaveLoadUserTypes_slqtPublishSource_UserType in 'View\Search\Forms\PrimSaveLoadUserTypes_slqtPublishSource_UserType.pas',
  PrimSaveLoadUserTypes_slqtFilters_UserType in 'View\Search\Forms\PrimSaveLoadUserTypes_slqtFilters_UserType.pas',
  PrimSaveLoadUserTypes_slqtLegislationReview_UserType in 'View\Search\Forms\PrimSaveLoadUserTypes_slqtLegislationReview_UserType.pas',
  PrimSaveLoadUserTypes_slqtPostingOrder_UserType in 'View\Search\Forms\PrimSaveLoadUserTypes_slqtPostingOrder_UserType.pas',
  PrimSaveLoadUserTypes_slqtConsult_UserType in 'View\Search\Forms\PrimSaveLoadUserTypes_slqtConsult_UserType.pas',
  PrimSaveLoadUserTypes_slqtInpharmSearch_UserType in 'View\Search\Forms\PrimSaveLoadUserTypes_slqtInpharmSearch_UserType.pas',
  PrimSaveLoadUserTypes_slqtAttribute_UserType in 'View\Search\Forms\PrimSaveLoadUserTypes_slqtAttribute_UserType.pas',
  SimpleListInterfaces in 'List\SimpleListInterfaces.pas'
  {$If not defined(NoVCM)}
  ,
  vcmItems in 'w:\common\components\gui\Garant\VCM\implementation\vcmItems.pas'
  {$IfEnd} //not NoVCM
  ,
  PrimWorkJournalInterfaces in 'Search\PrimWorkJournalInterfaces.pas',
  PrimPrimListInterfaces in 'Search\PrimPrimListInterfaces.pas',
  ConsultingUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\ConsultingUnit.pas',
  nsFolders in 'Data\Common\nsFolders.pas',
  nsbQueryUtils in 'View\Search\nsbQueryUtils.pas',
  PrimSaveLoad_Form in 'View\Search\Forms\PrimSaveLoad_Form.pas',
  PrimSaveLoadOptions_Form in 'View\Search\Forms\PrimSaveLoadOptions_Form.pas',
  PrimSaveLoadOptionsWithUserTypes_Form in 'View\Search\Forms\PrimSaveLoadOptionsWithUserTypes_Form.pas',
  SaveLoad_Form in 'View\Search\Forms\SaveLoad_Form.pas' {cfSaveLoad: TvcmEntityForm},
  evQueryCardProcessor in 'w:\common\components\gui\Garant\Everest\qf\evQueryCardProcessor.pas',
  evControlGenerator in 'w:\common\components\gui\Garant\Everest\qf\evControlGenerator.pas',
  evQueryDocumentContainer in 'w:\common\components\gui\Garant\Everest\qf\evQueryDocumentContainer.pas',
  nsAttributeTreeStruct in 'Data\Search\nsAttributeTreeStruct.pas',
  nsSearchClasses in 'QueryCardProcessing\nsSearchClasses.pas',
  f1QueryDocumentContainer in 'QueryCardProcessing\f1QueryDocumentContainer.pas',
  QueryCard_Form in 'View\Search\Forms\QueryCard_Form.pas' {enQueryCard: TvcmEntityForm},
  Preview_Form in 'View\Search\Forms\Preview_Form.pas' {efPreviewForm: TvcmEntityForm},
  PageSetup_Form in 'View\Search\Forms\PageSetup_Form.pas' {en_PageSetup: TvcmEntityForm},
  PrintDialog_ut_PrintDialog_UserType in 'View\Search\Forms\PrintDialog_ut_PrintDialog_UserType.pas',
  PrintDialog_Form in 'View\Search\Forms\PrintDialog_Form.pas' {en_PrintDialog: TvcmEntityForm},
  CommonSearch_Module in 'View\Search\CommonSearch_Module.pas',
  moCommonSearch in 'View\Search\moCommonSearch.pas' {mo_CommonSearch: TvcmModule},
  ShellAndMonitoringsRes in 'View\ShellAndMonitoringsRes.pas',
  MedicMainMenuRes in 'View\MedicMainMenuRes.pas' {dmMedicMainMenuRes: TDataModule},
  MainMenuNewRes in 'View\MainMenuNewRes.pas' {dmMainMenuNew: TDataModule},
  nsHooks in 'View\nsHooks.pas',
  PrimNemesisRes in 'View\PrimNemesisRes.pas',
  EditionsInterfaces in 'Editions\EditionsInterfaces.pas',
  evSubWaiter in 'w:\common\components\gui\Garant\Everest\new\evSubWaiter.pas',
  Base_Operations_Editions_Controls in 'View\Base_Operations_Editions_Controls.pas',
  CompareEditions_Controls in 'View\CompareEditions_Controls.pas',
  DocumentRes in 'Business\Document\DocumentRes.pas' {nsDocumentRes: TDataModule},
  ExternalOperationUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\ExternalOperationUnit.pas',
  NavigationInterfaces in 'View\NavigationInterfaces.pas',
  bsTypesNew in 'Model\bsTypesNew.pas',
  DocumentDomainInterfaces in 'Model\DocumentDomainInterfaces.pas',
  l3EtalonsWorking in 'w:\common\components\rtl\Garant\L3\l3EtalonsWorking.pas',
  bsHyperLinkProcessorPrim in 'View\bsHyperLinkProcessorPrim.pas',
  bsDocumentMissingMessage in 'Common\bsDocumentMissingMessage.pas',
  AdapterFacade in 'Model\AdapterFacade.pas',
  Base_Operations_Strange_Controls in 'View\Base_Operations_Strange_Controls.pas',
  nsExternalObjectData in 'Common\nsExternalObjectData.pas',
  nsENOIntegration in 'Data\Common\nsENOIntegration.pas',
  WarningConst in 'View\WarningConst.pas',
  nsHyperLinkProcessor in 'View\nsHyperLinkProcessor.pas',
  F1ScriptEngine in 'ScriptEngine\F1ScriptEngine.pas'
  {$If not defined(NoScripts)}
  ,
  kwStyleTableSaveToFile in 'w:\common\components\rtl\Garant\ScriptEngine\kwStyleTableSaveToFile.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStyleTableChanging in 'w:\common\components\rtl\Garant\ScriptEngine\kwStyleTableChanging.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStyleTableChanged in 'w:\common\components\rtl\Garant\ScriptEngine\kwStyleTableChanged.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaText in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaStyleName in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaStyleName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaStrA in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaStrA.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaIntA in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaIntA.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNodeText in 'w:\common\components\rtl\Garant\ScriptEngine\kwNodeText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNodeIsFirst in 'w:\common\components\rtl\Garant\ScriptEngine\kwNodeIsFirst.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNodeIsLast in 'w:\common\components\rtl\Garant\ScriptEngine\kwNodeIsLast.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNodeFlags in 'w:\common\components\rtl\Garant\ScriptEngine\kwNodeFlags.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  EditorWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\EditorWordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  VCLSupportPack in 'w:\common\components\rtl\Garant\ScriptEngine\VCLSupportPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVCM)}
  ,
  StdResPrim in 'w:\common\components\gui\Garant\VCM\implementation\StdResPrim.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwHistoryDeleteBackItem in 'w:\common\components\rtl\Garant\ScriptEngine\kwHistoryDeleteBackItem.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwVcmFindForm in 'w:\common\components\rtl\Garant\ScriptEngine\kwVcmFindForm.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  VCMSupportPack in 'w:\common\components\rtl\Garant\ScriptEngine\VCMSupportPack.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  kwROT in 'w:\common\components\rtl\Garant\ScriptEngine\kwROT.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPICK in 'w:\common\components\rtl\Garant\ScriptEngine\kwPICK.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwInvertROT in 'w:\common\components\rtl\Garant\ScriptEngine\kwInvertROT.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSWAP2 in 'w:\common\components\rtl\Garant\ScriptEngine\kwSWAP2.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwOVER2 in 'w:\common\components\rtl\Garant\ScriptEngine\kwOVER2.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDUP2 in 'w:\common\components\rtl\Garant\ScriptEngine\kwDUP2.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDROP2 in 'w:\common\components\rtl\Garant\ScriptEngine\kwDROP2.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNIP in 'w:\common\components\rtl\Garant\ScriptEngine\kwNIP.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTUCK in 'w:\common\components\rtl\Garant\ScriptEngine\kwTUCK.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwOVER in 'w:\common\components\rtl\Garant\ScriptEngine\kwOVER.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwROLL in 'w:\common\components\rtl\Garant\ScriptEngine\kwROLL.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDROP in 'w:\common\components\rtl\Garant\ScriptEngine\kwDROP.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDUP in 'w:\common\components\rtl\Garant\ScriptEngine\kwDUP.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDUPIfNotZero in 'w:\common\components\rtl\Garant\ScriptEngine\kwDUPIfNotZero.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSWAP in 'w:\common\components\rtl\Garant\ScriptEngine\kwSWAP.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNotEquals in 'w:\common\components\rtl\Garant\ScriptEngine\kwNotEquals.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGreaterThan in 'w:\common\components\rtl\Garant\ScriptEngine\kwGreaterThan.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwLessThan in 'w:\common\components\rtl\Garant\ScriptEngine\kwLessThan.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEquals in 'w:\common\components\rtl\Garant\ScriptEngine\kwEquals.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAND in 'w:\common\components\rtl\Garant\ScriptEngine\kwAND.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAdd in 'w:\common\components\rtl\Garant\ScriptEngine\kwAdd.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDec in 'w:\common\components\rtl\Garant\ScriptEngine\kwDec.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEqualZero in 'w:\common\components\rtl\Garant\ScriptEngine\kwEqualZero.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNotZero in 'w:\common\components\rtl\Garant\ScriptEngine\kwNotZero.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwOR in 'w:\common\components\rtl\Garant\ScriptEngine\kwOR.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSub in 'w:\common\components\rtl\Garant\ScriptEngine\kwSub.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNot in 'w:\common\components\rtl\Garant\ScriptEngine\kwNot.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwLessThenZero in 'w:\common\components\rtl\Garant\ScriptEngine\kwLessThenZero.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGreaterThenZero in 'w:\common\components\rtl\Garant\ScriptEngine\kwGreaterThenZero.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwInc in 'w:\common\components\rtl\Garant\ScriptEngine\kwInc.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBeginImmediate in 'w:\common\components\rtl\Garant\ScriptEngine\kwBeginImmediate.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCurrentExceptionClassName in 'w:\common\components\rtl\Garant\ScriptEngine\kwCurrentExceptionClassName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCurrentExceptionMessage in 'w:\common\components\rtl\Garant\ScriptEngine\kwCurrentExceptionMessage.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIfDef in 'w:\common\components\rtl\Garant\ScriptEngine\kwIfDef.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBitAnd in 'w:\common\components\rtl\Garant\ScriptEngine\kwBitAnd.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBitOr in 'w:\common\components\rtl\Garant\ScriptEngine\kwBitOr.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBitNot in 'w:\common\components\rtl\Garant\ScriptEngine\kwBitNot.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDIV in 'w:\common\components\rtl\Garant\ScriptEngine\kwDIV.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDiv2 in 'w:\common\components\rtl\Garant\ScriptEngine\kwDiv2.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDivizion in 'w:\common\components\rtl\Garant\ScriptEngine\kwDivizion.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMOD in 'w:\common\components\rtl\Garant\ScriptEngine\kwMOD.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMult2 in 'w:\common\components\rtl\Garant\ScriptEngine\kwMult2.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMultyDiv in 'w:\common\components\rtl\Garant\ScriptEngine\kwMultyDiv.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMultiply in 'w:\common\components\rtl\Garant\ScriptEngine\kwMultiply.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  StandartWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\StandartWordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringChar in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringChar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringReplace in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringReplace.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringReplaceFirst in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringReplaceFirst.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTextReplace in 'w:\common\components\rtl\Garant\ScriptEngine\kwTextReplace.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTextReplaceFirst in 'w:\common\components\rtl\Garant\ScriptEngine\kwTextReplaceFirst.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringLen in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringLen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringCodePage in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringCodePage.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringToChar in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringToChar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCharToString in 'w:\common\components\rtl\Garant\ScriptEngine\kwCharToString.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringToString in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringToString.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringChar in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringChar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringLen in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringLen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringCodePage in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringCodePage.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringStarts in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringStarts.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringEnds in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringEnds.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringStartsText in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringStartsText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringEndsText in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringEndsText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringShift in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringShift.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringIsNil in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringIsNil.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringInc in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringInc.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringFirstChar in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringFirstChar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStartsStr in 'w:\common\components\rtl\Garant\ScriptEngine\kwStartsStr.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringSplit in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringSplit.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStartsText in 'w:\common\components\rtl\Garant\ScriptEngine\kwStartsText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEndsText in 'w:\common\components\rtl\Garant\ScriptEngine\kwEndsText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEndsStr in 'w:\common\components\rtl\Garant\ScriptEngine\kwEndsStr.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCat in 'w:\common\components\rtl\Garant\ScriptEngine\kwCat.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStrToInt in 'w:\common\components\rtl\Garant\ScriptEngine\kwStrToInt.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSameStr in 'w:\common\components\rtl\Garant\ScriptEngine\kwSameStr.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSameText in 'w:\common\components\rtl\Garant\ScriptEngine\kwSameText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompareStr in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompareStr.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompareText in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompareText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWStringVarInc in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWStringVarInc.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringVarInc in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringVarInc.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWStringShift in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWStringShift.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringVarShift in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringVarShift.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWStringVarPushCharAndInc in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWStringVarPushCharAndInc.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringVarPushCharAndInc in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringVarPushCharAndInc.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCharDupe in 'w:\common\components\rtl\Garant\ScriptEngine\kwCharDupe.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringHasAnyOf in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringHasAnyOf.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringConsistsOf in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringConsistsOf.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringHasAnyOf in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringHasAnyOf.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringConsistsOf in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringConsistsOf.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWStringVarDecLen in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWStringVarDecLen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringVarDecLen in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringVarDecLen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWStringVarSplitTo in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWStringVarSplitTo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringVarSplitTo in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringVarSplitTo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStringVarInc in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStringVarInc.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringVarInc in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringVarInc.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStringVarShift in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStringVarShift.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringVarShift in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringVarShift.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStringVarDecLen in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStringVarDecLen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringVarDecLen in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringVarDecLen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStringVarSplitTo in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStringVarSplitTo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringVarSplitTo in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringVarSplitTo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledWStringVarRSplitTo in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledWStringVarRSplitTo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWStringVarRSplitTo in 'w:\common\components\rtl\Garant\ScriptEngine\kwWStringVarRSplitTo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStringVarRSplitTo in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStringVarRSplitTo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringVarRSplitTo in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringVarRSplitTo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringPos in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringPos.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringPosEx in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringPosEx.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwStringWords in 'w:\common\components\rtl\Garant\ScriptEngine\tfwStringWords.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBREAK in 'w:\common\components\rtl\Garant\ScriptEngine\kwBREAK.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCONTINUE in 'w:\common\components\rtl\Garant\ScriptEngine\kwCONTINUE.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwEXIT in 'w:\common\components\rtl\Garant\ScriptEngine\kwEXIT.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwHALT in 'w:\common\components\rtl\Garant\ScriptEngine\kwHALT.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBREAKITERATOR in 'w:\common\components\rtl\Garant\ScriptEngine\kwBREAKITERATOR.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  seModalWorker in 'w:\common\components\rtl\Garant\ScriptEngine\seModalWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  seModalWorkerListPrim in 'w:\common\components\rtl\Garant\ScriptEngine\seModalWorkerListPrim.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  seModalWorkerList in 'w:\common\components\rtl\Garant\ScriptEngine\seModalWorkerList.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  seModalSupport in 'w:\common\components\rtl\Garant\ScriptEngine\seModalSupport.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledModal in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledModal.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMODAL in 'w:\common\components\rtl\Garant\ScriptEngine\kwMODAL.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledThread in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledThread.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTHREAD in 'w:\common\components\rtl\Garant\ScriptEngine\kwTHREAD.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  CodeFlowWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\CodeFlowWordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWordPtrWorker in 'w:\common\components\rtl\Garant\ScriptEngine\kwWordPtrWorker.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWordPtrPushWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwWordPtrPushWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompilingWordSelf in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompilingWordSelf.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopWordParent in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopWordParent.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopWordProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopWordProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopWordName in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopWordName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNotImplemented in 'w:\common\components\rtl\Garant\ScriptEngine\kwNotImplemented.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopWordPublicateInMainDictionary in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopWordPublicateInMainDictionary.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwINHERITED in 'w:\common\components\rtl\Garant\ScriptEngine\kwINHERITED.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPublicateWordDefiningNowInMainDictionary in 'w:\common\components\rtl\Garant\ScriptEngine\kwPublicateWordDefiningNowInMainDictionary.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFORWARD in 'w:\common\components\rtl\Garant\ScriptEngine\kwFORWARD.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCtxPushCompiler in 'w:\common\components\rtl\Garant\ScriptEngine\kwCtxPushCompiler.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCtxPushFinder in 'w:\common\components\rtl\Garant\ScriptEngine\kwCtxPushFinder.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopCompilerSetToCtx in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopCompilerSetToCtx.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFinderSetToCtx in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFinderSetToCtx.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  CompilationPack in 'w:\common\components\rtl\Garant\ScriptEngine\CompilationPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStereotypedWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStereotypedWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledClassProducerEx in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledClassProducerEx.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwClassCompiler in 'w:\common\components\rtl\Garant\ScriptEngine\kwClassCompiler.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStereotypeProducerPrim in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStereotypeProducerPrim.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStereotypeProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStereotypeProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStereotypeProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwStereotypeProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwImmedCompiledStereotypedStereotypedWordRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwImmedCompiledStereotypedStereotypedWordRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwImmedCompiledStereotypedStereotypedWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwImmedCompiledStereotypedStereotypedWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwImmedCompiledStereotypedWordRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwImmedCompiledStereotypedWordRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwImmedCompiledStereotypedWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwImmedCompiledStereotypedWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStereotypeStereotypeProducerRunner in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStereotypeStereotypeProducerRunner.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledStereotypeStereotypeProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledStereotypeStereotypeProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStereotypeStereotypeProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwStereotypeStereotypeProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  StereotypingPack in 'w:\common\components\rtl\Garant\ScriptEngine\StereotypingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAGGREGATION in 'w:\common\components\rtl\Garant\ScriptEngine\kwAGGREGATION.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwREFERENCE in 'w:\common\components\rtl\Garant\ScriptEngine\kwREFERENCE.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwLINK in 'w:\common\components\rtl\Garant\ScriptEngine\kwLINK.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwREDEFINEABLE in 'w:\common\components\rtl\Garant\ScriptEngine\kwREDEFINEABLE.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSEALED in 'w:\common\components\rtl\Garant\ScriptEngine\kwSEALED.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFILE in 'w:\common\components\rtl\Garant\ScriptEngine\kwFILE.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCHAR in 'w:\common\components\rtl\Garant\ScriptEngine\kwCHAR.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWSTRING in 'w:\common\components\rtl\Garant\ScriptEngine\kwWSTRING.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwVIRTUAL in 'w:\common\components\rtl\Garant\ScriptEngine\kwVIRTUAL.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStringModifier in 'w:\common\components\rtl\Garant\ScriptEngine\kwStringModifier.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPrivateModifier in 'w:\common\components\rtl\Garant\ScriptEngine\kwPrivateModifier.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFINAL in 'w:\common\components\rtl\Garant\ScriptEngine\kwFINAL.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwObjectModifier in 'w:\common\components\rtl\Garant\ScriptEngine\kwObjectModifier.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwBOOLEAN in 'w:\common\components\rtl\Garant\ScriptEngine\kwBOOLEAN.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwInterfaceModifier in 'w:\common\components\rtl\Garant\ScriptEngine\kwInterfaceModifier.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwABSTRACT in 'w:\common\components\rtl\Garant\ScriptEngine\kwABSTRACT.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIntegerModifier in 'w:\common\components\rtl\Garant\ScriptEngine\kwIntegerModifier.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwArrayModifier in 'w:\common\components\rtl\Garant\ScriptEngine\kwArrayModifier.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwOVERRIDE in 'w:\common\components\rtl\Garant\ScriptEngine\kwOVERRIDE.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPROTECTED in 'w:\common\components\rtl\Garant\ScriptEngine\kwPROTECTED.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPUBLIC in 'w:\common\components\rtl\Garant\ScriptEngine\kwPUBLIC.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwREALIZE in 'w:\common\components\rtl\Garant\ScriptEngine\kwREALIZE.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwREDEFINITION in 'w:\common\components\rtl\Garant\ScriptEngine\kwREDEFINITION.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSUMMONED in 'w:\common\components\rtl\Garant\ScriptEngine\kwSUMMONED.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCLASS in 'w:\common\components\rtl\Garant\ScriptEngine\kwCLASS.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  ModifiersPack in 'w:\common\components\rtl\Garant\ScriptEngine\ModifiersPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFalse in 'w:\common\components\rtl\Garant\ScriptEngine\kwFalse.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTrue in 'w:\common\components\rtl\Garant\ScriptEngine\kwTrue.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwHelp in 'w:\common\components\rtl\Garant\ScriptEngine\kwHelp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMsg in 'w:\common\components\rtl\Garant\ScriptEngine\kwMsg.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPrint in 'w:\common\components\rtl\Garant\ScriptEngine\kwPrint.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledDeclared in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledDeclared.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDeclared in 'w:\common\components\rtl\Garant\ScriptEngine\kwDeclared.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  BasicsPack in 'w:\common\components\rtl\Garant\ScriptEngine\BasicsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNewWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwNewWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledFunction in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledFunction.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFUNCTION in 'w:\common\components\rtl\Garant\ScriptEngine\kwFUNCTION.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledImmedProcedure in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledImmedProcedure.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNewImmedWord in 'w:\common\components\rtl\Garant\ScriptEngine\kwNewImmedWord.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  WordsDefinitionPack in 'w:\common\components\rtl\Garant\ScriptEngine\WordsDefinitionPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledVarProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledVarProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwInitedCompiledVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwInitedCompiledVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledInitableVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledInitableVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledInitedVarProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledInitedVarProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwInitedVarProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwInitedVarProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwVarProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwVarProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledNamedInitedVarProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledNamedInitedVarProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNamedInitedVarProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwNamedInitedVarProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledAutolinkProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledAutolinkProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAutolinkProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwAutolinkProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledNamedAutolinkProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledNamedAutolinkProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwNamedAutolinkProducer in 'w:\common\components\rtl\Garant\ScriptEngine\kwNamedAutolinkProducer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  VarProducingPack in 'w:\common\components\rtl\Garant\ScriptEngine\VarProducingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIncluded in 'w:\common\components\rtl\Garant\ScriptEngine\kwIncluded.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwInclude in 'w:\common\components\rtl\Garant\ScriptEngine\kwInclude.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwUses in 'w:\common\components\rtl\Garant\ScriptEngine\kwUses.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwInnerIncluded in 'w:\common\components\rtl\Garant\ScriptEngine\kwInnerIncluded.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwINCLUDES in 'w:\common\components\rtl\Garant\ScriptEngine\kwINCLUDES.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwInnerIncludedInChildren in 'w:\common\components\rtl\Garant\ScriptEngine\kwInnerIncludedInChildren.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIncludesInChildren in 'w:\common\components\rtl\Garant\ScriptEngine\kwIncludesInChildren.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  IncludesAndUsesPack in 'w:\common\components\rtl\Garant\ScriptEngine\IncludesAndUsesPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledCheckVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledCheckVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCheckVar in 'w:\common\components\rtl\Garant\ScriptEngine\kwCheckVar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledFindMember in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledFindMember.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFindMember in 'w:\common\components\rtl\Garant\ScriptEngine\kwFindMember.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledMembersPath in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledMembersPath.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGetMember in 'w:\common\components\rtl\Garant\ScriptEngine\kwGetMember.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledIterateMembers in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledIterateMembers.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIterateMembers in 'w:\common\components\rtl\Garant\ScriptEngine\kwIterateMembers.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledIterateCode in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledIterateCode.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIterateCode in 'w:\common\components\rtl\Garant\ScriptEngine\kwIterateCode.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  MembersWorkingPack in 'w:\common\components\rtl\Garant\ScriptEngine\MembersWorkingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsArray in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsArray.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsVoid in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsVoid.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwToPrintable in 'w:\common\components\rtl\Garant\ScriptEngine\kwToPrintable.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsBracket in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsBracket.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsChar in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsChar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsObj in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsObj.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsIntf in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsIntf.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsString in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsString.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsInt in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsInt.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsWString in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsWString.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsClass in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsClass.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  TypeCheckingPack in 'w:\common\components\rtl\Garant\ScriptEngine\TypeCheckingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetShowDocumentParts in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetShowDocumentParts.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSetShowDocumentParts in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSetShowDocumentParts.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSelectCells in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSelectCells.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorNextHyperlink in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorNextHyperlink.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorPrevHyperlink in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorPrevHyperlink.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorScrollBottom in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorScrollBottom.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorScrollTo in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorScrollTo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorWheelScroll in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorWheelScroll.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSelectColumn in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSelectColumn.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSelectCellsVertical in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSelectCellsVertical.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorMergeTablesWithTimer in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorMergeTablesWithTimer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorMergeCells in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorMergeCells.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorJumpToHyperlink in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorJumpToHyperlink.pas'
  {$IfEnd} //not NoScripts
  ,
  l3FrameLine in 'w:\common\components\rtl\Garant\L3\l3FrameLine.pas',
  l3FrameLineList in 'w:\common\components\rtl\Garant\L3\l3FrameLineList.pas',
  l3InterfacedIntegerList in 'w:\common\components\rtl\Garant\L3\l3InterfacedIntegerList.pas',
  l3CoordinateMap in 'w:\common\components\rtl\Garant\L3\l3CoordinateMap.pas',
  l3FrameObject in 'w:\common\components\rtl\Garant\L3\l3FrameObject.pas',
  l3FrameLinesSpy in 'w:\common\components\rtl\Garant\L3\l3FrameLinesSpy.pas'
  {$If not defined(NoScripts)}
  ,
  kwPopEditorRepaintTableLinesAndCheckWithEtalon in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorRepaintTableLinesAndCheckWithEtalon.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorPushParaFromCursor in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorPushParaFromCursor.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorPrintAcnhor in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorPrintAcnhor.pas'
  {$IfEnd} //not NoScripts
  ,
  nevFormatInfoUtils in 'w:\common\components\gui\Garant\Everest\new\nevFormatInfoUtils.pas'
  {$If not defined(NoScripts)}
  ,
  kwPopEditorPrintTableCellsParams in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorPrintTableCellsParams.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSplitCell in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSplitCell.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorLP2DP in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorLP2DP.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorDP2LP in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorDP2LP.pas'
  {$IfEnd} //not NoScripts
  ,
  evTableSearch in 'w:\common\components\gui\Garant\EverestCommon\evTableSearch.pas'
  {$If not defined(NoScripts)}
  ,
  kwPopEditorCheckContinueCells in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorCheckContinueCells.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorDocumentTailVisible in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorDocumentTailVisible.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSetDrawSpecial in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSetDrawSpecial.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetDrawSpecial in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetDrawSpecial.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSetWebStyle in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSetWebStyle.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetWebStyle in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetWebStyle.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetLeftIndentDelta in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetLeftIndentDelta.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetDrawLines in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetDrawLines.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSetDrawLines in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSetDrawLines.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorScrollLineUp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorScrollLineUp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorScrollLineDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorScrollLineDown.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorParaDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorParaDown.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorParaUp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorParaUp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorAtTop in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorAtTop.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorParaEnd in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorParaEnd.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorParaHome in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorParaHome.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSelectTable in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSelectTable.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSelectAll in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSelectAll.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSelectPara in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSelectPara.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorHasComment in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorHasComment.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorDeleteUserComment in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorDeleteUserComment.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorCurrentText in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorCurrentText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorUpdateCursorFromHotSpot in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorUpdateCursorFromHotSpot.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorUpdateCursorFromHotSpotEx in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorUpdateCursorFromHotSpotEx.pas'
  {$IfEnd} //not NoScripts
  ,
  evdMarkEliminator in 'w:\common\components\rtl\Garant\EVD\evdMarkEliminator.pas',
  evdDocumentMarksEliminator in 'w:\common\components\rtl\Garant\EVD\evdDocumentMarksEliminator.pas',
  evdDocumentBookmarksEliminator in 'w:\common\components\rtl\Garant\EVD\evdDocumentBookmarksEliminator.pas',
  evdDocumentSubsEliminator in 'w:\common\components\rtl\Garant\EVD\evdDocumentSubsEliminator.pas',
  evDocumentSubsChildrenCountEliminator in 'w:\common\components\gui\Garant\EverestCommon\evDocumentSubsChildrenCountEliminator.pas',
  evdHypelinkDocIDEliminator in 'w:\common\components\rtl\Garant\EVD\evdHypelinkDocIDEliminator.pas',
  evdEmptySubsEliminator in 'w:\common\components\rtl\Garant\EVD\evdEmptySubsEliminator.pas'
  {$If not defined(NoScripts)}
  ,
  kwPopEditorTextToFile in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorTextToFile.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetSelectionText in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetSelectionText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetParaByID in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetParaByID.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetSelectionTextInFormat in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetSelectionTextInFormat.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorBlockResize in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorBlockResize.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSelectCellByMouse in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSelectCellByMouse.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSetTextParaStyle in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSetTextParaStyle.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorDeleteRow in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorDeleteRow.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorInsertRow in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorInsertRow.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorInsertTable in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorInsertTable.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorInsertPageBreak in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorInsertPageBreak.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSplitTable in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSplitTable.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorMergeTables in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorMergeTables.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSetCursorByPoint in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSetCursorByPoint.pas'
  {$IfEnd} //not NoScripts
  
  {$If defined(nsTest) AND not defined(NoScripts)}
  ,
  kwPopEditorRepaintAndCheckWithEtalon in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorRepaintAndCheckWithEtalon.pas'
  {$IfEnd} //nsTest AND not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorCopyAndPaste2DocumentBottom in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorCopyAndPaste2DocumentBottom.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorSetAllowRubberTables in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorSetAllowRubberTables.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetAllowRubberTables in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetAllowRubberTables.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComboTreeCurrentNode in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComboTreeCurrentNode.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorResizeTableColumn in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorResizeTableColumn.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorResizeTableColumnEX in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorResizeTableColumnEX.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledCheckWithEtalon in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledCheckWithEtalon.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorCheckWithEtalon in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorCheckWithEtalon.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetLMargin in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetLMargin.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorGetWrapLimit in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorGetWrapLimit.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorBlockResizeEX in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorBlockResizeEX.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  EditorFromStackKeyWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\EditorFromStackKeyWordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwFile in 'w:\common\components\rtl\Garant\ScriptEngine\tfwFile.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileOpenRead in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileOpenRead.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileOpenWrite in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileOpenWrite.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileReadLn in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileReadLn.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileWriteLn in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileWriteLn.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileWriteChar in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileWriteChar.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileReadWStrLn in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileReadWStrLn.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileWriteWStrLn in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileWriteWStrLn.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileWriteWStr in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileWriteWStr.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileEOF in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileEOF.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledFileReadLines in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledFileReadLines.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileReadLines in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileReadLines.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFileWriteStr in 'w:\common\components\rtl\Garant\ScriptEngine\kwFileWriteStr.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwProcessFilesWithMask in 'w:\common\components\rtl\Garant\ScriptEngine\kwProcessFilesWithMask.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwProcessSubDirs in 'w:\common\components\rtl\Garant\ScriptEngine\kwProcessSubDirs.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwRenameFile in 'w:\common\components\rtl\Garant\ScriptEngine\kwRenameFile.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDeleteFile in 'w:\common\components\rtl\Garant\ScriptEngine\kwDeleteFile.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPureDir in 'w:\common\components\rtl\Garant\ScriptEngine\kwPureDir.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDeleteFilesByMask in 'w:\common\components\rtl\Garant\ScriptEngine\kwDeleteFilesByMask.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  FileProcessingPack in 'w:\common\components\rtl\Garant\ScriptEngine\FileProcessingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledArray in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledArray.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwArray in 'w:\common\components\rtl\Garant\ScriptEngine\kwArray.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledAppendToList in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledAppendToList.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAppendToList in 'w:\common\components\rtl\Garant\ScriptEngine\kwAppendToList.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwArrayCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwArrayCount.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwArrayNew in 'w:\common\components\rtl\Garant\ScriptEngine\kwArrayNew.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledIterate in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledIterate.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIterate in 'w:\common\components\rtl\Garant\ScriptEngine\kwIterate.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledIterateBack in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledIterateBack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIterateBack in 'w:\common\components\rtl\Garant\ScriptEngine\kwIterateBack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledLPadToList in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledLPadToList.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwLPadToList in 'w:\common\components\rtl\Garant\ScriptEngine\kwLPadToList.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwOpenArray in 'w:\common\components\rtl\Garant\ScriptEngine\kwOpenArray.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCloseArray in 'w:\common\components\rtl\Garant\ScriptEngine\kwCloseArray.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwArrayClear in 'w:\common\components\rtl\Garant\ScriptEngine\kwArrayClear.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwArrayItem in 'w:\common\components\rtl\Garant\ScriptEngine\kwArrayItem.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  ArrayProcessingPack in 'w:\common\components\rtl\Garant\ScriptEngine\ArrayProcessingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSmartEquals in 'w:\common\components\rtl\Garant\ScriptEngine\kwSmartEquals.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSmartNotEquals in 'w:\common\components\rtl\Garant\ScriptEngine\kwSmartNotEquals.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCompiledRules in 'w:\common\components\rtl\Garant\ScriptEngine\kwCompiledRules.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwRULES in 'w:\common\components\rtl\Garant\ScriptEngine\kwRULES.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  ExtendedPrimitivesPack in 'w:\common\components\rtl\Garant\ScriptEngine\ExtendedPrimitivesPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIntToStr in 'w:\common\components\rtl\Garant\ScriptEngine\kwIntToStr.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSysUtilsExtractFileName in 'w:\common\components\rtl\Garant\ScriptEngine\kwSysUtilsExtractFileName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWinExec in 'w:\common\components\rtl\Garant\ScriptEngine\kwWinExec.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSysUtilsChangeFileExt in 'w:\common\components\rtl\Garant\ScriptEngine\kwSysUtilsChangeFileExt.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwScriptFileName in 'w:\common\components\rtl\Garant\ScriptEngine\kwScriptFileName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSysutilsExtractFilePath in 'w:\common\components\rtl\Garant\ScriptEngine\kwSysutilsExtractFilePath.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSysutilsExtractFileDrive in 'w:\common\components\rtl\Garant\ScriptEngine\kwSysutilsExtractFileDrive.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSysutilsForceDirectories in 'w:\common\components\rtl\Garant\ScriptEngine\kwSysutilsForceDirectories.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwClipboardClear in 'w:\common\components\rtl\Garant\ScriptEngine\kwClipboardClear.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGetLocalTime in 'w:\common\components\rtl\Garant\ScriptEngine\kwGetLocalTime.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSetLocalTime in 'w:\common\components\rtl\Garant\ScriptEngine\kwSetLocalTime.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGetLocalDate in 'w:\common\components\rtl\Garant\ScriptEngine\kwGetLocalDate.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSetLocalDate in 'w:\common\components\rtl\Garant\ScriptEngine\kwSetLocalDate.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGetLocalDateTime in 'w:\common\components\rtl\Garant\ScriptEngine\kwGetLocalDateTime.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSetLocalDateTime in 'w:\common\components\rtl\Garant\ScriptEngine\kwSetLocalDateTime.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGetTickCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwGetTickCount.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwShiftTime in 'w:\common\components\rtl\Garant\ScriptEngine\kwShiftTime.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwShiftDate in 'w:\common\components\rtl\Garant\ScriptEngine\kwShiftDate.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCFHTML in 'w:\common\components\rtl\Garant\ScriptEngine\kwCFHTML.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCFXML in 'w:\common\components\rtl\Garant\ScriptEngine\kwCFXML.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwClipboardGetFormattedText in 'w:\common\components\rtl\Garant\ScriptEngine\kwClipboardGetFormattedText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSysutilsFileExists in 'w:\common\components\rtl\Garant\ScriptEngine\kwSysutilsFileExists.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSysutilsDirectoryExists in 'w:\common\components\rtl\Garant\ScriptEngine\kwSysutilsDirectoryExists.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwRGB2String in 'w:\common\components\rtl\Garant\ScriptEngine\kwRGB2String.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwClipboardSetText in 'w:\common\components\rtl\Garant\ScriptEngine\kwClipboardSetText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCFEVEREST in 'w:\common\components\rtl\Garant\ScriptEngine\kwCFEVEREST.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwRandom in 'w:\common\components\rtl\Garant\ScriptEngine\kwRandom.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwRandomize in 'w:\common\components\rtl\Garant\ScriptEngine\kwRandomize.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSetRandSeed in 'w:\common\components\rtl\Garant\ScriptEngine\kwSetRandSeed.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStartTimer in 'w:\common\components\rtl\Garant\ScriptEngine\kwStartTimer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStopTimer in 'w:\common\components\rtl\Garant\ScriptEngine\kwStopTimer.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwStopTimerEx in 'w:\common\components\rtl\Garant\ScriptEngine\kwStopTimerEx.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwApplicationActionIdle in 'w:\common\components\rtl\Garant\ScriptEngine\kwApplicationActionIdle.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwApplicationCancelHint in 'w:\common\components\rtl\Garant\ScriptEngine\kwApplicationCancelHint.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwApplicationIsHintVisible in 'w:\common\components\rtl\Garant\ScriptEngine\kwApplicationIsHintVisible.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwApplicationGetLastHint in 'w:\common\components\rtl\Garant\ScriptEngine\kwApplicationGetLastHint.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwComputerName in 'w:\common\components\rtl\Garant\ScriptEngine\kwComputerName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTimeToLog in 'w:\common\components\rtl\Garant\ScriptEngine\kwTimeToLog.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsUnder64 in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsUnder64.pas'
  {$IfEnd} //not NoScripts
  ,
  JclSysInfo {$IfNDef XE} in 'w:\common\components\rtl\external\JEDI\source\common\JclSysInfo.pas' {$EndIf}
  {$If not defined(NoScripts)}
  ,
  kwOSName in 'w:\common\components\rtl\Garant\ScriptEngine\kwOSName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIsXE in 'w:\common\components\rtl\Garant\ScriptEngine\kwIsXE.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  SysUtilsPack in 'w:\common\components\rtl\Garant\ScriptEngine\SysUtilsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCheckOutputWithInput in 'w:\common\components\rtl\Garant\ScriptEngine\kwCheckOutputWithInput.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCheckEtalon in 'w:\common\components\rtl\Garant\ScriptEngine\kwCheckEtalon.pas'
  {$IfEnd} //not NoScripts
  ,
  imageenio in 'w:\common\components\rtl\external\ImageEn\src\imageenio.pas'
  {$If defined(InsiderTest) AND not defined(NoScripts)}
  ,
  kwPrintDataSaver in 'w:\common\components\rtl\Garant\ScriptEngine\kwPrintDataSaver.pas'
  {$IfEnd} //InsiderTest AND not NoScripts
  
  {$If defined(nsTest) AND not defined(NoScripts)}
  ,
  kwBeginWaitPrint in 'w:\common\components\rtl\Garant\ScriptEngine\kwBeginWaitPrint.pas'
  {$IfEnd} //nsTest AND not NoScripts
  
  {$If defined(nsTest) AND not defined(NoScripts)}
  ,
  kwEndWaitPrint in 'w:\common\components\rtl\Garant\ScriptEngine\kwEndWaitPrint.pas'
  {$IfEnd} //nsTest AND not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  EtalonsWorkingPack in 'w:\common\components\rtl\Garant\ScriptEngine\EtalonsWorkingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopSpinEditGetValue in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopSpinEditGetValue.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopSpinEditSetValue in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopSpinEditSetValue.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopRadioButtonGetChecked in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopRadioButtonGetChecked.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopRadioButtonSetChecked in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopRadioButtonSetChecked.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopListerGetCurrent in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopListerGetCurrent.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopListerSelectWithShift in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopListerSelectWithShift.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopListerFooterCaption in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopListerFooterCaption.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopReminderMove in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopReminderMove.pas'
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  kwPopPageControlGetAllPageCaptions in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopPageControlGetAllPageCaptions.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  kwPopPageControlPageCaptionByIndex in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopPageControlPageCaptionByIndex.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  kwPopPageControlFindPageByCaption in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopPageControlFindPageByCaption.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  kwPopPageControlPageByIndex in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopPageControlPageByIndex.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  kwPopReminderFindEditor in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopReminderFindEditor.pas'
  {$IfEnd} //not NoScripts AND not NoVGScene
  
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  kwPopReminderIsBaloonVisible in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopReminderIsBaloonVisible.pas'
  {$IfEnd} //not NoScripts AND not NoVGScene
  
  {$If not defined(NoScripts)}
  ,
  kwPopListerGetSelected in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopListerGetSelected.pas'
  {$IfEnd} //not NoScripts
  ,
  CheckLst {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\CheckLst.pas' {$EndIf}
  {$If not defined(NoScripts)}
  ,
  kwPopCheckListBoxGetChecked in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopCheckListBoxGetChecked.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopCheckListBoxSetCheked in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopCheckListBoxSetCheked.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopCheckListBoxUncheckAll in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopCheckListBoxUncheckAll.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwVTControlsPack in 'w:\common\components\rtl\Garant\ScriptEngine\kwVTControlsPack.pas'
  {$IfEnd} //not NoScripts
  ,
  evReqIterator in 'w:\common\components\gui\Garant\Everest\evReqIterator.pas'
  {$If not defined(NoScripts)}
  ,
  kwPopQueryCardAttributeSetWithLogicOperation in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopQueryCardAttributeSetWithLogicOperation.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopQueryCardSetAttribute in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopQueryCardSetAttribute.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopQueryCardAttributeSetCollapsed in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopQueryCardAttributeSetCollapsed.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopQueryCardAttributeSetFocus in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopQueryCardAttributeSetFocus.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopQueryCardAttributeGetFocus in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopQueryCardAttributeGetFocus.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopQueryCardAttributeGetCollapsed in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopQueryCardAttributeGetCollapsed.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopQueryCardAttributeGetLogicOperation in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopQueryCardAttributeGetLogicOperation.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopQueryCardAttributeIsLogicOperationEnabled in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopQueryCardAttributeIsLogicOperationEnabled.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopQueryCardGetCurrentReqName in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopQueryCardGetCurrentReqName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  QueryCardProcessingPack in 'w:\common\components\rtl\Garant\ScriptEngine\QueryCardProcessingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwVcmDispatcherLock in 'w:\common\components\rtl\Garant\ScriptEngine\kwVcmDispatcherLock.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwVcmDispatcherUnlock in 'w:\common\components\rtl\Garant\ScriptEngine\kwVcmDispatcherUnlock.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwVcmDispatcherBeginOp in 'w:\common\components\rtl\Garant\ScriptEngine\kwVcmDispatcherBeginOp.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwVcmDispatcherEndOp in 'w:\common\components\rtl\Garant\ScriptEngine\kwVcmDispatcherEndOp.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwVcmHistoryGetBackCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwVcmHistoryGetBackCount.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwVcmHistoryGetBackItem in 'w:\common\components\rtl\Garant\ScriptEngine\kwVcmHistoryGetBackItem.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwVcmHistoryGetForwardCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwVcmHistoryGetForwardCount.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwVcmHistoryGetForwardItem in 'w:\common\components\rtl\Garant\ScriptEngine\kwVcmHistoryGetForwardItem.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  VCMWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\VCMWordsPack.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlClick in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlClick.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopTB97ButtonGetIsDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopTB97ButtonGetIsDown.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlUndock in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlUndock.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  kwPopControlFindVGControlByName in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlFindVGControlByName.pas'
  {$IfEnd} //not NoScripts AND not NoVGScene
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlCanFocus in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlCanFocus.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetControl in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetControl.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlControlCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlControlCount.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetHandle in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetHandle.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlFocused in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlFocused.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlSetFocus in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlSetFocus.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlFindControlByName in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlFindControlByName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlScreenToClient in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlScreenToClient.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlSetWidth in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlSetWidth.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetWidth in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetWidth.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetLeft in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetLeft.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetHeight in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetHeight.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetHint in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetHint.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlSetHeight in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlSetHeight.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlCaption in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlCaption.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlClientToScreen in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlClientToScreen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetTop in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetTop.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlShow in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlShow.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlHide in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlHide.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlName in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetTopParentForm in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetTopParentForm.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetAnotherParentForm in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetAnotherParentForm.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetParentForm in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetParentForm.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlVisible in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlVisible.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetMainForm in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetMainForm.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetParent in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetParent.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetPopupMenu in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetPopupMenu.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComboBoxGetItemIndex in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComboBoxGetItemIndex.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComboBoxDropDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComboBoxDropDown.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComboBoxIndexOf in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComboBoxIndexOf.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComboBoxSelectItem in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComboBoxSelectItem.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComboBoxSetIndex in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComboBoxSetIndex.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlVScrollerVisible in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlVScrollerVisible.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlHScrollerVisible in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlHScrollerVisible.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopRadioGroupSetItemIndex in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopRadioGroupSetItemIndex.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopRadioGroupGetItemIdex in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopRadioGroupGetItemIdex.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlSetTop in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlSetTop.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlSetLeft in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlSetLeft.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComponentFindComponent in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComponentFindComponent.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComponentGetComponent in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComponentGetComponent.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComponentName in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComponentName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComponentComponentCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComponentComponentCount.pas'
  {$IfEnd} //not NoScripts
  ,
  vtShockwaveFlashEx in 'w:\common\components\gui\Garant\VT\vtShockwaveFlashEx.pas'
  {$If not defined(NoScripts)}
  ,
  kwPopFlashGetFrame in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFlashGetFrame.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFocusedControlPush in 'w:\common\components\rtl\Garant\ScriptEngine\kwFocusedControlPush.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwControlMouseLeftClick in 'w:\common\components\rtl\Garant\ScriptEngine\kwControlMouseLeftClick.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwControlMouseMiddleClick in 'w:\common\components\rtl\Garant\ScriptEngine\kwControlMouseMiddleClick.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwControlMouseRightClick in 'w:\common\components\rtl\Garant\ScriptEngine\kwControlMouseRightClick.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwByhandleControlPush in 'w:\common\components\rtl\Garant\ScriptEngine\kwByhandleControlPush.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlEnabled in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlEnabled.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlMouseWheelUp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlMouseWheelUp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlMouseWheelDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlMouseWheelDown.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlInvalidate in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlInvalidate.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlRepaint in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlRepaint.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetColor in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetColor.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlSetColor in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlSetColor.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopComboBoxSaveItems in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopComboBoxSaveItems.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  RegisteringControlsClasses in 'w:\common\components\rtl\Garant\ScriptEngine\RegisteringControlsClasses.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlScrollInfoPosition in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlScrollInfoPosition.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlScrollInfoPageSize in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlScrollInfoPageSize.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlScrollInfoMax in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlScrollInfoMax.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlScrollInfoMin in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlScrollInfoMin.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlScrollInfo in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlScrollInfo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwControlMouseLeftDragAndDrop in 'w:\common\components\rtl\Garant\ScriptEngine\kwControlMouseLeftDragAndDrop.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  ControlsProcessingPack in 'w:\common\components\rtl\Garant\ScriptEngine\ControlsProcessingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaBoolA in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaBoolA.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaBoolW in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaBoolW.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaGetParent in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaGetParent.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaIntW in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaIntW.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaGetType in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaGetType.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaTypeInherits in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaTypeInherits.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwParaIsSame in 'w:\common\components\rtl\Garant\ScriptEngine\kwParaIsSame.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  CurrentEditorWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\CurrentEditorWordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWindowFromPoint in 'w:\common\components\rtl\Garant\ScriptEngine\kwWindowFromPoint.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGetForegroundWindow in 'w:\common\components\rtl\Garant\ScriptEngine\kwGetForegroundWindow.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWindowIsMine in 'w:\common\components\rtl\Garant\ScriptEngine\kwWindowIsMine.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFindWindowByCaption in 'w:\common\components\rtl\Garant\ScriptEngine\kwFindWindowByCaption.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwAskWindowToCloseItself in 'w:\common\components\rtl\Garant\ScriptEngine\kwAskWindowToCloseItself.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwCloseWindow in 'w:\common\components\rtl\Garant\ScriptEngine\kwCloseWindow.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwSetForegroundWindow in 'w:\common\components\rtl\Garant\ScriptEngine\kwSetForegroundWindow.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  IterateWindowsUtils in 'w:\common\components\rtl\Garant\ScriptEngine\IterateWindowsUtils.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIterateWindows in 'w:\common\components\rtl\Garant\ScriptEngine\kwIterateWindows.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGetWindowText in 'w:\common\components\rtl\Garant\ScriptEngine\kwGetWindowText.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGetClassName in 'w:\common\components\rtl\Garant\ScriptEngine\kwGetClassName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwIterateChildWindows in 'w:\common\components\rtl\Garant\ScriptEngine\kwIterateChildWindows.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDesktopHeight in 'w:\common\components\rtl\Garant\ScriptEngine\kwDesktopHeight.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwScreenWidth in 'w:\common\components\rtl\Garant\ScriptEngine\kwScreenWidth.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMainScreenWidth in 'w:\common\components\rtl\Garant\ScriptEngine\kwMainScreenWidth.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwDesktopWidth in 'w:\common\components\rtl\Garant\ScriptEngine\kwDesktopWidth.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwScreenHeight in 'w:\common\components\rtl\Garant\ScriptEngine\kwScreenHeight.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMainScreenHeight in 'w:\common\components\rtl\Garant\ScriptEngine\kwMainScreenHeight.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwScreenCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwScreenCount.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  WinUtilsPack in 'w:\common\components\rtl\Garant\ScriptEngine\WinUtilsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseLeftDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseLeftDown.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseLeftUp in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseLeftUp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseMiddleUp in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseMiddleUp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseMiddleDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseMiddleDown.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseRightUp in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseRightUp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseRightDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseRightDown.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseSetCursorPosition in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseSetCursorPosition.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseGetCursorIndex in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseGetCursorIndex.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseGetCursorNameByIndex in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseGetCursorNameByIndex.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseGetCursorPosition in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseGetCursorPosition.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseWheelUp in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseWheelUp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMouseWheelDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwMouseWheelDown.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  MouseInputPack in 'w:\common\components\rtl\Garant\ScriptEngine\MouseInputPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorParaCoordsToScreen in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorParaCoordsToScreen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorParaEndCoordsToScreen in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorParaEndCoordsToScreen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorParaMiddleCoordsToScreen in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorParaMiddleCoordsToScreen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopEditorCursorCoordsToScreen in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopEditorCursorCoordsToScreen.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  EditorParaCoordsToScreenPack in 'w:\common\components\rtl\Garant\ScriptEngine\EditorParaCoordsToScreenPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMenuitemGetCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwMenuitemGetCount.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMenuitemGetCaption in 'w:\common\components\rtl\Garant\ScriptEngine\kwMenuitemGetCaption.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMenuitemGetItem in 'w:\common\components\rtl\Garant\ScriptEngine\kwMenuitemGetItem.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMenuitemIsVisible in 'w:\common\components\rtl\Garant\ScriptEngine\kwMenuitemIsVisible.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormFindMenuItem in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormFindMenuItem.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMenuitemIsEnabled in 'w:\common\components\rtl\Garant\ScriptEngine\kwMenuitemIsEnabled.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMenuitemClick in 'w:\common\components\rtl\Garant\ScriptEngine\kwMenuitemClick.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwMenuitemGetMenuHeight in 'w:\common\components\rtl\Garant\ScriptEngine\kwMenuitemGetMenuHeight.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  MenuWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\MenuWordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWasWait in 'w:\common\components\rtl\Garant\ScriptEngine\kwWasWait.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWaitNo in 'w:\common\components\rtl\Garant\ScriptEngine\kwWaitNo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWaitOk in 'w:\common\components\rtl\Garant\ScriptEngine\kwWaitOk.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWaitYes in 'w:\common\components\rtl\Garant\ScriptEngine\kwWaitYes.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWaitCancel in 'w:\common\components\rtl\Garant\ScriptEngine\kwWaitCancel.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwWaitChoice in 'w:\common\components\rtl\Garant\ScriptEngine\kwWaitChoice.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  ModalDialogsKeywordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\ModalDialogsKeywordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectGetObjProp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectGetObjProp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectSetOrdProp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectSetOrdProp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectGetOrdProp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectGetOrdProp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectSetStrProp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectSetStrProp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectGetStrProp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectGetStrProp.pas'
  {$IfEnd} //not NoScripts
  ,
  l3RTTI in 'w:\common\components\rtl\Garant\L3\l3RTTI.pas'
  {$If not defined(NoScripts)}
  ,
  kwPopObjectRTTIInfo in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectRTTIInfo.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectGetFloatProp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectGetFloatProp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectSetFloatProp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectSetFloatProp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectGetInterfaceProp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectGetInterfaceProp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectHasProp in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectHasProp.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  RTTIPack in 'w:\common\components\rtl\Garant\ScriptEngine\RTTIPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwKey in 'w:\common\components\rtl\Garant\ScriptEngine\kwKey.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwHardKey in 'w:\common\components\rtl\Garant\ScriptEngine\kwHardKey.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  KeyboardInputPack in 'w:\common\components\rtl\Garant\ScriptEngine\KeyboardInputPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeSaveState in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeSaveState.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwControlTreeExpand in 'w:\common\components\rtl\Garant\ScriptEngine\kwControlTreeExpand.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeCurrentNodeIsExpanded in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeCurrentNodeIsExpanded.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwControlTreeChildrenCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwControlTreeChildrenCount.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeCheckFlag in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeCheckFlag.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetCurrentNode in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetCurrentNode.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetItemImageIndex in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetItemImageIndex.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetItemTop in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetItemTop.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetItemWidth in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetItemWidth.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetItemHeight in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetItemHeight.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetItemLeft in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetItemLeft.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetItemBounds in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetItemBounds.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetItemsCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetItemsCount.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetItem in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetItem.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeExpandAll in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeExpandAll.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeCollapseAll in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeCollapseAll.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeSetSelected in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeSetSelected.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeGetSelected in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeGetSelected.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwTreeDeleteAllChildren in 'w:\common\components\rtl\Garant\ScriptEngine\kwTreeDeleteAllChildren.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  vtOutlinerWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\vtOutlinerWordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If defined(Archi)}
  ,
  ddAutoLinkFilter in 'w:\common\components\rtl\Garant\DT\ddAutoLinkFilter.pas'
  {$IfEnd} //Archi
  
  {$If defined(Archi) AND not defined(NoScripts)}
  ,
  kwFilterAutolinkFilter in 'w:\common\components\rtl\Garant\ScriptEngine\kwFilterAutolinkFilter.pas'
  {$IfEnd} //Archi AND not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwGeneratorsLink in 'w:\common\components\rtl\Garant\ScriptEngine\kwGeneratorsLink.pas'
  {$IfEnd} //not NoScripts
  ,
  evEvdRd in 'w:\common\components\gui\Garant\Everest\evEvdRd.pas'
  {$If not defined(NoScripts)}
  ,
  kwGeneratorsExecute in 'w:\common\components\rtl\Garant\ScriptEngine\kwGeneratorsExecute.pas'
  {$IfEnd} //not NoScripts
  
  {$If defined(Archi) AND not defined(NoScripts)}
  ,
  kwFilterCleanAutolinkFilter in 'w:\common\components\rtl\Garant\ScriptEngine\kwFilterCleanAutolinkFilter.pas'
  {$IfEnd} //Archi AND not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFiltersAndGeneratorsPack in 'w:\common\components\rtl\Garant\ScriptEngine\kwFiltersAndGeneratorsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  kwStatusBarOrderedControlsCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwStatusBarOrderedControlsCount.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  kwStatusBarOrderedControl in 'w:\common\components\rtl\Garant\ScriptEngine\kwStatusBarOrderedControl.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  kwStatusBarOrderIndex in 'w:\common\components\rtl\Garant\ScriptEngine\kwStatusBarOrderIndex.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  kwPopStatusBarButtonIsDown in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopStatusBarButtonIsDown.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  RegisteringStatusbarClasses in 'w:\common\components\rtl\Garant\ScriptEngine\RegisteringStatusbarClasses.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If defined(Nemesis) AND not defined(NoScripts)}
  ,
  StatusBarWords in 'w:\common\components\rtl\Garant\ScriptEngine\StatusBarWords.pas'
  {$IfEnd} //Nemesis AND not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormFormStyle in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormFormStyle.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormSetWindowState in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormSetWindowState.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormGetWindowState in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormGetWindowState.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwPopVcmFormUserType in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopVcmFormUserType.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwPopVcmFormFormID in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopVcmFormFormID.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwPopVcmFormIsFloatingState in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopVcmFormIsFloatingState.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwPopVcmFormIsFloatingStateAndParentNotVisible in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopVcmFormIsFloatingStateAndParentNotVisible.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormNext in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormNext.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormHasControl in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormHasControl.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormMDIChildCount in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormMDIChildCount.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormMDIChildren in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormMDIChildren.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormClose in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormClose.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts) AND not defined(NoVCM)}
  ,
  kwTryFocusOnForm in 'w:\common\components\rtl\Garant\ScriptEngine\kwTryFocusOnForm.pas'
  {$IfEnd} //not NoScripts AND not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  kwIterateForms in 'w:\common\components\rtl\Garant\ScriptEngine\kwIterateForms.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormActiveMDIChild in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormActiveMDIChild.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopFormModalResult in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopFormModalResult.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  FormsProcessingPack in 'w:\common\components\rtl\Garant\ScriptEngine\FormsProcessingPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoVGScene)}
  ,
  vg_listbox in 'w:\common\components\rtl\external\VGScene\vg_listbox.pas'
  {$IfEnd} //not NoVGScene
  
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  kwVgControlSetIsChecked in 'w:\common\components\rtl\Garant\ScriptEngine\kwVgControlSetIsChecked.pas'
  {$IfEnd} //not NoScripts AND not NoVGScene
  
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  kwVgControlGetIsChecked in 'w:\common\components\rtl\Garant\ScriptEngine\kwVgControlGetIsChecked.pas'
  {$IfEnd} //not NoScripts AND not NoVGScene
  
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  kwVgControlCountSiblingLikeMe in 'w:\common\components\rtl\Garant\ScriptEngine\kwVgControlCountSiblingLikeMe.pas'
  {$IfEnd} //not NoScripts AND not NoVGScene
  
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  kwVgControlClick in 'w:\common\components\rtl\Garant\ScriptEngine\kwVgControlClick.pas'
  {$IfEnd} //not NoScripts AND not NoVGScene
  
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  kwVgControlName in 'w:\common\components\rtl\Garant\ScriptEngine\kwVgControlName.pas'
  {$IfEnd} //not NoScripts AND not NoVGScene
  
  {$If not defined(NoScripts) AND not defined(NoVGScene)}
  ,
  VGSceneWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\VGSceneWordsPack.pas'
  {$IfEnd} //not NoScripts AND not NoVGScene
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectInherits in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectInherits.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectIsNil in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectIsNil.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopObjectClassName in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopObjectClassName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  ObjectFromstackWords in 'w:\common\components\rtl\Garant\ScriptEngine\ObjectFromstackWords.pas'
  {$IfEnd} //not NoScripts
  ,
  ComCtrls {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\ComCtrls.pas' {$EndIf}
  {$If not defined(NoScripts)}
  ,
  kwPopTreeViewGetItem in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopTreeViewGetItem.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopTreeNodeGetNext in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopTreeNodeGetNext.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopTreeNodeHasChildren in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopTreeNodeHasChildren.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  TreeViewWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\TreeViewWordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFontSize in 'w:\common\components\rtl\Garant\ScriptEngine\kwFontSize.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFontName in 'w:\common\components\rtl\Garant\ScriptEngine\kwFontName.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFontColor in 'w:\common\components\rtl\Garant\ScriptEngine\kwFontColor.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFontIsItalic in 'w:\common\components\rtl\Garant\ScriptEngine\kwFontIsItalic.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFontIsBold in 'w:\common\components\rtl\Garant\ScriptEngine\kwFontIsBold.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFontIsUnderline in 'w:\common\components\rtl\Garant\ScriptEngine\kwFontIsUnderline.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFontIsStrikeOut in 'w:\common\components\rtl\Garant\ScriptEngine\kwFontIsStrikeOut.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwPopControlGetFont in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopControlGetFont.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  kwFontBackColor in 'w:\common\components\rtl\Garant\ScriptEngine\kwFontBackColor.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  FontWordsPack in 'w:\common\components\rtl\Garant\ScriptEngine\FontWordsPack.pas'
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngineEX in 'w:\common\components\rtl\Garant\ScriptEngine\tfwScriptEngineEX.pas'
  {$IfEnd} //not NoScripts
  ,
  kwDocumentsCacheClear in 'F1_Words\kwDocumentsCacheClear.pas',
  l3DateSt in 'w:\common\components\rtl\Garant\L3\l3DateSt.pas',
  kwTimeMachineSetDate in 'F1_Words\kwTimeMachineSetDate.pas',
  kwExportHelp in 'F1_Words\kwExportHelp.pas',
  kwFiltersList in 'F1_Words\kwFiltersList.pas',
  kwF1BaseDate in 'F1_Words\kwF1BaseDate.pas',
  kwAttributeSearch in 'F1_Words\kwAttributeSearch.pas',
  kwOk in 'F1_Words\kwOk.pas',
  kwMainMenu in 'F1_Words\kwMainMenu.pas',
  kwF1ComplectName in 'F1_Words\kwF1ComplectName.pas',
  kwF1ComplectOwner in 'F1_Words\kwF1ComplectOwner.pas',
  f1WordsPack in 'F1_Words\f1WordsPack.pas',
  kwOpenDocument in 'F1_Words\kwOpenDocument.pas',
  eeEditorExportModelPart in 'w:\common\components\gui\Garant\Everest_Engine\eeEditorExportModelPart.pas',
  eeEditorExport in 'w:\common\components\gui\Garant\Everest_Engine\eeEditorExport.pas',
  eeCustomEditor in 'w:\common\components\gui\Garant\Everest_Engine\eeCustomEditor.pas',
  eeEditor in 'w:\common\components\gui\Garant\Everest_Engine\eeEditor.pas'
  {$If defined(Nemesis)}
  ,
  nscEditor in 'w:\common\components\gui\Garant\Nemesis\nscEditor.pas'
  {$IfEnd} //Nemesis
  ,
  eeTextSourceExport in 'w:\common\components\gui\Garant\Everest_Engine\eeTextSourceExport.pas',
  eeTextSource in 'w:\common\components\gui\Garant\Everest_Engine\eeTextSource.pas'
  {$If defined(Nemesis)}
  ,
  nscTextSource in 'w:\common\components\gui\Garant\Nemesis\nscTextSource.pas'
  {$IfEnd} //Nemesis
  ,
  Base_Operations_F1Specific_Controls in 'View\Base_Operations_F1Specific_Controls.pas',
  eeInterfacesEx in 'w:\common\components\gui\Garant\Everest_Engine\eeInterfacesEx.pas',
  eePara in 'w:\common\components\gui\Garant\Everest_Engine\eePara.pas',
  eeParaTools in 'w:\common\components\gui\Garant\Everest_Engine\eeParaTools.pas',
  Common_Strange_Controls in 'View\Common_Strange_Controls.pas',
  nsDocumentTools in 'Common\nsDocumentTools.pas',
  nsToMSWordOp in 'View\Common\nsToMSWordOp.pas',
  nsExportToFileEvent in 'View\nsExportToFileEvent.pas',
  nsExportToWordEvent in 'View\nsExportToWordEvent.pas',
  nsSendDocumentByEMailEvent in 'View\nsSendDocumentByEMailEvent.pas',
  nsDocumentPrintPreviewEvent in 'View\nsDocumentPrintPreviewEvent.pas',
  nsBaseTextOperationsConst in 'View\nsBaseTextOperationsConst.pas',
  f1MultylinkResolver in 'F1DocumentProcessing\f1MultylinkResolver.pas',
  nsQuestions in 'View\nsQuestions.pas',
  nsTagNodeTools in 'f1DocumentTagsImplementation\nsTagNodeTools.pas',
  nsContextSearchParams in 'Data\Common\nsContextSearchParams.pas',
  l3ProtoObjectForTie in 'View\l3ProtoObjectForTie.pas',
  nsFindIteratorNewFindPositionList in 'View\nsFindIteratorNewFindPositionList.pas',
  nsFindIteratorNew in 'View\nsFindIteratorNew.pas',
  nsFindIteratorNewForAutoreferat in 'View\nsFindIteratorNewForAutoreferat.pas',
  nsFindPositionListList in 'View\nsFindPositionListList.pas',
  nsFindIteratorNewForDiction in 'View\nsFindIteratorNewForDiction.pas',
  nsFragmentListForSearchViaEverestOwnSearcher in 'View\nsFragmentListForSearchViaEverestOwnSearcher.pas',
  nsContextListForSearchViaEverestOwnSearcher in 'View\nsContextListForSearchViaEverestOwnSearcher.pas',
  nsFoundRangeCollector in 'View\nsFoundRangeCollector.pas',
  bsDocumentContextSearcher in 'View\bsDocumentContextSearcher.pas',
  nsSearchInDocumentEvent in 'View\nsSearchInDocumentEvent.pas',
  eeSubPanelExport in 'w:\common\components\gui\Garant\Everest_Engine\eeSubPanelExport.pas',
  eeSubPanel in 'w:\common\components\gui\Garant\Everest_Engine\eeSubPanel.pas',
  vtScrollBar in 'w:\common\components\gui\Garant\VT\vtScrollBar.pas',
  DocumentUserTypes_dftAACRight_UserType in 'View\DocumentUserTypes_dftAACRight_UserType.pas',
  DocumentUserTypes_dftAACContentsLeft_UserType in 'View\DocumentUserTypes_dftAACContentsLeft_UserType.pas',
  DocumentUserTypes_dftAACContentsRight_UserType in 'View\DocumentUserTypes_dftAACContentsRight_UserType.pas',
  DocumentUserTypes_dftNone_UserType in 'View\DocumentUserTypes_dftNone_UserType.pas',
  DocumentUserTypes_dftDocument_UserType in 'View\DocumentUserTypes_dftDocument_UserType.pas',
  DocumentUserTypes_dftRelatedDoc_UserType in 'View\DocumentUserTypes_dftRelatedDoc_UserType.pas',
  DocumentUserTypes_dftDocSynchroView_UserType in 'View\DocumentUserTypes_dftDocSynchroView_UserType.pas',
  DocumentUserTypes_dftRelatedSynchroView_UserType in 'View\DocumentUserTypes_dftRelatedSynchroView_UserType.pas',
  DocumentUserTypes_dftDictEntry_UserType in 'View\DocumentUserTypes_dftDictEntry_UserType.pas',
  DocumentUserTypes_dftDictSubEntry_UserType in 'View\DocumentUserTypes_dftDictSubEntry_UserType.pas',
  DocumentUserTypes_dftAnnotation_UserType in 'View\DocumentUserTypes_dftAnnotation_UserType.pas',
  DocumentUserTypes_dftAutoreferatAfterSearch_UserType in 'View\DocumentUserTypes_dftAutoreferatAfterSearch_UserType.pas',
  DocumentUserTypes_dftConsultation_UserType in 'View\DocumentUserTypes_dftConsultation_UserType.pas',
  DocumentUserTypes_dftTranslation_UserType in 'View\DocumentUserTypes_dftTranslation_UserType.pas',
  DocumentUserTypes_dftAnnotationSynchroView_UserType in 'View\DocumentUserTypes_dftAnnotationSynchroView_UserType.pas',
  DocumentUserTypes_dftTips_UserType in 'View\DocumentUserTypes_dftTips_UserType.pas',
  DocumentUserTypes_dftMedDictEntry_UserType in 'View\DocumentUserTypes_dftMedDictEntry_UserType.pas',
  DocumentUserTypes_dftAutoreferat_UserType in 'View\DocumentUserTypes_dftAutoreferat_UserType.pas',
  DocumentUserTypes_dftDrug_UserType in 'View\DocumentUserTypes_dftDrug_UserType.pas',
  DocumentUserTypes_dftMedicFirm_UserType in 'View\DocumentUserTypes_dftMedicFirm_UserType.pas',
  DocumentUserTypes_dftMedicFirmSynchroView_UserType in 'View\DocumentUserTypes_dftMedicFirmSynchroView_UserType.pas',
  DocumentUserTypes_dftDrugSynchroView_UserType in 'View\DocumentUserTypes_dftDrugSynchroView_UserType.pas',
  DocumentUserTypes_dftAACLeft_UserType in 'View\DocumentUserTypes_dftAACLeft_UserType.pas',
  Document_Strange_Controls in 'View\Document_Strange_Controls.pas',
  nsTimeMachineOffEvent in 'View\Document\nsTimeMachineOffEvent.pas',
  Document_F1Lite_Controls in 'View\Document_F1Lite_Controls.pas',
  ConsultationDomainInterfaces in 'Consultation\ConsultationDomainInterfaces.pas',
  DictionInterfacesPrim in 'CommonDiction\DictionInterfacesPrim.pas',
  InpharmInterfaces in 'Medic\InpharmInterfaces.pas',
  nsCounterEvent in 'Data\nsCounterEvent.pas',
  nsFoundBlocksList in 'View\nsFoundBlocksList.pas',
  BaseDocumentWithAttributesInterfaces in 'BusinessInterfaces\BaseDocumentWithAttributesInterfaces.pas',
  nsDocumentFromListNavigationEvent in 'View\nsDocumentFromListNavigationEvent.pas'
  {$If defined(Nemesis)}
  ,
  nscStatusBarDelimiterDef in 'w:\common\components\gui\Garant\Nemesis\nscStatusBarDelimiterDef.pas'
  {$IfEnd} //Nemesis
  ,
  DocumentUtil in 'View\DocumentUtil.pas',
  UnderControlInterfaces in 'UnderControl\UnderControlInterfaces.pas',
  Hypertext_Controls_Controls in 'LinksToGarant\Hypertext_Controls_Controls.pas',
  evConstStringStorable in 'w:\common\components\gui\Garant\Everest\evConstStringStorable.pas',
  evdTextToFirstParaAdder in 'w:\common\components\rtl\Garant\EVD\evdTextToFirstParaAdder.pas',
  evConstStringDataObject in 'w:\common\components\gui\Garant\Everest\evConstStringDataObject.pas',
  evConstStringData in 'w:\common\components\gui\Garant\EverestCommon\evConstStringData.pas',
  evdHyperlinkInfo in 'w:\common\components\rtl\Garant\EVD\evdHyperlinkInfo.pas',
  nsHyperlinkToDocumentProducerConst in 'LinksToGarant\nsHyperlinkToDocumentProducerConst.pas',
  WorkWithDocumentInterfaces in 'BusinessInterfaces\WorkWithDocumentInterfaces.pas',
  DocInfoInterfaces in 'BusinessInterfaces\DocInfoInterfaces.pas',
  bsChangeRedationWorker in 'Data\Common\bsChangeRedationWorker.pas',
  evSubPanelSub in 'w:\common\components\gui\Garant\Everest\evSubPanelSub.pas',
  evSubPanelSubArrayPrim in 'w:\common\components\gui\Garant\Everest\evSubPanelSubArrayPrim.pas',
  evSubPanelSubArray in 'w:\common\components\gui\Garant\Everest\evSubPanelSubArray.pas',
  evSubPanelSubCollectionPrim in 'w:\common\components\gui\Garant\Everest\evSubPanelSubCollectionPrim.pas',
  evSubPanelSubCollection in 'w:\common\components\gui\Garant\Everest\evSubPanelSubCollection.pas',
  evSubPn in 'w:\common\components\gui\Garant\Everest\evSubPn.pas',
  F1TagDataProviderInterface in 'f1DocumentTagsImplementation\F1TagDataProviderInterface.pas',
  deSimpleTree in 'Business\Document\deSimpleTree.pas',
  ControlStatusUtils in 'UnderControl\ControlStatusUtils.pas',
  nsInternalPictureData in 'View\Document\nsInternalPictureData.pas',
  Base_Operations_AAC_Controls in 'View\Base_Operations_AAC_Controls.pas',
  AACContainerPrim_AACContainer_UserType in 'View\AAC\Forms\AACContainerPrim_AACContainer_UserType.pas',
  AACContainerPrim_AACContentsContainer_UserType in 'View\AAC\Forms\AACContainerPrim_AACContentsContainer_UserType.pas',
  AACContainerPrim_Form in 'View\AAC\Forms\AACContainerPrim_Form.pas',
  hyieutils in 'w:\common\components\rtl\external\ImageEn\src\hyieutils.pas',
  l3ProcedureList in 'w:\common\components\rtl\Garant\L3\l3ProcedureList.pas',
  hyiedefs in 'w:\common\components\rtl\external\ImageEn\src\hyiedefs.pas',
  vtPngImgListUtils in 'w:\common\components\gui\Garant\VT\vtPngImgListUtils.pas',
  vtPngImgList in 'w:\common\components\gui\Garant\VT\vtPngImgList.pas',
  AACTextContainerPrim_Form in 'View\AAC\Forms\AACTextContainerPrim_Form.pas',
  ExText_Form in 'View\Document\Forms\ExText_Form.pas',
  kwDocumentSetBookmark in 'F1_Shell_Words\kwDocumentSetBookmark.pas'
  {$If defined(nsTest)}
  ,
  kwF1WasBeep in 'F1_Shell_Words\kwF1WasBeep.pas'
  {$IfEnd} //nsTest
  ,
  kwF1ImportConsultation in 'F1_Shell_Words\kwF1ImportConsultation.pas',
  nsConfigurationList in 'Config\nsConfigurationList.pas',
  kwConfigRestore in 'F1_Shell_Words\kwConfigRestore.pas',
  kwStyleTableRestore in 'F1_Shell_Words\kwStyleTableRestore.pas',
  kwDiffIteratorHasNext in 'F1_Shell_Words\kwDiffIteratorHasNext.pas',
  kwDiffIteratorNext in 'F1_Shell_Words\kwDiffIteratorNext.pas',
  kwDiffIteratorHasPrev in 'F1_Shell_Words\kwDiffIteratorHasPrev.pas',
  kwDiffIteratorPrev in 'F1_Shell_Words\kwDiffIteratorPrev.pas'
  {$If defined(nsTest)}
  ,
  kwTextFormSetNeedShowIntranetWarning in 'F1_Shell_Words\kwTextFormSetNeedShowIntranetWarning.pas'
  {$IfEnd} //nsTest
  ,
  kwTextFormGetDocumentID in 'F1_Shell_Words\kwTextFormGetDocumentID.pas',
  kwOpenSituationCard in 'F1_Shell_Words\kwOpenSituationCard.pas',
  kwOpenOldSituationCard in 'F1_Shell_Words\kwOpenOldSituationCard.pas',
  kwQueryCardSetCanSaveState in 'F1_Shell_Words\kwQueryCardSetCanSaveState.pas',
  kwDocumentLikeState in 'F1_Shell_Words\kwDocumentLikeState.pas',
  kwBrowse in 'F1_Shell_Words\kwBrowse.pas',
  kwGetEncryptedComplectId in 'F1_Shell_Words\kwGetEncryptedComplectId.pas',
  F1ShellWordsPack in 'F1_Shell_Words\F1ShellWordsPack.pas',
  vtHideFieldUtils in 'w:\common\components\gui\Garant\VT\vtHideFieldUtils.pas',
  vtHideField in 'w:\common\components\gui\Garant\VT\vtHideField.pas'
  {$If not defined(NoVCM)}
  ,
  kwPopHideFieldIsExpanded in 'F1_Shell_Words\kwPopHideFieldIsExpanded.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  kwPopHideFieldSetExpanded in 'F1_Shell_Words\kwPopHideFieldSetExpanded.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  kwPopHideFieldGetCaption in 'F1_Shell_Words\kwPopHideFieldGetCaption.pas'
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscInterfaces in 'w:\common\components\gui\Garant\Nemesis\nscInterfaces.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscHideField in 'w:\common\components\gui\Garant\Nemesis\nscHideField.pas'
  {$IfEnd} //Nemesis
  ,
  vtSpeedButton in 'w:\common\components\gui\Garant\VT\vtSpeedButton.pas'
  {$If defined(Nemesis)}
  ,
  nscTaskPanelInterfaces in 'w:\common\components\gui\Garant\Nemesis\nscTaskPanelInterfaces.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanelActionLink in 'w:\common\components\gui\Garant\Nemesis\nscTasksPanelActionLink.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanelOperationNode in 'w:\common\components\gui\Garant\Nemesis\nscTasksPanelOperationNode.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanelRootNode in 'w:\common\components\gui\Garant\Nemesis\nscTasksPanelRootNode.pas'
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  vcmAction in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmAction.pas'
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscArrangeGridCell in 'w:\common\components\gui\Garant\Nemesis\nscArrangeGridCell.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTabTableCell in 'w:\common\components\gui\Garant\Nemesis\nscTabTableCell.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscArrangeGrid in 'w:\common\components\gui\Garant\Nemesis\nscArrangeGrid.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTabTable in 'w:\common\components\gui\Garant\Nemesis\nscTabTable.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanelView in 'w:\common\components\gui\Garant\Nemesis\nscTasksPanelView.pas'
  {$IfEnd} //Nemesis
  
  {$If not defined(NoVCM)}
  ,
  kwPopTaskPanelGetCount in 'F1_Shell_Words\kwPopTaskPanelGetCount.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  kwPopTaskPanelGetHideField in 'F1_Shell_Words\kwPopTaskPanelGetHideField.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  RegisterTaskPanelClasses in 'F1_Shell_Words\RegisterTaskPanelClasses.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  TaskPanelWords in 'F1_Shell_Words\TaskPanelWords.pas'
  {$IfEnd} //not NoVCM
  ,
  TreeInterfaces in 'Tree\TreeInterfaces.pas',
  WorkWithList_StatusBar_Controls in 'View\WorkWithList_StatusBar_Controls.pas',
  ListUserTypes_lftRespondent_UserType in 'View\ListUserTypes_lftRespondent_UserType.pas',
  ListUserTypes_lftCorrespondent_UserType in 'View\ListUserTypes_lftCorrespondent_UserType.pas',
  ListUserTypes_lftSynchroView_UserType in 'View\ListUserTypes_lftSynchroView_UserType.pas',
  ListUserTypes_lftRCToPart_UserType in 'View\ListUserTypes_lftRCToPart_UserType.pas',
  ListUserTypes_lftUserCR1_UserType in 'View\ListUserTypes_lftUserCR1_UserType.pas',
  ListUserTypes_lftUserCR2_UserType in 'View\ListUserTypes_lftUserCR2_UserType.pas',
  ListUserTypes_lftConsultation_UserType in 'View\ListUserTypes_lftConsultation_UserType.pas',
  ListUserTypes_lftSimilarDocuments_UserType in 'View\ListUserTypes_lftSimilarDocuments_UserType.pas',
  ListUserTypes_lftSimilarDocumentsSynchroView_UserType in 'View\ListUserTypes_lftSimilarDocumentsSynchroView_UserType.pas',
  ListUserTypes_lftCorrespondentsSynchroForm_UserType in 'View\ListUserTypes_lftCorrespondentsSynchroForm_UserType.pas',
  ListUserTypes_lftRespondentsSynchroForm_UserType in 'View\ListUserTypes_lftRespondentsSynchroForm_UserType.pas',
  ListUserTypes_lftUserCRList1_SynchorForm_UserType in 'View\ListUserTypes_lftUserCRList1_SynchorForm_UserType.pas',
  ListUserTypes_lftUserCRList2_SynchorForm_UserType in 'View\ListUserTypes_lftUserCRList2_SynchorForm_UserType.pas',
  ListUserTypes_lftDrugList_UserType in 'View\ListUserTypes_lftDrugList_UserType.pas',
  ListUserTypes_lftDrugInternationalNameSynonyms_UserType in 'View\ListUserTypes_lftDrugInternationalNameSynonyms_UserType.pas',
  ListUserTypes_lftProducedDrugs_UserType in 'View\ListUserTypes_lftProducedDrugs_UserType.pas',
  ListUserTypes_lftProducedDrugsSynchroForm_UserType in 'View\ListUserTypes_lftProducedDrugsSynchroForm_UserType.pas',
  ListUserTypes_lftDrugInternationalNameSynonymsSynchroForm_UserType in 'View\ListUserTypes_lftDrugInternationalNameSynonymsSynchroForm_UserType.pas',
  ListUserTypes_lftNone_UserType in 'View\ListUserTypes_lftNone_UserType.pas',
  WorkWithList_ListOperations_Controls in 'View\WorkWithList_ListOperations_Controls.pas',
  WorkWithListInterfaces in 'BusinessInterfaces\WorkWithListInterfaces.pas',
  nscDocumentListTreeView in 'rtl\Garant\Components\nscDocumentListTreeView.pas',
  vtSaveDialog in 'w:\common\components\gui\Garant\VT\vtSaveDialog.pas'
  {$If defined(Nemesis)}
  ,
  eeGroupBox in 'w:\common\components\gui\Garant\Nemesis\eeGroupBox.pas'
  {$IfEnd} //Nemesis
  ,
  Buttons {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Buttons.pas' {$EndIf},
  CommDlg {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\CommDlg.pas' {$EndIf},
  nsSaveDialog in 'Common\nsSaveDialog.pas',
  deList in 'Search\deList.pas',
  ListRes in 'Business\List\ListRes.pas' {nsListRes: TDataModule},
  PrimList_Form in 'View\List\Forms\PrimList_Form.pas',
  nsListSortTypeMap in 'View\List\nsListSortTypeMap.pas',
  PrimListOptions_Form in 'View\List\Forms\PrimListOptions_Form.pas',
  kwPopTreeViewExportSelectionWithFormat in 'F1_Shell_Words\kwPopTreeViewExportSelectionWithFormat.pas',
  Registry {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\Registry.pas' {$EndIf},
  LocaleMessages in 'Integration\Implementation\LocaleMessages.pas',
  nsIntegrationModelPart in 'Integration\Implementation\nsIntegrationModelPart.pas',
  kwIntegrationOpenLink in 'F1_Words\kwIntegrationOpenLink.pas',
  Integration in 'F1_Words\Integration.pas',
  bsBase in 'F1DocumentProcessing\bsBase.pas',
  deBase in 'F1DocumentProcessing\deBase.pas',
  bsDataContainer in 'F1DocumentProcessing\bsDataContainer.pas',
  deDocInfo in 'F1DocumentProcessing\deDocInfo.pas',
  PrimEditionsRes_Form in 'View\Editions\Forms\PrimEditionsRes_Form.pas',
  EditionsRes_Form in 'View\Editions\Forms\EditionsRes_Form.pas' {EditionsResForm: TDataModule},
  nsEditionsUtils in 'Business\Document\nsEditionsUtils.pas',
  nevObjectHolder in 'w:\common\components\gui\Garant\Everest\nevObjectHolder.pas',
  nevNodeView in 'w:\common\components\gui\Garant\Everest\nevNodeView.pas',
  evNodePainter in 'w:\common\components\gui\Garant\Everest\evNodePainter.pas',
  nsEditionNodes in 'Common\nsEditionNodes.pas',
  ctTypes in 'w:\common\components\gui\Garant\VT\ComboTree\ctTypes.pas',
  Diff_Form in 'View\Editions\Forms\Diff_Form.pas',
  DiffOptions_Form in 'View\Editions\Forms\DiffOptions_Form.pas',
  PrimLeftEdition_utLeftEdition_UserType in 'View\Editions\Forms\PrimLeftEdition_utLeftEdition_UserType.pas',
  PrimLeftEdition_Form in 'View\Editions\Forms\PrimLeftEdition_Form.pas',
  PrimRightEdition_utRightEdition_UserType in 'View\Editions\Forms\PrimRightEdition_utRightEdition_UserType.pas',
  PrimRightEdition_Form in 'View\Editions\Forms\PrimRightEdition_Form.pas',
  CompareEditions_FormDefinitions_Controls in 'View\CompareEditions_FormDefinitions_Controls.pas',
  LeftEdition_Form in 'View\Editions\Forms\LeftEdition_Form.pas' {LeftEditionForm: TvcmEntityForm},
  RightEdition_Form in 'View\Editions\Forms\RightEdition_Form.pas' {RightEditionForm: TvcmEntityForm},
  PrimEditionsContainer_utEditionsContainer_UserType in 'View\Editions\Forms\PrimEditionsContainer_utEditionsContainer_UserType.pas',
  PrimEditionsContainer_Form in 'View\Editions\Forms\PrimEditionsContainer_Form.pas',
  EditionsContainer_Form in 'View\Editions\Forms\EditionsContainer_Form.pas' {EditionsContainerForm: TvcmEntityForm},
  dsEditionsContainerData in 'Editions\dsEditionsContainerData.pas',
  nsDocInfoHAFMacroReplacer in 'Business\Document\nsDocInfoHAFMacroReplacer.pas',
  nsTagNodeToolsNew in 'f1DocumentTagsImplementation\nsTagNodeToolsNew.pas',
  nsSubPrim in 'F1DocumentProcessing\nsSubPrim.pas',
  nsDocumentContainerSub in 'F1DocumentProcessing\nsDocumentContainerSub.pas',
  nsF1DocumentContainerPrim in 'F1DocumentProcessing\nsF1DocumentContainerPrim.pas',
  k2HugeTagObject in 'w:\common\components\rtl\Garant\K2\k2HugeTagObject.pas',
  nsBaseTagNode in 'f1DocumentTagsImplementation\nsBaseTagNode.pas',
  nsTagNodePrimPrim in 'f1DocumentTagsImplementation\nsTagNodePrimPrim.pas',
  evdVer in 'w:\common\components\rtl\Garant\EVD\evdVer.pas',
  k2InPlaceGenerator in 'w:\common\components\rtl\Garant\K2\k2InPlaceGenerator.pas',
  evNestedCommentsEliminator in 'w:\common\components\gui\Garant\Everest\evNestedCommentsEliminator.pas',
  nsStyleParser in 'f1DocumentTagsImplementation\nsStyleParser.pas',
  nsString in 'f1DocumentTagsImplementation\nsString.pas',
  nsTagString in 'f1DocumentTagsImplementation\nsTagString.pas',
  nsTagNodePrim in 'f1DocumentTagsImplementation\nsTagNodePrim.pas',
  nsSubNode in 'f1DocumentTagsImplementation\nsSubNode.pas',
  f1AtomChecker in 'f1DocumentTagsImplementation\f1AtomChecker.pas',
  nsLeafParaNode in 'f1DocumentTagsImplementation\nsLeafParaNode.pas',
  nsSectionBreakNode in 'f1DocumentTagsImplementation\nsSectionBreakNode.pas',
  nsTextParaNode in 'f1DocumentTagsImplementation\nsTextParaNode.pas',
  nsControlParaNode in 'f1DocumentTagsImplementation\nsControlParaNode.pas',
  BannerUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\BannerUnit.pas',
  nsBitmapParaNode in 'f1DocumentTagsImplementation\nsBitmapParaNode.pas',
  f1ChildMaker in 'f1DocumentTagsImplementation\f1ChildMaker.pas',
  nsNativeCommentPara in 'f1DocumentTagsImplementation\nsNativeCommentPara.pas',
  nsCommentMemoryStream in 'f1DocumentTagsImplementation\nsCommentMemoryStream.pas',
  LegalDomain_DocumentNotifications_Controls in 'View\LegalDomain_DocumentNotifications_Controls.pas',
  nsCommentStorer in 'f1DocumentTagsImplementation\nsCommentStorer.pas',
  nsReqCellNode in 'f1DocumentTagsImplementation\nsReqCellNode.pas',
  nsReqRowNode in 'f1DocumentTagsImplementation\nsReqRowNode.pas',
  nsBlockNode in 'f1DocumentTagsImplementation\nsBlockNode.pas',
  nsParentedTagNode in 'f1DocumentTagsImplementation\nsParentedTagNode.pas',
  nsLeafParaDecorationsHolder in 'f1DocumentTagsImplementation\nsLeafParaDecorationsHolder.pas',
  nsParaListNodeModelPart in 'f1DocumentTagsImplementation\nsParaListNodeModelPart.pas',
  nsTagNode in 'f1DocumentTagsImplementation\nsTagNode.pas',
  nsBlockNodePrim in 'f1DocumentTagsImplementation\nsBlockNodePrim.pas',
  nsDocumentTagNodePrim in 'f1DocumentTagsImplementation\nsDocumentTagNodePrim.pas',
  nsOwnedDocumentTagNodePrim in 'f1DocumentTagsImplementation\nsOwnedDocumentTagNodePrim.pas',
  nsDocumentTagNodeBase in 'f1DocumentTagsImplementation\nsDocumentTagNodeBase.pas',
  nsCommentModifier in 'f1DocumentTagsImplementation\nsCommentModifier.pas',
  nsParaModifier in 'f1DocumentTagsImplementation\nsParaModifier.pas',
  f1LeafTagDataFromDTP in 'f1DocumentTagsImplementation\f1LeafTagDataFromDTP.pas',
  f1ListTagDataFromDTP in 'f1DocumentTagsImplementation\f1ListTagDataFromDTP.pas',
  f1TagDataFromDTPFactory in 'f1DocumentTagsImplementation\f1TagDataFromDTPFactory.pas',
  f1TagDataFromDTP in 'f1DocumentTagsImplementation\f1TagDataFromDTP.pas',
  f1DocumentTagDataFromDTP in 'f1DocumentTagsImplementation\f1DocumentTagDataFromDTP.pas',
  f1DocumentTagDataFromDTPHandle in 'f1DocumentTagsImplementation\f1DocumentTagDataFromDTPHandle.pas',
  nsF1DocumentTagNode in 'f1DocumentTagsImplementation\nsF1DocumentTagNode.pas',
  nsEditionFromDTPDocumentContainer in 'Editions\nsEditionFromDTPDocumentContainer.pas',
  dsRightEdition in 'Editions\dsRightEdition.pas',
  dsLeftEdition in 'Editions\dsLeftEdition.pas',
  nsRedactionCurrentPara in 'Editions\nsRedactionCurrentPara.pas',
  nsCompareEditionsInfoPrim in 'Editions\nsCompareEditionsInfoPrim.pas',
  nsEditionDiffData in 'Editions\nsEditionDiffData.pas',
  nsEditionsContainerData in 'Editions\nsEditionsContainerData.pas',
  sdsCompareEditionsState in 'Editions\sdsCompareEditionsState.pas',
  dsEditions in 'Business\Document\dsEditions.pas',
  sdsCompareEditions in 'Editions\sdsCompareEditions.pas',
  nsCompareEditionsInfo in 'Editions\nsCompareEditionsInfo.pas',
  fsCompareEditions in 'View\Editions\fsCompareEditions.pas' {fs_CompareEditions: TvcmFormSetFactory},
  BaseEditions_Module in 'View\Editions\BaseEditions_Module.pas',
  moCompareEditions in 'View\moCompareEditions.pas' {mo_CompareEditions: TvcmModule},
  InternetAgentInterfaces in 'InternetAgent\InternetAgentInterfaces.pas',
  OleCtrls {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\OleCtrls.pas' {$EndIf},
  shdocvw {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Internet\shdocvw.pas' {$EndIf},
  nsWebBrowserPrim in 'View\InternetAgent\nsWebBrowserPrim.pas',
  Variants,
  nsWebBrowserHelper in 'View\InternetAgent\nsWebBrowserHelper.pas',
  nsWebBrowser in 'View\InternetAgent\nsWebBrowser.pas',
  l3RegEx in 'w:\common\components\rtl\Garant\L3\l3RegEx.pas'
  {$If defined(Nemesis)}
  ,
  nsInternetUtils in 'w:\common\components\gui\Garant\Nemesis\nsInternetUtils.pas'
  {$IfEnd} //Nemesis
  ,
  PrimInternetAgent_utInternetAgent_UserType in 'View\InternetAgent\Forms\PrimInternetAgent_utInternetAgent_UserType.pas',
  UrlMon {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\UrlMon.pas' {$EndIf},
  PrimInternetAgent_Form in 'View\InternetAgent\Forms\PrimInternetAgent_Form.pas',
  InternetAgent_Form in 'View\InternetAgent\Forms\InternetAgent_Form.pas' {InternetAgentForm: TvcmEntityForm},
  fsInternetAgent in 'View\InternetAgent\fsInternetAgent.pas' {fs_InternetAgent: TvcmFormSetFactory},
  dsInternetAgent in 'InternetAgent\dsInternetAgent.pas',
  sdsInternetAgent in 'InternetAgent\sdsInternetAgent.pas',
  kw_InternetAgent_InternetAgent in 'View\InternetAgent\kw_InternetAgent_InternetAgent.pas',
  PrimInternetAgent_Module in 'View\InternetAgent\PrimInternetAgent_Module.pas',
  moInternetAgent in 'View\moInternetAgent.pas' {mo_InternetAgent: TvcmModule},
  FoldersInterfaces in 'Folders\FoldersInterfaces.pas',
  Folders_Strange_Controls in 'View\Folders_Strange_Controls.pas',
  PrimFoldersInfo_utFoldersInfoContainer_UserType in 'View\Folders\Forms\PrimFoldersInfo_utFoldersInfoContainer_UserType.pas',
  PrimFoldersInfo_Form in 'View\Folders\Forms\PrimFoldersInfo_Form.pas',
  PrimFoldersInfoOptions_Form in 'View\Folders\Forms\PrimFoldersInfoOptions_Form.pas',
  FoldersInfo_Form in 'View\Folders\Forms\FoldersInfo_Form.pas' {cfFoldersInfo: TvcmEntityForm},
  nsFormCoordinates in 'View\Folders\nsFormCoordinates.pas',
  Folders_Result_Controls in 'View\Folders_Result_Controls.pas',
  PrimFolders_Form in 'View\Folders\Forms\PrimFolders_Form.pas',
  PrimFolders_utFolders_UserType in 'View\Folders\Forms\PrimFolders_utFolders_UserType.pas',
  FoldersRes in 'View\FoldersRes.pas' {nsFoldersRes: TDataModule},
  PrimFoldersTree_Form in 'View\Folders\Forms\PrimFoldersTree_Form.pas',
  PrimFoldersTree_utSaveOpen_UserType in 'View\Folders\Forms\PrimFoldersTree_utSaveOpen_UserType.pas',
  PrimFoldersTree_utFoldersTree_UserType in 'View\Folders\Forms\PrimFoldersTree_utFoldersTree_UserType.pas',
  eeCustomMemo in 'w:\common\components\gui\Garant\Everest_Engine\eeCustomMemo.pas',
  eeMemo in 'w:\common\components\gui\Garant\Everest_Engine\eeMemo.pas',
  eeMemoWithEditOperations in 'w:\common\components\gui\Garant\Everest_Engine\eeMemoWithEditOperations.pas',
  nsFolderNodes in 'Common\nsFolderNodes.pas',
  PrimFoldersElementInfo_Form in 'View\Folders\Forms\PrimFoldersElementInfo_Form.pas',
  PrimFoldersElementInfo_utFoldersProperty_UserType in 'View\Folders\Forms\PrimFoldersElementInfo_utFoldersProperty_UserType.pas',
  PrimFoldersOptions_Form in 'View\Folders\Forms\PrimFoldersOptions_Form.pas',
  PrimFoldersTreeOptions_Form in 'View\Folders\Forms\PrimFoldersTreeOptions_Form.pas',
  PrimFoldersElementInfoOptions_Form in 'View\Folders\Forms\PrimFoldersElementInfoOptions_Form.pas',
  Folders_Form in 'View\Folders\Forms\Folders_Form.pas' {cfFolders: TvcmEntityForm},
  fsFolders in 'View\Folders\fsFolders.pas' {fs_Folders: TvcmFormSetFactory},
  dsFolders in 'Folders\dsFolders.pas',
  bsConsultation in 'Consultation\bsConsultation.pas',
  dsFoldersTree in 'Folders\dsFoldersTree.pas',
  deSaveObject in 'Folders\deSaveObject.pas',
  dsFolderElement in 'Folders\dsFolderElement.pas',
  sdsFolders in 'Folders\sdsFolders.pas',
  FoldersTree_Form in 'View\Folders\Forms\FoldersTree_Form.pas' {enFoldersTree: TvcmEntityForm},
  FoldersElementInfo_Form in 'View\Folders\Forms\FoldersElementInfo_Form.pas' {enFoldersElementInfo: TvcmEntityForm},
  vtCtrls in 'w:\common\components\gui\Garant\VT\vtCtrls.pas',
  kw_Folders_MyInformation in 'View\Folders\kw_Folders_MyInformation.pas',
  kw_Folders_MyConsultations in 'View\Folders\kw_Folders_MyConsultations.pas',
  kw_Folders_UnderControlOpenFrmAct in 'View\Folders\kw_Folders_UnderControlOpenFrmAct.pas',
  kw_Folders_OpenFrmAct in 'View\Folders\kw_Folders_OpenFrmAct.pas',
  PrimFolders_Module in 'View\Folders\PrimFolders_Module.pas',
  moFolders in 'View\moFolders.pas' {mo_Folders: TvcmModule},
  ChatTypes in 'Chat\ChatTypes.pas',
  ChatInterfaces in 'Chat\ChatInterfaces.pas',
  Base_Operations_Chat_Controls in 'View\Base_Operations_Chat_Controls.pas',
  PrimContactList_chatContacts_UserType in 'View\Chat\Forms\PrimContactList_chatContacts_UserType.pas',
  PrimContactList_chatAddContact_UserType in 'View\Chat\Forms\PrimContactList_chatAddContact_UserType.pas',
  nsUserFlagsFilter in 'Data\Users\nsUserFlagsFilter.pas',
  ChatRes in 'View\Chat\ChatRes.pas',
  PrimContactList_Form in 'View\Chat\Forms\PrimContactList_Form.pas',
  PrimContactListOptions_Form in 'View\Chat\Forms\PrimContactListOptions_Form.pas',
  ContactList_Form in 'View\Chat\Forms\ContactList_Form.pas' {ContactListForm: TvcmEntityForm},
  evCustomChatMemo in 'w:\common\components\gui\Garant\Everest\evCustomChatMemo.pas'
  {$If defined(Nemesis)}
  ,
  nscCustomChatMemoDocumentPartGenerator in 'w:\common\components\gui\Garant\Nemesis\nscCustomChatMemoDocumentPartGenerator.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscCustomChatMemoProcessor in 'w:\common\components\gui\Garant\Nemesis\nscCustomChatMemoProcessor.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscCustomChatMemoContainer in 'w:\common\components\gui\Garant\Nemesis\nscCustomChatMemoContainer.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscCustomChatMemoTextSource in 'w:\common\components\gui\Garant\Nemesis\nscCustomChatMemoTextSource.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscCustomChatMemo in 'w:\common\components\gui\Garant\Nemesis\nscCustomChatMemo.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscChatMemo in 'w:\common\components\gui\Garant\Nemesis\nscChatMemo.pas'
  {$IfEnd} //Nemesis
  ,
  AbstractHistory_Form in 'View\Chat\Forms\AbstractHistory_Form.pas',
  BaseChatWindow_cwChat_UserType in 'View\Chat\Forms\BaseChatWindow_cwChat_UserType.pas',
  evdAllDocumentSubsEliminator in 'w:\common\components\rtl\Garant\EVD\evdAllDocumentSubsEliminator.pas',
  BaseChatWindow_Form in 'View\Chat\Forms\BaseChatWindow_Form.pas',
  BaseChatWindowOptions_Form in 'View\Chat\Forms\BaseChatWindowOptions_Form.pas',
  ChatWindow_Form in 'View\Chat\Forms\ChatWindow_Form.pas' {ChatWindowForm: TvcmEntityForm},
  BaseHistoryWindow_utChatHistory_UserType in 'View\Chat\Forms\BaseHistoryWindow_utChatHistory_UserType.pas',
  BaseHistoryWindow_Form in 'View\Chat\Forms\BaseHistoryWindow_Form.pas',
  ChatHistory_Form in 'View\Chat\Forms\ChatHistory_Form.pas' {ChatHistoryForm: TvcmEntityForm},
  nsBaseChatWindowList in 'Chat\nsBaseChatWindowList.pas',
  nsChatWindowList in 'Chat\nsChatWindowList.pas',
  nsUserIDList in 'Chat\nsUserIDList.pas',
  nsBaseChatHistoryList in 'Chat\nsBaseChatHistoryList.pas',
  nsChatHistoryList in 'Chat\nsChatHistoryList.pas',
  nsContactListNotifiers in 'Chat\nsContactListNotifiers.pas',
  ChatInterfacesUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\ChatInterfacesUnit.pas',
  nsGroupFilter in 'Data\Users\nsGroupFilter.pas',
  nsUserFlagsFilters in 'Data\Users\nsUserFlagsFilters.pas',
  nsUserTreeStruct in 'Data\Users\nsUserTreeStruct.pas',
  nsChatTreeStruct in 'Chat\nsChatTreeStruct.pas',
  nsChatMessages in 'Chat\nsChatMessages.pas',
  nsChatMessage in 'Chat\nsChatMessage.pas',
  nsNotifiers in 'Data\Common\nsNotifiers.pas',
  bsChatDispatcherPrim in 'Chat\bsChatDispatcherPrim.pas',
  bsChatDispatcher in 'Chat\bsChatDispatcher.pas',
  kw_Chat_OpenContactList in 'View\Chat\kw_Chat_OpenContactList.pas',
  BaseChat_Module in 'View\Chat\BaseChat_Module.pas',
  moChat in 'View\moChat.pas' {mo_Chat: TvcmModule},
  WorkJournalInterfaces in 'View\WorkJournalInterfaces.pas',
  WorkJournal_Strange_Controls in 'View\WorkJournal_Strange_Controls.pas',
  PrimWorkJournal_utWorkJournal_UserType in 'View\WorkJournal\Forms\PrimWorkJournal_utWorkJournal_UserType.pas',
  UserJournalUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\UserJournalUnit.pas',
  PrimWorkJournal_Form in 'View\WorkJournal\Forms\PrimWorkJournal_Form.pas',
  PrimWorkJournalOptions_Form in 'View\WorkJournal\Forms\PrimWorkJournalOptions_Form.pas',
  WorkJournal_Form in 'View\WorkJournal\Forms\WorkJournal_Form.pas' {WorkJournalForm: TvcmEntityForm},
  nsWorkJournalListeners in 'WorkJournal\nsWorkJournalListeners.pas',
  nsJournalTreeStruct in 'WorkJournal\nsJournalTreeStruct.pas',
  bsWorkJournalPrim in 'WorkJournal\bsWorkJournalPrim.pas',
  bsWorkJournal in 'WorkJournal\bsWorkJournal.pas',
  kw_WorkJournal_OpenJournal in 'View\WorkJournal\kw_WorkJournal_OpenJournal.pas',
  BaseWorkJournal_Module in 'View\WorkJournal\BaseWorkJournal_Module.pas',
  moWorkJournal in 'View\moWorkJournal.pas' {mo_WorkJournal: TvcmModule},
  MonitoringUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\MonitoringUnit.pas',
  AutoreferatInterfaces in 'Autoreferat\AutoreferatInterfaces.pas',
  Autoreferat_InternalOperations_Controls in 'View\Autoreferat_InternalOperations_Controls.pas',
  PrimNewsLine_Form in 'View\Search\Forms\PrimNewsLine_Form.pas',
  PrimNewsLine_nltMain_UserType in 'View\Search\Forms\PrimNewsLine_nltMain_UserType.pas',
  PrimeInterfaces in 'Common\PrimeInterfaces.pas',
  nsNewsLine in 'View\Search\nsNewsLine.pas',
  PrimNewsLineOptions_Form in 'View\Search\Forms\PrimNewsLineOptions_Form.pas',
  NewsLine_Form in 'View\Search\Forms\NewsLine_Form.pas' {enNewsLine: TvcmEntityForm},
  fsAutoreferat in 'View\Search\fsAutoreferat.pas' {fs_Autoreferat: TvcmFormSetFactory},
  fsAutoreferatAfterSearch in 'View\Search\fsAutoreferatAfterSearch.pas' {fs_AutoreferatAfterSearch: TvcmFormSetFactory}
  {$If not defined(NoVCM)}
  ,
  vcmFormDataSourceRef in 'w:\common\components\gui\Garant\VCM\implementation\vcmFormDataSourceRef.pas'
  {$IfEnd} //not NoVCM
  ,
  nsDocumentLikeStateHolder in 'Business\Document\nsDocumentLikeStateHolder.pas',
  evHolderDataObject in 'w:\common\components\gui\Garant\Everest\evHolderDataObject.pas',
  nsDocumentToolsNew in 'F1DocumentProcessing\nsDocumentToolsNew.pas',
  nsIDocumentDataObject in 'F1DocumentProcessing\nsIDocumentDataObject.pas',
  nsDocumentPrintEvent in 'F1DocumentProcessing\nsDocumentPrintEvent.pas',
  nsAnnotationHeaderTagData in 'Autoreferat\nsAnnotationHeaderTagData.pas',
  nsAnnotationHeaderTagNode in 'Autoreferat\nsAnnotationHeaderTagNode.pas',
  nsF1AutoreferatDocumentTagNode in 'Autoreferat\nsF1AutoreferatDocumentTagNode.pas',
  nsAutoreferatDocumentContainer in 'Autoreferat\nsAutoreferatDocumentContainer.pas',
  dsAutoreferat in 'Autoreferat\dsAutoreferat.pas',
  dsNewsLine in 'Autoreferat\dsNewsLine.pas',
  dBaseDocument in 'Business\Document\dBaseDocument.pas',
  sdsAutoreferat in 'Autoreferat\sdsAutoreferat.pas',
  kw_Monitorings_OpenNewsLine in 'View\Search\kw_Monitorings_OpenNewsLine.pas',
  kw_Monitorings_OpenLegislationReview in 'View\Search\kw_Monitorings_OpenLegislationReview.pas',
  PrimMonitorings_Module in 'View\Search\PrimMonitorings_Module.pas',
  moMonitorings in 'View\moMonitorings.pas' {mo_Monitorings: TvcmModule},
  PrimRememberPassword_Form in 'View\Common\Forms\PrimRememberPassword_Form.pas',
  PrimProgressIndicator_utProgressIndicator_UserType in 'View\Common\Forms\PrimProgressIndicator_utProgressIndicator_UserType.pas',
  PrimProgressIndicator_Form in 'View\Common\Forms\PrimProgressIndicator_Form.pas',
  ProgressIndicator_Form in 'View\Common\Forms\ProgressIndicator_Form.pas' {efProgressIndicator: TvcmEntityForm},
  vtButton in 'w:\common\components\gui\Garant\VT\vtButton.pas',
  PrimEULA_Form in 'View\Common\Forms\PrimEULA_Form.pas',
  EULA_ut_EULA_UserType in 'View\Common\Forms\EULA_ut_EULA_UserType.pas',
  EULA_Form in 'View\Common\Forms\EULA_Form.pas' {efEULA: TvcmEntityForm},
  ComplectUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\ComplectUnit.pas',
  About_ut_About_UserType in 'View\Common\Forms\About_ut_About_UserType.pas',
  About_Form in 'View\Common\Forms\About_Form.pas' {efAbout: TvcmEntityForm},
  PrimTasksPanel_tpMain_UserType in 'View\Common\Forms\PrimTasksPanel_tpMain_UserType.pas',
  PrimTasksPanel_Form in 'View\Common\Forms\PrimTasksPanel_Form.pas',
  CommonDictionInterfaces in 'CommonDiction\CommonDictionInterfaces.pas',
  PrimCommonDiction_utTips_UserType in 'View\Common\Forms\PrimCommonDiction_utTips_UserType.pas',
  PrimCommonDiction_utMedicDiction_UserType in 'View\Common\Forms\PrimCommonDiction_utMedicDiction_UserType.pas',
  PrimCommonDiction_Form in 'View\Common\Forms\PrimCommonDiction_Form.pas',
  DictionRes in 'View\Common\DictionRes.pas' {nsDictRes: TDataModule},
  PrimCommonDictionOptions_Form in 'View\Common\Forms\PrimCommonDictionOptions_Form.pas',
  PrimNavigator_utNavigator_UserType in 'View\Common\Forms\PrimNavigator_utNavigator_UserType.pas',
  PrimNavigator_Form in 'View\Common\Forms\PrimNavigator_Form.pas',
  PrimNavigatorOptions_Form in 'View\Common\Forms\PrimNavigatorOptions_Form.pas',
  vtDblClickDateEdit in 'w:\common\components\gui\Garant\VT\vtDblClickDateEdit.pas',
  vtRadioButton in 'w:\common\components\gui\Garant\VT\vtRadioButton.pas',
  PrimTurnOffTimeMachine_Form in 'View\Common\Forms\PrimTurnOffTimeMachine_Form.pas',
  PrimTurnOffTimeMachineOptions_Form in 'View\Common\Forms\PrimTurnOffTimeMachineOptions_Form.pas',
  nsComplectInfoNode in 'Common\nsComplectInfoNode.pas',
  nsComplectInfoRootNode in 'Common\nsComplectInfoRootNode.pas',
  nsComplectInfoTreeStruct in 'Common\nsComplectInfoTreeStruct.pas',
  ComplectInfoRes in 'Common\ComplectInfoRes.pas',
  PrimCompInfo_Form in 'View\Common\Forms\PrimCompInfo_Form.pas',
  RememberPassword_ut_RememberPassword_UserType in 'View\Common\Forms\RememberPassword_ut_RememberPassword_UserType.pas',
  RememberPassword_Form in 'View\Common\Forms\RememberPassword_Form.pas' {RememberPasswordForm: TvcmEntityForm},
  CompInfo_ut_CompInfo_UserType in 'View\Common\Forms\CompInfo_ut_CompInfo_UserType.pas',
  CompInfo_Form in 'View\Common\Forms\CompInfo_Form.pas' {enCompInfo: TvcmEntityForm},
  RegistrationForm_ut_RegistrationForm_UserType in 'View\Common\Forms\RegistrationForm_ut_RegistrationForm_UserType.pas',
  Registration_Form in 'View\Common\Forms\Registration_Form.pas' {nsRegistrationForm: TvcmEntityForm},
  TasksPanel_Form in 'View\Common\Forms\TasksPanel_Form.pas' {en_TasksPanel: TvcmEntityForm},
  CommonDiction_Form in 'View\Common\Forms\CommonDiction_Form.pas' {en_CommonDiction: TvcmEntityForm},
  nsNavigatorTreeStruct in 'Common\nsNavigatorTreeStruct.pas',
  Navigator_Form in 'View\Common\Forms\Navigator_Form.pas' {en_Navigator: TvcmEntityForm},
  TurnOffTimeMachine_ut_TurnOffTimeMachine_UserType in 'View\Common\Forms\TurnOffTimeMachine_ut_TurnOffTimeMachine_UserType.pas',
  TurnOffTimeMachine_Form in 'View\Common\Forms\TurnOffTimeMachine_Form.pas' {en_TurnOffTimeMachine: TvcmEntityForm},
  kw_Common_ComplectInfo in 'View\Common\kw_Common_ComplectInfo.pas',
  kw_Common_PageSetup in 'View\Common\kw_Common_PageSetup.pas',
  kw_Common_ShowEULA in 'View\Common\kw_Common_ShowEULA.pas',
  kw_Common_OpenMainMenuByButton in 'View\Common\kw_Common_OpenMainMenuByButton.pas',
  kw_Common_OpenMainMenuNew in 'View\Common\kw_Common_OpenMainMenuNew.pas',
  kw_Common_TasksPanel in 'View\Common\kw_Common_TasksPanel.pas',
  kw_Common_LetterToDevelopers in 'View\Common\kw_Common_LetterToDevelopers.pas',
  kw_Common_OpenRubricator in 'View\Common\kw_Common_OpenRubricator.pas',
  kw_Common_OpenInformation in 'View\Common\kw_Common_OpenInformation.pas',
  kw_Common_get_navigator in 'View\Common\kw_Common_get_navigator.pas',
  kw_Common_OpenIntranet in 'View\Common\kw_Common_OpenIntranet.pas',
  PrimF1Common_Module in 'View\Common\PrimF1Common_Module.pas',
  moCommon in 'View\moCommon.pas' {mo_Common: TvcmModule},
  PrimDocNumberQuery_Form in 'View\PrimDocNumberQuery_Form.pas',
  PrimDocNumberQueryOptions_Form in 'View\PrimDocNumberQueryOptions_Form.pas',
  DocNumberQuery_ut_DocNumberQuery_UserType in 'View\Document\Forms\DocNumberQuery_ut_DocNumberQuery_UserType.pas',
  DocNumberQuery_Form in 'View\Document\Forms\DocNumberQuery_Form.pas' {DocNumberQueryForm: TvcmEntityForm},
  DocumentWithFlashUserTypes_dwftSynchro_UserType in 'View\DocumentWithFlashUserTypes_dwftSynchro_UserType.pas',
  DocumentWithFlashUserTypes_dwftMain_UserType in 'View\DocumentWithFlashUserTypes_dwftMain_UserType.pas',
  nevContainers in 'w:\common\components\gui\Garant\Everest\nevContainers.pas',
  ExTextOptions_Form in 'View\Document\Forms\ExTextOptions_Form.pas',
  SynchroViewUserTypes_svSynchroView_UserType in 'View\SynchroViewUserTypes_svSynchroView_UserType.pas',
  PrimSynchroView_Form in 'View\PrimSynchroView_Form.pas',
  PrimSynchroViewOptions_Form in 'View\PrimSynchroViewOptions_Form.pas',
  RedactionsUserTypes_utRedaction_UserType in 'View\RedactionsUserTypes_utRedaction_UserType.pas',
  nsEditionTree in 'Common\nsEditionTree.pas',
  PrimRedactions_Form in 'View\PrimRedactions_Form.pas',
  PrimRedactionsOptions_Form in 'View\PrimRedactionsOptions_Form.pas',
  PrimPictureInfo_Form in 'View\PrimPictureInfo_Form.pas',
  PrimPictureInfoOptions_Form in 'View\PrimPictureInfoOptions_Form.pas',
  AttributesUserTypes_fDocAttribute_UserType in 'View\AttributesUserTypes_fDocAttribute_UserType.pas',
  AttributesUserTypes_fAttributeSynchroView_UserType in 'View\AttributesUserTypes_fAttributeSynchroView_UserType.pas',
  nsSingleAttributeStorable in 'Common\nsSingleAttributeStorable.pas',
  nsSingleAttributeDataObject in 'Common\nsSingleAttributeDataObject.pas',
  nsSingleAttributeData in 'Common\nsSingleAttributeData.pas',
  PrimAttributes_Form in 'View\PrimAttributes_Form.pas',
  evTreeStorable in 'w:\common\components\gui\Garant\Everest\evTreeStorable.pas',
  evTreeDataObject in 'w:\common\components\gui\Garant\Everest\evTreeDataObject.pas',
  PrimAttributesOptions_Form in 'View\PrimAttributesOptions_Form.pas',
  PrimPicture_pfImage_UserType in 'View\PrimPicture_pfImage_UserType.pas',
  PrimPicture_Form in 'View\PrimPicture_Form.pas',
  imageenview in 'w:\common\components\rtl\external\ImageEn\src\imageenview.pas',
  imageenproc in 'w:\common\components\rtl\external\ImageEn\src\imageenproc.pas',
  evBitmapDataObject in 'w:\common\components\gui\Garant\Everest\evBitmapDataObject.pas',
  nsObjectPreview in 'Printing\nsObjectPreview.pas',
  PrimPictureOptions_Form in 'View\PrimPictureOptions_Form.pas',
  FlashUtils in 'View\Common\FlashUtils.pas',
  PrimDocumentWithFlash_Form in 'View\PrimDocumentWithFlash_Form.pas',
  PrimDocumentWithFlashOptions_Form in 'View\PrimDocumentWithFlashOptions_Form.pas',
  ContentsUserTypes_utContents_UserType in 'View\ContentsUserTypes_utContents_UserType.pas',
  ContentsUserTypes_utDrugContents_UserType in 'View\ContentsUserTypes_utDrugContents_UserType.pas',
  nevFlatSubsList in 'w:\common\components\gui\Garant\Everest\new\nevFlatSubsList.pas',
  nsContentsTreeStorable in 'Common\nsContentsTreeStorable.pas'
  {$If not defined(NoVCM)}
  ,
  vcmTasksPanel in 'w:\common\components\gui\Garant\VCM\implementation\vcmTasksPanel.pas'
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanelGroupDescList in 'w:\common\components\gui\Garant\Nemesis\nscTasksPanelGroupDescList.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanelGroup in 'w:\common\components\gui\Garant\Nemesis\nscTasksPanelGroup.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanelGroupsIterator in 'w:\common\components\gui\Garant\Nemesis\nscTasksPanelGroupsIterator.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTasksPanel in 'w:\common\components\gui\Garant\Nemesis\nscTasksPanel.pas'
  {$IfEnd} //Nemesis
  ,
  nsContentsListForFiltering in 'View\nsContentsListForFiltering.pas',
  PrimContents_Form in 'View\PrimContents_Form.pas',
  PrimContentsOptions_Form in 'View\PrimContentsOptions_Form.pas',
  PrimTurnOnTimeMachine_Form in 'View\PrimTurnOnTimeMachine_Form.pas',
  PrimTurnOnTimeMachineOptions_Form in 'View\PrimTurnOnTimeMachineOptions_Form.pas',
  nsWarningDocumentContainer in 'View\nsWarningDocumentContainer.pas',
  PrimWarning_Form in 'View\PrimWarning_Form.pas',
  PrimWarningOptions_Form in 'View\PrimWarningOptions_Form.pas',
  PrimWarningBaloonOptions_Form in 'View\PrimWarningBaloonOptions_Form.pas',
  PrimDockedWarning_Form in 'View\PrimDockedWarning_Form.pas',
  PrimListInterfaces in 'BusinessInterfaces\PrimListInterfaces.pas',
  fsAbstractDocument in 'View\fsAbstractDocument.pas',
  DocumentWithFlash_Form in 'View\Document\Forms\DocumentWithFlash_Form.pas' {DocumentWithFlashForm: TvcmEntityForm},
  Text_Form in 'View\Document\Forms\Text_Form.pas' {TextForm: TvcmEntityForm},
  Redactions_Form in 'View\Document\Forms\Redactions_Form.pas' {RedactionsForm: TvcmEntityForm},
  Contents_Form in 'View\Document\Forms\Contents_Form.pas' {ContentsForm: TvcmEntityForm},
  nsDocAttributeTreeStruct in 'Common\nsDocAttributeTreeStruct.pas',
  dsAttributes in 'Business\Document\dsAttributes.pas',
  deSearchInfo in 'Search\deSearchInfo.pas',
  deDocumentList in 'Business\Document\deDocumentList.pas',
  deListSet in 'Business\Document\deListSet.pas',
  nsContentsNode in 'f1DocumentTagsImplementation\nsContentsNode.pas',
  nsContentsTree in 'F1DocumentProcessing\nsContentsTree.pas',
  nsMedicContentsTree in 'F1DocumentProcessing\nsMedicContentsTree.pas',
  nsF1DocumentContainer in 'F1DocumentProcessing\nsF1DocumentContainer.pas',
  dsDocument in 'Business\Document\dsDocument.pas',
  nsINodesClipboardDataObject in 'Business\Document\nsINodesClipboardDataObject.pas',
  nsIListDataObject in 'Business\Document\nsIListDataObject.pas',
  nsDocumentStreamWrapper in 'Business\Document\nsDocumentStreamWrapper.pas',
  afwDocumentPreviewList in 'w:\common\components\gui\Garant\AFW\implementation\afwDocumentPreviewList.pas',
  afwMultiDocumentPreview in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwMultiDocumentPreview.pas',
  evMultiDocumentPreview in 'w:\common\components\gui\Garant\Everest\evMultiDocumentPreview.pas',
  bsConst in 'Data\Common\bsConst.pas',
  ddHTMLReader in 'w:\common\components\rtl\Garant\dd\ddHTMLReader.pas',
  evHTMLDataObject in 'w:\common\components\gui\Garant\Everest\evHTMLDataObject.pas',
  nsSuperComplexDocumentPreview in 'Common\nsSuperComplexDocumentPreview.pas',
  nsNodesInterfacedDataObject in 'Business\List\nsNodesInterfacedDataObject.pas',
  nsNodesDataObject in 'Business\List\nsNodesDataObject.pas',
  bsListDataObject in 'Business\List\bsListDataObject.pas',
  bsListTreeData in 'Business\List\bsListTreeData.pas',
  bsListTreeStruct in 'Business\List\bsListTreeStruct.pas',
  nsListHAFMacroReplacer in 'Business\List\nsListHAFMacroReplacer.pas',
  nsListPrintEvent in 'Business\Document\nsListPrintEvent.pas',
  nsTreeMultiDocumentPreviewContainer in 'Common\nsTreeMultiDocumentPreviewContainer.pas',
  nsAddToListEvent in 'Business\List\nsAddToListEvent.pas',
  nsListSortEvent in 'Business\List\nsListSortEvent.pas',
  nsFindContextInListEvent in 'Business\List\nsFindContextInListEvent.pas',
  dsDocumentListCR in 'Business\Document\dsDocumentListCR.pas',
  dsDocumentList in 'Business\List\dsDocumentList.pas',
  nsChildDocInfoHAFMacroReplacer in 'Business\Document\nsChildDocInfoHAFMacroReplacer.pas',
  dsChildDocument in 'Business\Document\dsChildDocument.pas',
  dsAnnotation in 'Business\Document\dsAnnotation.pas',
  dsDocumentWithFlash in 'Business\Document\dsDocumentWithFlash.pas',
  bsFrozenNode in 'Data\Tree\bsFrozenNode.pas',
  deDocumentListCR in 'Business\Document\deDocumentListCR.pas',
  bsUserCRListInfo in 'Business\Document\bsUserCRListInfo.pas',
  dsTranslation in 'Business\Document\dsTranslation.pas',
  dsRelatedDoc in 'Business\Document\dsRelatedDoc.pas',
  dDocument in 'Document\dDocument.pas',
  dsDocumentListCRToPart in 'Document\dsDocumentListCRToPart.pas',
  dsBaseContentsRes in 'Business\Document\dsBaseContentsRes.pas',
  dsContents in 'Business\Document\dsContents.pas',
  nsDocumentWarningGenerator in 'PrimListAndDocumentControllers\nsDocumentWarningGenerator.pas',
  dsTranslationWarning in 'Document\dsTranslationWarning.pas',
  nsListWarningGenerator in 'PrimListControllers\nsListWarningGenerator.pas',
  dsCRWarning in 'Document\dsCRWarning.pas',
  sdsDocument in 'Document\sdsDocument.pas',
  sdsDocumentWithFlash in 'Document\sdsDocumentWithFlash.pas',
  fsDocument in 'View\Document\fsDocument.pas' {fs_Document: TvcmFormSetFactory},
  fsDocumentWithFlash in 'View\Document\fsDocumentWithFlash.pas' {fs_DocumentWithFlash: TvcmFormSetFactory},
  Picture_Form in 'View\Document\Forms\Picture_Form.pas' {PictureForm: TvcmEntityForm},
  PictureInfo_ut_PictureInfo_UserType in 'View\Document\Forms\PictureInfo_ut_PictureInfo_UserType.pas',
  PictureInfo_Form in 'View\Document\Forms\PictureInfo_Form.pas' {en_PictureInfo: TvcmEntityForm},
  nsOpenDocOnNumberData in 'View\nsOpenDocOnNumberData.pas',
  Warning_Form in 'View\Document\Forms\Warning_Form.pas' {WarningForm: TvcmEntityForm},
  Attributes_Form in 'View\Document\Forms\Attributes_Form.pas' {AttributesForm: TvcmEntityForm},
  SynchroView_Form in 'View\Document\Forms\SynchroView_Form.pas' {fcSynchroView: TvcmEntityForm},
  TurnOnTimeMachine_ut_TurnOnTimeMachine_UserType in 'View\Document\Forms\TurnOnTimeMachine_ut_TurnOnTimeMachine_UserType.pas',
  TurnOnTimeMachine_Form in 'View\Document\Forms\TurnOnTimeMachine_Form.pas' {en_TurnOnTimeMachine: TvcmEntityForm},
  WarningBaloon_Form in 'View\Document\Forms\WarningBaloon_Form.pas' {WarningBaloonForm: TvcmEntityForm},
  SynchroView_WarningBaloon_Form in 'View\Document\Forms\SynchroView_WarningBaloon_Form.pas' {SynchroView_WarningBaloonForm: TvcmEntityForm},
  Translation_WarningBaloon_Form in 'View\Document\Forms\Translation_WarningBaloon_Form.pas' {Translation_WarningBaloonForm: TvcmEntityForm},
  UserCR1_WarningBaloon_Form in 'View\Document\Forms\UserCR1_WarningBaloon_Form.pas' {UserCR1_WarningBaloonForm: TvcmEntityForm},
  UserCR2_WarningBaloon_Form in 'View\Document\Forms\UserCR2_WarningBaloon_Form.pas' {UserCR2_WarningBaloonForm: TvcmEntityForm},
  DocumentPrintAndExportSettingRes in 'View\Document\DocumentPrintAndExportSettingRes.pas',
  DocumentPrintAndExportFontSizeSettingRes in 'View\Document\DocumentPrintAndExportFontSizeSettingRes.pas',
  l3ObjectRefList in 'w:\common\components\rtl\Garant\L3\l3ObjectRefList.pas',
  ddAppConfigConst in 'w:\common\components\rtl\Garant\dd\ddAppConfigConst.pas',
  ddConfigStorages in 'w:\common\components\rtl\Garant\dd\ddConfigStorages.pas',
  ddStreamUtils in 'w:\common\components\rtl\Garant\dd\ddStreamUtils.pas',
  ddAppConfigTypesModelPart in 'w:\common\components\rtl\Garant\dd\ddAppConfigTypesModelPart.pas',
  ddAppConfigTypesRes in 'w:\common\components\rtl\Garant\dd\ddAppConfigTypesRes.pas',
  ddAppConfigTypes in 'w:\common\components\rtl\Garant\dd\ddAppConfigTypes.pas',
  stDocumentPrintAndExportFontSizeItem in 'View\Document\stDocumentPrintAndExportFontSizeItem.pas',
  DocumentShowChangesInfoSettingRes in 'View\Document\DocumentShowChangesInfoSettingRes.pas',
  stDocumentShowChangesInfoItem in 'View\Document\stDocumentShowChangesInfoItem.pas',
  kw_Document_OpenDocOnNumber in 'View\Document\kw_Document_OpenDocOnNumber.pas',
  Document_Module in 'View\Document\Document_Module.pas',
  moDocument in 'View\moDocument.pas' {mo_Document: TvcmModule},
  PrimListAnalizer_listAnalize_UserType in 'View\List\Forms\PrimListAnalizer_listAnalize_UserType.pas',
  PrimListAnalizer_Form in 'View\List\Forms\PrimListAnalizer_Form.pas',
  ListAnalizer_Form in 'View\List\Forms\ListAnalizer_Form.pas' {ListAnalizerForm: TvcmEntityForm},
  ListInterfaces in 'Business\ListInterfaces.pas',
  bsOpenListInfo in 'Business\List\bsOpenListInfo.pas',
  ListInfoUserTypes_liListInfo_UserType in 'View\ListInfoUserTypes_liListInfo_UserType.pas',
  FiltersUserTypes_utFilters_UserType in 'View\Common\Forms\FiltersUserTypes_utFilters_UserType.pas',
  PrimListInfo_Form in 'View\List\Forms\PrimListInfo_Form.pas',
  PrimListInfoOptions_Form in 'View\List\Forms\PrimListInfoOptions_Form.pas',
  ListAnalizeUserTypes_Analize_UserType in 'View\ListAnalizeUserTypes_Analize_UserType.pas',
  PrimListAnalize_Form in 'View\List\Forms\PrimListAnalize_Form.pas',
  List_Form in 'View\List\Forms\List_Form.pas' {efList: TvcmEntityForm},
  ListInfo_Form in 'View\List\Forms\ListInfo_Form.pas' {efListInfo: TvcmEntityForm},
  fsList in 'View\List\fsList.pas' {fs_List: TvcmFormSetFactory},
  dsSynchroView in 'Business\List\dsSynchroView.pas',
  dsListInfo in 'Business\List\dsListInfo.pas',
  dsMainList in 'List\dsMainList.pas',
  deFilter in 'List\deFilter.pas',
  dsFilters in 'List\dsFilters.pas',
  dList in 'List\dList.pas',
  dsListAnalize in 'List\dsListAnalize.pas',
  dsSynchroViewWarning in 'Business\Document\dsSynchroViewWarning.pas',
  nsAACDocumentContainerPrim in 'F1DocumentProcessing\nsAACDocumentContainerPrim.pas',
  nsAACDocumentSynchroViewContainer in 'F1DocumentProcessing\nsAACDocumentSynchroViewContainer.pas',
  dsSynchroViewDocument in 'List\dsSynchroViewDocument.pas',
  sdsList in 'List\sdsList.pas',
  ListAnalize_Form in 'View\List\Forms\ListAnalize_Form.pas' {ListAnalizeForm: TvcmEntityForm},
  List_Module in 'View\List\List_Module.pas',
  moList in 'View\moList.pas' {mo_List: TvcmModule},
  DictionInterfaces in 'Diction\DictionInterfaces.pas'
  {$If defined(Nemesis)}
  ,
  InscContextFilterStateList in 'w:\common\components\gui\Garant\Nemesis\InscContextFilterStateList.pas'
  {$IfEnd} //Nemesis
  ,
  nsLangList in 'Diction\nsLangList.pas',
  nsLangToContextMap in 'Diction\nsLangToContextMap.pas',
  Diction_Strange_Controls in 'View\Diction_Strange_Controls.pas',
  nsDictCache in 'Diction\nsDictCache.pas',
  nsDictListChild in 'Diction\nsDictListChild.pas',
  nsLayerFilter in 'Diction\nsLayerFilter.pas',
  nsLayeredTreeFilters in 'Diction\nsLayeredTreeFilters.pas',
  nsDictionTree in 'Diction\nsDictionTree.pas',
  PrimDiction_Form in 'View\Diction\Forms\PrimDiction_Form.pas',
  PrimDiction_utDiction_UserType in 'View\Diction\Forms\PrimDiction_utDiction_UserType.pas',
  DictionContainerUserTypes_slqtMedicDiction_UserType in 'View\DictionContainerUserTypes_slqtMedicDiction_UserType.pas',
  DictionContainerUserTypes_slqtDiction_UserType in 'View\DictionContainerUserTypes_slqtDiction_UserType.pas',
  PrimDictionContainer_Form in 'View\Diction\Forms\PrimDictionContainer_Form.pas',
  PrimDictionOptions_Form in 'View\Diction\Forms\PrimDictionOptions_Form.pas',
  Diction_Form in 'View\Diction\Forms\Diction_Form.pas' {enDiction: TvcmEntityForm},
  deCommonDiction in 'CommonDiction\deCommonDiction.pas',
  deDiction in 'Diction\deDiction.pas',
  dCommonDiction in 'CommonDiction\dCommonDiction.pas',
  dsSaveLoad in 'Search\dsSaveLoad.pas',
  dsChild in 'CommonDiction\dsChild.pas',
  dsDiction in 'Diction\dsDiction.pas',
  nsDictionDocumentContainer in 'DictionLikeDocumentProcessing\nsDictionDocumentContainer.pas',
  dsDictionDocument in 'Diction\dsDictionDocument.pas',
  l3InterfaceList in 'w:\common\components\rtl\Garant\L3\l3InterfaceList.pas',
  dDiction in 'Diction\dDiction.pas',
  sdsDiction in 'Diction\sdsDiction.pas',
  fsDiction in 'View\Diction\fsDiction.pas' {fs_Diction: TvcmFormSetFactory},
  DictionContainer_Form in 'View\Diction\Forms\DictionContainer_Form.pas' {DictionContainerForm: TvcmEntityForm},
  kw_Diction_OpenDict in 'View\Diction\kw_Diction_OpenDict.pas',
  Diction_Module in 'View\Diction\Diction_Module.pas',
  moDiction in 'View\moDiction.pas' {mo_Diction: TvcmModule},
  DayTipsInterfaces in 'DayTips\DayTipsInterfaces.pas',
  PrimStartupTips_Form in 'View\DayTips\Forms\PrimStartupTips_Form.pas',
  sdsCommonDiction in 'CommonDiction\sdsCommonDiction.pas',
  nsTipsDocumentContainer in 'DayTips\nsTipsDocumentContainer.pas',
  dsTipsDocument in 'DayTips\dsTipsDocument.pas',
  deTips in 'DayTips\deTips.pas',
  nsTipsTree in 'DayTips\nsTipsTree.pas',
  dsTips in 'DayTips\dsTips.pas',
  sdsTips in 'DayTips\sdsTips.pas',
  fsTips in 'View\DayTips\fsTips.pas' {fs_Tips: TvcmFormSetFactory},
  StartupTips_ut_StartupTips_UserType in 'View\DayTips\Forms\StartupTips_ut_StartupTips_UserType.pas',
  StartupTips_Form in 'View\DayTips\Forms\StartupTips_Form.pas' {efStartupTips: TvcmEntityForm},
  nsStartupTips in 'DayTips\nsStartupTips.pas',
  kw_Tips_ShowDayTips in 'View\DayTips\kw_Tips_ShowDayTips.pas',
  DayTips_Module in 'View\DayTips\DayTips_Module.pas',
  moTips in 'View\moTips.pas' {mo_Tips: TvcmModule},
  MedicInterfaces in 'Medic\MedicInterfaces.pas',
  nsMainMenuNew in 'View\MainMenu\Forms\nsMainMenuNew.pas'
  {$If defined(Nemesis)}
  ,
  nscTreeViewHotTruck in 'w:\common\components\gui\Garant\Nemesis\nscTreeViewHotTruck.pas'
  {$IfEnd} //Nemesis
  ,
  PrimMainMenu_Form in 'View\MainMenu\Forms\PrimMainMenu_Form.pas',
  InpharmMainMenu_ut_mmmMain_UserType in 'View\Inpharm\Forms\InpharmMainMenu_ut_mmmMain_UserType.pas',
  InpharmMainMenu_Form in 'View\Inpharm\Forms\InpharmMainMenu_Form.pas',
  PrimMedicListSynchroView_mlsfDrugList_UserType in 'View\Inpharm\Forms\PrimMedicListSynchroView_mlsfDrugList_UserType.pas',
  Inpharm_Strange_Controls in 'View\Inpharm_Strange_Controls.pas',
  PrimMedicListSynchroView_mlsfMedicFirm_UserType in 'View\Inpharm\Forms\PrimMedicListSynchroView_mlsfMedicFirm_UserType.pas',
  PrimMedicListSynchroView_Form in 'View\Inpharm\Forms\PrimMedicListSynchroView_Form.pas',
  PrimMedicFirmList_Form in 'View\Inpharm\Forms\PrimMedicFirmList_Form.pas',
  PrimMedicFirmList_mflMain_UserType in 'View\Inpharm\Forms\PrimMedicFirmList_mflMain_UserType.pas',
  PrimMedicFirmListOptions_Form in 'View\Inpharm\Forms\PrimMedicFirmListOptions_Form.pas',
  dsMedicDictionDocument in 'Medic\dsMedicDictionDocument.pas',
  deMedicDiction in 'Medic\deMedicDiction.pas',
  nsMedicDictionTreeBase in 'Medic\nsMedicDictionTreeBase.pas',
  nsMedicDictionTree in 'Medic\nsMedicDictionTree.pas',
  dsMedicDiction in 'Medic\dsMedicDiction.pas',
  sdsMedicDiction in 'Medic\sdsMedicDiction.pas',
  dsMedicFirmDocument in 'Medic\dsMedicFirmDocument.pas',
  dsDrugList in 'Medic\dsDrugList.pas',
  dMedicFirmDocument in 'Medic\dMedicFirmDocument.pas',
  sdsMedicFirmDocument in 'Medic\sdsMedicFirmDocument.pas',
  dsBaseContents in 'Business\Document\dsBaseContents.pas',
  dsDrugDocument in 'Medic\dsDrugDocument.pas',
  dDrugDocument in 'Drug\dDrugDocument.pas',
  sdsDrugDocument in 'Drug\sdsDrugDocument.pas',
  fsMedicDiction in 'View\Inpharm\fsMedicDiction.pas' {fs_MedicDiction: TvcmFormSetFactory},
  fsMedicFirmDocument in 'View\Inpharm\fsMedicFirmDocument.pas' {fs_MedicFirmDocument: TvcmFormSetFactory},
  fsDrugDocument in 'View\Inpharm\fsDrugDocument.pas' {fs_DrugDocument: TvcmFormSetFactory},
  fsDrugList in 'View\Inpharm\fsDrugList.pas' {fs_DrugList: TvcmFormSetFactory},
  dsDrugListSynchroView in 'Drug\dsDrugListSynchroView.pas',
  dDrugList in 'Drug\dDrugList.pas',
  dsMainDrugList in 'Drug\dsMainDrugList.pas',
  dsDrugListDocument in 'Drug\dsDrugListDocument.pas',
  sdsDrugList in 'Drug\sdsDrugList.pas',
  fsMedicFirmList in 'View\Inpharm\fsMedicFirmList.pas' {fs_MedicFirmList: TvcmFormSetFactory},
  MedicMainMenu_Form in 'View\Inpharm\Forms\MedicMainMenu_Form.pas' {en_MedicMainMenu: TvcmEntityForm},
  MedicFirmList_Form in 'View\Inpharm\Forms\MedicFirmList_Form.pas' {en_MedicFirmList: TvcmEntityForm},
  MedicListSynchroView_Form in 'View\Inpharm\Forms\MedicListSynchroView_Form.pas' {en_MedicListSynchroView: TvcmEntityForm},
  dMedicFirmList in 'Medic\dMedicFirmList.pas',
  nsCountryFilter in 'Medic\nsCountryFilter.pas',
  nsMedicFirmListFilters in 'Medic\nsMedicFirmListFilters.pas',
  nsMedicFirmsTreeBase in 'Medic\nsMedicFirmsTreeBase.pas',
  nsMedicFirmsTree in 'Medic\nsMedicFirmsTree.pas',
  PharmFirmListUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\PharmFirmListUnit.pas',
  nsMedicFirmsSubscribersList in 'Medic\nsMedicFirmsSubscribersList.pas',
  nsMedicFirmsCountryFilterTreeBase in 'Medic\nsMedicFirmsCountryFilterTreeBase.pas',
  nsMedicFirmsCountryFilterTree in 'Medic\nsMedicFirmsCountryFilterTree.pas',
  dsMedicFirmList in 'Medic\dsMedicFirmList.pas',
  dsMedicFirmSynchroView in 'Medic\dsMedicFirmSynchroView.pas',
  sdsMedicFirmList in 'Medic\sdsMedicFirmList.pas',
  kw_Inpharm_MedicDiction in 'View\Inpharm\kw_Inpharm_MedicDiction.pas',
  kw_Inpharm_MedicFirms in 'View\Inpharm\kw_Inpharm_MedicFirms.pas',
  kw_Inpharm_DrugList in 'View\Inpharm\kw_Inpharm_DrugList.pas',
  kw_Inpharm_MedicMainMenu in 'View\Inpharm\kw_Inpharm_MedicMainMenu.pas',
  Inpharm_Module in 'View\Inpharm\Inpharm_Module.pas',
  moInpharm in 'View\moInpharm.pas' {mo_Inpharm: TvcmModule},
  Rubricator_Strange_Controls in 'View\Rubricator_Strange_Controls.pas',
  RubricatorInterfaces in 'Rubricator\RubricatorInterfaces.pas',
  nsRubricatorList in 'Rubricator\nsRubricatorList.pas',
  PrimRubricator_utRubricatorList_UserType in 'View\Rubricator\Forms\PrimRubricator_utRubricatorList_UserType.pas',
  RubricatorRes in 'View\Rubricator\RubricatorRes.pas' {nsRubricatorRes: TDataModule},
  PrimRubricator_Form in 'View\Rubricator\Forms\PrimRubricator_Form.pas',
  Rubricator_Form in 'View\Rubricator\Forms\Rubricator_Form.pas' {efRubricator: TvcmEntityForm},
  Rubricator_Module in 'View\Rubricator\Rubricator_Module.pas',
  moRubricator in 'View\moRubricator.pas' {mo_Rubricator: TvcmModule},
  Settings_Strange_Controls in 'View\Settings_Strange_Controls.pas',
  PrimSettings_cutSettings_UserType in 'View\Settings\Forms\PrimSettings_cutSettings_UserType.pas',
  nsAppConfigRes in 'Config\nsAppConfigRes.pas',
  ddAppConfigStringsRes in 'w:\common\components\rtl\Garant\dd\ddAppConfigStringsRes.pas',
  ddAppConfigStrings in 'w:\common\components\rtl\Garant\dd\ddAppConfigStrings.pas',
  ddAppConfigVersions in 'w:\common\components\rtl\Garant\dd\ddAppConfigVersions.pas',
  ddAppConfigWFrame in 'w:\common\components\rtl\Garant\dd\ddAppConfigWFrame.pas',
  ddAppConfigDataAdapters in 'w:\common\components\rtl\Garant\dd\ddAppConfigDataAdapters.pas',
  ddAppConfigRes in 'w:\common\components\rtl\Garant\dd\ddAppConfigRes.pas',
  ddAppConfigListsRes in 'w:\common\components\rtl\Garant\dd\ddAppConfigListsRes.pas',
  ddAppConfigLists in 'w:\common\components\rtl\Garant\dd\ddAppConfigLists.pas',
  ddAppConfigUtils in 'w:\common\components\rtl\Garant\dd\ddAppConfigUtils.pas',
  ddAppConfigDates in 'w:\common\components\rtl\Garant\dd\ddAppConfigDates.pas'
  {$If not defined(Nemesis)}
  ,
  ddIniStorage in 'w:\common\components\rtl\Garant\dd\ddIniStorage.pas'
  {$IfEnd} //not Nemesis
  ,
  ddAppConfigTFrame in 'w:\common\components\rtl\Garant\dd\ddAppConfigTFrame.pas',
  ddAppConfigBFrame in 'w:\common\components\rtl\Garant\dd\ddAppConfigBFrame.pas',
  ddUtils in 'w:\common\components\rtl\Garant\dd\ddUtils.pas',
  ddAppConfig in 'w:\common\components\rtl\Garant\dd\ddAppConfig.pas',
  nsAppConfig in 'Config\nsAppConfig.pas',
  PrimSettings_Form in 'View\Settings\Forms\PrimSettings_Form.pas',
  PrimStyleEditorFont_Form in 'View\Settings\Forms\PrimStyleEditorFont_Form.pas',
  PrimStyleEditorNavigator_utStyleEditorNavigator_UserType in 'View\Settings\Forms\PrimStyleEditorNavigator_utStyleEditorNavigator_UserType.pas',
  eeNode in 'w:\common\components\gui\Garant\Everest_Engine\eeNode.pas',
  PrimStyleEditorNavigator_Form in 'View\Settings\Forms\PrimStyleEditorNavigator_Form.pas',
  PrimStyleEditorExample_utStyleEditorExample_UserType in 'View\Settings\Forms\PrimStyleEditorExample_utStyleEditorExample_UserType.pas',
  PrimStyleEditorExample_Form in 'View\Settings\Forms\PrimStyleEditorExample_Form.pas',
  nsUserProperty in 'Data\Users\nsUserProperty.pas',
  PrimSelfInfo_Form in 'View\Settings\Forms\PrimSelfInfo_Form.pas',
  PrimConfigurationList_utConfigurationList_UserType in 'View\Settings\Forms\PrimConfigurationList_utConfigurationList_UserType.pas',
  ConfigurationListRes in 'Config\ConfigurationListRes.pas',
  PrimConfigurationList_Form in 'View\Settings\Forms\PrimConfigurationList_Form.pas',
  PrimStyleEditorContainer_utStyleEditorContainer_UserType in 'View\Settings\Forms\PrimStyleEditorContainer_utStyleEditorContainer_UserType.pas',
  PrimStyleEditorContainer_Form in 'View\Settings\Forms\PrimStyleEditorContainer_Form.pas',
  PrimStyleEditorContainerOptions_Form in 'View\Settings\Forms\PrimStyleEditorContainerOptions_Form.pas',
  StyleEditorContainer_Form in 'View\Settings\Forms\StyleEditorContainer_Form.pas' {StyleEditorContainerForm: TvcmEntityForm},
  StyleEditorFont_ut_StyleEditorFont_UserType in 'View\Settings\Forms\StyleEditorFont_ut_StyleEditorFont_UserType.pas',
  StyleEditorFont_Form in 'View\Settings\Forms\StyleEditorFont_Form.pas' {StyleEditorFontForm: TvcmEntityForm},
  StyleEditorNavigator_Form in 'View\Settings\Forms\StyleEditorNavigator_Form.pas' {StyleEditorNavigatorForm: TvcmEntityForm},
  ConfigurationList_Form in 'View\Settings\Forms\ConfigurationList_Form.pas' {en_ConfigurationList: TvcmEntityForm},
  Settings_Form in 'View\Settings\Forms\Settings_Form.pas' {cf_Settings: TvcmEntityForm},
  StyleEditorExample_Form in 'View\Settings\Forms\StyleEditorExample_Form.pas' {StyleEditorExampleForm: TvcmEntityForm},
  SelfInfo_ut_SelfInfo_UserType in 'View\Settings\Forms\SelfInfo_ut_SelfInfo_UserType.pas',
  SelfInfo_Form in 'View\Settings\Forms\SelfInfo_Form.pas' {SelfInfoForm: TvcmEntityForm},
  kw_Settings_OpenStyleEditorAsModal in 'View\Settings\kw_Settings_OpenStyleEditorAsModal.pas',
  kw_Settings_AutoLogin in 'View\Settings\kw_Settings_AutoLogin.pas',
  kw_Settings_SelectConfig in 'View\Settings\kw_Settings_SelectConfig.pas',
  kw_Settings_OpenConfList in 'View\Settings\kw_Settings_OpenConfList.pas',
  kw_Settings_LoadActiveSettings in 'View\Settings\kw_Settings_LoadActiveSettings.pas',
  kw_Settings_UserProperties in 'View\Settings\kw_Settings_UserProperties.pas',
  Settings_Module in 'View\Settings\Settings_Module.pas',
  moSettings in 'View\moSettings.pas' {mo_Settings: TvcmModule}
  {$If not defined(NoVCM)}
  ,
  vcmFormGUIDFromMainFormList in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmFormGUIDFromMainFormList.pas'
  {$IfEnd} //not NoVCM
  ,
  nsMainMenuFormGUIDFactory in 'View\MainMenu\nsMainMenuFormGUIDFactory.pas',
  MainMenuWithBaseSearchSupport_Form in 'View\MainMenu\Forms\MainMenuWithBaseSearchSupport_Form.pas',
  nsMainMenu2011Node in 'Common\nsMainMenu2011Node.pas',
  smTree in 'MainMenu\smTree.pas',
  smLawNewsTree in 'MainMenu\smLawNewsTree.pas',
  smNewSchoolReferencesTree in 'MainMenu\smNewSchoolReferencesTree.pas',
  PrimLegalMainMenu_Form in 'View\MainMenu\Forms\PrimLegalMainMenu_Form.pas'
  {$If defined(Nemesis)}
  ,
  nscFocusLabel in 'w:\common\components\gui\Garant\Nemesis\nscFocusLabel.pas'
  {$IfEnd} //Nemesis
  ,
  PrimMainMenuNew_utMainMenuNew_UserType in 'View\MainMenu\Forms\PrimMainMenuNew_utMainMenuNew_UserType.pas',
  iemview in 'w:\common\components\rtl\external\ImageEn\src\iemview.pas'
  {$If defined(Nemesis)}
  ,
  nscFixedHeightControlCell in 'w:\common\components\gui\Garant\Nemesis\nscFixedHeightControlCell.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscFixedWidthControlCell in 'w:\common\components\gui\Garant\Nemesis\nscFixedWidthControlCell.pas'
  {$IfEnd} //Nemesis
  ,
  nsHistoryTree in 'Common\nsHistoryTree.pas',
  nsJournalBookmarkNode in 'Common\nsJournalBookmarkNode.pas',
  nsLastOpenDocTree in 'Common\nsLastOpenDocTree.pas',
  smChangeableTree in 'MainMenu\smChangeableTree.pas',
  PrimMainMenuNew_Form in 'View\MainMenu\Forms\PrimMainMenuNew_Form.pas',
  MainMenuNew_Form in 'View\MainMenu\Forms\MainMenuNew_Form.pas' {en_MainMenuNew: TvcmEntityForm},
  MainMenuChangeableMainMenuTypeSettingRes in 'View\MainMenu\MainMenuChangeableMainMenuTypeSettingRes.pas',
  stMainMenuChangeableMainMenuTypeItem in 'View\MainMenu\stMainMenuChangeableMainMenuTypeItem.pas',
  MainMenu_Module in 'View\MainMenu\MainMenu_Module.pas',
  moMainMenu in 'View\moMainMenu.pas' {mo_MainMenu: TvcmModule},
  ConsultationInterfaces in 'Consultation\ConsultationInterfaces.pas',
  PrimConsultationMark_utcmMain_UserType in 'View\Consultation\Forms\PrimConsultationMark_utcmMain_UserType.pas',
  PrimConsultationMark_Form in 'View\Consultation\Forms\PrimConsultationMark_Form.pas',
  PrimConsultationMarkOptions_Form in 'View\Consultation\Forms\PrimConsultationMarkOptions_Form.pas',
  nsConsultationHAFPainterImages_Form in 'Consultation\nsConsultationHAFPainterImages_Form.pas',
  nsConsultationDocumentContainerNew in 'Consultation\nsConsultationDocumentContainerNew.pas',
  dsConsultation in 'Consultation\dsConsultation.pas',
  dsConsultationMark in 'Consultation\dsConsultationMark.pas',
  dsConsultationList in 'Consultation\dsConsultationList.pas',
  bsConsultationManager in 'Consultation\bsConsultationManager.pas',
  sdsConsultation in 'Consultation\sdsConsultation.pas',
  dsQuery in 'Consultation\dsQuery.pas',
  sdsQuery in 'Consultation\sdsQuery.pas',
  dsSendConsultation in 'Consultation\dsSendConsultation.pas',
  sdsSendConsultation in 'Consultation\sdsSendConsultation.pas',
  fsSendConsultation in 'View\Consultation\fsSendConsultation.pas' {fs_SendConsultation: TvcmFormSetFactory},
  fsConsultation in 'View\Consultation\fsConsultation.pas' {fs_Consultation: TvcmFormSetFactory},
  ConsultationMark_Form in 'View\Consultation\Forms\ConsultationMark_Form.pas' {en_ConsultationMark: TvcmEntityForm},
  Consultation_Module in 'View\Consultation\Consultation_Module.pas',
  moConsultations in 'View\moConsultations.pas' {mo_Consultations: TvcmModule}
  {$If defined(Nemesis)}
  ,
  nscLister in 'w:\common\components\gui\Garant\Nemesis\nscLister.pas'
  {$IfEnd} //Nemesis
  ,
  PrimBaseSearchCard_Form in 'View\BaseSearch\Forms\PrimBaseSearchCard_Form.pas',
  BaseSearchCard_ut_BaseSearchCard_UserType in 'View\BaseSearch\Forms\BaseSearchCard_ut_BaseSearchCard_UserType.pas',
  BaseSearchCard_Form in 'View\BaseSearch\Forms\BaseSearchCard_Form.pas' {en_BaseSearchCard: TvcmEntityForm},
  BaseSearch_Controls in 'View\BaseSearch_Controls.pas'
  {$If defined(Nemesis)}
  ,
  nscCustomTreeComboWithHistoryRes in 'w:\common\components\gui\Garant\Nemesis\nscCustomTreeComboWithHistoryRes.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscCustomTreeComboWithHistory in 'w:\common\components\gui\Garant\Nemesis\nscCustomTreeComboWithHistory.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTreeComboWithHistory in 'w:\common\components\gui\Garant\Nemesis\nscTreeComboWithHistory.pas'
  {$IfEnd} //Nemesis
  
  {$If defined(Nemesis)}
  ,
  nscTreeComboWithHistoryAndOperations in 'w:\common\components\gui\Garant\Nemesis\nscTreeComboWithHistoryAndOperations.pas'
  {$IfEnd} //Nemesis
  ,
  PrimBaseSearch_BaseSearch_UserType in 'View\BaseSearch\Forms\PrimBaseSearch_BaseSearch_UserType.pas',
  nsBaseSearchFormGUIDFactory in 'View\BaseSearch\nsBaseSearchFormGUIDFactory.pas',
  PrimBaseSearch_Form in 'View\BaseSearch\Forms\PrimBaseSearch_Form.pas',
  PrimBaseSearchOptions_Form in 'View\BaseSearch\Forms\PrimBaseSearchOptions_Form.pas',
  NewBaseSearchForDFM_Form in 'View\BaseSearch\Forms\NewBaseSearchForDFM_Form.pas',
  PrimSaveLoadOptionsForBaseSearch_slqtBaseSearch_UserType in 'View\Search\Forms\PrimSaveLoadOptionsForBaseSearch_slqtBaseSearch_UserType.pas',
  PrimSaveLoadOptionsForBaseSearch_Form in 'View\Search\Forms\PrimSaveLoadOptionsForBaseSearch_Form.pas',
  PrimBaseSearchContainer_Form in 'View\BaseSearch\Forms\PrimBaseSearchContainer_Form.pas',
  NewBaseSearch_Form in 'View\BaseSearch\Forms\NewBaseSearch_Form.pas' {NewBaseSearchForm: TvcmEntityForm},
  BaseSearchContainer_Form in 'View\BaseSearch\Forms\BaseSearchContainer_Form.pas' {BaseSearchContainerForm: TvcmEntityForm},
  BaseSearch_Module in 'View\BaseSearch\BaseSearch_Module.pas',
  moBaseSearch in 'View\moBaseSearch.pas' {mo_BaseSearch: TvcmModule},
  Filters_Strange_Controls in 'View\Filters_Strange_Controls.pas',
  nsIFilterFromQueryList in 'View\Filters\nsIFilterFromQueryList.pas',
  PrimFilters_Form in 'View\Filters\Forms\PrimFilters_Form.pas',
  PrimFiltersOptions_Form in 'View\Filters\Forms\PrimFiltersOptions_Form.pas',
  PrimCreateFilter_cfCreate_UserType in 'View\Filters\Forms\PrimCreateFilter_cfCreate_UserType.pas',
  FiltersInterfaces in 'Filters\FiltersInterfaces.pas',
  PrimCreateFilter_cfRename_UserType in 'View\Filters\Forms\PrimCreateFilter_cfRename_UserType.pas',
  PrimCreateFilter_Form in 'View\Filters\Forms\PrimCreateFilter_Form.pas',
  Filters_Form in 'View\Filters\Forms\Filters_Form.pas' {enFilters: TvcmEntityForm},
  CreateFilter_Form in 'View\Filters\Forms\CreateFilter_Form.pas' {CreateFilterForm: TvcmEntityForm},
  dsCreateFilter in 'Filters\dsCreateFilter.pas',
  Filters_Module in 'View\Filters\Filters_Module.pas',
  moFilters in 'View\moFilters.pas' {mo_Filters: TvcmModule},
  PrimUnderControl_utUnderControl_UserType in 'View\UnderControl\Forms\PrimUnderControl_utUnderControl_UserType.pas',
  PrimUnderControl_Form in 'View\UnderControl\Forms\PrimUnderControl_Form.pas',
  UnderControl_Strange_Controls in 'View\UnderControl_Strange_Controls.pas',
  PrimUnderControlOptions_Form in 'View\UnderControl\Forms\PrimUnderControlOptions_Form.pas',
  UnderControl_Form in 'View\UnderControl\Forms\UnderControl_Form.pas' {enUnderControl: TvcmEntityForm},
  UnderControl_Module in 'View\UnderControl\UnderControl_Module.pas',
  moUnderControl in 'View\moUnderControl.pas' {mo_UnderControl: TvcmModule},
  nsOpenDialog in 'Common\nsOpenDialog.pas',
  kw_DocumentListFromFile_OpenDocumentListFromFile in 'View\DocumentListFromFile\kw_DocumentListFromFile_OpenDocumentListFromFile.pas',
  PrimDocumentListFromFile_Module in 'View\DocumentListFromFile\PrimDocumentListFromFile_Module.pas',
  moDocumentListFromFile in 'View\moDocumentListFromFile.pas' {mo_DocumentListFromFile: TvcmModule},
  ChangesBetweenEditionsInterfaces in 'ChangesBetweenEditions\ChangesBetweenEditionsInterfaces.pas',
  PrimChangesBetweenEditons_DocumentChanges_UserType in 'View\ChangesBetweenEditons\Forms\PrimChangesBetweenEditons_DocumentChanges_UserType.pas',
  PrimChangesBetweenEditons_Form in 'View\ChangesBetweenEditons\Forms\PrimChangesBetweenEditons_Form.pas',
  ChangesBetweenEditons_Form in 'View\ChangesBetweenEditons\Forms\ChangesBetweenEditons_Form.pas' {ChangesBetweenEditonsForm: TvcmEntityForm},
  nsChangesBetweenEditionsDocumentContainer in 'ChangesBetweenEditions\nsChangesBetweenEditionsDocumentContainer.pas',
  dsChangesBetweenEditions in 'ChangesBetweenEditions\dsChangesBetweenEditions.pas',
  sdsChangesBetweenEditionsData in 'ChangesBetweenEditions\sdsChangesBetweenEditionsData.pas',
  sdsChangesBetweenEditions in 'ChangesBetweenEditions\sdsChangesBetweenEditions.pas',
  nsChangesBetweenEditionsInfo in 'ChangesBetweenEditions\nsChangesBetweenEditionsInfo.pas',
  fsViewChangedFragments in 'View\ChangesBetweenEditons\fsViewChangedFragments.pas' {fs_ViewChangedFragments: TvcmFormSetFactory},
  ChangesBetweenEditions_Module in 'View\ChangesBetweenEditons\ChangesBetweenEditions_Module.pas',
  moChangesBetweenEditions in 'View\moChangesBetweenEditions.pas' {mo_ChangesBetweenEditions: TvcmModule},
  PrimTreeAttributeFirstLevel_flSituation_UserType in 'View\Search\Forms\PrimTreeAttributeFirstLevel_flSituation_UserType.pas',
  PrimTreeAttributeFirstLevel_Form in 'View\Search\Forms\PrimTreeAttributeFirstLevel_Form.pas',
  vtCombo in 'w:\common\components\gui\Garant\VT\vtCombo.pas',
  DefineSearchDateUtils in 'View\Search\DefineSearchDateUtils.pas',
  PrimDefineSearchDate_Form in 'View\Search\Forms\PrimDefineSearchDate_Form.pas',
  DefineSearchDate_ut_DefineSearchDate_UserType in 'View\Search\Forms\DefineSearchDate_ut_DefineSearchDate_UserType.pas',
  DefineSearchDate_Form in 'View\Search\Forms\DefineSearchDate_Form.pas' {en_DefineSearchDate: TvcmEntityForm},
  PrimOldSituationSearch_cutOldKeyWord_UserType in 'View\Search\Forms\PrimOldSituationSearch_cutOldKeyWord_UserType.pas',
  PrimOldSituationSearch_Form in 'View\Search\Forms\PrimOldSituationSearch_Form.pas',
  PrimOldSituationSearchOptions_Form in 'View\Search\Forms\PrimOldSituationSearchOptions_Form.pas',
  fsSituationSearch in 'View\Search\fsSituationSearch.pas' {fs_SituationSearch: TvcmFormSetFactory},
  fsSituationFilter in 'View\Search\fsSituationFilter.pas' {fs_SituationFilter: TvcmFormSetFactory},
  TreeAttributeFirstLevel_Form in 'View\Search\Forms\TreeAttributeFirstLevel_Form.pas' {efTreeAttributeFirstLevel: TvcmEntityForm},
  OldSituationSearch_Form in 'View\Search\Forms\OldSituationSearch_Form.pas' {cfOldSituationSearch: TvcmEntityForm},
  deSearch in 'Search\deSearch.pas',
  nsSelectedAttributesIterators in 'Search\nsSelectedAttributesIterators.pas',
  dsTreeAttributeSelect in 'Search\dsTreeAttributeSelect.pas',
  dsSelectedAttributes in 'Search\dsSelectedAttributes.pas',
  deSelectedAttributes in 'Search\deSelectedAttributes.pas',
  dsTreeAttributeFirstLevel in 'Search\dsTreeAttributeFirstLevel.pas',
  dsAttributeSelect in 'Search\dsAttributeSelect.pas',
  sdsSituation in 'Search\sdsSituation.pas',
  kw_Search_PublishSourceSearch in 'View\Search\kw_Search_PublishSourceSearch.pas',
  kw_Search_InpharmSearch in 'View\Search\kw_Search_InpharmSearch.pas',
  kw_Search_StartENO in 'View\Search\kw_Search_StartENO.pas',
  kw_Search_DocumentsWithoutClass in 'View\Search\kw_Search_DocumentsWithoutClass.pas',
  kw_Search_DocumentsWithoutIncluded in 'View\Search\kw_Search_DocumentsWithoutIncluded.pas',
  kw_Search_DocumentsWithoutKey in 'View\Search\kw_Search_DocumentsWithoutKey.pas',
  kw_Search_BaseSearch in 'View\Search\kw_Search_BaseSearch.pas',
  kw_Search_OpenConsult in 'View\Search\kw_Search_OpenConsult.pas',
  kw_Search_AllSearch in 'View\Search\kw_Search_AllSearch.pas',
  kw_Search_OpenKeyWordSearch in 'View\Search\kw_Search_OpenKeyWordSearch.pas',
  kw_Search_AttributeSearch in 'View\Search\kw_Search_AttributeSearch.pas',
  Search_Module in 'View\Search\Search_Module.pas',
  moSearch in 'View\moSearch.pas' {mo_Search: TvcmModule},
  AACContainer_Form in 'View\AAC\Forms\AACContainer_Form.pas' {AACContainerForm: TvcmEntityForm},
  AACContentsContainer_Form in 'View\AAC\Forms\AACContentsContainer_Form.pas' {AACContentsContainerForm: TvcmEntityForm},
  dsAACContainer in 'AAC\dsAACContainer.pas',
  dsAACDocumentPrim in 'AAC\dsAACDocumentPrim.pas',
  nsAACLeftDocumentContainer in 'AAC\nsAACLeftDocumentContainer.pas',
  dsAACDocumentLeft in 'AAC\dsAACDocumentLeft.pas',
  nsAACRightDocumentContainer in 'AAC\nsAACRightDocumentContainer.pas',
  dsAACDocumentRight in 'AAC\dsAACDocumentRight.pas',
  sdsAAC in 'AAC\sdsAAC.pas',
  fsAACContents in 'View\AAC\fsAACContents.pas' {fs_AACContents: TvcmFormSetFactory},
  fsAAC in 'View\AAC\fsAAC.pas' {fs_AAC: TvcmFormSetFactory},
  AACPrim_Module in 'View\AAC\AACPrim_Module.pas',
  moAAC in 'View\moAAC.pas' {mo_AAC: TvcmModule},
  evdHyperlinkEliminator in 'w:\common\components\rtl\Garant\EVD\evdHyperlinkEliminator.pas',
  evdScriptHyperlinkEliminator in 'w:\common\components\rtl\Garant\EVD\evdScriptHyperlinkEliminator.pas',
  evExtFormat in 'w:\common\components\gui\Garant\Everest\ext\evExtFormat.pas',
  NemesisRes in 'NemesisRes.pas' {NemesisRes: TDataModule},
  l3MouseWheelHelper
  ;
{$IfEnd} //not Admin AND not Monitorings

{$R Nemesis.res}
{$R main_icon2.res} // вторая иконка приложения

begin
 StdRes.TdmStdRes.Run(str_NemesisTitle, 'F1Shell.chm');
end.