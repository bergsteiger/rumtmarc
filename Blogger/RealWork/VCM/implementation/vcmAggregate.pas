unit vcmAggregate;

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmAggregate -  }
{ Начат: 02.04.2003 15:13 }
{ $Id: vcmAggregate.pas,v 1.51 2012/04/13 14:37:25 lulin Exp $ }

// $Log: vcmAggregate.pas,v $
// Revision 1.51  2012/04/13 14:37:25  lulin
// {RequestLink:237994598}
//
// Revision 1.50  2012/01/24 16:30:02  lulin
// {RequestLink:330139744}
// - вставляем диагностику на предмет того, что формы не могут иметь одинаковые идентификаторы.
// - избавляемся от нетипизированных списков.
//
// Revision 1.49  2009/11/12 18:06:57  lulin
// - убираем ненужные возвращаемые значения.
//
// Revision 1.48  2009/11/06 13:06:17  lulin
// - избавился от ручной передачи параметров через поле Data.
//
// Revision 1.47  2009/09/25 12:09:11  lulin
// - выкидываем ненужное.
//
// Revision 1.46  2009/02/20 17:29:18  lulin
// - чистка комментариев.
//
// Revision 1.45  2009/02/20 17:23:05  lulin
// - <K>: 136941122.
//
// Revision 1.44  2009/02/20 15:18:56  lulin
// - <K>: 136941122.
//
// Revision 1.43  2009/02/16 12:59:41  lulin
// - <K>: 135604584.
//
// Revision 1.42  2008/03/19 14:23:42  lulin
// - cleanup.
//
// Revision 1.41  2008/02/08 11:59:52  oman
// - new: Возвращаем ссылку на найденную форму в Aggregate._HasForm (cq9172)
//
// Revision 1.40  2008/02/07 19:13:02  lulin
// - избавляемся от излишне универсальных методов базовых списков.
//
// Revision 1.39  2008/01/31 18:53:31  lulin
// - избавляемся от излишней универсальности списков.
//
// Revision 1.38  2007/01/20 17:35:43  lulin
// - разрешаем вызывать операции только по заранее известным идентификаторам.
//
// Revision 1.37  2007/01/20 15:31:07  lulin
// - разделяем параметры операции для выполнения и для тестирования.
//
// Revision 1.36  2006/03/16 14:12:51  lulin
// - убрана возможность изменения входного параметра - идентификатора операции.
//
// Revision 1.35  2006/03/16 11:28:49  lulin
// - вычищены имена сущностей и операций - перешли на их идентификаторы.
//
// Revision 1.34  2005/09/28 18:15:51  mmorozov
// - не компилировалось;
//
// Revision 1.33  2005/09/28 10:53:00  lulin
// - new behavior: при рассылке сообщения агрегации со списка снимается копия, чтобы рассылка производилась по тем формам, которые в данный момент входили в агрегацию.
//
// Revision 1.32  2005/09/23 16:16:16  demon
// - new behavior: проверка на дубликаты форм в агрегации
//
// Revision 1.31  2005/08/02 12:51:31  mmorozov
// no message
//
// Revision 1.30  2005/07/14 16:02:46  lulin
// - new behavior: в run-time получаем ID операции по ее имени из информации, содержащейся в MenuManager'е.
//
// Revision 1.29  2004/11/18 17:33:58  lulin
// - new interface: IvcmParamsPrim.
//
// Revision 1.28  2004/10/07 14:16:58  lulin
// - new: теперь у _IvcmParams можно присваивать только свойство DoneStatus - код завершения. На основе этого "по-хитрому" обрабатываем ShortCut'ы для запрещенных операций (CQ OIT5-10123).
//
// Revision 1.27  2004/09/22 09:34:29  lulin
// - оптимизщация - кешируем результат преобразования Name -> ID при посылке операций.
//
// Revision 1.26  2004/09/07 16:19:41  law
// - перевел VCM на кшированные обьекты.
//
// Revision 1.25  2004/06/02 10:20:37  law
// - удален конструктор Tl3VList.MakeIUnknown - пользуйтесь _Tl3InterfaceList.Make.
//
// Revision 1.24  2004/03/16 10:59:30  law
// - new const: _vcm_omAggregateExecute.
// - new behavior: для операции агрегации не учитываем состояние Enabled.
//
// Revision 1.23  2003/12/10 15:46:22  demon
// - bug fix: два раза приходил вызов операции через агрегацию.
//
// Revision 1.22  2003/11/28 13:01:27  law
// - new behavior: опираемся на идентификаторы форм, а не на имена.
//
// Revision 1.21  2003/11/25 16:42:48  law
// - new method versions: _TvcmEntityForm._Operation.
//
// Revision 1.20  2003/11/25 09:15:16  law
// - new method version: TvcmAggregate._Operation(const anOp: TvcmOPID): _IvcmParams;
//
// Revision 1.19  2003/11/21 12:09:57  law
// - change: параметр aMode перенесен в конец и сделан необязательным.
//
// Revision 1.18  2003/11/20 20:37:53  law
// - new behavior: корректно генерируем список идентификаторов операций.
// - new behavior: вызов операций сущностей возможен теперь только по идентификатору.
// - cleanup: пытаемся в Design-Time отвязаться от GblAdapter (не получилось).
//
// Revision 1.17  2003/09/16 16:50:46  demon
// - fix: при выполнении операции на агрегации не сбрасывался флаг aParams.Done = true, что влияло на возвращаемый результат.
//
// Revision 1.16  2003/08/14 14:49:53  demon
// - fix: при обработке операций агрегации теперь в качестве результата
//        возвращаются параметры последней успешной обработки (нужно
//        для возможности корректного возврата параметров из операции).
//
// Revision 1.15  2003/07/14 15:28:26  law
// - bug fix: частично полечил ситуацию, когда при рассылке сообщений формам агрегации, убивалась какая-нибудь из этих форм.
//
// Revision 1.14  2003/06/30 17:51:31  demon
// - bug fix: исправлено выставление флага Done, если ни одна форма не обработала операцию.
//
// Revision 1.13  2003/06/27 19:26:04  law
// - bug fix: неправильно возвращался флаг завершения операции, которую посылают агрегации.
//
// Revision 1.12  2003/06/23 12:37:12  law
// - new behavior: восстанавливаем агрегацию при операциях Back/Forward.
//
// Revision 1.11  2003/06/23 12:18:25  law
// - new methods: IvcmDispatcher.AddAggregate, IvcmDispatcher.RemoveAggregate.
//
// Revision 1.10  2003/06/06 14:47:45  law
// - new prop: IvcmAggregate.GUID - для сохранения знаний о том в какой агрегации находилась закрываемая форма.
//
// Revision 1.9  2003/04/18 08:07:10  law
// - new method: IvcmAggregate._HasForm.
//
// Revision 1.8  2003/04/07 15:10:46  law
// - bug fix: сделано, чтобы компилировалось под Builder'ом.
//
// Revision 1.7  2003/04/04 10:58:57  law
// - bug fix: была ошибка в имени типа TvcmControlID.
//
// Revision 1.6  2003/04/03 13:03:32  law
// - new method: IvcmParam.CheckAggregate.
//
// Revision 1.5  2003/04/03 11:25:09  law
// - new behavior: изменена подписка.
// - new method version: IvcmAggregate._Operation.
//
// Revision 1.4  2003/04/02 13:05:28  law
// - bug fix: поправлена сигнатура IvcmAggregate._Operation.
//
// Revision 1.3  2003/04/02 13:01:18  law
// - new method: IvcmAggregate._Operation.
//
// Revision 1.2  2003/04/02 11:41:42  law
// - new method: TvcmModule.MakeAggregate.
// - new proc: vcmTestParams.
//
// Revision 1.1  2003/04/02 11:17:53  law
// - new unit: vcmAggregate.
//

{$Include vcmDefine.inc }

interface

uses
  vcmExternalInterfaces,
  vcmInterfaces,
  vcmBase,
  vcmIEntityList
  ;

type
  TvcmAggregate = class(TvcmCacheableBase, IvcmAggregate)
    private
    // internal fields
      f_List : TvcmIEntityList;
      f_GUID : TGUID;
    protected
    // IvcmAggregate
      function Get_EntitiesCount: Integer;
        {-}
      function Get_Entity(anIndex: Integer): IvcmEntity;
        {-}
      function Get_GUID: TGUID;
        {-}
      procedure AddEntity(const anEntity: IvcmEntity);
        {* - добавляет сущность в агрегацию. }
      procedure RemoveEntity(const anEntity: IvcmEntity);
        {* - удаляет сущность из агрегации. }
      function Operation(const anOp    : TvcmOPID;
                         const aParams : IvcmExecuteParams): IvcmExecuteParams;
        overload;
        {* - транслирует операцию сущностям. }
      function Operation(const anOp: TvcmOPID): IvcmExecuteParams;
        overload;
        {-}
      function HasForm(const aName: TvcmFormID;
                       theForm      : PIvcmEntityForm = nil): Boolean;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(aGUID: PGUID = nil);
        reintroduce;
        {-}
      class function Make(aGUID: PGUID = nil): IvcmAggregate;
        {-}
    public
    // public properties
      property EntitiesCount: Integer
        read Get_EntitiesCount;
        {* - количество вложенных сущностей. }
      property Entity[anIndex: Integer]: IvcmEntity
        read Get_Entity;
        {* - вложенная сущность. }
  end;//TvcmAggregate

implementation

uses
  SysUtils,

  vcmUserControls,
  vcmRepositoryEx
  ;

constructor TvcmAggregate.Create(aGUID: PGUID = nil);
  //reintroduce;
  {-}
begin
 inherited Create;
 if (aGUID = nil) then
  CreateGUID(f_GUID)
 else
  f_GUID := aGUID^; 
 if (g_Dispatcher <> nil) then
  g_Dispatcher.AddAggregate(Self);
end;

class function TvcmAggregate.Make(aGUID: PGUID = nil): IvcmAggregate;
  {-}
var
 l_Aggregate: TvcmAggregate;
begin
 if (aGUID = nil) OR (g_Dispatcher = nil) OR
    not g_Dispatcher.FindAggregate(aGUID^, Result) then
 begin
  l_Aggregate := Create(aGUID);
  try
   Result := l_Aggregate;
  finally
   vcmFree(l_Aggregate);
  end;//try..finally
 end;//pGUID = nil..
end;

procedure TvcmAggregate.Cleanup;
  //override;
  {-}
begin
 if (g_Dispatcher <> nil) then
  g_Dispatcher.RemoveAggregate(Self);
 vcmFree(f_List);
 inherited;
end;

function TvcmAggregate.Get_EntitiesCount: Integer;
  {-}
begin
 if (f_List = nil) then
  Result := 0
 else
  Result := f_List.Count;
end;

function TvcmAggregate.Get_Entity(anIndex: Integer): IvcmEntity;
  {-}
begin
 if (f_List = nil) then
  Result := nil
 else
  Result := f_List.Items[anIndex];
end;

function TvcmAggregate.Get_GUID: TGUID;
  {-}
begin
 Result := f_GUID; 
end;

procedure TvcmAggregate.AddEntity(const anEntity: IvcmEntity);
  {* - добавляет сущность в агрегацию. }
begin
 if (f_List = nil) then
  f_List := TvcmIEntityList.Make;
 if f_List.IndexOf(anEntity) < 0 then
  f_List.Add(anEntity);
end;

procedure TvcmAggregate.RemoveEntity(const anEntity: IvcmEntity);
  {* - удаляет сущность из агрегации. }
begin
 if (f_List <> nil) then
  f_List.Remove(anEntity);
end;

function TvcmAggregate.Operation(const anOp    : TvcmOPID;
                                 const aParams : IvcmExecuteParams): IvcmExecuteParams;
  //overload;
  {* - транслирует операцию сущностям. }
var
 l_Done       : TvcmDoneStatus;
 l_Index      : Integer;
 l_Hi         : Integer;
 l_DoneResult : IvcmExecuteParams;
 l_PrevEntity : IvcmEntity;
 l_NewEntity  : IvcmEntity;
 l_List       : TvcmIEntityList;
begin
 Result := aParams;
 l_DoneResult := nil;
 l_Done := vcm_dsNotDone;
 {$IfNDef DesignTimeLibrary}
 if (f_List <> nil) then
 begin
  l_List := f_List.Clone;
  try
   with l_List do
   begin
    l_Index := Lo;
    l_Hi := Hi;
    l_PrevEntity := nil;
    while (l_Index <= l_Hi) do
    begin
     Result.DoneStatus := vcm_dsNotDone;
     aParams.DoneStatus := vcm_dsNotDone;
     l_NewEntity := Items[l_Index];
     if not vcmIEQ(l_PrevEntity, l_NewEntity) then
     begin
      l_PrevEntity := l_NewEntity;
      Result := aParams;
      l_PrevEntity.Operation(anOp, aParams.BasePart, vcm_omAggregateExecute);
      if Result.Done then
      begin
       l_DoneResult := Result;
       l_Done := vcm_dsDone;
      end;//Result.Done
     end;//not vcmIEQ(l_PrevEntity, l_NewEntity)
     if (l_Hi > Hi) then
      l_Hi := Hi
     else
      Inc(l_Index);
    end;//for l_Index
   end;//with l_List
  finally
   vcmFree(l_List);
  end;//try..finally
 end;//f_List <> nil
 if l_DoneResult <> nil then
 begin
  Result := l_DoneResult;
  Result.DoneStatus := vcm_dsDone;
  l_DoneResult := nil;
 end
 else
  Result.DoneStatus := l_Done;
 {$EndIf DesignTimeLibrary}
end;

function TvcmAggregate.Operation(const anOp: TvcmOPID): IvcmExecuteParams;
  //overload;
  {-}
begin
 Result := Operation(anOp, vcmParams);
end;

function TvcmAggregate.HasForm(const aName: TvcmFormID;
                       theForm      : PIvcmEntityForm = nil): Boolean;
  {-}
var
 l_Index : Integer;
 l_Form  : IvcmEntityForm;
begin
 Result := false;
 if Assigned(theForm) then
  theForm^ := nil;
 for l_Index := 0 to Pred(EntitiesCount) do
  if Supports(Entity[l_Index], IvcmEntityForm, l_Form) AND
     l_Form.SameName(aName) then begin
   Result := true;
   if Assigned(theForm) then
    theForm^ := l_Form;
   break;
  end;//Supports..
end;

end.

