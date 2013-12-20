unit PictureInfo_ut_PictureInfo_UserType;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/PictureInfo_ut_PictureInfo_UserType.pas"
// Начат: 11 июля 2007
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<UserType::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::PictureInfo::ut_PictureInfo
//
// Информация о картинке
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
    { Константы для типа формы ut_PictureInfo }
   ut_PictureInfoName = 'ut_PictureInfo';
    { Строковый идентификатор пользовательского типа "Информация о картинке" }
   ut_PictureInfo = TvcmUserType(0);
    { Информация о картинке }

type
   Tkw_FormUserType_ut_PictureInfo = class(TtfwInteger)
    {* Слово словаря для типа формы ut_PictureInfo }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetInteger: Integer; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_FormUserType_ut_PictureInfo
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
// start class Tkw_FormUserType_ut_PictureInfo

{$If not defined(NoScripts)}
function Tkw_FormUserType_ut_PictureInfo.GetInteger: Integer;
 {-}
begin
 Result := ut_PictureInfo;
end;//Tkw_FormUserType_ut_PictureInfo.GetInteger
{$IfEnd} //not NoScripts
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_FormUserType_ut_PictureInfo
 Tkw_FormUserType_ut_PictureInfo.Register('тип_формы::ut_PictureInfo');
{$IfEnd} //not Admin AND not Monitorings

end.