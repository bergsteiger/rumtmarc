unit StyleEditorContainer_Form;

// $Id: StyleEditorContainer_Form.pas,v 1.11 2013/01/23 08:04:24 kostitsin Exp $

// $Log: StyleEditorContainer_Form.pas,v $
// Revision 1.11  2013/01/23 08:04:24  kostitsin
// не собиралось
//
// Revision 1.10  2013/01/22 15:59:52  kostitsin
// [$424399029]
//
// Revision 1.9  2011/11/16 17:36:01  lulin
// {RequestLink:232098711}
//
// Revision 1.8  2010/07/30 11:38:03  lulin
// {RequestLink:197496539}.
//
// Revision 1.7  2009/11/18 13:06:38  lulin
// - используем базовые параметры операции.
//
// Revision 1.6  2009/11/12 14:33:10  lulin
// - убираем возможность менять список параметров.
//
// Revision 1.5  2009/11/10 12:29:59  lulin
// - перестаём выливать идентификаторы внутренних операций.
//
// Revision 1.4  2009/10/29 16:03:18  lulin
// - по-другому называем операции.
//
// Revision 1.3  2009/10/29 14:36:14  lulin
// - вторая волна компании по борьбе со старыми внутренними операциями.
//
// Revision 1.2  2009/10/02 19:10:38  lulin
// - окончательно избавился от инициализации форм переменными списками параметров. Всё перевёл на фабрики.
//
// Revision 1.1  2009/09/23 13:32:42  lulin
// - начинаем перенос модуля Настройки на модель.
//
// Revision 1.40  2009/08/26 08:15:34  lulin
// - декорируем имена операций, чтобы можно было искать.
// - bug fix: не собирались мониторинги.
//
// Revision 1.39  2009/07/31 17:30:14  lulin
// - убираем мусор.
//
// Revision 1.38  2009/02/20 18:50:54  lulin
// - <K>: 136941122. Убираем передачу параметров при запросе состояния операции.
//
// Revision 1.37  2009/02/10 19:03:57  lulin
// - <K>: 133891247. Вычищаем морально устаревший модуль.
//
// Revision 1.36  2009/02/10 12:53:46  lulin
// - <K>: 133891247. Выделяем интерфейсы настройки.
//
// Revision 1.35  2008/01/24 11:47:54  oman
// - new: Разкладываем пропорциональные панельки (cq24598)
//
// Revision 1.34  2007/01/19 09:47:22  lulin
// - выделяем интерфейс параметров для создания формы.
//
// Revision 1.33  2007/01/17 14:03:05  lulin
// - вычищены последние нефиксированные параметры в тестах операций.
//
// Revision 1.32  2006/12/07 12:40:50  lulin
// - повторный переход на "правильные" панели.
//
// Revision 1.31  2006/12/05 14:15:57  lulin
// - контрол переехал в визуальную библиотеку.
//
// Revision 1.30  2006/06/09 06:50:52  oman
// - fix: Запросы на сохранение/восстановление значений по умолчанию
//  для таблицы стилей (cq18958)
//
// Revision 1.29  2006/04/25 13:52:28  oman
// - change: Собирание интерфейсов по редактированию настроек в одно место
// - new beh: Интерфейсы по работе с настройками конфигурации и
//  списком конфигураций (cq20377)
//
// Revision 1.28  2006/04/21 07:28:20  oman
// warning fix
//
// Revision 1.27  2006/03/31 07:42:23  lulin
// - изменен тип параметров, подаваемый в Execte операции.
//
// Revision 1.26  2006/03/30 15:31:36  lulin
// - изменен тип параметров в _OnTest.
//
// Revision 1.25  2006/03/30 14:01:48  lulin
// - операция инициализации разделена на две - с параметрами и без - для того, чтобы в итоге избавится от первой.
//
// Revision 1.24  2006/03/16 11:35:59  oman
// - new beh: Перекладываем все текстовые константы в три места (StdStr, DebugStr и SystemStr)
//
// Revision 1.23  2006/01/18 09:36:24  oman
// - cleanup (убраны не нужные операции opClearModifiedSign)
// - мелкий рефакторинг
//
// Revision 1.22  2005/12/13 16:17:39  oman
// - new behavior: Для таблицы стилей появилась операция "Записать по умолчанию"
// - fix: При редактировании таблицы стилей неактивных насторек, редактировали не ту таблицу
//
// Revision 1.21  2005/12/13 14:13:20  demon
// - fix: лишний запрос на сохранение при аварийном завершении программы
//
// Revision 1.20  2005/12/02 07:04:53  oman
// - fix: rename opSettingsAbandoned => opClearModifiedSign. Была ситуация, когда
//  таблица стилей неверно считла себя модифицированной.
//
// Revision 1.19  2005/12/01 15:30:24  oman
// - fix: Убирание удвоенного запроса об изменности таблицы стилей при
//   редактировании из настроек конфигурации
//
// Revision 1.18  2004/11/18 17:32:04  lulin
// - new interface: IvcmParamsPrim.
//
// Revision 1.17  2004/11/16 11:17:14  mmorozov
// change: FormCloseQuery (в связи с изменением сообщения);
//
// Revision 1.16  2004/10/07 14:20:33  lulin
// - new: теперь у _IvcmParams можно присваивать только свойство _DoneStatus - код завершения. На основе этого "по-хитрому" обрабатываем ShortCut'ы для запрещенных операций (CQ OIT5-10123).
//
// Revision 1.15  2004/05/26 11:49:37  am
// bugfix: пропадание левой зоны при открытии окна, которое до предыдущего закрытия было максимизировано
//
// Revision 1.14  2004/03/31 14:58:50  migel
// - fix: предупреждение компилятора.
//
// Revision 1.13  2004/03/31 14:25:02  migel
// - fix: не перегружаем таблицу стилей, если она не изменилась и пользователь "нажал" отмену + мелкий багфикс.
//
// Revision 1.12  2004/03/22 13:58:08  nikitin75
// shortcuts support: vcm-операции ok, cancel перенесены на контейнер;
//
// Revision 1.11  2004/03/16 09:41:59  migel
// - fix: корректное поведение сплитера при изменении размеров окна.
//
// Revision 1.10  2004/03/15 12:23:59  migel
// - fix: доступна кнопка `maximize`.
// - add: логи CVS.
//

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
 Dialogs, vcmInterfaces, vcmBase, vcmEntityForm, vcmEntities,
 vcmContainerForm, vcmBaseEntities, ExtCtrls, vtSizeablePanel,
 vcmComponent, OvcBase, afwControl, vtPanel,  
  vtProportionalPanel,

  ConfigInterfaces, l3InterfacedComponent, afwControlPrim, afwBaseControl,
  afwTextControlPrim, afwTextControl,

  vcmExternalInterfaces,

  PrimStyleEditorContainerOptions_Form
  ;

type
 TStyleEditorContainerForm = class(TvcmContainerFormRef)
  Entities: TvcmEntities;
  //
  f_NavigatorZone: TvtSizeablePanel;
  f_MainZone: TvtPanel;
  f_ChildZone: TvtPanel;
  f_ParentZone: TvtSizeablePanel;
  BackgroundPanel: TvtProportionalPanel;

  //
  procedure FormResize(aSender: TObject);
  procedure vcmContainerFormCloseQueryEx(Sender: TObject;
    var CanClose: Boolean; aCaller: TCustomForm);
 end;

implementation

uses
  vcmForm,

  DataAdapter,
  DebugStr,

  StdRes,

  Settings_Strange_Controls
  ;

{$R *.DFM}

procedure TStyleEditorContainerForm.FormResize(aSender: TObject);
begin
 // fix: для нормального поведения при изменении размеров формы, если у нее стоят ограничения.
 if ((f_NavigatorZone.Width+f_MainZone.Width) > ClientWidth) then
   if ClientWidth > f_MainZone.Width then
    f_NavigatorZone.Width := ClientWidth-f_MainZone.Width;
end;

procedure TStyleEditorContainerForm.vcmContainerFormCloseQueryEx(
  Sender: TObject; var CanClose: Boolean; aCaller: TCustomForm);
begin
 if not defDataAdapter.InTerminateProcess then
 begin
  if (ModalResult = mrCancel) and f_SettingsInfo.Modified then
   if Ask(qr_StyleTableChanged) then
    f_SettingsInfo.Load
   else
    CanClose := False;
 end;
end;

end.