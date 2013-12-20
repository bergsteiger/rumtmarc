unit kwOpenDocument;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Words"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwOpenDocument.pas"
// �����: 21.04.2011 14:46
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 ��������� ������::F1 Words::Words::OpenDocument
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  ;

type
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}
 _F1Test_Parent_ = _tfwAutoregisteringWord_;
 {$Include ..\F1_Words\F1Test.imp.pas}
 TkwOpenDocument = class(_F1Test_)
 protected
 // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwOpenDocument

implementation

uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  StdRes,
  lgTypes
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  OfficeLike_Result_Controls,
  afwFacade,
  nsUtils,
  nsConst,
  bsTypesNew
  ;

type _Instance_R_ = TkwOpenDocument;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

{$Include ..\F1_Words\F1Test.imp.pas}

// start class TkwOpenDocument

{$If not defined(NoScripts)}
procedure TkwOpenDocument.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DB00AF302F0_var*
var
 sDoc: string;
 iDoc: Integer;
 l_Result: Boolean;
//#UC END# *4DAEEDE10285_4DB00AF302F0_var*
begin
//#UC START# *4DAEEDE10285_4DB00AF302F0_impl*
 if aCtx.rEngine.IsTopString then
 begin
  sDoc := aCtx.rEngine.PopDelphiString;
  l_Result := nsOpenDocumentByNumber(sDoc, true, false);
 end else
 begin
  if aCtx.rEngine.IsTopBool then
  begin                             
   if not aCtx.rEngine.PopBool then
   begin
    iDoc := aCtx.rEngine.PopInt;
    sDoc := IntToStr(iDoc);
    iDoc := iDoc + c_InternalDocShift;
   end else
   begin
    iDoc := aCtx.rEngine.PopInt;
    sDoc := IntToStr(iDoc);
   end;
  end else
  begin
   iDoc := aCtx.rEngine.PopInt;
   sDoc := IntToStr(iDoc);
   iDoc := iDoc + c_InternalDocShift;
  end;
  l_Result := nsOpenDocumentByNumber(iDoc, 0, dptSub, false);
 end;
 RunnerAssert(l_Result, '�������� ' + sDoc + ' � ���� �� ������.', aCtx);
//#UC END# *4DAEEDE10285_4DB00AF302F0_impl*
end;//TkwOpenDocument.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwOpenDocument.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := '�������';
end;//TkwOpenDocument.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.