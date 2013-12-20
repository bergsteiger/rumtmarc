unit PrimPicture_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimPicture_Form.pas"
// Начат: 15.09.2009 21:32
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Работа с документом и списком документов::Document::View::Picture::PrimPicture
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  Messages,
  Document_Strange_Controls,
  Base_Operations_Editions_Controls,
  DocumentDomainInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  imageenio,
  nsSaveDialog,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PrimPicture_pfImage_UserType,
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
  { Messages }
 CM_AFTER_INIT = Messages.WM_USER + 201;

type
 TPrimPictureForm = {form} class(TvcmEntityForm)
 private
 // private fields
   f_ieIO : TImageEnIO;
    {* Поле для свойства ieIO}
 protected
  procedure InitEntities; override;
  procedure MakeControls; override;
 protected
 // property methods
   function pm_GetIeIO: TImageEnIO;
 protected
 // realized methods
   procedure Picture_InitNewContent_Execute(const aData: InsLinkedObjectData);
   procedure Picture_InitNewContent(const aParams: IvcmExecuteParams);
 protected
 // protected fields
   f_Info : InsLinkedObjectDescription;
 protected
 // protected methods
   function GetSaveDialog: TnsSaveDialog; virtual; abstract;
 public
 // public properties
   property ieIO: TImageEnIO
     read pm_GetIeIO;
 end;//TPrimPictureForm
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Stream,
  Classes,
  SysUtils,
  l3String,
  Windows,
  l3MessageID,
  StdRes {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки pfImageLocalConstants }
  str_pfImageCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'pfImageCaption'; rValue : 'Просмотр графического объекта');
   { Заголовок пользовательского типа "Просмотр графического объекта" }
  str_pfImageSettingsCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'pfImageSettingsCaption'; rValue : 'Документ: Просмотр графического объекта');
   { Заголовок пользовательского типа "Просмотр графического объекта" для настройки панелей инструментов }

type
  Tkw_PrimPicture_Component_ieIO = class(TtfwControlString)
   {* Слово словаря для идентификатора компонента ieIO
----
*Пример использования*:
[code]
компонент::ieIO TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimPicture_Component_ieIO

// start class Tkw_PrimPicture_Component_ieIO

{$If not defined(NoScripts)}
function Tkw_PrimPicture_Component_ieIO.GetString: AnsiString;
 {-}
begin
 Result := 'ieIO';
end;//Tkw_PrimPicture_Component_ieIO.GetString
{$IfEnd} //not NoScripts

function TPrimPictureForm.pm_GetIeIO: TImageEnIO;
begin
 if (f_ieIO = nil) then
  f_ieIO := FindComponent('ieIO') As TImageEnIO;
 Result := f_ieIO;
end;

procedure TPrimPictureForm.Picture_InitNewContent_Execute(const aData: InsLinkedObjectData);
//#UC START# *4AF32F3102BE_4AAFCFB0014Bexec_var*
var
 l_Stream: TStream;
//#UC END# *4AF32F3102BE_4AAFCFB0014Bexec_var*
begin
//#UC START# *4AF32F3102BE_4AAFCFB0014Bexec_impl*
 CCaption := aData.WindowCaption;
 GetSaveDialog.FileName := l3PStr(aData.FileName);
 GetSaveDialog.FilterIndex := 1;
 if aData.IsPicture then
 begin
  l3IStream2Stream(aData.Data, l_Stream);
  f_Info := aData.Description;
  try
   ieIO.LoadFromStream(l_Stream);
  finally
   FreeAndNil(l_Stream);
  end;//try..finally
 end;//aData.IsPicture
 PostMessage(Handle, CM_AFTER_INIT, 0, 0);
 // http://mdp.garant.ru/pages/viewpage.action?pageId=271749118&focusedCommentId=290954110&#comment-290954110
//#UC END# *4AF32F3102BE_4AAFCFB0014Bexec_impl*
end;//TPrimPictureForm.Picture_InitNewContent_Execute

procedure TPrimPictureForm.Picture_InitNewContent(const aParams: IvcmExecuteParams);
begin
 with (aParams.Data As IPicture_InitNewContent_Params) do
  Picture_InitNewContent_Execute(Data);
end;

procedure TPrimPictureForm.InitEntities;
begin
 inherited;
 with Entities.Entities do
 begin
  PublishFormEntity(en_Picture, nil);
  PublishOpWithResult(en_Picture, op_InitNewContent, Picture_InitNewContent, nil, nil);
 end;//with Entities.Entities
end;

procedure TPrimPictureForm.MakeControls;
begin
 inherited;
 with AddUsertype(pfImageName,
  str_pfImageCaption,
  str_pfImageSettingsCaption,
  true,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(pfImageName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimPicture_Component_ieIO
 Tkw_PrimPicture_Component_ieIO.Register('компонент::ieIO', TImageEnIO);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_pfImageCaption
 str_pfImageCaption.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_pfImageSettingsCaption
 str_pfImageSettingsCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.