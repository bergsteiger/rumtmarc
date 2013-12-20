unit PictureInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Лукьянец Р.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Document/Forms/PictureInfo_Form.pas"
// Начат: 11 июля 2007
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMFinalForm::Class>> F1 Работа с документом и списком документов::Document::View::Document::Document::PictureInfo
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
  ,
  l3StringIDEx,
  PrimPictureInfoOptions_Form
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwInteger
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  PictureInfo_ut_PictureInfo_UserType,
  eeMemoWithEditOperations,
  l3InterfacedComponent {a},
  vcmComponent {a},
  vcmBaseEntities {a},
  vcmEntities {a},
  vcmExternalInterfaces {a},
  vcmInterfaces {a},
  vcmEntityForm {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
  Ten_PictureInfo = {final form} class(TvcmEntityFormRef)
   {* Информация о картинке }
  Entities : TvcmEntities;
  Info: TeeMemoWithEditOperations;
  protected
   procedure MakeControls; override;
  end;//Ten_PictureInfo

  TPictureInfoForm = Ten_PictureInfo;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$R *.DFM}

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  SysUtils
  {$If not defined(NoScripts)}
  ,
  tfwScriptEngine
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
    { Локализуемые строки ut_PictureInfoLocalConstants }
   str_ut_PictureInfoCaption : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'ut_PictureInfoCaption'; rValue : 'Информация о картинке');
    { Заголовок пользовательского типа "Информация о картинке" }

type
   Tkw_Form_PictureInfo = class(TtfwControlString)
    {* Слово словаря для идентификатора формы PictureInfo
----
*Пример использования*:
[code]
'aControl' форма::PictureInfo TryFocus ASSERT
[code] }
   protected
   // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
   end;//Tkw_Form_PictureInfo

// start class Tkw_Form_PictureInfo

{$If not defined(NoScripts)}
function Tkw_Form_PictureInfo.GetString: AnsiString;
 {-}
begin
 Result := 'en_PictureInfo';
end;//Tkw_Form_PictureInfo.GetString
{$IfEnd} //not NoScripts

type
   Tkw_PictureInfo_Info_ControlInstance = class(TtfwWord)
    {* Слово словаря для доступа к экземпляру контрола Info формы PictureInfo }
   protected
   // realized methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
   end;//Tkw_PictureInfo_Info_ControlInstance

// start class Tkw_PictureInfo_Info_ControlInstance

{$If not defined(NoScripts)}
procedure Tkw_PictureInfo_Info_ControlInstance.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushObj((aCtx.rEngine.PopObj As Ten_PictureInfo).Info);
end;//Tkw_PictureInfo_Info_ControlInstance.DoDoIt
{$IfEnd} //not NoScripts

procedure Ten_PictureInfo.MakeControls;
begin
 inherited;
 with AddUsertype(ut_PictureInfoName,
  str_ut_PictureInfoCaption,
  str_ut_PictureInfoCaption,
  false,
  -1,
  -1,
  '',
  nil,
  nil,
  nil,
  vcm_ccNone) do
 begin
 end;//with AddUsertype(ut_PictureInfoName
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_Form_PictureInfo
 Tkw_Form_PictureInfo.Register('форма::PictureInfo', Ten_PictureInfo);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PictureInfo_Info_ControlInstance
 TtfwScriptEngine.GlobalAddWord('.Ten_PictureInfo.Info', Tkw_PictureInfo_Info_ControlInstance);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_ut_PictureInfoCaption
 str_ut_PictureInfoCaption.Init;
{$IfEnd} //not Admin AND not Monitorings

end.