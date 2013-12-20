unit NewGenRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Модуль: "w:/MDProcess/NewGen/NewGenRes.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMApplication::Class>> MDProcess$NewGen$Interface::NewGen::NewGen
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\MDProcess\NewGen\ngDefine.inc}

interface

{$If defined(NewGen)}
uses
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmInterfaces
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  ,
  Main_Form,
  MainPrim_Form,
  F1LikeRes,
  NewGenMainPrim_Form
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a}
  ;
{$IfEnd} //NewGen

{$If defined(NewGen)}
var
 { Локализуемые строки Local }
str_NewGenTitle : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'NewGenTitle'; rValue : 'НЕ Роза');
 { 'НЕ Роза' }

type
TNewGenRes = {final} class(TF1LikeRes)
protected
   procedure RegisterFormSetFactories; override;
   procedure Loaded; override;
protected
// realized methods
   class procedure Runner(const aTitle: Tl3StringIDEx;
    const aHelpFile: AnsiString); override;

end;//TNewGenRes

 TvcmApplicationRef = TNewGenRes;
{$IfEnd} //NewGen

implementation

{$If defined(NewGen)}
uses
  StdRes {a}
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID,
  Forms,
  Windows,
  evExtFormat
  ;
{$IfEnd} //NewGen

{$If defined(NewGen)}

// start class TNewGenRes

class procedure TNewGenRes.Runner(const aTitle: Tl3StringIDEx;
  const aHelpFile: AnsiString);
//#UC START# *4F6AF5860291_4F6AE4A6014D_var*
var
 l_Main : TForm;
//#UC END# *4F6AF5860291_4F6AE4A6014D_var*
begin
//#UC START# *4F6AF5860291_4F6AE4A6014D_impl*
 Application.HelpFile := aHelpFile;
 Application.Title := aTitle.AsStr;

 MakeResources;

 l_Main := nil;
 try
  Application.CreateForm(TMainForm, l_Main);
 finally
  if (l_Main <> nil) then
   SetForeGroundWindow(l_Main.Handle);
 end;//try..finally

 Application.Run;
//#UC END# *4F6AF5860291_4F6AE4A6014D_impl*
end;//TNewGenRes.Runner

procedure TNewGenRes.RegisterFormSetFactories;
begin
 inherited;
end;

procedure TNewGenRes.Loaded;
begin
 inherited;
end;

{$IfEnd} //NewGen

initialization
{$If defined(NewGen)}
// Инициализация str_NewGenTitle
 str_NewGenTitle.Init;
{$IfEnd} //NewGen

end.