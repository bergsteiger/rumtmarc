unit kwDocumentSetBookmark;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "F1 Shell Words"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/F1_Shell_Words/kwDocumentSetBookmark.pas"
// Начат: 11.05.2011 13:22
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Поддержка тестов::F1 Shell Words::F1 Shell Words::TkwDocumentSetBookmark
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
 _F1Test_Parent_ = _ExTextFormWord_;
 {$Include w:\garant6x\implementation\Garant\GbaNemesis\F1_Words\F1Test.imp.pas}
 TkwDocumentSetBookmark = class(_F1Test_)
 protected
 // realized methods
   procedure DoTextForm(aForm: TExTextForm;
     const aCtx: TtfwContext); override;
 public
 // overridden public methods
   {$If not defined(NoScripts)}
   class function GetWordNameForRegister: AnsiString; override;
   {$IfEnd} //not NoScripts
 end;//TkwDocumentSetBookmark

implementation

uses
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
  {$If not defined(NoVCM)}
  ,
  StdRes
  {$IfEnd} //not NoVCM
  ,
  lgTypes
  {$If not defined(NoVCM)}
  ,
  vcmBase
  {$IfEnd} //not NoVCM
  ,
  OfficeLike_Result_Controls,
  nsUtils,
  nsConst,
  bsTypesNew
  ;

type _Instance_R_ = TkwDocumentSetBookmark;

{$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}

{$Include w:\garant6x\implementation\Garant\GbaNemesis\F1_Words\F1Test.imp.pas}

// start class TkwDocumentSetBookmark

procedure TkwDocumentSetBookmark.DoTextForm(aForm: TExTextForm;
  const aCtx: TtfwContext);
//#UC START# *4DCA5B340360_4DCA552F02FD_var*
//#UC END# *4DCA5B340360_4DCA552F02FD_var*
begin
//#UC START# *4DCA5B340360_4DCA552F02FD_impl*
 //Assert(false);
 // - здесь надо сделать установку закладки на текущий параграф документа
//#UC END# *4DCA5B340360_4DCA552F02FD_impl*
end;//TkwDocumentSetBookmark.DoTextForm

{$If not defined(NoScripts)}
class function TkwDocumentSetBookmark.GetWordNameForRegister: AnsiString;
//#UC START# *4DB0614603C8_4DCA552F02FD_var*
//#UC END# *4DB0614603C8_4DCA552F02FD_var*
begin
//#UC START# *4DB0614603C8_4DCA552F02FD_impl*
 Result := 'document:SetBookmark';
//#UC END# *4DB0614603C8_4DCA552F02FD_impl*
end;//TkwDocumentSetBookmark.GetWordNameForRegister
{$IfEnd} //not NoScripts

initialization
 {$Include ..\F1_Shell_Words\ExTextFormWord.imp.pas}

end.