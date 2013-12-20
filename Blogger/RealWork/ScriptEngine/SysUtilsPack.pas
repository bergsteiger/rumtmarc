unit SysUtilsPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/SysUtilsPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::SysUtils::SysUtilsPack
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  kwIntToStr,
  kwSysUtilsExtractFileName,
  kwWinExec,
  kwSysUtilsChangeFileExt,
  kwScriptFileName,
  kwSysutilsExtractFilePath,
  kwSysutilsExtractFileDrive,
  kwSysutilsForceDirectories,
  kwClipboardClear,
  kwGetLocalTime,
  kwSetLocalTime,
  kwGetLocalDate,
  kwSetLocalDate,
  kwGetLocalDateTime,
  kwSetLocalDateTime,
  kwGetTickCount,
  kwShiftTime,
  kwShiftDate,
  kwCFHTML,
  kwCFXML,
  kwClipboardGetFormattedText,
  kwSysutilsFileExists,
  kwSysutilsDirectoryExists,
  kwRGB2String,
  kwClipboardSetText,
  kwCFEVEREST,
  kwRandom,
  kwRandomize,
  kwSetRandSeed,
  kwStartTimer,
  kwStopTimer,
  kwStopTimerEx,
  kwApplicationActionIdle,
  kwApplicationCancelHint,
  kwApplicationIsHintVisible,
  kwApplicationGetLastHint,
  kwComputerName,
  kwEtalonNeedsComputerName,
  kwTimeToLog,
  kwIsUnder64,
  kwOSName,
  kwIsXE
  ;

{$IfEnd} //not NoScripts
end.