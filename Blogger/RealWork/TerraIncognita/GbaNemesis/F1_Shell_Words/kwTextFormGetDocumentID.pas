unit kwTextFormGetDocumentID;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwTextFormGetDocumentID.pas"
// Начат: 20.01.2012 14:31
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwTextFormGetDocumentID
//
// Возвращает идентификатор текущего открытого документа
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\GbaNemesis\nsDefine.inc}

interface

uses
  Classes
  {$If not defined(Admin) AND not defined(Monitorings)}
  ,
  ExText_Form
  {$IfEnd} //not Admin AND not Monitorings
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  Forms,
  Controls
  ;

type
 {$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}
 TkwTextFormGetDocumentID = class(_ExTextFormWord_)
  {* Возвращает идентификатор текущего открытого документа }
 protected
 // realized methods
   procedure DoTextForm(aForm: TExTextForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwTextFormGetDocumentID

implementation

uses
  nsConst,
  afwFacade,
  SysUtils
  {$If not defined(NoVCM)}
  ,
  vcmForm
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwAutoregisteredDiction
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  Windows
  ;

type _Instance_R_ = TkwTextFormGetDocumentID;

{$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}

// start class TkwTextFormGetDocumentID

procedure TkwTextFormGetDocumentID.DoTextForm(aForm: TExTextForm;
  const aCtx: TtfwContext);
//#UC START# *4DCA5B340360_4F1942440116_var*
var
 l_ID : Integer;
//#UC END# *4DCA5B340360_4F1942440116_var*
begin
//#UC START# *4DCA5B340360_4F1942440116_impl*
 l_ID := 0;
 try
  if (TExTextFormHack(aForm).Document <> nil) then
   l_ID := TExTextFormHack(aForm).Document.GetInternalId{ + c_InternalDocShift};
 finally
  aCtx.rEngine.PushInt(l_ID);
 end;//try..finally
//#UC END# *4DCA5B340360_4F1942440116_impl*
end;//TkwTextFormGetDocumentID.DoTextForm

{$If not defined(NoScripts)}
class function TkwTextFormGetDocumentID.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4F1942440116_var*
//#UC END# *4DB0614603C8_4F1942440116_var*
begin
//#UC START# *4DB0614603C8_4F1942440116_impl*
 Result := 'textform:GetDocumentID';
//#UC END# *4DB0614603C8_4F1942440116_impl*
end;//TkwTextFormGetDocumentID.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}

end.