unit FileProcessingPack;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/FileProcessingPack.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeywordsPack::Class>> Shared Delphi Scripting::ScriptEngine::FileProcessing::FileProcessingPack
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
  kwFileOpenRead,
  kwFileOpenWrite,
  kwFileReadLn,
  kwFileWriteLn,
  kwFileWriteChar,
  kwFileReadWStrLn,
  kwFileWriteWStrLn,
  kwFileWriteWStr,
  kwFileEOF,
  kwFileReadLines,
  kwFileWriteStr,
  kwProcessFilesWithMask,
  kwProcessSubDirs,
  kwRenameFile,
  kwDeleteFile,
  kwPureDir,
  kwDeleteFilesByMask
  ;

{$IfEnd} //not NoScripts
end.