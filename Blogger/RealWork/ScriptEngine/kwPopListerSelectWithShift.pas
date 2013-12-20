unit kwPopListerSelectWithShift;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "ScriptEngine"
// ������: "w:/common/components/rtl/Garant/ScriptEngine/kwPopListerSelectWithShift.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> Shared Delphi Scripting::ScriptEngine::vtControlsFromStackWords::pop_Lister_SelectWithShift
//
// *������:*
// {code}
// aFinishID aLister pop:Lister:SelectWithShift
// {code}
// *��������:* �������� ��������� ��������� �� �������� �� aFinishID � ��������� TvtCustomListner �
// �� �������� (TvtOutliner � �.�.). ������ ������ ��������� � ����� Shift �����.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\ScriptEngine\seDefine.inc}

interface

{$If not defined(NoScripts)}
uses
  vtLister,
  tfwScriptingInterfaces,
  Controls,
  Classes
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
type
 {$Include ..\ScriptEngine\kwVTCustomListerFromStackWords.imp.pas}
 TkwPopListerSelectWithShift = {final} class(_kwVTCustomListerFromStackWords_)
  {* *������:* 
[code]
aFinishID aLister pop:Lister:SelectWithShift
[code] 
*��������:* �������� ��������� ��������� �� �������� �� aFinishID � ��������� TvtCustomListner � �� �������� (TvtOutliner � �.�.). ������ ������ ��������� � ����� Shift �����. }
 protected
 // realized methods
   procedure DoVTCustomListner(const aCtx: TtfwContext;
     const aLister: TvtCustomLister); override;
 public
 // overridden public methods
   class function GetWordNameForRegister: AnsiString; override;
 end;//TkwPopListerSelectWithShift
{$IfEnd} //not NoScripts

implementation

{$If not defined(NoScripts)}
uses
  tfwAutoregisteredDiction,
  tfwScriptEngine,
  Windows,
  afwFacade,
  Forms
  ;
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}

type _Instance_R_ = TkwPopListerSelectWithShift;

{$Include ..\ScriptEngine\kwVTCustomListerFromStackWords.imp.pas}

// start class TkwPopListerSelectWithShift

procedure TkwPopListerSelectWithShift.DoVTCustomListner(const aCtx: TtfwContext;
  const aLister: TvtCustomLister);
//#UC START# *4F86A33F0013_4F86A3CC02DA_var*
var
 l_Finish : Integer;
//#UC END# *4F86A33F0013_4F86A3CC02DA_var*
begin
//#UC START# *4F86A33F0013_4F86A3CC02DA_impl*
 if aCtx.rEngine.IsTopInt then
  l_Finish := aCtx.rEngine.PopInt
 else
  Assert(False, '�� ����� �������� ����� ���� ���������!');
 aLister.SelectItems(l_Finish);
//#UC END# *4F86A33F0013_4F86A3CC02DA_impl*
end;//TkwPopListerSelectWithShift.DoVTCustomListner

class function TkwPopListerSelectWithShift.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'pop:Lister:SelectWithShift';
end;//TkwPopListerSelectWithShift.GetWordNameForRegister

{$IfEnd} //not NoScripts

initialization
{$If not defined(NoScripts)}
 {$Include ..\ScriptEngine\kwVTCustomListerFromStackWords.imp.pas}
{$IfEnd} //not NoScripts

end.