program Admin;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/Admin.dpr"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMGUI::Category>> F1 Администратор::Admin$Shell
//
// Оболочка Admin
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

{$If defined(Admin)}
uses
  nsApplication,
  l3ExceptionsLog
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces in 'w:\common\components\gui\Garant\VCM\vcmInterfaces.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(XE)}
  ,
  F1Test in 'F1Test.pas'
  {$IfEnd} //not XE
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls in 'w:\common\components\gui\Garant\VCM\vcmUserControls.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces in 'w:\common\components\rtl\Garant\ScriptEngine\tfwScriptingInterfaces.pas'
  {$IfEnd} //not NoScripts
  ,
  SearchUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\SearchUnit.pas',
  ActiveX {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\ActiveX.pas' {$EndIf},
  Messages {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\Messages.pas' {$EndIf},
  SysUtils,
  Classes {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\Classes.pas' {$EndIf},
  Types,
  Windows {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\Windows.pas' {$EndIf},
  Controls {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Controls.pas' {$EndIf},
  Forms {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Forms.pas' {$EndIf},
  F1_Application_Template_InternalOperations_Controls in 'View\F1_Application_Template_InternalOperations_Controls.pas',
  l3Interfaces in 'w:\common\components\rtl\Garant\L3\l3Interfaces.pas',
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
  l3Core in 'w:\common\components\rtl\Garant\L3\l3Core.pas',
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
  l3ConstStrings1 in 'w:\common\components\rtl\Garant\L3\l3ConstStrings1.pas',
  l3ConstStrings in 'w:\common\components\rtl\Garant\L3\l3ConstStrings.pas',
  l3StringIDEx in 'w:\common\components\rtl\Garant\L3\l3StringIDEx.pas',
  Dialogs {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Dialogs.pas' {$EndIf},
  Pl3StringIDExList in 'w:\common\components\rtl\Garant\L3\Pl3StringIDExList.pas',
  Pl3MessageIDListPrim in 'w:\common\components\rtl\Garant\L3\Pl3MessageIDListPrim.pas',
  Pl3MessageIDList in 'w:\common\components\rtl\Garant\L3\Pl3MessageIDList.pas',
  l3MessageID in 'w:\common\components\rtl\Garant\L3\l3MessageID.pas',
  afwInterfaces in 'w:\common\components\gui\Garant\AFW\afwInterfaces.pas'
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces in 'w:\common\components\gui\Garant\VCM\vcmExternalInterfaces.pas'
  {$IfEnd} //not NoVCM
  ,
  afwSettingsImplPrimPrim in 'w:\common\components\gui\Garant\AFW\afwSettingsImplPrimPrim.pas',
  afwSettingsImplPrim in 'w:\common\components\gui\Garant\AFW\afwSettingsImplPrim.pas',
  afwSettingsImpl in 'w:\common\components\gui\Garant\AFW\afwSettingsImpl.pas',
  l3InterfacedComponent in 'w:\common\components\rtl\Garant\L3\l3InterfacedComponent.pas',
  l3ProgressComponent in 'w:\common\components\rtl\Garant\L3\l3ProgressComponent.pas',
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
  
  {$If not defined(NoVCM)}
  ,
  vcmContainerFormModelPart in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmContainerFormModelPart.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmContainerForm in 'w:\common\components\gui\Garant\VCM\implementation\Visual\vcmContainerForm.pas'
  {$IfEnd} //not NoVCM
  ,
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
  vtProportionalPanel in 'w:\common\components\gui\Garant\VT\vtProportionalPanel.pas',
  OfficeLike_Usual_Controls in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLike_Usual_Controls.pas'
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
  OfficeLikeMain_Form in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLikeMain_Form.pas'
  {$If defined(Nemesis)}
  ,
  nscNewInterfaces in 'w:\common\components\gui\Garant\Nemesis\nscNewInterfaces.pas'
  {$IfEnd} //Nemesis
  ,
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
  AdminDomainInterfaces in 'Model\AdminDomainInterfaces.pas'
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  DataAdapterInterfaces in 'Model\DataAdapterInterfaces.pas'
  {$IfEnd} //not Admin AND not Monitorings
  ,
  nsQuestionsWithChoices in 'Data\nsQuestionsWithChoices.pas',
  DataAdapter in 'Data\Common\DataAdapter.pas',
  PrimMain_Form in 'View\PrimMain_Form.pas',
  lgTypes in 'View\lgTypes.pas',
  LoggingInterfaces in 'Model\LoggingInterfaces.pas',
  LoggingUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\LoggingUnit.pas',
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
  nsConst in 'Data\Common\nsConst.pas',
  PrimMainOptions_Form in 'View\PrimMainOptions_Form.pas',
  SearchInterfaces in 'Search\SearchInterfaces.pas',
  IOUnit in 'w:\shared\GCI\IOUnit.pas',
  nsTypesNew in 'Model\nsTypesNew.pas',
  nsTypes in 'Model\nsTypes.pas',
  OfficeLike_Text_Controls in 'w:\common\components\gui\Garant\VCM\UserInteraction\OfficeLike_Text_Controls.pas',
  DynamicTreeUnit in 'w:\garant6x\implementation\Garant\GblAdapterLib\DynamicTreeUnit.pas',
  bsInterfaces in 'Model\bsInterfaces.pas',
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
  {$If not defined(NoVCM)}
  ,
  StdRes in 'StdRes.pas' {dmStdRes: TvcmApplicationRes}
  {$IfEnd} //not NoVCM
  
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
  nsQueryUtils in 'Search\nsQueryUtils.pas'
  {$If not defined(Admin)}
  ,
  OldTreeInterfaces in 'Model\OldTreeInterfaces.pas'
  {$IfEnd} //not Admin
  
  {$If not defined(Admin)}
  ,
  nsWrapperNode in 'Data\Tree\nsWrapperNode.pas'
  {$IfEnd} //not Admin
  ,
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
  PrimAdminMain_utEmptyMainWindow_UserType in 'PrimAdminMain_utEmptyMainWindow_UserType.pas',
  PrimAdminMain_Form in 'PrimAdminMain_Form.pas',
  AdminMain_Form in 'AdminMain_Form.pas' {AdminMainForm: TvcmMainForm},
  AdminInterfaces in 'Admin\AdminInterfaces.pas',
  nsVerifyValue in 'Data\Common\nsVerifyValue.pas',
  PrimForbidAutoregistration_Form in 'View\Admin\Forms\PrimForbidAutoregistration_Form.pas',
  PrimForbidAutoregistrationOptions_Form in 'View\Admin\Forms\PrimForbidAutoregistrationOptions_Form.pas',
  ForbidAutoregistration_ut_ForbidAutoregistration_UserType in 'View\Admin\Forms\ForbidAutoregistration_ut_ForbidAutoregistration_UserType.pas',
  ForbidAutoregistration_Form in 'View\Admin\Forms\ForbidAutoregistration_Form.pas' {efForbidAutoregistration: TvcmEntityForm},
  vtComboBoxQS in 'w:\common\components\gui\Garant\VT\vtComboBoxQS.pas',
  nsGroupTreeStruct in 'Admin\nsGroupTreeStruct.pas',
  PrimUserProperty_Form in 'View\Admin\Forms\PrimUserProperty_Form.pas',
  PrimUserProperty_admUseProperties_UserType in 'View\Admin\Forms\PrimUserProperty_admUseProperties_UserType.pas',
  Admin_Users_Controls in 'View\Admin_Users_Controls.pas',
  PrimGroupsList_Form in 'View\Admin\Forms\PrimGroupsList_Form.pas',
  PrimGroupsList_admGroupList_UserType in 'View\Admin\Forms\PrimGroupsList_admGroupList_UserType.pas',
  L10nInterfaces in 'Model\L10nInterfaces.pas',
  nsUserNodes in 'Admin\nsUserNodes.pas',
  bsTypes in 'Model\bsTypes.pas',
  dsForbidAutoregistration in 'Admin\dsForbidAutoregistration.pas',
  nsIntegerValueMapFactory in 'Data\Common\nsIntegerValueMapFactory.pas',
  nsStringValueMapFactoryRes in 'Data\Common\nsStringValueMapFactoryRes.pas',
  nsStringValueMapFactory in 'Data\Common\nsStringValueMapFactory.pas',
  nsValueMaps in 'Data\Common\nsValueMaps.pas',
  nsValueMapsIDs in 'Data\Common\nsValueMapsIDs.pas',
  PrimUserList_Form in 'View\Admin\Forms\PrimUserList_Form.pas',
  PrimUserList_admUserList_UserType in 'View\Admin\Forms\PrimUserList_admUserList_UserType.pas',
  PrimUserListOptions_Form in 'View\Admin\Forms\PrimUserListOptions_Form.pas',
  PrimAdmin_utAdmin_UserType in 'View\Admin\Forms\PrimAdmin_utAdmin_UserType.pas',
  PrimAdmin_Form in 'View\Admin\Forms\PrimAdmin_Form.pas',
  PrimAdminOptions_Form in 'View\Admin\Forms\PrimAdminOptions_Form.pas',
  PrimGroupsListOptions_Form in 'View\Admin\Forms\PrimGroupsListOptions_Form.pas',
  PrimGroupProperty_admCreateGroup_UserType in 'View\Admin\Forms\PrimGroupProperty_admCreateGroup_UserType.pas',
  PrimGroupProperty_admRenameGroup_UserType in 'View\Admin\Forms\PrimGroupProperty_admRenameGroup_UserType.pas',
  PrimGroupProperty_Form in 'View\Admin\Forms\PrimGroupProperty_Form.pas',
  PrimGroupPropertyOptions_Form in 'View\Admin\Forms\PrimGroupPropertyOptions_Form.pas',
  PrimUserPropertyOptions_Form in 'View\Admin\Forms\PrimUserPropertyOptions_Form.pas',
  Admin_FormDefinitions_Controls in 'View\Admin_FormDefinitions_Controls.pas',
  fsAdmin in 'View\Admin\fsAdmin.pas' {fs_Admin: TvcmFormSetFactory},
  deAdmin in 'Admin\deAdmin.pas',
  deSearch in 'Search\deSearch.pas',
  TreeInterfaces in 'Tree\TreeInterfaces.pas',
  nsNewCachableNode in 'Data\Tree\nsNewCachableNode.pas',
  nsAttributeTreeStruct in 'Data\Search\nsAttributeTreeStruct.pas',
  nsSelectedAttributesIterators in 'Search\nsSelectedAttributesIterators.pas',
  dsTreeAttributeSelect in 'Search\dsTreeAttributeSelect.pas',
  dsBasesAccess in 'Admin\dsBasesAccess.pas',
  AdminRes in 'Admin\AdminRes.pas',
  l3InterfaceList in 'w:\common\components\rtl\Garant\L3\l3InterfaceList.pas',
  l3InterfacedInterfaceList in 'w:\common\components\rtl\Garant\L3\l3InterfacedInterfaceList.pas',
  deNode in 'Admin\deNode.pas',
  nsUserFlagsFilter in 'Data\Users\nsUserFlagsFilter.pas',
  nsGroupFilter in 'Data\Users\nsGroupFilter.pas',
  nsUserFlagsFilters in 'Data\Users\nsUserFlagsFilters.pas',
  nsUserTreeStruct in 'Data\Users\nsUserTreeStruct.pas',
  nsUserInterfacedDataObject in 'Admin\nsUserInterfacedDataObject.pas',
  nsUserDataObject in 'Admin\nsUserDataObject.pas',
  bsUserDataObject in 'Admin\bsUserDataObject.pas',
  bsSelectedUsers in 'Admin\bsSelectedUsers.pas',
  bsUserTreeData in 'Admin\bsUserTreeData.pas',
  nsUserTreeStructWithDrag in 'Admin\nsUserTreeStructWithDrag.pas',
  deProfile in 'Admin\deProfile.pas',
  dsUserList in 'Admin\dsUserList.pas',
  dsUserProperty in 'Admin\dsUserProperty.pas',
  dsAdmin in 'Admin\dsAdmin.pas',
  nsGroupTreeStructWithDrop in 'Admin\nsGroupTreeStructWithDrop.pas',
  dsGroupsList in 'Admin\dsGroupsList.pas',
  bsEditGroupName in 'Admin\bsEditGroupName.pas',
  sdsAdmin in 'Admin\sdsAdmin.pas',
  GroupProperty_Form in 'View\Admin\Forms\GroupProperty_Form.pas' {efGroupProperty: TvcmEntityForm},
  UserList_Form in 'View\Admin\Forms\UserList_Form.pas' {efUserList: TvcmEntityForm},
  UserProperty_Form in 'View\Admin\Forms\UserProperty_Form.pas' {efUserProperty: TvcmEntityForm},
  GroupList_Form in 'View\Admin\Forms\GroupList_Form.pas' {efGroupList: TvcmEntityForm},
  Admin_Form in 'View\Admin\Forms\Admin_Form.pas' {cfAdminForm: TvcmEntityForm},
  Admin_Module in 'View\Admin\Admin_Module.pas',
  moAdmin in 'View\moAdmin.pas' {mo_Admin: TvcmModule},
  evdHyperlinkEliminator in 'w:\common\components\rtl\Garant\EVD\evdHyperlinkEliminator.pas',
  evdScriptHyperlinkEliminator in 'w:\common\components\rtl\Garant\EVD\evdScriptHyperlinkEliminator.pas',
  evExtFormat in 'w:\common\components\gui\Garant\Everest\ext\evExtFormat.pas',
  AdminAppRes in 'AdminAppRes.pas' {AdminAppRes: TDataModule},
  l3MouseWheelHelper
  ;
{$IfEnd} //Admin

{$R Admin.res}
{$R main_icon2.res} // вторая иконка приложения

begin
 StdRes.TdmStdRes.Run(str_AdminTitle, 'F1Admin.chm');
end.