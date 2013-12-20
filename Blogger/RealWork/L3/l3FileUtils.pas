unit l3FileUtils;
{* ������ ��� ������ � �������. }

{ ���������� "L3 (Low Level Library)" }
{ �����: ������� �.�. �               }
{ ������: l3FileUtils -               }
{ �����: 12.04.98 16:27               }
{ $Id: l3FileUtils.pas,v 1.73 2013/05/14 02:46:36 fireton Exp $ }

// $Log: l3FileUtils.pas,v $
// Revision 1.73  2013/05/14 02:46:36  fireton
// - ����� ������ ���������� �� ������ ����������� �����
//
// Revision 1.72  2013/04/19 13:08:17  lulin
// - ���������.
//
// Revision 1.71  2013/04/04 11:22:01  lulin
// - ���������.
//
// Revision 1.70  2013/04/03 15:28:56  lulin
// - ���������.
//
// Revision 1.69  2013/01/22 12:21:13  narry
// ������� l3ChangeFileFolder
//
// Revision 1.68  2012/11/01 09:42:57  lulin
// - ����� ����� � �������.
//
// Revision 1.67  2012/11/01 07:45:08  lulin
// - ������ ����������� ����������� �������� �������� �������.
//
// Revision 1.66  2012/09/24 14:59:51  dinishev
// New function: ������� �������� ����������.
//
// Revision 1.65  2012/07/10 09:08:08  narry
// ��������� ������� GetUniqFileName (376439705)
//
// Revision 1.64  2012/07/10 08:59:20  narry
// ��������� ������� GetUniqFileName (376439705)
//
// Revision 1.63  2012/05/29 09:38:44  lulin
// {RequestLink:367210517}
//
// Revision 1.62  2012/04/12 10:24:36  narry
// �������� ��� ������� ����������� ������ � �����
//
// Revision 1.61  2012/04/10 10:52:22  narry
// GetNextUniqueFileName - ��������� ��� ����� ���� ������������ ������ ���������� �������
//
// Revision 1.60  2011/10/14 05:27:19  narry
// DelDir ������ �������
// MakeUniqueFileName - ���������� ���������� ��� ����� ���� FilenameN
//
// Revision 1.59  2011/08/19 12:05:21  dinishev
// ����� �������� ����� + ����������� �������� �������� ����.
//
// Revision 1.58  2011/05/06 12:17:50  fireton
// - ��������������
//
// Revision 1.57  2010/09/28 13:06:11  fireton
// - ������������ ������ ��� _PChar ������ ����������
//
// Revision 1.56  2010/06/18 11:41:11  lulin
// {RequestLink:219119831}.
// - ������ ������.
// - ��������� ����.
// - ����� ����� � ���.
// - ��������� �������� �� ������������ ����� �������������� ������.
//
// Revision 1.55  2009/01/13 16:21:47  narry
// - ����������
//
// Revision 1.54  2008/10/06 07:21:48  voba
// no message
//
// Revision 1.53  2008/04/03 07:49:49  voba
// - enh. procedure DeleteFilesByMask
//
// Revision 1.52  2008/03/03 20:06:08  lulin
// - <K>: 85721135.
//
// Revision 1.51  2007/12/05 17:40:47  lulin
// - ������ �������� ���.
//
// Revision 1.50  2007/07/09 10:56:41  voba
// - add  function l3GetTempFileName
//
// Revision 1.49  2007/07/04 09:16:31  narry
// - ����� ��������� ExtractOnlyFileName
//
// Revision 1.48  2007/04/17 11:38:15  fireton
// - ������� � ����� �������������
//
// Revision 1.47  2007/03/23 13:35:22  lulin
// - ����� ������ ��������.
//
// Revision 1.46  2007/02/22 13:35:41  fireton
// - ������� �� 64 ���� � HyTech
//
// Revision 1.45  2007/01/21 17:05:31  mmorozov
// - merge with B_NEMESIS_6_4 (CQ: OIT5-24130);
//
// Revision 1.44  2007/01/09 10:09:09  voba
// - rename function l3StringToPCharAlloc to l3PCharAlloc
//
// Revision 1.43.32.1  2007/01/21 16:45:01  mmorozov
// - bugfix: ������������ ����� ����� ��� ���������� (CQ: OIT5-24130);
//
// Revision 1.43  2005/10/21 11:16:09  voba
// - misstype
//
// Revision 1.42  2005/10/06 11:41:58  voba
// - add proc. l3ConcatText
//
// Revision 1.41  2005/08/30 15:52:48  step
// ����������� DeleteFilesByMaskRecur
//
// Revision 1.40  2005/08/30 14:10:02  step
// new: DeleteFilesByMaskRecur
//
// Revision 1.39  2005/05/16 08:27:23  fireton
// - bug fix: MakeDir ������ ������ ���������� ��������� �� ������
//
// Revision 1.38  2004/10/22 14:55:46  step
// ����� ������� _ProcessFilesWithMask
//
// Revision 1.37  2004/09/14 15:58:18  lulin
// - ������ ������ Str_Man - ����������� ������ ���� - l3String.
//
// Revision 1.36  2004/09/14 13:47:22  lulin
// - ������ ������ Str_Man.
//
// Revision 1.35  2004/09/13 14:19:48  lulin
// - ��� ������������� ������ ���������� ��������� � ���������.
// - ��������� �� ����������� �� RX.
//
// Revision 1.34  2004/07/30 10:03:47  step
// ���������� CopyFile - ��������� ��������� ������
//
// Revision 1.33  2004/06/21 15:35:05  step
// new: procedure DeleteFilesByMask
//
// Revision 1.32  2004/05/06 15:54:43  narry
// - update: ������� SizeOfFile ��������� ������������ �����, ������ ������� ������ 2 �����
//
// Revision 1.31  2004/04/15 16:20:23  voba
// Delphi6 ����� �� �����
//
// Revision 1.30  2004/04/14 13:01:15  fireton
// - bug fix: CopyFilesByMask ��� ����� "*.*" �������� ���������� ����������
//             ������� .. � .
//
// Revision 1.29  2004/03/31 16:24:25  law
// -  �������� ������� ������� � StringToPCharAlloc.
//
// Revision 1.28  2004/03/30 15:30:17  step
// new: procedure CopyFilesByMask
//
// Revision 1.27  2004/03/10 13:42:05  narry
// - bug fix: �� �������� �������� ����
//
// Revision 1.26  2004/02/25 12:05:57  voba
// -add  function ExtractParentDirName
//
// Revision 1.25  2004/02/06 13:17:00  voba
// -new feature:function ExtractDirName ���� �� ����� ������ / �� ���������� - ��� ������
//
// Revision 1.24  2004/02/03 09:43:19  voba
// -buf fix
//
// Revision 1.23  2003/12/02 15:48:28  law
// - cleanup.
//
// Revision 1.22  2003/10/30 13:55:08  narry
// - bug fix: ��������� CopyFile - ������ ����������� �� ��������� ���������, ��� ��������� � �������� ��������� ����� ��� �������� ���������
//
// Revision 1.21  2003/07/16 08:51:38  narry
// - bug fix: ����������� ���� �������� �� ��������������� ����������� ����������
//
// Revision 1.20  2003/06/27 16:02:31  voba
// -bug fix
//
// Revision 1.19  2003/05/23 10:06:12  law
// - bug fix: �������� �� ������, � ��������� ���� � ����� �����.
//
// Revision 1.18  2003/05/23 08:29:49  voba
// - bug fix
//
// Revision 1.17  2002/10/04 06:42:18  voba
// - new function: IsIdenticalFiles
//
// Revision 1.16  2002/07/22 08:14:13  narry
// - cleanup: ��� ���������� ��������� � PureDir ��������� exception
//
// Revision 1.15  2002/06/20 12:53:02  narry
// - new behavior: CopyFile - �������� ��������� ����� � ������ fmShareDenyWrite
//
// Revision 1.14  2002/04/25 10:28:22  voba
// -new behavior: add RenametoBack
//
// Revision 1.13  2002/04/15 07:09:30  narry
// - bug fix: ��� ����������� ����� � ������ Append ����������� ������������� � �������� ����
//
// Revision 1.12  2002/04/05 06:30:27  narry
// - cleanup
//
// Revision 1.11  2002/04/05 06:12:23  voba
// no message
//
// Revision 1.10  2002/04/03 15:53:19  voba
// no message
//
// Revision 1.9  2002/04/02 09:52:24  demon
// - bug fix
//
// Revision 1.8  2002/04/01 15:21:58  voba
// -new behavior: add cmNoBakCopy flag for CopyFile
//
// Revision 1.7  2002/01/10 13:17:52  law
// - new behavior: ������� �������� bak-����� ��� ���������� ����������.
//
// Revision 1.6  2001/12/18 14:06:35  law
// - new unit: evSaveDocumentManager.
//
// Revision 1.5  2001/10/15 12:49:02  narry
// - bug fix: FindFirst ��� FindClose
//
// Revision 1.4  2001/09/21 16:49:05  law
// - new proc: from RX.
//
// Revision 1.3  2001/09/04 13:59:42  voba
// - change proc: CopyFile - ������ �������� �� ���������.
//
// Revision 1.2  2001/08/31 11:38:45  law
// - cleanup & comments.
//
// Revision 1.1  2001/08/31 11:02:36  law
// - rename unit: MyUtil -> l3FileUtils.
//
// Revision 1.8  2001/08/29 15:36:27  law
// - cleanup: ������� �������� ����������� �� Orpheus � SysTools.
//
// Revision 1.7  2001/04/05 08:52:17  law
// - cleanup: ������������� ������� WinTypes � WinProcs ������� �� Windows.
//
// Revision 1.6  2000/12/15 15:36:28  law
// - ��������� ��������� Log.
//

{$I l3Define.inc }
{$I+}

interface

uses
  Windows,
  SysUtils,

  l3Types
  ;

 type
  TFileProcessingFunc = function (const aFileName: string;
                                  aData: Pointer): Boolean;

 Const
  {DosErr}
  DosErrOK               = 0;
  DosErrFileNotFound     = -2;
  DosErrDirNotFound      = -3;
  DosErrTooManyOpenFiles = -4;
  DosErrNoMoreFiles      = -18;

  {ConvertMode}
  cmNoConvert  = 0;
   {* - ��� �����������. }
  cmOEMtoANSI  = 1;
   {* - OEM � ANSI. }
  cmANSItoOEM  = 2;
   {* - ANSI � OEM. }

  {CopyMode}
  cmWriteOver    = $00;
   {* - ������������ ������. }
  cmAppend       = $01;
   {* - �������� � �������������. }
  cmDeleteSource = $10;
   {* - ������� �������� ����. }
  cmNoBakCopy    = $20;
   {* - �� ��������� ����� ����������������� �����. }

  {Dos}
  function  FileExists(FileName: string) : Boolean;
    {* - ���� ����������? }
  procedure CopyFile(Sour, Dest : TFileName; CopyMode : Byte = cmWriteOver);
    {* - ���������� ���� (CopyMode - ��. cmWriterOver). }
  procedure ProcessDirectory(const aDir: TFileName;
                             aFileProcessingFunc: TFileProcessingFunc;
                             aData: Pointer = nil);
    {* - ���������� ��� ������������� � ���������� aDir. }                         
  procedure ProcessFilesWithMask(const aDir, aFileNameMask: TFileName;
                                 aFileProcessingFunc: TFileProcessingFunc;
                                 aData: Pointer = nil);
    {* - ���������� �����, � ������ ��������������� ����� �� ����� aDir
         � � ������ ��������� TFileProcessingFunc^, ��������� ��� �������� aData.
         ���� ��� ������� ���������� False, �� ������������ ������������}
  procedure CopyFilesByMask(SourDir, DestDir, aFileNameMask: TFileName);
    {* - ���������� �����, � ������ ��������������� �����, �� ����� Sour � ����� Dest}
  procedure DeleteFilesByMask(const aDir, aFileNameMask: TFileName);
    {* - ������� �����, � ������ ��������������� �����}
  procedure DeleteFilesByMaskRecur(const aDir, aFileNameMask: TFileName);
    {* - ������� �����, � ������ ��������������� �����, � ��������� ����� � �� ���� ��������� ������}
  procedure CopyConvFiles(Sour,Dest : TFileName; ConvertMode : Byte);
    {* - ���������� ����� � ������������ (ConvertMode - ��. cmNoConvert). }
  function  SizeOfFile(FileName : TFileName) : int64;
    {* - ������ �����. }
  procedure WipeDeleteFile(FName : TFileName);
    {* - ������� ���� � ���������� �����������. }
  procedure RenametoBack(Const aFileName : TFileName);
    {* - ������������� ���� � "bak"}
  function RenameFileSafe(Const aOldFileName, aNewFileName : TFileName): Boolean;
    {* - ������������� ���� � ��������� ��������� �����. }
  function  MakeFile(Const FName : TFileName) : Boolean;
    {* - ������� ����. }
  function  IsFullPath(aFileName : TFileName) : Boolean;
    {* - ��� ������ ���� � �����? }
  procedure MakeDir(aDirName : TFileName);
    {* - ������� ����������. }
  function DelDir(FName : TFileName): Boolean;
    {* - ������� ����������. }
  procedure PureDirEx(FName : TFileName; const anExept: String);
    {* - �������� ����������. }
  procedure PureDir(FName : TFileName);
    {* - �������� ����������. }
  function  RenDir(OldName, NewName : TFileName) : Boolean;
    {* - ������������� ����������. }
  {RenDir ����� � �� ��������}
  Procedure CopyDir(Sour,Dest : TFileName);
    {* - ���������� ����������. }

  function GetUniqFileName(Dir: TFileName; Prefix, Suffix: String; WithDir : Boolean = true): TFileName;
    {* - �������� ���������� ��� �����. }
  function l3GetTempFileName(aPrefix : PAnsiChar): TFileName;
    {* - �������� ���������� ��� ����� � TEMP ��������. }

  function GetFileSize(const FileName: string): Int64;
    {-}
  function FileDateTime(const FileName: string): TDateTime;
    {-}
  function IsIdenticalFiles(FileName1, FileName2: TFileName): Boolean;
  {* - ���������, ��� ����� ������ ��������� �� ���������� �����. }
  function ConcatDirName(aDirName : TFileName; aFileName : TFileName) : TFileName;
    {-}
  function ExtractDirName(aDirName : TFileName) : TFileName;
    {* - �������� ������� �� ������. ���� �� ����� ������ "/" �� ������� - ��� ������. }
  function ExtractParentDirName(aDirName : TFileName) : TFileName;
    {* - �������� ������������ ������� �� ������. ���� �� ����� ������ "/" �� ��� ����� ��������.
         ��� ������ ���������� ������� � ������� ��� ���������. }
  procedure SplitCommandLine(const CmdLine: AnsiString; var ExeName, Params: AnsiString);
    {-}
  function ValidFileName(const FileName: string): Boolean;
    {-}
  function DirExists(const Name: string): Boolean;
    {-}
  function ShortToLongFileName(const ShortName: string): string;
  function ShortToLongPath(const ShortName: string): string;
  function LongToShortFileName(const LongName: string): string;
  function LongToShortPath(const LongName: string): string;

  function l3ChangeBlankExt(const FileName, Ext: String): String;
    {-}
  function l3AddExtByFilterIndex(aPathStr : string; aFilter : String; aFilterIndex : Integer) : String;
    {-}
  function l3GetLongPathName(AFileName: PChar; BufSize: Integer): PChar;
   {* - �������� ������� ��� ���� �� ��������� (8.3). }
function ExtractOnlyFileName(aFileName: String): string;
   {* - �������� ������ ��� ����� (��� ����) }
function NormalDir(const DirName: string): string;

function MakeUniqueFileName(const aFileName: String): string;

function GetNextUniqueFileName(const aFileName: String; aMaxSize: Integer): string;

    
  procedure CopyDirEx(Sour, Dest: TFileName; ProgressProc: Tl3ProgressProc);


  procedure CopyFileEx(Sour, Dest: TFileName; ProgressProc: Tl3ProgressProc; CopyMode: Byte =
      cmWriteOver);

function l3ChangeFileFolder(const aFileName, aNewFolder: string): string;

implementation

uses
  l3Base,
  l3String,
  Math, l3Date;

{$IfDef Win32}
const
 MaxAvail = 64*1024;
{$EndIf}

const
{$IfDef Win32}
 AllFilesMask = '*';
{$Else}
 AllFilesMask = '*.*';
{$EndIf}

{$IfNDef Delphi7}
{ File attribute constants }
  faSymLink = $00000040;
{$EndIf}

function l3GetLongPathName(AFileName: PChar; BufSize: Integer): PChar;
var
  l_CurrBS            : PChar;
  l_NextBS            : PChar;
  l_Handle            : THandle;
  l_L                 : Integer;
  l_FindData          : TWin32FindData;
  l_Buffer            : array[0..MAX_PATH] of Char;
  l_wpGetLongPathName : function (ShortPathName : PChar;
                                  LongPathName  : PChar;
                                  cchBuffer     : Integer): Integer stdcall;

 function FindBS(Current: PChar): PChar;
 begin
   Result := Current;
   while (Result^ <> #0) and (Result^ <> '\') do
     Result := CharNext(Result);
 end;

begin
 Result := AFileName;
 l_Handle := GetModuleHandle(kernel32);
 if l_Handle <> 0 then
 begin
  @l_wpGetLongPathName := GetProcAddress(l_Handle, 'GetLongPathNameA');
  if Assigned(l_wpGetLongPathName) and
   (l_wpGetLongPathName(AFileName, l_Buffer, SizeOf(l_Buffer)) <> 0) then
  begin
   lstrcpyn(AFileName, l_Buffer, BufSize);
   Exit;
  end;//if Assigned(l_wpGetLongPathName) and
 end;//if l_Handle <> 0 then

 if AFileName[0] = '\' then
 begin
  if AFileName[1] <> '\' then Exit;
  l_CurrBS := FindBS(AFileName + 2);  // skip server name
  if l_CurrBS^ = #0 then Exit;
  l_CurrBS := FindBS(l_CurrBS + 1);     // skip share name
  if l_CurrBS^ = #0 then Exit;
 end
 else
  l_CurrBS := AFileName + 2;          // skip drive name

 l_L := l_CurrBS - AFileName;
 lstrcpyn(l_Buffer, AFileName, l_L + 1);
 while l_CurrBS^ <> #0 do
 begin
  l_NextBS := FindBS(l_CurrBS + 1);
  if l_L + (l_NextBS - l_CurrBS) + 1 > SizeOf(l_Buffer) then Exit;
  lstrcpyn(l_Buffer + l_L, l_CurrBS, (l_NextBS - l_CurrBS) + 1);
  // ���� ������� � ����������� ������, ��������� ���:
  if (l_CurrBS^ = '\') and (l_NextBS^ = #0) and (l_NextBS - l_CurrBS = 1) then
   Break;
  l_Handle := FindFirstFile(l_Buffer, l_FindData);
  if (l_Handle = INVALID_HANDLE_VALUE) then Exit;
  Windows.FindClose(l_Handle);

  if l_L + 1 + StrLen(l_FindData.cFileName) + 1 > SizeOf(l_Buffer) then
   Exit;
  l_Buffer[l_L] := '\';
  lstrcpyn(l_Buffer + l_L + 1, l_FindData.cFileName, Sizeof(l_Buffer) - l_L - 1);
  Inc(l_L, StrLen(l_FindData.cFileName) + 1);
  l_CurrBS := l_NextBS;
 end;//while l_CurrBS^ <> #0 do
 lstrcpyn(AFileName, l_Buffer, BufSize);
end;//l3GetLongPathName

function  FileExists(FileName: string) : Boolean;
var
 SearchRec: TSearchRec;
begin
 Result := False;
 if FileName = '' then
  Exit;
 if FileName[Length(FileName)] = '\' then
  Delete(FileName,Length(FileName),1);
 Result := FindFirst(FileName, faAnyFile, SearchRec) = 0;
 {.$IfNDef Win32}
 if Result then
  while FindNext(SearchRec) = 0 do ;
 {.$end}
 FindClose(SearchRec);
end;

Procedure CopyFile(Sour,Dest : TFileName; CopyMode : Byte);
begin
 CopyFileEx(Sour, Dest, nil, CopyMode);
end;

procedure ProcessDirectory(const aDir: TFileName;
                           aFileProcessingFunc: TFileProcessingFunc;
                           aData: Pointer = nil);
var
 l_SearchRec: TSearchRec;
 l_FindResult: Integer;
begin
 l_FindResult := FindFirst(ConcatDirName(aDir, '*.*'),
                           faDirectory	,
                           l_SearchRec);
 try
  while l_FindResult = 0 do
  begin
   if ((l_SearchRec.Attr and faDirectory) <> 0) and (l_SearchRec.Name <> '.') and (l_SearchRec.Name <> '..') then
    if not aFileProcessingFunc(l_SearchRec.Name, aData) then
     Break;

   l_FindResult:= FindNext(l_SearchRec);
  end;
 finally
  FindClose(l_SearchRec);
 end;
end;

procedure ProcessFilesWithMask(const aDir, aFileNameMask: TFileName;
                               aFileProcessingFunc: TFileProcessingFunc;
                               aData: Pointer = nil);
var
 l_SearchRec: TSearchRec;
 l_FindResult: Integer;
begin
 l_FindResult := FindFirst(ConcatDirName(aDir, aFileNameMask),
                           faAnyFile,
                           l_SearchRec);
 try
  while l_FindResult = 0 do
  begin
   if (l_SearchRec.Attr and (faDirectory or faVolumeID or faSymLink)) = 0 then
    if not aFileProcessingFunc(ConcatDirName(aDir, l_SearchRec.Name), aData) then
     Break;

   l_FindResult:=FindNext(l_SearchRec);
  end;
 finally
  FindClose(l_SearchRec);
 end;
end;

procedure CopyFilesByMask(SourDir, DestDir, aFileNameMask: TFileName);
var
 l_SearchRec: TSearchRec;
 l_FindResult: Integer;
begin
 l_FindResult := FindFirst(ConcatDirName(SourDir, aFileNameMask),
                           faAnyFile,
                           l_SearchRec);
 try
  while l_FindResult = 0 do
  begin
   if (l_SearchRec.Attr and (faDirectory or faVolumeID or faSymLink)) = 0 then
    CopyFile(ConcatDirName(SourDir, l_SearchRec.Name),
             ConcatDirName(DestDir, l_SearchRec.Name),
             cmWriteOver);
   l_FindResult:=FindNext(l_SearchRec);
  end;
 finally
  FindClose(l_SearchRec);
 end;
end;

procedure DeleteFilesByMask(const aDir, aFileNameMask: TFileName);
var
 l_SearchRec  : TSearchRec;
 l_FindResult : Integer;
 l_NormDir    : TFileName;
begin
 l_NormDir := ExtractDirName(ConcatDirName(aDir, aFileNameMask));
 l_FindResult := FindFirst(ConcatDirName(aDir, aFileNameMask),
                           faAnyFile,
                           l_SearchRec);
 try
  while l_FindResult = 0 do
  begin
   if (l_SearchRec.Attr and (faDirectory or faVolumeID or faSymLink)) = 0 then
    DeleteFile(ConcatDirName(l_NormDir, l_SearchRec.Name));
   l_FindResult := FindNext(l_SearchRec);
  end;
 finally
  FindClose(l_SearchRec);
 end;
end;

procedure DeleteFilesByMaskRecur(const aDir, aFileNameMask: TFileName);
var
 l_SearchRec: TSearchRec;
 l_Found: Boolean;
begin
 // ������������ ������� �����
 DeleteFilesByMask(aDir, aFileNameMask);

 // �������� �� ��������� ������
 l_Found := FindFirst(ConcatDirName(aDir, AllFilesMask),
                      faDirectory,
                      l_SearchRec) = 0;
 try
  while l_Found do
  begin
   if (l_SearchRec.Name[1] <> '.') and (l_SearchRec.Attr and faDirectory = faDirectory) then
    DeleteFilesByMaskRecur(ConcatDirName(aDir, l_SearchRec.Name), aFileNameMask); // ��������

   l_Found := FindNext(l_SearchRec) = 0;
  end;
 finally
  FindClose(l_SearchRec);
 end;
end;

Procedure CopyDir(Sour,Dest : TFileName);
Begin
 CopyDirEx(Sour, Dest, nil);
end;

Procedure CopyConvFiles(Sour,Dest : TFileName; ConvertMode : Byte);
Var
  FromF, ToF          : file;
  NumRead, NumWritten : {$IFDef Win32} Integer {$ELSE} Word {$ENDIF};
  buf                 : pointer;
  BufSize             : LongInt;
begin
  if (Sour = '') or (Dest = '')
    then raise Exception.Create('�������� ��� �����');
  BufSize:=MaxAvail;
  If BufSize>32*1024 then Bufsize:=32*1024;
  l3System.GetLocalMem(buf,BufSize);
  Try
    Assign(FromF, Sour);
    {if Not FileExists(Sour) then exit;}
    Reset(FromF, 1);
    Try
      Assign(ToF, Dest);
      Rewrite(ToF, 1);
      Try
        repeat
          BlockRead(FromF,buf^,BufSize,NumRead);
          Case ConvertMode of
           cmOEMtoANSI : OEMtoANSIBuff(buf,buf,NumRead);
           cmANSItoOEM : ANSItoOEMBuff(buf,buf,NumRead);
          end;
          BlockWrite(ToF,buf^,NumRead,NumWritten);
        until (NumRead = 0) or (NumWritten <> NumRead);
      finally
        Close(ToF);
      end;
    finally
      Close(FromF);
    end;
  finally
    l3System.FreeLocalMem(buf);
  end;
end;

type
 TRealFileSize = record
   fLow : DWord;
   fHigh: DWord;
  end;
Function  SizeOfFile(FileName : TFileName) : int64;
 Var
  FRec: TSearchRec;
 Begin
  If FindFirst(FileName, $7FFF,  FRec) = 0 then
  begin
   TRealFileSize(Result).fHigh:= FRec.FindData.nFileSizeHigh;
   TRealFileSize(Result).fLow:= FRec.FindData.nFileSizeLow;
  end
  else
   Result:=0;
  FindClose(FRec);
 end;

Procedure WipeDeleteFile(FName : TFileName);
 Var
  F : File;
 Begin
  Assign(F,FName);
  Try
   Rewrite(F);
  Except Exit;
  end;
  Close(F);
  DeleteFile(FName);
 end;

procedure RenametoBack(Const aFileName : TFileName);
 var
  lBakName : TFileName;
 begin
  If FileExists(aFileName) then
  begin
   lBakName := ChangeFileExt(aFileName,'.bak');
   If FileExists(lBakName) then DeleteFile(lBakName);
   RenameFile(aFileName, lBakName);
  end;
 end;

function RenameFileSafe(Const aOldFileName, aNewFileName : TFileName): Boolean;
begin
 RenametoBack(aNewFileName);
 Result := RenameFile(aOldFileName, aNewFileName);
end;

function MakeFile(Const FName : TFileName) : Boolean;
 Var
  H : Integer;
 Begin
  Try
   MakeDir(ExtractFilePath(FName));
   H := FileCreate(FName);
   Result:= H > 0;
   If Result then FileClose(H);
  Except
   Result:=False;
  end;
 end;

resourcestring
  ecNotValidDrive     = '���������� %s �� ����������.';
  ecDontMakeDir       = '�� ���� ������� ������� %s.';
  ecDontDelDir        = '�� ���� ������� ������� %s.';
  ecDontDelFile       = '�� ���� ������� ���� %s.';
  ecIncorrectFileName = '������������ ��� ����� (��������) %s.';

procedure PureDirEx(FName : TFileName; const anExept: String);
Var
 l_Path    : String;
 SearchRec : TSearchRec;
 l_Found   : Boolean;
Begin
 FName := ExcludeTrailingPathDelimiter(FName);
 FName := ExpandFileName(FName);
 l_Found := (FindFirst(FName, faAnyFile, SearchRec) = 0) and
      (SearchRec.Attr and faDirectory = faDirectory);
 FindClose(SearchRec);

 if not l_Found then Exit;
 (* ��� ���������� �������� � �������� �� �����
   Raise Exception.CreateFmt(ecDontDelDir,[FName]);
 *)
 l_Found := FindFirst(FName+'\'+ AllFilesMask, faAnyFile, SearchRec) = 0;
 try
  while l_Found do
  begin
   if SearchRec.Name[1] <> '.' then
   begin
    if SearchRec.Attr and faDirectory = faDirectory then
    begin
     l_Path := FName + '\' + SearchRec.Name;
     if Pos(anExept, l_Path) = 0 then
      DelDir(l_Path);
    end
    else
    begin
     l_Path := FName + '\' + SearchRec.Name;
     FileSetAttr(l_Path, 0);
     if Pos(anExept, l_Path) = 0 then
      if not DeleteFile(l_Path) then
       raise Exception.CreateFmt(ecDontDelFile,[l_Path]);
    end;
   end; // if SearchRec.Name[1] <> '.' then
   l_Found := FindNext(SearchRec) = 0;
  end; // while l_Found do
 finally
  {RmDir(FName);}
  FindClose(SearchRec);
 end;
end;

Procedure PureDir(FName : TFileName);
 Var
  SearchRec : TSearchRec;
  L : Boolean;
 Begin
  FName:= ExcludeTrailingPathDelimiter(FName);
  FName:=ExpandFileName(FName);
  L:=(FindFirst(FName, faAnyFile, SearchRec) = 0) and
     (SearchRec.Attr and faDirectory = faDirectory);
  FindClose(SearchRec);

  If not L then
   exit;
  (* ��� ���������� �������� � �������� �� �����
    Raise Exception.CreateFmt(ecDontDelDir,[FName]);
  *)
  L:=FindFirst(FName+'\'+ AllFilesMask, faAnyFile, SearchRec) = 0;
  try
   While L do
    Begin
     If SearchRec.Name[1] <> '.' then
      Begin
       If SearchRec.Attr and faDirectory = faDirectory
        then
          DelDir(FName+'\'+SearchRec.Name)
        else
         Begin
          FileSetAttr(FName+'\'+SearchRec.Name,0);
          If Not DeleteFile(FName+'\'+SearchRec.Name)
           then Raise Exception.CreateFmt(ecDontDelFile,[FName+'\'+SearchRec.Name]);
         end;
      end;
     L:=FindNext(SearchRec)=0;
    end;
  finally
   {RmDir(FName);}
   FindClose(SearchRec);
  end;
 end;

function DelDir(FName : TFileName): Boolean;
 Begin
  Try
   PureDir(FName);
   RemoveDir(FName);
   Result:= True;
  except
   Result:= False;
  end;
 end;

{$IfDef Win32}
function ValidDrive(aDriveName : String) : boolean;
 var
  lSaveCurrentDir : string;
 begin
  lSaveCurrentDir := GetCurrentDir;
  try
   Result := SetCurrentDir(aDriveName);
  finally
   SetCurrentDir(lSaveCurrentDir);
  end;
 end;

function IsFullPath(aFileName : TFileName) : Boolean;
 var
  lDriveName : String;
 begin
  lDriveName := ExtractFileDrive(aFileName);
  Result := Length(lDriveName) > 0;
 end;

procedure MakeDir(aDirName : TFileName);
 var
  SaveDir         : TFileName;
  lPos            : integer;
  lLen            : integer;
  lDriveName      : String;
  lSaveCurrentDir : String;
  lBeginCreate    : Boolean;
  lDirName        : TFileName;
 begin
  if Length(aDirName) = 0 then
    exit;

  lDirName := l3StripDoubleQuotes(aDirName);

  If lDirName[Length(lDirName)] = '\'
   then Delete(lDirName, Length(lDirName), 1);

  lDirName := ExpandFileName(lDirName);

  If FileExists(lDirName) then Exit;
  lDriveName := ExtractFileDrive(lDirName);

  lSaveCurrentDir := GetCurrentDir;
  try
   If not SetCurrentDir(lDriveName)
    then Raise Exception.CreateFmt(ecNotValidDrive,[lDriveName]);

   lPos := Length(lDriveName) + 2;
   lLen := Length(lDirName);

   lBeginCreate := False;
   while lPos < lLen do
    begin
     lPos := l3StringPos('\', lDirName, Succ(lPos));
     If lPos = 0 then lPos := Succ(lLen);
     If lBeginCreate or (not SetCurrentDir(Copy(lDirName, 1, Pred(lPos))))
      then
       begin
        lBeginCreate := true;
        SaveDir := Copy(lDirName, 1, Pred(lPos));
        If not CreateDir(Copy(lDirName, 1, Pred(lPos)))
         then Raise Exception.CreateFmt(ecDontMakeDir,[aDirName{ Copy(lDirName, 1, Pred(lPos))}]);
       end;
    end;
  finally
   SetCurrentDir(lSaveCurrentDir);
  end;
 end;

{$Else}

Procedure MakeDir(aDirName : TFileName);
 Var
  SaveDir  : TFileName;
  TName    : TFileName;
  TPos     : Word;
 Begin
  If aDirName = ''
   then Raise Exception.CreateFmt(ecIncorrectFileName,[aDirName]);
  aDirName:=ExpandFileName(aDirName);
  If aDirName[Length(aDirName)] = '\' then Delete(aDirName, Length(aDirName), 1);
  If FileExists(aDirName) then Exit;

  GetDir(0,SaveDir);
  Try
   If not ValidDrive(aDirName[1])
    then Raise Exception.CreateFmt(ecNotValidDrive,[aDirName[1]]);
   {$IfNDef Win32}
    SelectDrive(aDirName[1]);
   {$endif}
   ChDir(aDirName[1]+':\');
   {S:=dEFAULTdRIVE;}
   If aDirName[Length(aDirName)] <> '\' then aDirName:=aDirName + '\';
   TPos:=4;
   TPos:=l3StringPos('\', aDirName, TPos);
   While TPos > 0 do
    Begin
     TName:=Copy(aDirName,1,TPos-1);
     Try
      If FileExists(TName)
       then ChDir(TName)
       else MkDir(TName);
     except
      Raise Exception.CreateFmt(ecDontMakeDir,[TName]);
     end;
     Inc(TPos);
     TPos:=l3StringPos('\', aDirName, TPos);
   end;
  finally
   ChDir(SaveDir);
  end;
 end;
{$endif}

Function RenDir(OldName, NewName : TFileName) : Boolean;
begin
 Result := RenameFile(OldName, NewName);
end;

function GetUniqFileName(Dir: TFileName; Prefix, Suffix: String; WithDir : Boolean = true): TFileName;
  Var
  SR : TSearchRec;
 Begin
   If (Length(Dir) > 0)
    then
     Begin
      If Dir[Length(Dir)]='\' then Delete(Dir, Length(Dir), 1);
      If FindFirst(Dir+'\*.*',faDirectory,SR) = DosErrDirNotFound
       then Dir:=''
       else Dir:=Dir + '\';
      FindClose(SR);
     end;
   Result:= Dir + Prefix + IntToHex(CurrentDate, 4)+IntToHex(CurrentTime, 4) + Suffix;
   If Not WithDir then Result := ExtractFileName(Result);
 end;

function l3GetTempFileName(aPrefix : PAnsiChar): TFileName;
var
 TempPath, TempFile : array [0..MAX_PATH] of AnsiChar;
 l_Name             : String;
 l_Delete           : Cardinal;
begin
 Windows.GetTempPathA(MAX_PATH, TempPath);
 Windows.GetTempFileNameA(TempPath, aPrefix, 0, TempFile);
 Result := TempFile;
end;

function ConcatDirName(aDirName : TFileName; aFileName : TFileName) : TFileName;
 begin
  if Length(aDirName) = 0 then
   Result := aFileName
  else
  begin
   Result := aDirName;
   If (Length(aFileName) = 0) then Exit;
   If Result[Length(Result)] <> '\' then Result := Result + '\';
   If (aFileName[1] = '\') then Delete(aFileName,1,1);
   Result := Result + aFileName;
  end;
 end;

function ExtractDirName(aDirName : TFileName) : TFileName;
 var
  lLen : Integer;
 begin
  Result := '';
  lLen := Length(aDirName);
  if lLen = 0 then Exit;
  if (aDirName[lLen] = '\') then
  begin
   Delete(aDirName, lLen, 1);
   Result := aDirName;
  end
  else
   Result := ExtractFileDir(aDirName);
 end;

function ExtractParentDirName(aDirName : TFileName) : TFileName;
 var
  lLen : Integer;
 begin
  Result := '';
  lLen := Length(aDirName);
  if lLen = 0 then Exit;
  if (aDirName[lLen] = '\') then
   Delete(aDirName, lLen, 1);
  Result := ExtractFileDir(aDirName);
 end;

{ function GetParamStr copied from SYSTEM.PAS unit of Delphi 2.0 }
function GetParamStr(P: PAnsiChar; var Param: string): PAnsiChar;
var
  Len: Integer;
  Buffer: array[Byte] of AnsiChar;
begin
  while True do
  begin
    while (P[0] <> #0) and (P[0] <= ' ') do Inc(P);
    if (P[0] = '"') and (P[1] = '"') then Inc(P, 2) else Break;
  end;
  Len := 0;
  while P[0] > ' ' do
    if P[0] = '"' then
    begin
      Inc(P);
      while (P[0] <> #0) and (P[0] <> '"') do
      begin
        Buffer[Len] := P[0];
        Inc(Len);
        Inc(P);
      end;
      if P[0] <> #0 then Inc(P);
    end else
    begin
      Buffer[Len] := P[0];
      Inc(Len);
      Inc(P);
    end;
  SetString(Param, Buffer, Len);
  Result := P;
end;

function ParamCountFromCommandLine(CmdLine: PAnsiChar): Integer;
var
  S: string;
  P: PAnsiChar;
begin
  P := CmdLine;
  Result := 0;
  while True do
  begin
    P := GetParamStr(P, S);
    if S = '' then Break;
    Inc(Result);
  end;
end;

function ParamStrFromCommandLine(CmdLine: PAnsiChar; Index: Integer): string;
var
  P: PAnsiChar;
begin
  P := CmdLine;
  while True do
  begin
    P := GetParamStr(P, Result);
    if (Index = 0) or (Result = '') then Break;
    Dec(Index);
  end;
end;

procedure SplitCommandLine(const CmdLine: AnsiString; var ExeName,
  Params: AnsiString);
var
  Buffer: PAnsiChar;
  Cnt, I: Integer;
  S: string;
begin
  ExeName := '';
  Params := '';
  Buffer := l3PCharAlloc(CmdLine);
  try
   if (Buffer <> nil) then
   begin
    Cnt := ParamCountFromCommandLine(Buffer);
    if Cnt > 0 then begin
      ExeName := ParamStrFromCommandLine(Buffer, 0);
      for I := 1 to Cnt - 1 do begin
        S := ParamStrFromCommandLine(Buffer, I);
        if Pos(' ', S) > 0 then S := '"' + S + '"';
        Params := Params + S;
        if I < Cnt - 1 then Params := Params + ' ';
      end;
    end;//Buffer <> nil
   end;//
  finally
   l3StrDispose(Buffer);
  end;
end;

function ValidFileName(const FileName: string): Boolean;
  function HasAny(const Str, Substr: string): Boolean;
  var
    I: Integer;
  begin
    Result := False;
    for I := 1 to Length(Substr) do begin
      if Pos(Substr[I], Str) > 0 then begin
        Result := True;
        Break;
      end;
    end;
  end;
begin
  Result := (FileName <> '') and (not HasAny(FileName, '<>"[]|'));
  if Result then Result := Pos('\', ExtractFileName(FileName)) = 0;
end;

function DirExists(const Name: string): Boolean;
{$IFDEF WIN32}
var
  Code: Longword;
begin
  Code := GetFileAttributes(PChar(Name));
  Result := (Code <> $FFFFFFFF) and (FILE_ATTRIBUTE_DIRECTORY and Code <> 0);
end;
{$ELSE}
var
  SR: TSearchRec;
begin
  if Name[Length(Name)] = '\' then Dec(Name[0]);
  if (Length(Name) = 2) and (Name[2] = ':') then
    Name := Name + '\*.*';
  Result := FindFirst(Name, faDirectory, SR) = 0;
  Result := Result and (SR.Attr and faDirectory <> 0);
  FindClose(SR);
end;
{$ENDIF}

function ShortToLongFileName(const ShortName: string): string;
var
  Temp: TWin32FindData;
  SearchHandle: THandle;
begin
  SearchHandle := FindFirstFile(PChar(ShortName), Temp);
  if SearchHandle <> INVALID_HANDLE_VALUE then begin
    Result := string(Temp.cFileName);
    if Result = '' then Result := string(Temp.cAlternateFileName);
  end
  else Result := '';
  Windows.FindClose(SearchHandle);
end;

function LongToShortFileName(const LongName: string): string;
var
  Temp: TWin32FindData;
  SearchHandle: THandle;
begin
  SearchHandle := FindFirstFile(PChar(LongName), Temp);
  if SearchHandle <> INVALID_HANDLE_VALUE then begin
    Result := string(Temp.cAlternateFileName);
    if Result = '' then Result := string(Temp.cFileName);
  end
  else Result := '';
  Windows.FindClose(SearchHandle);
end;

function ShortToLongPath(const ShortName: string): string;
var
  LastSlash: PChar;
  TempPathPtr: PChar;
begin
  Result := '';
  TempPathPtr := PChar(ShortName);
  LastSlash := StrRScan(TempPathPtr, '\');
  while LastSlash <> nil do begin
    Result := '\' + ShortToLongFileName(TempPathPtr) + Result;
    if LastSlash <> nil then begin
      LastSlash^ := char(0);
      LastSlash := StrRScan(TempPathPtr, '\');
    end;
  end;
  Result := TempPathPtr + Result;
end;

function LongToShortPath(const LongName: string): string;
var
  LastSlash: PChar;
  TempPathPtr: PChar;
begin
  Result := '';
  TempPathPtr := PChar(LongName);
  LastSlash := StrRScan(TempPathPtr, '\');
  while LastSlash <> nil do begin
    Result := '\' + LongToShortFileName(TempPathPtr) + Result;
    if LastSlash <> nil then begin
      LastSlash^ := char(0);
      LastSlash := StrRScan(TempPathPtr, '\');
    end;
  end;
  Result := TempPathPtr + Result;
end;

function l3ChangeBlankExt(const FileName, Ext: String): String;
begin
 if (ExtractFileExt(FileName) = '') then
  Result := ChangeFileExt(FileName, '.' + Ext)
 else
  Result := FileName;
end;

function IsIdenticalFiles(FileName1, FileName2: TFileName): Boolean;
  {* - ���������, ��� ����� ������ ��������� �� ���������� ����� }
begin
 Result:= False;
 if not FileExists(FileName1) then
  Result := False
 else
 if not FileExists(FileName2) then
  Result := True
 else
  Result := (GetFileSize(FileName1) = GetFileSize(FileName2)) and
            (FileDateTime(FileName1) = FileDateTime(FileName2));

end;

function GetFileSize(const FileName: string): Int64;
var
  Handle: THandle;
  FindData: TWin32FindData;
begin
  Handle := FindFirstFile(PChar(FileName), FindData);
  if Handle <> INVALID_HANDLE_VALUE then begin
    Windows.FindClose(Handle);
    if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
    begin
      Int64Rec(Result).Lo := FindData.nFileSizeLow;
      Int64Rec(Result).Hi := FindData.nFileSizeHigh;
      Exit;
    end;
  end;
  Result := -1;
end;

const
  NullDate: TDateTime = {-693594} 0;
  
function FileDateTime(const FileName: string): System.TDateTime;
var
  Age: Longint;
begin
  Age := FileAge(FileName);
  if Age = -1 then
    Result := NullDate
  else
    Result := FileDateToDateTime(Age);
end;

 function NormalizeFilterStr(const aFilter : String) : String;
  var
   lPos, lLen : Integer;
  begin
   Result := aFilter + #0;
   lLen := Length(Result);
   lPos := 0;
   While lPos < lLen do
    begin
     lPos := l3GetPosCharSet(PAnsiChar(Result), ['|'], lLen, lPos);
     If lPos = -1 then Exit;
     Inc(lPos);
     lPos := l3GetPosCharSet(PAnsiChar(Result), [#0,'|'], lLen, lPos);
     If lPos = -1 then Exit;
     Inc(lPos);
     Result[lPos] := #0;
    end;
  end;

 function l3AddExtByFilterIndex(aPathStr : string; aFilter : String; aFilterIndex : Integer) : String;

  function GetFilterExt : String;
   var
    Pb: PAnsiChar;
    I : Integer;
   begin
    aFilter := NormalizeFilterStr(aFilter);
    Result := '';
    If aFilter = '' then Exit;
    Pb := PAnsiChar(aFilter);
    I := 1;
    While I <> aFilterIndex do
     begin
      Pb := Pb + StrLen(Pb) + 1;
      Inc(I);
     end;
     Pb := AnsiStrScan(Pb, '|') + 1;
     Result := l3GetStrPas(Pb);
   end;

  begin
   aPathStr := l3StripDoubleQuotes(aPathStr);
   Result := ExtractFileExt(aPathStr);
   If Length(Result) <> 0 then
    begin
     Result := aPathStr;
     Exit;
    end;
   Result := ExtractFileExt(GetFilterExt);
   If Result = '.*' then Result := '.';
   Result := aPathStr + Result;
  end;

function ExtractOnlyFileName(aFileName: String): string;
var
 l_Ext: String;
begin
 l_Ext := ExtractFileExt(aFileName);
 Result := Copy(aFileName, Pos(ExtractFileName(aFileName), aFileName), Length(ExtractFileName(aFileName))-Length(l_Ext));
end;

function NormalDir(const DirName: string): string;
begin
  Result := DirName;
  if (Result <> '') and
    not (AnsiLastChar(Result)^ in [':', '\']) then
  begin
    if (Length(Result) = 1) and (UpCase(Result[1]) in ['A'..'Z']) then
      Result := Result + ':\'
    else Result := Result + '\';
  end;
end;

function MakeUniqueFileName(const aFileName: String): string;
var
 i: Integer;
 l_Folder, l_Name, l_Ext: String;
begin
 Result:= aFileName;
 l_Folder:= ExtractFilePath(aFileName);
 l_Name:= ExtractOnlyFileName(aFileName);
 i:= LastDelimiter('_', l_Name);
 if i > 0 then
  Delete(l_Name, i, MaxInt);
 l_ext:= ExtractFileExt(aFileName);
 i:= 1;
 while FileExists(Result) do
 begin
  Result:= Format('%s%s_%d%s', [l_Folder, l_Name, i, l_Ext]);
  Inc(i)
 end; // while
end;

function GetNextUniqueFileName(const aFileName: String; aMaxSize: Integer): string;
var
 i: Integer;
 l_Folder, l_Name, l_Ext: String;
begin
 // ����������
 Result:= aFileName;
 l_Folder:= ExtractFilePath(aFileName);
 l_Name:= ExtractOnlyFileName(aFileName);
 i:= LastDelimiter('_', l_Name);
 if i > 0 then
  Delete(l_Name, i, MaxInt);
 l_ext:= ExtractFileExt(aFileName);
 // ���������� �����
 i:= 1;
 while FileExists(Result) and (SizeOfFile(Result) > aMaxSize) do
 begin
  Result:= Format('%s%s_%d%s', [l_Folder, l_Name, i, l_Ext]);
  Inc(i)
 end; // while
end;

procedure CopyDirEx(Sour, Dest: TFileName; ProgressProc: Tl3ProgressProc);
 var
  SMask : TFileName;
  SearchRec: TSearchRec;
  Res : Integer;
 Begin
  SMask:=ConcatDirName(Sour,AllFilesMask);
  Res:=FindFirst(SMask, faAnyFile, SearchRec);
  While Res = 0 do
   Begin
    With SearchRec do
     Begin
      If (Attr and faDirectory=faDirectory)
       then                                    
        Begin
         If Name[1] <> '.' then
          Begin
           MakeDir(ConcatDirName(Dest,SearchRec.Name));
           CopyDirEx(ConcatDirName(Sour,SearchRec.Name),
                   ConcatDirName(Dest,SearchRec.Name),
                   ProgressProc);
          end;
        end
       else
        CopyFileEx(ConcatDirName(Sour,SearchRec.Name),
                 ConcatDirName(Dest,SearchRec.Name),
                 ProgressProc,
                 cmWriteOver);
     end;
    Res:=FindNext(SearchRec);
   end;
   FindClose(SearchRec);
 end;

procedure CopyFileEx(Sour, Dest: TFileName; ProgressProc: Tl3ProgressProc; CopyMode: Byte =
    cmWriteOver);
 Var
  FromF, ToF          : Integer;
  NumRead, NumWritten : Integer;
  buf                 : pointer;
  BufSize             : LongInt;
  FAge                : Longint;
  FAttr               : Integer;
  l_ErrStr            : string;
  TmpName             : TFileName;
  TmpLog              : Boolean;
  l_TotalWritten,
  l_FileSize          : Int64;
 Begin
  TmpLog :=False;
  if (Length(Sour) = 0) or (Length(Dest) = 0) or not FileExists(Sour)
    then raise Exception.Create('�������� ��� �����');
  BufSize:= Min(MaxAvail, 32*1024);
  //If BufSize>32*1024 then Bufsize:=32*1024;
  l3System.GetLocalMem(buf,BufSize);
  Try
    FAttr:= FileGetAttr(Sour);
    FromF:=FileOpen(Sour,fmOpenRead and fmShareDenyWrite);
    if (FromF < 0) then
    begin
     {$IfOpt D+}
     RaiseLastOSError;
     {$Else  D+}
     Raise EInOutError.Create('�� ���� �������'#13+Sour);
     {$EndIf D+}
    end;//FromF < 0
    FAge:=FileGetDate(FromF);
    {Reset(FromF, 1);}
    Try
     If ((CopyMode and cmAppend) <> 0) and FileExists(Dest) then
     Begin
      ToF:=FileOpen(Dest,fmOpenWrite);
      FileSeek(ToF,0,2);
      TmpLog :=False;
     end
     else
     Begin
      TmpName:=GetUniqFileName(ExtractFilePath(Dest), 'cpy', '.tmp');
      MakeDir(ExtractFilePath(Dest));
      ToF:=FileCreate(TmpName);
      TmpLog :=True;
     end;
     l_FileSize:= GetFileSize(Sour);
     l_TotalWritten:= 0;
     if Assigned(ProgressProc) then
      ProgressProc(0, 100, ExtractFileName(Sour));
     Try
      repeat
       NumRead:=FileRead(FromF,buf^,BufSize);
       NumWritten:=FileWrite(ToF,buf^,NumRead);
       if NumWritten = -1 then
       begin
        l_ErrStr := SysErrorMessage(GetLastError);
        raise EInOutError.Create(Format('������ ��� ������ � ���� %s (%s)', [Dest, l_ErrStr]));
       end;
       Inc(l_TotalWritten, NumWritten);
       if Assigned(ProgressProc) and (l_FileSize <> 0) then
        ProgressProc(1, l_TotalWritten * 100 div l_FileSize);
      until (NumRead = 0) or (NumWritten <> NumRead);
      FileSetDate(ToF, FAge);
     finally
      FileClose(ToF);
      if Assigned(ProgressProc) then
       ProgressProc(2, 100);
     end;
     if l_TotalWritten <> l_FileSize then
      raise EInOutError.CreateFmt('�� ��������� ������ ����� %s %d <> %d', [Sour, l_FileSize, l_TotalWritten]);
     If TmpLog then
     begin
      If (CopyMode and cmNoBakCopy) <> 0 then
       DeleteFile(Dest);
      RenameFileSafe(TmpName, Dest);
     end;
     FileSetAttr(Dest,FAttr);
    finally
      FileClose(FromF);
    end;
    If (CopyMode and cmDeleteSource) <> 0 then
     DeleteFile(Sour);
  finally
    l3System.FreeLocalMem(buf);
  end;
 end;

function l3ChangeFileFolder(const aFileName, aNewFolder: string): string;
begin
 Result := ConcatDirName(aNewFolder, ExtractFileName(aFileName));
end;

initialization
{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\l3FileUtils.pas initialization enter'); {$EndIf}
  Randomize;

{!touched!}{$IfDef LogInit} WriteLn('W:\common\components\rtl\Garant\L3\l3FileUtils.pas initialization leave'); {$EndIf}
end.
