unit nsHAFPainter;

{ $Id: nsHAFPainter.pas,v 1.2 2013/04/24 09:35:56 lulin Exp $ }

// $Log: nsHAFPainter.pas,v $
// Revision 1.2  2013/04/24 09:35:56  lulin
// - портируем.
//
// Revision 1.1  2010/07/02 18:20:10  lulin
// {RequestLink:207389954}.
// - переносим на модель  «.
//
// Revision 1.1  2009/12/09 16:35:08  lulin
// - рисуем контейнер документа на модели и правим зависимости.
//
// Revision 1.1  2009/09/14 11:28:38  lulin
// - выводим пути и дл€ незавершЄнных модулей.
//
// Revision 1.30  2008/12/26 14:00:22  oman
// - fix: подключаем MacroReplacer ( -122675365)
//
// Revision 1.29  2008/12/26 09:21:47  oman
// - fix: мен€ем сигнатуру конструктора ( -122675365)
//
// Revision 1.28  2008/12/25 11:38:12  oman
// - fix: »збавл€емс€ от класса - eeHAFPainter ( -122675365)
//
// Revision 1.27  2008/01/10 07:23:10  oman
// ѕереход на новый адаптер
//
// Revision 1.25.4.1  2007/12/11 09:31:52  mmorozov
// - MERGE WITH HEAD;
//
// Revision 1.26  2007/12/10 12:50:42  mmorozov
// - new: реализуем шаблон publisher\subscriber при редактировании настроек, замены настроек (переключени€ конфигураций), настройке панелей инструментов (в рамках CQ: OIT5-27823);
//
// Revision 1.25  2007/03/20 11:37:39  lulin
// - не тер€ем кодировку при присваивании заголовков форм и контролов.
//
// Revision 1.24  2005/06/23 16:19:19  mmorozov
// - warnig fix;
//
// Revision 1.23  2005/03/14 11:31:27  lulin
// - new behavior: теперь Preview реагирует на изменение настроек (в частности колонтитулов).
//
// Revision 1.22  2004/12/28 17:38:25  lulin
// - TeeHAFPainter теперь знает про IvcmSettings.
//
// Revision 1.21  2004/12/28 17:06:45  lulin
// - new unit: eeHAFPainter.
//
// Revision 1.20  2004/12/28 16:23:18  lulin
// - new unit: evHAFPainterEx.
//
// Revision 1.19  2004/12/28 15:38:06  lulin
// - new unit: evHAFPainterMacros.
//
// Revision 1.18  2004/12/21 16:47:01  lulin
// - вернул _Caption форме предварительного просмотра.
//
// Revision 1.17  2004/12/15 14:58:43  lulin
// - перетащил диалог печати на новый Print-preview.
//
// Revision 1.16  2004/12/11 15:35:45  lulin
// - вернул колонтитулы на историческую родину.
//
// Revision 1.15  2004/12/09 18:04:54  lulin
// - добавлен лог.
//

interface

uses
  l3InternalInterfaces,

  afwInterfaces,

  vcmExternalInterfaces,

  evHAFPainterEx
  ;

type
  TnsHAFPainter = class(TevHAFPainterEx, IvcmSettingsSource)
    private
    // internal fields
      f_Settings : IvcmSettings;
      f_BaseId   : AnsiString;
    protected
    // interface methods
      // IvcmSettingsSource
      function pm_GetBaseId : AnsiString;
      procedure pm_SetBaseId(const aValue : AnsiString);
        {-}
      function  pm_GetSettings : IvcmSettings;
      procedure pm_SetSettings(const aValue : IvcmSettings);
        {-}
    protected
    // internal methods
      function  IsSettingAffectsUs(const aSettingId: TafwSettingId): Boolean;
        override;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aMacroReplacer: Il3HAFMacroReplacer);
        override;
        {-}
      procedure ReadColontitulSettings;
        override;
        {-}
    public
    // public properties
      property Settings: IvcmSettings
        read f_Settings;
        {-}
  end;//TnsHAFPrinter

implementation

uses
  SysUtils,

  afwFacade,

  evTypes,

  nsConst,
  nsSettings
  ;

// start class TnsHAFPainter  

procedure TnsHAFPainter.ReadColontitulSettings;
begin
 inherited;
 if (Settings <> nil) then
  with Settings do
  begin
   f_Colontituls[pcUpLeftFirst] := LoadString(pi_Print_Catchwords_First_UpLeft, dv_Print_Catchwords_First_UpLeft);
   f_Colontituls[pcUpRightFirst] := LoadString(pi_Print_Catchwords_First_UpRight, dv_Print_Catchwords_First_UpRight);
   f_Colontituls[pcDownLeftFirst] := LoadString(pi_Print_Catchwords_First_BottomLeft, dv_Print_Catchwords_First_BottomLeft);
   f_Colontituls[pcDownRightFirst] := LoadString(pi_Print_Catchwords_First_BottomRight, dv_Print_Catchwords_First_BottomRight);
  //
   f_Colontituls[pcUpLeft] := LoadString(pi_Print_Catchwords_Other_UpLeft, dv_Print_Catchwords_Other_UpLeft);
   f_Colontituls[pcUpRight] := LoadString(pi_Print_Catchwords_Other_UpRight, dv_Print_Catchwords_Other_UpRight);
   f_Colontituls[pcDownLeft] := LoadString(pi_Print_Catchwords_Other_BottomLeft, dv_Print_Catchwords_Other_BottomLeft);
   f_Colontituls[pcDownRight] := LoadString(pi_Print_Catchwords_Other_BottomRight, dv_Print_Catchwords_Other_BottomRight);
  end;//with Settings
end;

function TnsHAFPainter.IsSettingAffectsUs(const aSettingId: TafwSettingId): Boolean;
  //override;
  {-}
begin
 Result := ANSISameText(aSettingId, pi_Print_Catchwords_First_UpLeft) OR
           ANSISameText(aSettingId, pi_Print_Catchwords_First_UpRight) OR
           ANSISameText(aSettingId, pi_Print_Catchwords_First_BottomLeft) OR
           ANSISameText(aSettingId, pi_Print_Catchwords_First_BottomRight) OR

           ANSISameText(aSettingId, pi_Print_Catchwords_Other_UpLeft) OR
           ANSISameText(aSettingId, pi_Print_Catchwords_Other_UpRight) OR
           ANSISameText(aSettingId, pi_Print_Catchwords_Other_BottomLeft) OR
           ANSISameText(aSettingId, pi_Print_Catchwords_Other_BottomRight);
end;
  
procedure TnsHAFPainter.Cleanup;
begin
 f_Settings := nil;
 inherited;
end;

constructor TnsHAFPainter.Create(const aMacroReplacer: Il3HAFMacroReplacer);
begin
 if (afw.Application <> nil) then
  f_Settings := afw.Application.Settings;
 inherited;
end;

function TnsHAFPainter.pm_GetBaseId: AnsiString;
begin
 Result := f_BaseId;
end;

function TnsHAFPainter.pm_GetSettings: IvcmSettings;
begin
 Result := Settings;
end;

procedure TnsHAFPainter.pm_SetBaseId(const aValue: AnsiString);
begin
 f_BaseId := aValue;
end;

procedure TnsHAFPainter.pm_SetSettings(const aValue: IvcmSettings);
begin
 f_Settings := aValue;
end;

end.
