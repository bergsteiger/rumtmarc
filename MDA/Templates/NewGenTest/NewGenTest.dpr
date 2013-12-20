program NewGenTest;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Модуль: "w:/MDProcess/NewGenTest/NewGenTest.dpr"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<TestTarget::Category>> MDProcess$NewGen::NewGen
//
// Тесты для НИР по новому генератору
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$If defined(NewGen) AND defined(nsTest)}
uses
  l3Interfaces in 'w:\common\components\rtl\Garant\L3\l3Interfaces.pas',
  l3Types in 'w:\common\components\rtl\Garant\L3\l3Types.pas',
  Types,
  Windows {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\Windows.pas' {$EndIf},
  SysUtils,
  l3Core in 'w:\common\components\rtl\Garant\L3\l3Core.pas',
  ActiveX {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\ActiveX.pas' {$EndIf},
  Messages {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Win\Messages.pas' {$EndIf},
  Classes {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\Classes.pas' {$EndIf},
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
  l3ProtoObject in 'w:\common\components\rtl\Garant\L3\l3ProtoObject.pas',
  l3CProtoObject in 'w:\common\components\rtl\Garant\L3\l3CProtoObject.pas',
  l3Chars in 'w:\common\components\rtl\Garant\L3\l3Chars.pas',
  l3TwoByteCString in 'w:\common\components\rtl\Garant\L3\l3TwoByteCString.pas',
  l3OneByteCString in 'w:\common\components\rtl\Garant\L3\l3OneByteCString.pas',
  l3CEmptyStringPrim in 'w:\common\components\rtl\Garant\L3\l3CEmptyStringPrim.pas',
  l3CEmptyString in 'w:\common\components\rtl\Garant\L3\l3CEmptyString.pas',
  l3FourByteCString in 'w:\common\components\rtl\Garant\L3\l3FourByteCString.pas',
  l3Base in 'w:\common\components\rtl\Garant\L3\l3Base.pas',
  TestFrameWork in 'w:\common\components\rtl\external\DUnit\src\TestFrameWork.pas',
  TextTestRunner in 'w:\common\components\rtl\external\DUnit\src\TextTestRunner.pas',
  vtComboBoxQS in 'w:\common\components\gui\Garant\VT\vtComboBoxQS.pas',
  GUITestRunner in 'w:\common\components\rtl\external\DUnit\src\GUITestRunner.pas',
  l3InterfacedComponent in 'w:\common\components\rtl\Garant\L3\l3InterfacedComponent.pas',
  l3ProgressComponent in 'w:\common\components\rtl\Garant\L3\l3ProgressComponent.pas',
  l3ProtoDataContainer in 'w:\common\components\rtl\Garant\L3\l3ProtoDataContainer.pas',
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
  l3CardinalList in 'w:\common\components\rtl\Garant\L3\l3CardinalList.pas',
  l3EtalonsWorking in 'w:\common\components\rtl\Garant\L3\l3EtalonsWorking.pas',
  StrUtils {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\StrUtils.pas' {$EndIf},
  JwaNtStatus {$IfNDef XE} in 'w:\common\components\rtl\external\JEDI\Win32API\JwaNtStatus.pas' {$EndIf},
  JwaWinNT {$IfNDef XE} in 'w:\common\components\rtl\external\JEDI\Win32API\JwaWinNT.pas' {$EndIf},
  JwaWinType {$IfNDef XE} in 'w:\common\components\rtl\external\JEDI\Win32API\JwaWinType.pas' {$EndIf},
  JwaWinBase {$IfNDef XE} in 'w:\common\components\rtl\external\JEDI\Win32API\JwaWinBase.pas' {$EndIf},
  l3ImageUtils in 'w:\common\components\rtl\Garant\L3\l3ImageUtils.pas'
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  SecuritySrv_int in 'w:\common\components\rtl\external\MTDOrb\build\SecuritySrv_int.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  Contents_int in 'w:\common\components\rtl\Garant\ServerGate\Contents_int.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  orb_int in 'w:\common\components\rtl\external\MTDOrb\src\orbint\orb_int.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  CosNaming_int in 'w:\common\components\rtl\external\MTDOrb\src\idl\CosNaming_int.pas'
  {$IfEnd} //MTDORB AND nsTest
  ,
  l3FileUtils in 'w:\common\components\rtl\Garant\L3\l3FileUtils.pas'
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  pi_int in 'w:\common\components\rtl\external\MTDOrb\src\idl\pi_int.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  orb in 'w:\common\components\rtl\external\MTDOrb\src\orb\orb.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  pi in 'w:\common\components\rtl\external\MTDOrb\src\idl\pi.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  orbtypes in 'w:\common\components\rtl\external\MTDOrb\src\orb\orbtypes.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  GarClientSecurity in 'w:\common\components\rtl\Garant\GarORB\GarClientSecurity.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  pi_impl in 'w:\common\components\rtl\external\MTDOrb\src\orb\pi_impl.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  GarORBInitializerImpl in 'w:\common\components\rtl\Garant\GarORB\GarORBInitializerImpl.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  CosNaming in 'w:\common\components\rtl\external\MTDOrb\src\idl\CosNaming.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  SecuritySrv in 'w:\common\components\rtl\external\MTDOrb\build\SecuritySrv.pas'
  {$IfEnd} //MTDORB AND nsTest
  
  {$If defined(MTDORB) AND defined(nsTest)}
  ,
  Contents in 'w:\common\components\rtl\Garant\ServerGate\Contents.pas'
  {$IfEnd} //MTDORB AND nsTest
  ,
  tfwKConst in 'w:\common\components\rtl\Garant\DUnitTuning\tfwKConst.pas'
  {$If defined(MTDORB) AND defined(NoKPageTool) AND defined(nsTest)}
  ,
  KBridge in 'w:\common\components\rtl\Garant\DUnitTuning\KBridge.pas'
  {$IfEnd} //MTDORB AND NoKPageTool AND nsTest
  ,
  l3Stream in 'w:\common\components\rtl\Garant\L3\l3Stream.pas',
  BaseTest in 'w:\common\components\rtl\Garant\DUnitTuning\BaseTest.pas',
  JclSysInfo {$IfNDef XE} in 'w:\common\components\rtl\external\JEDI\source\common\JclSysInfo.pas' {$EndIf},
  l3DateSt in 'w:\common\components\rtl\Garant\L3\l3DateSt.pas',
  Controls {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Controls.pas' {$EndIf},
  Forms {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Forms.pas' {$EndIf},
  l3SysUtils in 'w:\common\components\rtl\Garant\L3\l3SysUtils.pas',
  l3ProtoPersistentDataContainer in 'w:\common\components\rtl\Garant\L3\l3ProtoPersistentDataContainer.pas',
  l3StringListPrim in 'w:\common\components\rtl\Garant\L3\l3StringListPrim.pas',
  l3StringList1 in 'w:\common\components\rtl\Garant\L3\l3StringList1.pas',
  l3StringList2 in 'w:\common\components\rtl\Garant\L3\l3StringList2.pas',
  l3StringList in 'w:\common\components\rtl\Garant\L3\l3StringList.pas',
  ExcludedTests in 'w:\common\components\rtl\Garant\DUnitTuning\ExcludedTests.pas',
  ExcludedTestsFolders in 'w:\common\components\rtl\Garant\DUnitTuning\ExcludedTestsFolders.pas',
  TestNameString in 'w:\common\components\rtl\Garant\DUnitTuning\TestNameString.pas',
  TestNameList in 'w:\common\components\rtl\Garant\DUnitTuning\TestNameList.pas',
  KTestRunner in 'w:\common\components\rtl\Garant\DUnitTuning\KTestRunner.pas'
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces in 'w:\common\components\rtl\Garant\ScriptEngine\tfwScriptingInterfaces.pas'
  {$IfEnd} //not NoScripts
  ,
  TypInfo {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\TypInfo.pas' {$EndIf},
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
  ,
  afwInterfaces in 'w:\common\components\gui\Garant\AFW\afwInterfaces.pas',
  afwSettingsImplPrimPrim in 'w:\common\components\gui\Garant\AFW\afwSettingsImplPrimPrim.pas',
  afwSettingsImplPrim in 'w:\common\components\gui\Garant\AFW\afwSettingsImplPrim.pas',
  afwSettingsImpl in 'w:\common\components\gui\Garant\AFW\afwSettingsImpl.pas',
  l3NCString in 'w:\common\components\rtl\Garant\L3\l3NCString.pas',
  l3InterfacedString in 'w:\common\components\rtl\Garant\L3\l3InterfacedString.pas',
  afwSettingsImplPersistent in 'w:\common\components\gui\Garant\AFW\afwSettingsImplPersistent.pas',
  afwSettingsImplSing in 'w:\common\components\gui\Garant\AFW\afwSettingsImplSing.pas',
  IafwSettingListenerPtrList in 'w:\common\components\gui\Garant\AFW\IafwSettingListenerPtrList.pas',
  IafwSettingsReplaceListenerPtrList in 'w:\common\components\gui\Garant\AFW\IafwSettingsReplaceListenerPtrList.pas',
  l3CastableStrings in 'w:\common\components\rtl\Garant\L3\l3CastableStrings.pas',
  l3VCLStringsItems in 'w:\common\components\rtl\Garant\L3\l3VCLStringsItems.pas',
  l3VCLStrings in 'w:\common\components\rtl\Garant\L3\l3VCLStrings.pas',
  afwAString in 'w:\common\components\gui\Garant\AFW\afwAString.pas',
  afwSettingsPrimPrim in 'w:\common\components\gui\Garant\AFW\afwSettingsPrimPrim.pas',
  afwSettings in 'w:\common\components\gui\Garant\AFW\afwSettings.pas',
  afwSettingsImplemented in 'w:\common\components\gui\Garant\AFW\afwSettingsImplemented.pas',
  afwFacade in 'w:\common\components\gui\Garant\AFW\afwFacade.pas'
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
  ,
  l3PureMixIns in 'w:\common\components\rtl\Garant\L3\l3PureMixIns.pas'
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
  
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces in 'w:\common\components\gui\Garant\VCM\vcmExternalInterfaces.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces in 'w:\common\components\gui\Garant\VCM\vcmInterfaces.pas'
  {$IfEnd} //not NoVCM
  
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
  k2BaseTypes in 'w:\common\components\rtl\Garant\K2\k2BaseTypes.pas',
  k2Types in 'w:\common\components\rtl\Garant\K2\k2Types.pas',
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
  evTableRowPainter in 'w:\common\components\gui\Garant\Everest\evTableRowPainter.pas',
  PrintRowHeightsSpy in 'w:\common\components\gui\Garant\Everest\new\PrintRowHeightsSpy.pas',
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
  l3DataCache in 'w:\common\components\rtl\Garant\L3\l3DataCache.pas',
  afwPreviewPageSpy in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwPreviewPageSpy.pas',
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
  nevDocumentProvider in 'w:\common\components\gui\Garant\Everest\nevDocumentProvider.pas'
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
  vtF1InterfaceConst in 'w:\common\components\gui\Garant\VT\vtF1InterfaceConst.pas',
  afwAnswer in 'w:\common\components\gui\Garant\AFW\afwAnswer.pas'
  {$If not defined(NoVCM)}
  ,
  vcmMessagesCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmMessagesCollectionItem.pas'
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls in 'w:\common\components\gui\Garant\VCM\vcmUserControls.pas'
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
  vcmBaseEntitiesCollectionItem in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmBaseEntitiesCollectionItem.pas'
  {$IfEnd} //not NoVCM
  ,
  imageenio in 'w:\common\components\rtl\external\ImageEn\src\imageenio.pas'
  {$If defined(InsiderTest) AND not defined(NoScripts)}
  ,
  kwPrintDataSaver in 'w:\common\components\rtl\Garant\ScriptEngine\kwPrintDataSaver.pas'
  {$IfEnd} //InsiderTest AND not NoScripts
  
  {$If defined(nsTest) AND not defined(NoScripts)}
  ,
  vcmInsiderTest in 'w:\common\components\rtl\Garant\DUnitTuning\vcmInsiderTest.pas'
  {$IfEnd} //nsTest AND not NoScripts
  ,
  CustomAutoTestsSuite in 'w:\common\components\rtl\Garant\ScriptTestLibrary\CustomAutoTestsSuite.pas',
  TestForm4Scripts in 'w:\common\components\rtl\Garant\Shared_Delphi_Tests_Common\TestForm4Scripts.pas',
  kwPushDUnitForm in 'w:\common\components\rtl\Garant\DUnit_Script_Support\kwPushDUnitForm.pas',
  ComCtrls {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\ComCtrls.pas' {$EndIf},
  kwPopNodeToTest in 'w:\common\components\rtl\Garant\DUnit_Script_Support\kwPopNodeToTest.pas',
  kwPopITestGetName in 'w:\common\components\rtl\Garant\DUnit_Script_Support\kwPopITestGetName.pas',
  kwPopITestHasScriptChildren in 'w:\common\components\rtl\Garant\DUnit_Script_Support\kwPopITestHasScriptChildren.pas',
  kwPopITestEnabled in 'w:\common\components\rtl\Garant\DUnit_Script_Support\kwPopITestEnabled.pas',
  kwPopITestGetSubFolder in 'w:\common\components\rtl\Garant\DUnit_Script_Support\kwPopITestGetSubFolder.pas',
  FolderSupport in 'w:\common\components\rtl\external\DUnit\src\FolderSupport.pas',
  kwIsNodeFolder in 'w:\common\components\rtl\Garant\DUnit_Script_Support\kwIsNodeFolder.pas',
  kwDeleteEtalons in 'w:\common\components\rtl\Garant\DUnit_Script_Support\kwDeleteEtalons.pas',
  kwKeyWordsPack in 'w:\common\components\rtl\Garant\DUnit_Script_Support\kwKeyWordsPack.pas',
  AutoTestSuiteWithDUnitSupport in 'w:\common\components\rtl\Garant\DUnit_Script_Support\AutoTestSuiteWithDUnitSupport.pas',
  CustomInsiderScripter in 'w:\common\components\rtl\Garant\ScriptTestLibrary\CustomInsiderScripter.pas',
  AutoTest in 'w:\common\components\rtl\Garant\ScriptTestLibrary\AutoTest.pas',
  DailyScriptTest in 'w:\common\components\rtl\Garant\DUnit_Script_Support\DailyScriptTest.pas',
  DailyAutoTest in 'w:\common\components\rtl\Garant\DUnit_Script_Support\DailyAutoTest.pas',
  AutoTestsSuite in 'w:\common\components\rtl\Garant\DUnit_Script_Support\AutoTestsSuite.pas'
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
  evdBufferedFilter in 'w:\common\components\rtl\Garant\EVD\evdBufferedFilter.pas',
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
  ,
  evdAllSubsEliminator in 'w:\common\components\rtl\Garant\EVD\evdAllSubsEliminator.pas',
  evdHyperlinkEliminator in 'w:\common\components\rtl\Garant\EVD\evdHyperlinkEliminator.pas'
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
  ,
  Themes {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Themes.pas' {$EndIf},
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
  ,
  DateUtils {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Rtl\Common\DateUtils.pas' {$EndIf}
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
  ,
  l3SimpleObjectRefList in 'w:\common\components\rtl\Garant\L3\l3SimpleObjectRefList.pas',
  l3FormattedLines in 'w:\common\components\rtl\Garant\L3\l3FormattedLines.pas',
  vtMultilineHint in 'w:\common\components\gui\Garant\VT\vtMultilineHint.pas',
  vtHintManager in 'w:\common\components\gui\Garant\VT\vtHintManager.pas'
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
  ,
  vtSpinEdit in 'w:\common\components\gui\Garant\VT\vtSpinEdit.pas'
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
  ,
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
  vtLister in 'w:\common\components\gui\Garant\VT\vtLister.pas'
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
  ,
  afwTextControlPrim in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwTextControlPrim.pas',
  afwTextControl in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwTextControl.pas',
  vtPanel in 'w:\common\components\gui\Garant\VT\vtPanel.pas'
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
  l3CBTListenersList in 'w:\common\components\rtl\Garant\L3\l3CBTListenersList.pas',
  l3GetMessageListenersList in 'w:\common\components\rtl\Garant\L3\l3GetMessageListenersList.pas',
  l3WndProcListenersList in 'w:\common\components\rtl\Garant\L3\l3WndProcListenersList.pas',
  l3WndProcRetListenersList in 'w:\common\components\rtl\Garant\L3\l3WndProcRetListenersList.pas',
  l3MouseListenersList in 'w:\common\components\rtl\Garant\L3\l3MouseListenersList.pas',
  l3MouseWheelListenersList in 'w:\common\components\rtl\Garant\L3\l3MouseWheelListenersList.pas',
  l3ListenersHooks in 'w:\common\components\rtl\Garant\L3\l3ListenersHooks.pas',
  l3ListenersManager in 'w:\common\components\rtl\Garant\L3\l3ListenersManager.pas',
  vtInterfaces in 'w:\common\components\gui\Garant\VT\vtInterfaces.pas',
  vtCustomReminder in 'w:\common\components\gui\Garant\VT\vtCustomReminder.pas'
  {$If not defined(NoScripts)}
  ,
  kwPopReminderMove in 'w:\common\components\rtl\Garant\ScriptEngine\kwPopReminderMove.pas'
  {$IfEnd} //not NoScripts
  
  {$If defined(Nemesis)}
  ,
  nscPageControl in 'w:\common\components\gui\Garant\Nemesis\nscPageControl.pas'
  {$IfEnd} //Nemesis
  
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
  kwVTControlsPack in 'w:\common\components\rtl\Garant\ScriptEngine\kwVTControlsPack.pas'
  {$IfEnd} //not NoScripts
  ,
  evTunedEditor in 'w:\common\components\gui\Garant\Everest\evTunedEditor.pas',
  evEditor in 'w:\common\components\gui\Garant\Everest\evEditor.pas',
  evQueryCardEditorHotSpot in 'w:\common\components\gui\Garant\Everest\evQueryCardEditorHotSpot.pas',
  evQueryCardSelection in 'w:\common\components\gui\Garant\Everest\evQueryCardSelection.pas',
  evQueryCardEditor in 'w:\common\components\gui\Garant\Everest\evQueryCardEditor.pas',
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
  ,
  tb97GraphicControl in 'w:\common\components\rtl\external\tb97\tb97GraphicControl.pas',
  tb97Ctls in 'w:\common\components\rtl\external\tb97\tb97Ctls.pas'
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
  ,
  afwDrawing in 'w:\common\components\gui\Garant\AFW\implementation\Visual\afwDrawing.pas'
  {$If not defined(NoVCM)}
  ,
  vcmMenuManager in 'w:\common\components\gui\Garant\VCM\implementation\Components\vcmMenuManager.pas'
  {$IfEnd} //not NoVCM
  
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
  kwBynameControlPush in 'w:\common\components\rtl\Garant\ScriptEngine\kwBynameControlPush.pas'
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
  tfwClassRef in 'w:\common\components\rtl\Garant\ScriptEngine\tfwClassRef.pas'
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
  ,
  Menus {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\Menus.pas' {$EndIf}
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
  ,
  vtTreeSource in 'w:\common\components\gui\Garant\VT\vtTreeSource.pas',
  l3TreeUtils in 'w:\common\components\rtl\Garant\L3\l3TreeUtils.pas',
  vtOutliner in 'w:\common\components\gui\Garant\VT\vtOutliner.pas'
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
  TB97Tlbr in 'w:\common\components\rtl\external\tb97\TB97Tlbr.pas',
  ActnList {$IfNDef XE} in 'w:\common\components\rtl\external\Borland\Delphi\Vcl\ActnList.pas' {$EndIf}
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
  tfwScriptEngineEX in 'w:\common\components\rtl\Garant\ScriptEngine\tfwScriptEngineEX.pas'
  {$IfEnd} //not NoScripts
  ,
  ItsLAW in 'ItsLAW.pas'
  ;
{$IfEnd} //NewGen AND nsTest

{$R NewGenTest.res}

begin
 {$IfDef nsTest}
 g_CVSPath := 'w:\MDProcess\NewGenTest';
 {$EndIf nsTest}
 //#UC START# *4F5F53C903CBCVSPath*
 //#UC END# *4F5F53C903CBCVSPath*
 TAutoTestsSuite.Register;
 try
  if KTestRunner.NeedKTestRunner([TItsLAW]) then
   KTestRunner.RunRegisteredTests
  else
  if System.IsConsole then
   TextTestRunner.RunRegisteredTests
  else
   GUITestRunner.RunRegisteredTests;
 except
  on E: Exception do
  begin
   {$If defined(MTDORB) AND defined(NoKPageTool)}
   if TKBridge.Exists then
    TKBridge.Instance.Logout;
   {$IfEnd}
   l3System.Exception2Log(E);
   Halt(2);
  end;//Exception
 end;//try..except
 if (TestsExitCode <> 0) then
  Halt(TestsExitCode);
end.