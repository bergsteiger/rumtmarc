unit kwOpenOldSituationCard;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "F1 Shell Words"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwOpenOldSituationCard.pas"
// �����: 31.01.2012 17:24
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 ��������� ������::F1 Shell Words::F1 Shell Words::TkwOpenOldSituationCard
//
// ������� ��� 5.� (�������������)
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
 TkwOpenOldSituationCard = class(_tfwAutoregisteringWord_)
  {* ������� ��� 5.� (�������������) }
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
 end;//TkwOpenOldSituationCard

implementation

uses
  SysUtils
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  
  ;

type _Instance_R_ = TkwOpenOldSituationCard;

{$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

// start class TkwOpenOldSituationCard

{$If not defined(NoScripts)}
procedure TkwOpenOldSituationCard.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4F27EB56012C_var*
//#UC END# *4DAEEDE10285_4F27EB56012C_var*
begin
//#UC START# *4DAEEDE10285_4F27EB56012C_impl*
 TdmStdRes.OpenOldSituationCard(nil);
//#UC END# *4DAEEDE10285_4F27EB56012C_impl*
end;//TkwOpenOldSituationCard.DoDoIt
{$IfEnd} //not NoScripts

{$If not defined(NoScripts)}
class function TkwOpenOldSituationCard.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4F27EB56012C_var*
//#UC END# *4DB0614603C8_4F27EB56012C_var*
begin
//#UC START# *4DB0614603C8_4F27EB56012C_impl*
 Result := '���_�������������_Prim'
//#UC END# *4DB0614603C8_4F27EB56012C_impl*
end;//TkwOpenOldSituationCard.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include w:\common\components\rtl\Garant\ScriptEngine\tfwAutoregisteringWord.imp.pas}

end.