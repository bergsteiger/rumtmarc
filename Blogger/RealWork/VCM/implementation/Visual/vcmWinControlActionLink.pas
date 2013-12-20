unit vcmWinControlActionLink;

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmWinControlActionLink - }
{ Начат: 15.09.2004 16:30 }
{ $Id: vcmWinControlActionLink.pas,v 1.15 2009/10/16 17:00:46 lulin Exp $ }

// $Log: vcmWinControlActionLink.pas,v $
// Revision 1.15  2009/10/16 17:00:46  lulin
// {RequestLink:159360578}. №52.
//
// Revision 1.14  2008/02/14 19:32:33  lulin
// - изменены имена файлов с примесями.
//
// Revision 1.13  2008/02/14 14:12:17  lulin
// - <K>: 83920106.
//
// Revision 1.12  2008/02/07 08:37:46  lulin
// - каждому базовому объекту по собственному модулю.
//
// Revision 1.11  2008/01/30 20:31:42  lulin
// - подготавливаемся к штатному использованию классов-примесей на модели.
//
// Revision 1.10  2008/01/25 12:06:52  lulin
// - синхронизируем имена с моделью.
//
// Revision 1.9  2008/01/25 11:32:07  lulin
// - синхронизируем имена с моделью.
//
// Revision 1.8  2007/09/26 06:18:09  mmorozov
// - change: вместо использования TvcmAction используем IvcmAction + правки ошибок при переходе на использование _SelectedString вместо Caption (в рамках работы над CQ: OIT5-26741 + K<50758978>);
//
// Revision 1.7  2007/01/18 10:49:35  lulin
// - заменяем объект менеджера памяти на интерфейс.
//
// Revision 1.6  2007/01/15 12:59:25  lulin
// - цвет фона теперь берем из шрифта.
//
// Revision 1.5  2007/01/15 12:47:28  lulin
// - теперь шрифт создаем только по требованию - когда его реально хотят заполнить.
//
// Revision 1.4  2006/04/14 13:40:24  lulin
// - запрещаем перекрывать деструктор.
//
// Revision 1.3  2006/04/14 12:11:19  lulin
// - файлу с шаблоном дано более правильное название.
//
// Revision 1.2  2006/04/14 11:53:08  lulin
// - объединил интерфейс и реализацию _Unknown_ в один файл.
//
// Revision 1.1  2004/09/15 13:29:05  lulin
// - TvcmAction и TvcmWinControlActionLink переведен на "шаблон" l3Unknown.
//

{$Include vcmDefine.inc }

interface

uses
  Windows,
  
  Controls,

  vcmExternalInterfaces
  ;

type
  _l3Unknown_Parent_ = TWinControlActionLink;
  {$Define _UnknownNeedsQI}
  {$IfNDef vcmNeedL3}
   {$Define _UnknownNotNeedL3}
  {$EndIf  vcmNeedL3}
  {$Include l3Unknown.imp.pas}
  TvcmWinControlActionLink = class(_l3Unknown_, IvcmActionLink)
    protected
    // internal methods
      procedure ParamsChanged(const anAction: IvcmAction);
        virtual;
        {-}
      procedure ParamsChanging(const anAction: IvcmAction);
        virtual;
        {-}
  end;//TvcmWinControlActionLink

implementation

uses
  SysUtils,

  Graphics

  {$IfDef vcmNeedL3}
  ,
  l3Base,
  l3Interfaces
  {$EndIf vcmNeedL3}
  ;

{$Include l3Unknown.imp.pas}

// start class TvcmWinControlActionLink

type
  THackControl = class(TControl);

procedure TvcmWinControlActionLink.ParamsChanged(const anAction: IvcmAction);
  //virtual;
  {-}
begin
 if (FClient Is TControl) then
 begin
  if (anAction.Font <> nil) then
  begin
   with anAction.Font do
   begin
    if (BackColor <> clDefault) then
     THackControl(FClient).Color := BackColor;
    Assign2Font(THackControl(FClient).Font);
   end;//with anAction.Font
  end;//anAction.Font <> nil
 end;//FClient Is TControl
end;

procedure TvcmWinControlActionLink.ParamsChanging(const anAction: IvcmAction);
  //virtual;
  {-}
begin
end;

end.

