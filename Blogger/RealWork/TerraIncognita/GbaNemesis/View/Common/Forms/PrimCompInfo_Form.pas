unit PrimCompInfo_Form;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Common/Forms/PrimCompInfo_Form.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMForm::Class>> F1 Core::Common::View::Common::PrimCompInfo
//
// Информация о комплекте
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
  l3ControlsTypes
  {$If not defined(NoVCM)}
  ,
  vcmEntityForm
  {$IfEnd} //not NoVCM
  
  {$If defined(Nemesis)}
  ,
  nscTreeView
  {$IfEnd} //Nemesis
  ,
  ImgList,
  l3StringIDEx
  {$If not defined(NoScripts)}
  ,
  kwBynameControlPush
  {$IfEnd} //not NoScripts
  
  {$If not defined(NoScripts)}
  ,
  tfwControlString
  {$IfEnd} //not NoScripts
  ,
  vcmExternalInterfaces {a},
  vcmInterfaces {a}
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TPrimCompInfoForm = {abstract form} class(TvcmEntityForm)
  {* Информация о комплекте }
 private
 // private fields
   f_tvComplectInfo : TnscTreeView;
    {* Поле для свойства tvComplectInfo}
 protected
  procedure MakeControls; override;
 private
 // private methods
   function TvComplectInfoGetItemImage(Sender: TObject;
     Index: Integer;
     var aImages: TCustomImageList): Integer;
     {* Event to get Index of Bitmap in ImageIndex. }
   procedure VcmEntityFormSetLocalizationInfo(Sender: TObject;
     const theInfo: AnsiString);
   procedure VcmEntityFormGetLocalizationInfo(Sender: TObject;
     var theInfo: AnsiString);
 protected
 // overridden protected methods
   {$If not defined(NoVCM)}
   procedure InitControls; override;
     {* Процедура инициализации контролов. Для перекрытия в потомках }
   {$IfEnd} //not NoVCM
 public
 // public properties
   property tvComplectInfo: TnscTreeView
     read f_tvComplectInfo;
 end;//TPrimCompInfoForm

 TvcmEntityFormRef = TPrimCompInfoForm;
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base,
  nsUtils,
  nsTreeUtils,
  nsComplectInfoTreeStruct,
  nsSettings,
  ComplectInfoRes,
  l3TreeInterfaces,
  Controls
  {$If not defined(NoScripts)}
  ,
  tfwScriptingInterfaces
  {$IfEnd} //not NoScripts
  ,
  l3MessageID
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}

var
   { Локализуемые строки CompInfo Header Strings }
  str_Name : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'Name'; rValue : 'Название');
   { 'Название' }
  str_Value : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'Value'; rValue : 'Значение');
   { 'Значение' }

type
  Tkw_PrimCompInfo_Control_tvComplectInfo = class(TtfwControlString)
   {* Слово словаря для идентификатора контрола tvComplectInfo
----
*Пример использования*:
[code]
контрол::tvComplectInfo TryFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   function GetString: AnsiString; override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCompInfo_Control_tvComplectInfo

// start class Tkw_PrimCompInfo_Control_tvComplectInfo

{$If not defined(NoScripts)}
function Tkw_PrimCompInfo_Control_tvComplectInfo.GetString: AnsiString;
 {-}
begin
 Result := 'tvComplectInfo';
end;//Tkw_PrimCompInfo_Control_tvComplectInfo.GetString
{$IfEnd} //not NoScripts

type
  Tkw_PrimCompInfo_Control_tvComplectInfo_Push = class(TkwBynameControlPush)
   {* Слово словаря для контрола tvComplectInfo
----
*Пример использования*:
[code]
контрол::tvComplectInfo:push pop:control:SetFocus ASSERT
[code] }
  protected
  // overridden protected methods
    {$If not defined(NoScripts)}
   procedure DoDoIt(const aCtx: TtfwContext); override;
    {$IfEnd} //not NoScripts
  end;//Tkw_PrimCompInfo_Control_tvComplectInfo_Push

// start class Tkw_PrimCompInfo_Control_tvComplectInfo_Push

{$If not defined(NoScripts)}
procedure Tkw_PrimCompInfo_Control_tvComplectInfo_Push.DoDoIt(const aCtx: TtfwContext);
 {-}
begin
 aCtx.rEngine.PushString('tvComplectInfo');
 inherited;
end;//Tkw_PrimCompInfo_Control_tvComplectInfo_Push.DoDoIt
{$IfEnd} //not NoScripts

function TPrimCompInfoForm.TvComplectInfoGetItemImage(Sender: TObject;
  Index: Integer;
  var aImages: TCustomImageList): Integer;
//#UC START# *516FC7390348_516FC52E034F_var*
var
 l_Node: Il3SimpleNode;
//#UC END# *516FC7390348_516FC52E034F_var*
begin
//#UC START# *516FC7390348_516FC52E034F_impl*
 l_Node := tvComplectInfo.GetNode(Index);
 try
  if l_Node.GetLevelFor(tvComplectInfo.TreeStruct.RootNode) = 1 then
  begin
   if l_Node.HasChild then
    Result := ciBlocks
   else
    Result := ciMainInfo;
  end//if l_Node.GetLevelFor(tvComplectInfo.TreeStruct.RootNode) = 1 then
  else
  begin
   if l_Node.HasChild then
    Result := ciBlockFolder
   else
    Result := ciBlockInfo;
  end;//if l_Node.GetLevelFor(tvComplectInfo.TreeStruct.RootNode) = 1 then
 finally
  l_Node := nil;
 end;{try..finally}
//#UC END# *516FC7390348_516FC52E034F_impl*
end;//TPrimCompInfoForm.TvComplectInfoGetItemImage

procedure TPrimCompInfoForm.VcmEntityFormSetLocalizationInfo(Sender: TObject;
  const theInfo: AnsiString);
//#UC START# *516FC8600180_516FC52E034F_var*
//#UC END# *516FC8600180_516FC52E034F_var*
begin
//#UC START# *516FC8600180_516FC52E034F_impl*
 if Sender = tvComplectInfo then
  nsSetListHeaderLocalizationInfo(tvComplectInfo.Header, theInfo);
//#UC END# *516FC8600180_516FC52E034F_impl*
end;//TPrimCompInfoForm.VcmEntityFormSetLocalizationInfo

procedure TPrimCompInfoForm.VcmEntityFormGetLocalizationInfo(Sender: TObject;
  var theInfo: AnsiString);
//#UC START# *516FC885021E_516FC52E034F_var*
//#UC END# *516FC885021E_516FC52E034F_var*
begin
//#UC START# *516FC885021E_516FC52E034F_impl*
 if Sender = tvComplectInfo then
  theInfo := nsGetListHeaderLocalizationInfo(tvComplectInfo.Header);
//#UC END# *516FC885021E_516FC52E034F_impl*
end;//TPrimCompInfoForm.VcmEntityFormGetLocalizationInfo

{$If not defined(NoVCM)}
procedure TPrimCompInfoForm.InitControls;
//#UC START# *4A8E8F2E0195_516FC52E034F_var*
//#UC END# *4A8E8F2E0195_516FC52E034F_var*
begin
//#UC START# *4A8E8F2E0195_516FC52E034F_impl*
 inherited

 Scaled := False;

 tvComplectInfo.Align := alClient;
 tvComplectInfo.Images := nsComplectInfoRes.ComplectInfoItemImages;
 tvComplectInfo.TreeStruct := TnsComplectInfoTreeStruct.Make;

 tvComplectInfo.ShowHeader := True;
 tvComplectInfo.SettingId := 'stidComplectInfoTree';
 tvComplectInfo.ViewOptions := [voShowInterRowSpace, voShowIcons, voShowExpandable, voShowLines, voShowOpenChip];
 tvComplectInfo.OnGetItemImage := tvComplectInfoGetItemImage;

 with tvComplectInfo.Header.Sections.Add do
 begin
  Caption := str_Name.AsStr;
  Width := 350;
  AutoResize := False;
  MinWidth := 350;
 end;
 with tvComplectInfo.Header.Sections.Add do
 begin
  Caption := str_Value.AsStr;
  AutoResize := False;
  MinWidth := 20;
 end;
//#UC END# *4A8E8F2E0195_516FC52E034F_impl*
end;//TPrimCompInfoForm.InitControls
{$IfEnd} //not NoVCM

procedure TPrimCompInfoForm.MakeControls;
begin
 inherited;
 f_tvComplectInfo := TnscTreeView.Create(Self);
 f_tvComplectInfo.Name := 'tvComplectInfo';
 f_tvComplectInfo.Parent := Self;
end;

{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCompInfo_Control_tvComplectInfo
 Tkw_PrimCompInfo_Control_tvComplectInfo.Register('контрол::tvComplectInfo', TnscTreeView);
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Регистрация Tkw_PrimCompInfo_Control_tvComplectInfo_Push
 Tkw_PrimCompInfo_Control_tvComplectInfo_Push.Register('контрол::tvComplectInfo:push');
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_Name
 str_Name.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// Инициализация str_Value
 str_Value.Init;
{$IfEnd} //not Admin AND not Monitorings

end.