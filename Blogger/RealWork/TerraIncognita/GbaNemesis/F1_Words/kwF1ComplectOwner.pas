unit kwF1ComplectOwner;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Words"
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Words/kwF1ComplectOwner.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<ScriptKeyword::Class>> F1 ��������� ������::F1 Words::Words::f1_ComplectOwner
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
 TkwF1ComplectOwner = {final} class(_tfwAutoregisteringWord_)
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
 end;//TkwF1ComplectOwner

implementation

uses
  bsUtils
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwF1ComplectOwner;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwF1ComplectOwner

{$If not defined(NoScripts)}
procedure TkwF1ComplectOwner.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_50237E3A03A5_var*
//#UC END# *4DAEEDE10285_50237E3A03A5_var*
begin
//#UC START# *4DAEEDE10285_50237E3A03A5_impl*
 aCtx.rEngine.PushString(bsComplectOwner);
//#UC END# *4DAEEDE10285_50237E3A03A5_impl*
end;//TkwF1ComplectOwner.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwF1ComplectOwner.GetWordNameForRegister: AnsiString;
 {-}
begin
 Result := 'f1:ComplectOwner';
end;//TkwF1ComplectOwner.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.