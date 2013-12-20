Unit ddAutoImportClient;

// $Id: ddAutoImportClient.pas,v 1.26 2012/02/16 06:34:05 narry Exp $ 

// $Log: ddAutoImportClient.pas,v $
// Revision 1.26  2012/02/16 06:34:05  narry
// - Не собиралось
//
// Revision 1.25  2011/05/16 11:43:39  narry
// Ручной импорт "подготовленных" постановлений (266408732)
//  - Новый параметр создания задачи на импорт
//
// Revision 1.24  2010/07/14 07:31:11  narry
// - К226001558
//
// Revision 1.23  2010/02/24 10:24:24  narry
// - удаление зависимости проектов от парня
//
// Revision 1.22  2009/11/10 09:12:33  narry
// - обновление
//
// Revision 1.21  2009/04/13 09:19:53  narry
// - разделение определения типов и реализации
//
// Revision 1.20  2007/11/27 10:41:12  fireton
// - имя папки в письме об окончании импорта
//
// Revision 1.19  2007/07/24 12:32:50  narry
// - рефакторинг системы сообщений
//
// Revision 1.18  2006/03/07 12:27:34  narry
// - изменение: новая технология передачи заданий
//
// Revision 1.17  2005/12/01 11:35:35  narry
// - обновление: переход на новый способ передачи задач
//
// Revision 1.16  2005/03/25 12:17:26  voba
// - расширение списка параметров задания на импорт
//
// Revision 1.15  2004/09/14 15:58:03  lulin
// - удален модуль Str_Man - используйте вместо него - l3String.
//
// Revision 1.14  2003/12/17 14:39:10  voba
// - code format
//
// Revision 1.13  2003/12/17 12:09:07  narry
// - update
//
// Revision 1.12  2003/12/17 11:53:13  narry
// - add: расширение списка параметров сообщения на импорт - отслеживание Группы Доступа "Передано в регионы"
//
// Revision 1.11  2003/04/19 12:30:36  law
// - new file: ddDefine.inc.
//
// Revision 1.10  2003/04/04 17:05:36  narry
// - update & new: новый фильтр - *,evd
//
// Revision 1.9  2002/07/17 08:29:07  narry
// - bug fix: Access violation при создании задания на импорт
//
// Revision 1.8  2002/07/15 14:20:09  narry
// - update
//
// Revision 1.7  2002/02/19 13:53:29  narry
// - update
//
// Revision 1.6  2001/11/22 13:58:42  narry
// - update : начало реализации Групп доступа
//
// Revision 1.5  2001/09/04 13:58:59  voba
// - rename unit: MyUtil -> l3FileUtils.
//
// Revision 1.4  2000/12/15 15:29:53  law
// - вставлены директивы Log и Id.
//

{$I ddDefine.inc }

interface

Uses
  l3Base;


function CreateImportTask(FromRegion, IsAnnotation, DeleteIncluded: Boolean;
    IsAAC: Boolean = False): Integer;

implementation

Uses
  Forms, Sysutils,
  l3FileUtils,
  dt_Serv, 
  ddAIClientDlg, ddConst, ArchiUserRequestManager, //ddServerTask
  csImport;

function CreateImportTask(FromRegion, IsAnnotation, DeleteIncluded: Boolean;
    IsAAC: Boolean = False): Integer;
var
  Dlg: TAIClientDialog;
  l_Task : TcsImportTaskItem;
begin
 Dlg:= TAIClientDialog.Create(Application);
 try
  Dlg.BaseDir:= Format('%s.%d', [GetUniqFileName(GlobalHtServer.GlobalHomePath,
                                                 alcuPrefix, '', True),
                                 GlobalHtServer.CurUserID]);
  Dlg.IsAnnotation := IsAnnotation;
  if IsAnnotation then
   Dlg.Caption:= 'Импорт аннотаций'
  else
  if IsAAC then
   Dlg.Caption:= 'Импорт подготовленных постановлений'
  else
   Dlg.Caption:= 'Импорт документов';
  Result := -1;
  if Dlg.Execute then
  begin
   if IsAAC then
    l_Task:= TcsAACImport.Create(nil, GlobalHtServer.CurUserID)
   else
    l_Task := TcsImportTaskItem.Create(nil, GlobalHtServer.CurUserID);
   try
    l_Task.IsRegion := FromRegion;
    l_Task.IsAnnotation := IsAnnotation;
    l_Task.DeleteIncluded := DeleteIncluded;
    l_Task.SourceFiles := Dlg.FileList;
    l_Task.SourceDir := ExtractFilePath(l_Task.SourceFiles[0]);
//    l_Task.SourceFolder := Dlg.BaseDir;{ TODO -oДмитрий Дудко -cРазвитие : Вместо папки нужно хранить список файлов }
    Result:= ArchiRequestManager.SendTask(l_Task);
   finally
    l3Free(l_Task);
   end;
  end;
 finally
  Dlg.Free;
 end; // Dlg
end;

end.
