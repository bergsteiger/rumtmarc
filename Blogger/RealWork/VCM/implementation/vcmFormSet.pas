unit vcmFormSet;

{ Библиотека "vcm"         }
{ Автор: Морозов М.А. c    }
{ Модуль: vcmFormSet -     }
{ Начат: 29.07.2005 11.37  }

// $Id: vcmFormSet.pas,v 1.23 2011/06/15 12:15:26 lulin Exp $
// $Log: vcmFormSet.pas,v $
// Revision 1.23  2011/06/15 12:15:26  lulin
// {RequestLink:267324195}.
//
// Revision 1.22  2009/01/30 13:51:32  lulin
// - чистка кода.
//
// Revision 1.21  2008/05/14 12:46:24  mmorozov
// - new behaviour: при возврате по истории проверяем необходимость показа вкладки предупреждения (CQ: OIT5-29048);
//
// Revision 1.20  2008/04/23 07:24:43  oman
// - new: Для формы из сборки уточняем статус у самой сборки (cq28922)
//
// Revision 1.19  2007/06/26 06:07:00  mmorozov
// - библиотека не компилировалась;
//
// Revision 1.18  2007/06/25 08:17:40  mmorozov
// - bugfix: не чистили мягкую ссылку при уничтожении, по причине чего из кеша брался экземпляр с битым указателем;
//
// Revision 1.17  2007/06/22 16:02:29  mmorozov
// - bugfix: избавляемся от циклических ссылок (в рамках работы над CQ: OIT5-25280);
//
// Revision 1.16  2007/06/22 13:09:42  mmorozov
// - new behaviour: на время нахождения сборки в истории запрещаем выполнять обновление представления, при этот все поступающие запросы на обновление регистрируются и будут выполнены когда сборку откроют из истории, после загрузки всех форм (в рамках CQ: OIT5-25280, по плану изменений описанному в K<7438844>);
//
// Revision 1.15  2007/06/22 08:56:23  mmorozov
// - new: параметры обновления представления сборки оформлены интерфейсом;
//
// Revision 1.14  2007/01/20 19:52:44  lulin
// - cleanup.
//
// Revision 1.13  2007/01/20 19:11:34  lulin
// - запрещаем править поле с данными у параметров.
//
// Revision 1.12  2006/07/14 09:09:05  mmorozov
// - new: введено понятие объекта с данными (_IvcmObjectWithData);
// - new: при обновлении сборки в Refresh могут подаваться данные, для сохранения в историю;
//
// Revision 1.11  2006/07/07 11:04:05  mmorozov
// - new: возможность при обновлении сборки сохранять в историю только формы с изменившимися _DataSource;
//
// Revision 1.10  2006/03/29 12:03:41  lulin
// - вычищены "причины".
//
// Revision 1.9  2005/10/12 13:00:58  mmorozov
// new: при обновлении сборки можно указать, что перед обновлением ее нужно сохраниться в историю;
//
// Revision 1.8  2005/09/22 11:06:00  mmorozov
// - работа с историей в контексте сборок;
//
// Revision 1.7  2005/08/18 08:18:40  mmorozov
// new: дополнительный параметр aReason в методах обновления сборки;
//
// Revision 1.6  2005/08/17 08:56:18  mmorozov
// new: метод Refresh интерфейсов IvcmFormSetFactory, IvcmFormSet, IvcmFormSetDataSource содержит дополнительный параметр aData;
// new: метод IvcmFormSetDataSource._NeedMakeForm принимает дополнительный параметр aData;
//
// Revision 1.5  2005/08/03 11:30:32  mmorozov
// new behaviour: ссылка на контейнер мягкая иначе не закрывалось приложение;
// new: property Factory;
//
// Revision 1.4  2005/08/02 12:49:31  mmorozov
// change: TvcmFormSet наследник от TvcmAggregate;
// remove: удален код регистрации форм;
//
// Revision 1.3  2005/07/29 16:04:13  mmorozov
// change: храним ссылки на формы, а не интерфейсы;
//
// Revision 1.2  2005/07/29 12:44:38  mmorozov
// new: method Cleanup;
// new: сборка знает про формы входящие в нее;
//
// Revision 1.1  2005/07/29 10:45:06  mmorozov
// - сборка форм;
//

{$I vcmDefine.inc }

interface

uses
  {$IfNDef vcmNeedL3}
  Classes,
  {$EndIf vcmNeedL3}
  vcmInterfaces,
  vcmAggregate,
  vcmBase,
  vcmFormSetFactory
  ;

type
  TvcmFormSet = class(TvcmAggregate, IvcmFormSet)
  {* Базовый класс сборки. }
  private
  // internal fields
    f_Factory      : IvcmFormSetFactory;
    f_Container    : Pointer;
    f_CanRefresh   : Boolean;
    f_RefreshStack : {$IfDef vcmNeedL3}
                     TvcmInterfaceList
                     {$Else vcmNeedL3}
                     TInterfaceList
                     {$EndIf vcmNeedL3};
    f_DataSource   : Integer;
  private
  // IvcmFormSet
   // property methods
     function pm_GetFactory : IvcmFormSetFactory;
       {-}
     procedure pm_SetFactory(const aValue : IvcmFormSetFactory);
       {-}
     function pm_GetContainer : IvcmContainer;
       {-}
     procedure pm_SetContainer(const aValue : IvcmContainer);
       {-}
     function pm_GetCanRefresh: Boolean;
     procedure pm_SetCanRefresh(const aValue: Boolean);
       {* - после помещения удаляемой сборки в историю обновлять ее нельзя. }
     function pm_GetDataSource: IvcmFormSetDataSource;
     procedure pm_SetDataSource(const aValue: IvcmFormSetDataSource);
       {* - бизнес объект прецедента. }
     procedure PopToHistory;
       {* - сборка помещена в историю. }
     procedure PushFromHistory;
       {* - сборка выгружена из истории. }
  private
  // property methods
    function pm_GetRefreshStack: {$IfDef vcmNeedL3}
                                 TvcmInterfaceList
                                 {$Else vcmNeedL3}
                                 TInterfaceList
                                 {$EndIf vcmNeedL3};
      {-}
  protected
  // protected methods
    procedure Cleanup;
      override;
      {-}
    procedure SaveHistory;
      {-}
    function IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
      {* - является ли форма главной в сборке. }
    function FindStatusInfoForm: IvcmEntityForm;
      {* - найти форму отвечающую за вывод статуса. }
  protected
  // properties
    property CanRefresh: Boolean
      read f_CanRefresh;
      {-}
    property RefreshStack: {$IfDef vcmNeedL3}
                           TvcmInterfaceList
                           {$Else vcmNeedL3}
                           TInterfaceList
                           {$EndIf vcmNeedL3}
      read pm_GetRefreshStack;
      {-}
    property DataSource: IvcmFormSetDataSource
      read pm_GetDataSource
      write pm_SetDataSource;
       {* - бизнес объект прецедента. }
  public
  // public methods
    constructor Create(const aContainer  : IvcmContainer;
                       const aFactory    : IvcmFormSetFactory);
      reintroduce;
      virtual;
      {-}
    class function Make(const aContainer  : IvcmContainer;
                        const aFactory    : IvcmFormSetFactory) : IvcmFormSet;
      {-}
     procedure Refresh(const aParams: IvcmFormSetRefreshDataParams);
       {* - обновляет инфомацию сборки. }
  public
  // properties
    property Factory : IvcmFormSetFactory
      read pm_GetFactory
      write pm_SetFactory;
      {-}
  end;//TvcmFormSet

implementation

uses
  SysUtils,
  
  vcmFormSetRefreshParams
  ;

{ TvcmFormSet }

constructor TvcmFormSet.Create(const aContainer  : IvcmContainer;
                               const aFactory    : IvcmFormSetFactory);
  // reintroduce;
  // virtual;
  {-}
begin
 inherited Create;
 f_Container := Pointer(aContainer);
 f_Factory   := aFactory;
 f_CanRefresh := True;
end;//Create

class function TvcmFormSet.Make(const aContainer : IvcmContainer;
                                const aFactory   : IvcmFormSetFactory) : IvcmFormSet;
  {-}
var
 l_Class : TvcmFormSet;
begin
 l_Class := TvcmFormSet.Create(aContainer, aFactory);
 try
  Result := l_Class;
 finally
  vcmFree(l_Class);
 end;//try..finally
end;//Make

procedure TvcmFormSet.Refresh(const aParams: IvcmFormSetRefreshDataParams);
  // virtual;
  {* - обновляет инфомацию сборки. }
begin
 Assert(DataSource <> nil, 'FormSetDataSource undefined!');
 if Assigned(f_Factory) then
  if CanRefresh then
   f_Factory.Refresh(vcmMakeRefreshParams(aParams, DataSource, Self))
  else
   RefreshStack.Add(aParams);
end;//Refresh

function TvcmFormSet.pm_GetFactory: IvcmFormSetFactory;
  {-}
begin
 Result := f_Factory;
end;//pm_GetFactory

procedure TvcmFormSet.pm_SetFactory(const aValue : IvcmFormSetFactory);
  {-}
begin
 f_Factory := aValue;
end;//pm_SetFactory

function TvcmFormSet.pm_GetContainer : IvcmContainer;
  {-}
begin
 Result := IvcmContainer(f_Container);
end;//pm_GetContainer

function TvcmFormSet.pm_GetCanRefresh: Boolean;
begin
 Result := f_CanRefresh;
end;//pm_GetCanRefresh

function TvcmFormSet.pm_GetDataSource: IvcmFormSetDataSource;
begin
 Result := IvcmFormSetDataSource(f_DataSource);
end;//pm_GetDataSource

procedure TvcmFormSet.PopToHistory;
  {* - сборка помещена в историю. }
begin
 pm_SetCanRefresh(False);
end;

procedure TvcmFormSet.PushFromHistory;
  {* - сборка выгружена из истории. }
begin
 pm_SetCanRefresh(True);
 DataSource.PushFromHistory;
end;

procedure TvcmFormSet.pm_SetDataSource(const aValue: IvcmFormSetDataSource);
begin
 Assert(f_DataSource = 0, 'FormSetDataSource already exists!');
 f_DataSource := Integer(aValue);
end;//pm_SetDataSource

procedure TvcmFormSet.pm_SetCanRefresh(const aValue: Boolean);
var
 l_Params: IvcmFormSetRefreshDataParams;
begin
 if f_CanRefresh <> aValue then
 begin
  f_CanRefresh := aValue;
  if f_CanRefresh then
   with RefreshStack do
    while Count > 0 do
    begin
     Supports(RefreshStack.Items[0], IvcmFormSetRefreshDataParams, l_Params);
     try
      Delete(0);
      f_Factory.Refresh(vcmMakeRefreshParams(l_Params, DataSource, Self));
     finally
      l_Params := nil;
     end;//try..finally
    end;//while RefreshStack.Count > 0 do
 end;//if f_CanRefresh <> aValue then
end;//pm_SetCanRefresh

procedure TvcmFormSet.pm_SetContainer(const aValue : IvcmContainer);
  {-}
begin
 f_Container := Pointer(aValue);
end;//pm_SetContainer

function TvcmFormSet.IsMainInFormSet(const aForm: IvcmEntityForm): Boolean;
  {* - является ли форма главной в сборке. }
begin
 Result := Factory.IsMainInFormSet(aForm);
end;//IsMainInFormSet

function TvcmFormSet.FindStatusInfoForm: IvcmEntityForm;
  {* - найти форму отвечающую за вывод статуса. }
var
 l_Index : Integer;
 l_Form  : IvcmEntityForm;
begin
 Result := nil;
 for l_Index := 0 to Pred(EntitiesCount) do
  if Supports(Entity[l_Index], IvcmEntityForm, l_Form) AND
     Factory.IsDefaultStatusForm(l_Form) then
  begin
   Result := l_Form;
   break;
  end;//Supports..
end;

procedure TvcmFormSet.SaveHistory;
  {-}
begin
 if Assigned(Factory) then
  Factory.SaveHistory(pm_GetContainer, false);
end;//SaveHistory

function TvcmFormSet.pm_GetRefreshStack: {$IfDef vcmNeedL3}
                                         TvcmInterfaceList
                                         {$Else vcmNeedL3}
                                         TInterfaceList
                                         {$EndIf vcmNeedL3};
  {-}
begin
 if f_RefreshStack = nil then
  {$IfDef vcmNeedL3}
  f_RefreshStack := TvcmInterfaceList.Make;
  {$Else vcmNeedL3}
  f_RefreshStack := TInterfaceList.Create;
  {$EndIf vcmNeedL3}
 Result := f_RefreshStack;
end;//pm_GetRefreshStack

procedure TvcmFormSet.Cleanup;
  // override;
  {-}
begin
 f_DataSource := 0;
 FreeAndNil(f_RefreshStack);
 f_Factory := nil;
 f_Container := nil;
 inherited;
end;//Cleanup

end.
