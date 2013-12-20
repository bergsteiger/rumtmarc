unit nscReminder;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Модуль: "w:/common/components/gui/Garant/Nemesis/nscReminder.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi For F1::Nemesis::Reminders::TnscReminder
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Nemesis\nscDefine.inc}

interface

{$If defined(Nemesis)}
uses
  Messages,
  Classes,
  nscCustomReminderModelPart
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  afwInterfaces,
  Controls {a}
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}
type
 _nsUnknownComponentWithIvcmState_Parent_ = TnscCustomReminderModelPart;
{$Include ..\Nemesis\nsUnknownComponentWithIvcmState.imp.pas}
 TnscCustomReminder = class(_nsUnknownComponentWithIvcmState_)
 private
 // private fields
   f_EntityName : AnsiString;
    {* Поле для свойства EntityName}
   f_OperationName : AnsiString;
    {* Поле для свойства OperationName}
   f_OnBecomeVisible : TNotifyEvent;
    {* Поле для свойства OnBecomeVisible}
 private
 // private methods
   procedure InitAction;
   procedure CMVisibleChanged(var Message: TMessage); message CM_VISIBLECHANGED;
 protected
 // property methods
   procedure pm_SetEntityName(const aValue: AnsiString);
   procedure pm_SetOperationName(const aValue: AnsiString);
 protected
 // overridden protected methods
   procedure Loaded; override;
   {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
   procedure LoadSettings; override;
   {$IfEnd} //Nemesis AND not DesignTimeLibrary
   {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
   procedure SaveSettings; override;
   {$IfEnd} //Nemesis AND not DesignTimeLibrary
 protected
 // protected methods
    {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
   function MakeId(const anId: AnsiString): AnsiString;
    {$IfEnd} //Nemesis AND not DesignTimeLibrary
   function EntityNameStored: Boolean;
     {* "Функция определяющая, что свойство EntityName сохраняется" }
   function OperationNameStored: Boolean;
     {* "Функция определяющая, что свойство OperationName сохраняется" }
 public
 // public properties
   property EntityName: AnsiString
     read f_EntityName
     write pm_SetEntityName
     stored EntityNameStored;
   property OperationName: AnsiString
     read f_OperationName
     write pm_SetOperationName
     stored OperationNameStored;
   property OnBecomeVisible: TNotifyEvent
     read f_OnBecomeVisible
     write f_OnBecomeVisible;
 end;//TnscCustomReminder

const
  { nscReminderConstants }
 csidLeft = 'LeftDelta';
 csidRight = 'RightDelta';
 csidTop = 'TopDelta';
 csidBottom = 'BottomDelta';
 csidDefaultParams = 'DefaultParams';

type
 TnscReminder = class(TnscCustomReminder)
 end;//TnscReminder
{$IfEnd} //Nemesis

implementation

{$If defined(Nemesis)}
uses
  afwConsts
  {$If not defined(NoVCM)}
  ,
  vcmUtils
  {$IfEnd} //not NoVCM
  
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}

{$Include ..\Nemesis\nsUnknownComponentWithIvcmState.imp.pas}

// start class TnscCustomReminder

procedure TnscCustomReminder.InitAction;
//#UC START# *4F9A820E03C8_4D90511700B2_var*
//#UC END# *4F9A820E03C8_4D90511700B2_var*
begin
//#UC START# *4F9A820E03C8_4D90511700B2_impl*
 vcmUtils.vcmMakeControlAction(Self, f_EntityName, f_OperationName);
//#UC END# *4F9A820E03C8_4D90511700B2_impl*
end;//TnscCustomReminder.InitAction

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
function TnscCustomReminder.MakeId(const anId: AnsiString): AnsiString;
//#UC START# *4F9A81E4031A_4D90511700B2_var*
//#UC END# *4F9A81E4031A_4D90511700B2_var*
begin
//#UC START# *4F9A81E4031A_4D90511700B2_impl*
 Result := BaseId + g_afwPathSep + Name + g_afwPathSep + anId;
//#UC END# *4F9A81E4031A_4D90511700B2_impl*
end;//TnscCustomReminder.MakeId
{$IfEnd} //Nemesis AND not DesignTimeLibrary

procedure TnscCustomReminder.pm_SetEntityName(const aValue: AnsiString);
//#UC START# *4F9A800701C3_4D90511700B2set_var*
//#UC END# *4F9A800701C3_4D90511700B2set_var*
begin
//#UC START# *4F9A800701C3_4D90511700B2set_impl*
 if (aValue = '')
  then f_EntityName := ''
  else f_EntityName := 'en' + aValue;

 InitAction;
//#UC END# *4F9A800701C3_4D90511700B2set_impl*
end;//TnscCustomReminder.pm_SetEntityName

procedure TnscCustomReminder.pm_SetOperationName(const aValue: AnsiString);
//#UC START# *4F9A804B0065_4D90511700B2set_var*
//#UC END# *4F9A804B0065_4D90511700B2set_var*
begin
//#UC START# *4F9A804B0065_4D90511700B2set_impl*
 if (aValue = '')
  then f_OperationName := ''
  else f_OperationName := 'op' + aValue;

 InitAction;
//#UC END# *4F9A804B0065_4D90511700B2set_impl*
end;//TnscCustomReminder.pm_SetOperationName

procedure TnscCustomReminder.CMVisibleChanged(var Message: TMessage);
//#UC START# *4F9A82400387_4D90511700B2_var*
//#UC END# *4F9A82400387_4D90511700B2_var*
begin
//#UC START# *4F9A82400387_4D90511700B2_impl*
 inherited;
 if (not (csDestroying in ComponentState)) and
    Visible and
    Assigned(f_OnBecomeVisible) then
  f_OnBecomeVisible(Self);
//#UC END# *4F9A82400387_4D90511700B2_impl*
end;//TnscCustomReminder.CMVisibleChanged

function TnscCustomReminder.EntityNameStored: Boolean;
//#UC START# *53950E25B942_4D90511700B2_var*
//#UC END# *53950E25B942_4D90511700B2_var*
begin
//#UC START# *53950E25B942_4D90511700B2_impl*
 Result := (f_EntityName <> '');
//#UC END# *53950E25B942_4D90511700B2_impl*
end;//TnscCustomReminder.EntityNameStored

function TnscCustomReminder.OperationNameStored: Boolean;
//#UC START# *30649C70FFBF_4D90511700B2_var*
//#UC END# *30649C70FFBF_4D90511700B2_var*
begin
//#UC START# *30649C70FFBF_4D90511700B2_impl*
 Result := (f_OperationName <> '');
//#UC END# *30649C70FFBF_4D90511700B2_impl*
end;//TnscCustomReminder.OperationNameStored

procedure TnscCustomReminder.Loaded;
//#UC START# *484516C00214_4D90511700B2_var*
//#UC END# *484516C00214_4D90511700B2_var*
begin
//#UC START# *484516C00214_4D90511700B2_impl*
 inherited;
 InitAction;
 // Для интерактивных предупреждений рисуем руку:
 if (Action <> nil) or Assigned(OnClick) then
  Cursor := crHandPoint;
//#UC END# *484516C00214_4D90511700B2_impl*
end;//TnscCustomReminder.Loaded

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
procedure TnscCustomReminder.LoadSettings;
//#UC START# *4F9A5C410274_4D90511700B2_var*
//#UC END# *4F9A5C410274_4D90511700B2_var*
begin
//#UC START# *4F9A5C410274_4D90511700B2_impl*
 Assert(Name <> '');
 if (BaseId <> '') then
 begin
  with Settings do
   if not LoadBoolean(MakeId(csidDefaultParams), True) then
    Self.WritePosition(LoadInteger(MakeId(csidLeft), 0),
                       LoadInteger(MakeId(csidRight), 0),
                       LoadInteger(MakeId(csidTop), 0),
                       LoadInteger(MakeId(csidBottom), 0));
 end;//BaseId <> ''
//#UC END# *4F9A5C410274_4D90511700B2_impl*
end;//TnscCustomReminder.LoadSettings
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
procedure TnscCustomReminder.SaveSettings;
//#UC START# *4F9A5C530398_4D90511700B2_var*
var
 Left, Right, Top, Bottom: Integer;
//#UC END# *4F9A5C530398_4D90511700B2_var*
begin
//#UC START# *4F9A5C530398_4D90511700B2_impl*
 Assert(Name <> '');
 if (BaseId <> '') then
 begin
  Self.ReadPosition(Left, Right, Top, Bottom);

  with Settings do
  begin
   SaveBoolean(MakeId(csidDefaultParams), False);

   SaveInteger(MakeId(csidLeft), Left);
   SaveInteger(MakeId(csidRight), Right);
   SaveInteger(MakeId(csidTop), Top);
   SaveInteger(MakeId(csidBottom), Bottom);
  end;//with Settings
 end;//BaseId <> ''
//#UC END# *4F9A5C530398_4D90511700B2_impl*
end;//TnscCustomReminder.SaveSettings
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$IfEnd} //Nemesis

end.