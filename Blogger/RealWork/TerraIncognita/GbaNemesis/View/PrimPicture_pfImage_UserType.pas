unit PrimPicture_pfImage_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/PrimPicture_pfImage_UserType.pas"
// Начат: 15.09.2009 21:32
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Работа с документом и списком документов::Document::View::Picture::PrimPicture::pfImage
//
// Просмотр графического объекта
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
  Classes
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  ;

const
   { Константы для типа формы pfImage }
  pfImageName = 'pfImage';
   { Строковый идентификатор пользовательского типа "Просмотр графического объекта" }
  pfImage = TvcmUserType(0);
   { Просмотр графического объекта }

type
  Tkw_FormUserType_pfImage = class(TtfwInteger)
   {* Слово словаря для типа формы pfImage }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_FormUserType_pfImage
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_pfImage

{$If not defined(NoScripts)}
function Tkw_FormUserType_pfImage.GetInteger: Integer;
 {-}
begin
 Result := pfImage;
end;//Tkw_FormUserType_pfImage.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_pfImage
 Tkw_FormUserType_pfImage.Register('тип_формы::pfImage');
{$IfEnd} //not Admin AND not Monitorings

end.