unit nscRemindersLine;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis"
// Модуль: "w:/common/components/gui/Garant/Nemesis/nscRemindersLine.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi For F1::Nemesis::Reminders::TnscRemindersLine
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
  vtRemindersLineModelPart
  {$If not defined(NoVCM)}
  ,
  vcmExternalInterfaces
  {$IfEnd} //not NoVCM
  ,
  afwInterfaces
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}
type
 _nsUnknownComponentWithIvcmState_Parent_ = TvtRemindersLineModelPart;
 {$Include ..\Nemesis\nsUnknownComponentWithIvcmState.imp.pas}
 TnscRemindersLine = class(_nsUnknownComponentWithIvcmState_)
 private
 // private methods
    {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
   function MakeId(const aId: AnsiString): AnsiString;
     {* определяет путь для сохранения настройки на основе BaseId и Name }
    {$IfEnd} //Nemesis AND not DesignTimeLibrary
   procedure CheckName;
 protected
 // overridden protected methods
    {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
   procedure LoadSettings; override;
    {$IfEnd} //Nemesis AND not DesignTimeLibrary
    {$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
   procedure SaveSettings; override;
    {$IfEnd} //Nemesis AND not DesignTimeLibrary
 end;//TnscRemindersLine
{$IfEnd} //Nemesis

implementation

{$If defined(Nemesis)}
uses
  nscReminder,
  afwConsts
  ;
{$IfEnd} //Nemesis

{$If defined(Nemesis)}

{$Include ..\Nemesis\nsUnknownComponentWithIvcmState.imp.pas}

// start class TnscRemindersLine

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
function TnscRemindersLine.MakeId(const aId: AnsiString): AnsiString;
//#UC START# *4F9A8F3602C4_4DA8339901A7_var*
//#UC END# *4F9A8F3602C4_4DA8339901A7_var*
begin
//#UC START# *4F9A8F3602C4_4DA8339901A7_impl*
 Result := BaseId + g_afwPathSep + Name + g_afwPathSep + aId;
//#UC END# *4F9A8F3602C4_4DA8339901A7_impl*
end;//TnscRemindersLine.MakeId
{$IfEnd} //Nemesis AND not DesignTimeLibrary

procedure TnscRemindersLine.CheckName;
//#UC START# *4F9A8FA40367_4DA8339901A7_var*
//#UC END# *4F9A8FA40367_4DA8339901A7_var*
begin
//#UC START# *4F9A8FA40367_4DA8339901A7_impl*
 Assert((Name <> ''), 'Для сохранения в настройки необходимо установить property Name.');
//#UC END# *4F9A8FA40367_4DA8339901A7_impl*
end;//TnscRemindersLine.CheckName

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
procedure TnscRemindersLine.LoadSettings;
//#UC START# *4F9A5C410274_4DA8339901A7_var*
//#UC END# *4F9A5C410274_4DA8339901A7_var*
begin
//#UC START# *4F9A5C410274_4DA8339901A7_impl*
 CheckName;
 if (BaseId <> '') then
 begin
  with Settings do
   if not LoadBoolean(MakeId(csidDefaultParams), True) then
    Self.WritePosition(LoadInteger(MakeId(csidLeft), 0),
                       LoadInteger(MakeId(csidRight), 0),
                       LoadInteger(MakeId(csidTop), 0),
                       LoadInteger(MakeId(csidBottom), 0));
 end;
//#UC END# *4F9A5C410274_4DA8339901A7_impl*
end;//TnscRemindersLine.LoadSettings
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$If defined(Nemesis) AND not defined(DesignTimeLibrary)}
procedure TnscRemindersLine.SaveSettings;
//#UC START# *4F9A5C530398_4DA8339901A7_var*
var
 Left, Right, Top, Bottom: Integer;
//#UC END# *4F9A5C530398_4DA8339901A7_var*
begin
//#UC START# *4F9A5C530398_4DA8339901A7_impl*
 CheckName;
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
  end;
 end;
//#UC END# *4F9A5C530398_4DA8339901A7_impl*
end;//TnscRemindersLine.SaveSettings
{$IfEnd} //Nemesis AND not DesignTimeLibrary

{$IfEnd} //Nemesis

end.