unit Base_Operations_View_Controls;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/Base_Operations_View_Controls.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<VCMControls::Category>> F1 Core::Base Operations::View::View
//
// Операции влияющие на визальное представление объектов системы
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
  vcmInterfaces
  {$IfEnd} //not NoVCM
  ,
  l3CProtoObject,
  vcmExternalInterfaces {a}
  ;

(* Document = operations
  {* Документ }
   ['{2A657798-A7B2-4ED4-8520-D5E05BBADA44}']
   operation ShowJurorComments; has states;
     {* Показать/скрыть комментарии ГАРАНТа }
      Hide = state
       { Скрыть комментарии ГАРАНТа }
      end;//Hide
      Show = state
       { Показать комментарии ГАРАНТа }
      end;//Show
   operation ShowUserComments; has states;
     {* Показать/скрыть мои комментарии }
      Hide = state
       { Скрыть мои комментарии }
      end;//Hide
      Show = state
       { Показать мои комментарии }
      end;//Show
   operation ShowTechComments; has states;
     {* Показывать технические комментарии }
      Hide = state
      end;//Hide
      Show = state
      end;//Show
   operation ShowVersionComments; has states;
     {* Включить/выключить информацию об изменениях документа }
      Hide = state
       { Выключить информацию об изменениях документа }
      end;//Hide
      Show = state
       { Включить информацию об изменениях документа }
      end;//Show
   operation ShowJurorComments; has states;
     {* Показать юридические комментарии }
   operation ShowUserComments; has states;
     {* Показать комментарии пользователя }
   operation ShowVersionComments; has states;
     {* Показать информацию о версии }
   operation ShowCommentsGroup;
     {* Комментарии }
   operation ShowTechComments; has states;
     {* Показать технические комментарии }
 end;//Document*)

type
 TCanChangeScale = (
   ccsUnknown
 , ccsNo
 , ccsYes
 );//TCanChangeScale

(* Scalable = operations
  {* Масштабируемый объект }
   ['{0CE5ACBF-CAB7-4200-B628-2E6EC058514D}']
   query ChangeScale(aInc: Boolean);
     {* Изменить масштаб }
   query CanChangeScale(anInc: Boolean): TCanChangeScale;
     {* Масштабирование запрещено }
 end;//Scalable*)

 IScalable_ChangeScale_Params = interface(IUnknown)
  {* Параметры для операции Scalable.ChangeScale }
   ['{7A9FD022-8CDC-429A-BED9-9ED3C2166B5A}']
   function Get_Inc: Boolean;
   property Inc: Boolean
     read Get_Inc;
     {* undefined }
 end;//IScalable_ChangeScale_Params

 Op_Scalable_ChangeScale = class
  {* Класс для вызова операции Scalable.ChangeScale }
 public
 // public methods
   class function Call(const aTarget: IvcmEntity;
    aInc: Boolean): Boolean; overload; 
     {* Вызов операции Scalable.ChangeScale у сущности }
   class function Call(const aTarget: IvcmAggregate;
    aInc: Boolean): Boolean; overload; 
     {* Вызов операции Scalable.ChangeScale у агрегации }
   class function Call(const aTarget: IvcmEntityForm;
    aInc: Boolean): Boolean; overload; 
     {* Вызов операции Scalable.ChangeScale у формы }
   class function Call(const aTarget: IvcmContainer;
    aInc: Boolean): Boolean; overload; 
     {* Вызов операции Scalable.ChangeScale у контейнера }
 end;//Op_Scalable_ChangeScale

 IScalable_CanChangeScale_Params = interface(IUnknown)
  {* Параметры для операции Scalable.CanChangeScale }
   ['{79C9612F-3807-4E55-A8A7-FF3672740478}']
   function Get_NInc: Boolean;
   function Get_ResultValue: TCanChangeScale;
   procedure Set_ResultValue(aValue: TCanChangeScale);
   property nInc: Boolean
     read Get_NInc;
     {* undefined }
   property ResultValue: TCanChangeScale
     read Get_ResultValue
     write Set_ResultValue;
     {* undefined }
 end;//IScalable_CanChangeScale_Params

 Op_Scalable_CanChangeScale = class
  {* Класс для вызова операции Scalable.CanChangeScale }
 public
 // public methods
   class function Call(const aTarget: IvcmEntity;
    anInc: Boolean): TCanChangeScale; overload; 
     {* Вызов операции Scalable.CanChangeScale у сущности }
   class function Call(const aTarget: IvcmAggregate;
    anInc: Boolean): TCanChangeScale; overload; 
     {* Вызов операции Scalable.CanChangeScale у агрегации }
   class function Call(const aTarget: IvcmEntityForm;
    anInc: Boolean): TCanChangeScale; overload; 
     {* Вызов операции Scalable.CanChangeScale у формы }
   class function Call(const aTarget: IvcmContainer;
    anInc: Boolean): TCanChangeScale; overload; 
     {* Вызов операции Scalable.CanChangeScale у контейнера }
 end;//Op_Scalable_CanChangeScale
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
const
 en_Document = 'Document';
 en_capDocument = 'Документ';
 op_ShowJurorComments = 'ShowJurorComments';
 op_capShowJurorComments = 'Показать/скрыть комментарии ГАРАНТа';
 op_ShowUserComments = 'ShowUserComments';
 op_capShowUserComments = 'Показать/скрыть мои комментарии';
 op_ShowTechComments = 'ShowTechComments';
 op_capShowTechComments = 'Показывать технические комментарии';
 op_ShowVersionComments = 'ShowVersionComments';
 op_capShowVersionComments = 'Включить/выключить информацию об изменениях документа';
 op_ShowCommentsGroup = 'ShowCommentsGroup';
 op_capShowCommentsGroup = 'Комментарии';
 en_Scalable = 'Scalable';
 en_capScalable = 'Масштабируемый объект';
 op_ChangeScale = 'ChangeScale';
 op_capChangeScale = 'Изменить масштаб';
 op_CanChangeScale = 'CanChangeScale';
 op_capCanChangeScale = 'Масштабирование запрещено';

// Состояния операций:
var st_user_Document_ShowJurorComments_Hide : TvcmOperationStateIndex = (rID : -1);
  // Документ -> Показать/скрыть комментарии ГАРАНТа <-> Скрыть комментарии ГАРАНТа
var st_user_Document_ShowJurorComments_Show : TvcmOperationStateIndex = (rID : -1);
  // Документ -> Показать/скрыть комментарии ГАРАНТа <-> Показать комментарии ГАРАНТа
var st_user_Document_ShowUserComments_Hide : TvcmOperationStateIndex = (rID : -1);
  // Документ -> Показать/скрыть мои комментарии <-> Скрыть мои комментарии
var st_user_Document_ShowUserComments_Show : TvcmOperationStateIndex = (rID : -1);
  // Документ -> Показать/скрыть мои комментарии <-> Показать мои комментарии
var st_user_Document_ShowTechComments_Hide : TvcmOperationStateIndex = (rID : -1);
  // Документ -> Показывать технические комментарии <-> Hide
var st_user_Document_ShowTechComments_Show : TvcmOperationStateIndex = (rID : -1);
  // Документ -> Показывать технические комментарии <-> Show
var st_user_Document_ShowVersionComments_Hide : TvcmOperationStateIndex = (rID : -1);
  // Документ -> Включить/выключить информацию об изменениях документа <-> Выключить информацию об изменениях документа
var st_user_Document_ShowVersionComments_Show : TvcmOperationStateIndex = (rID : -1);
  // Документ -> Включить/выключить информацию об изменениях документа <-> Включить информацию об изменениях документа
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Base {a},
  vcmBase {a},
  StdRes {a}
  ;

type
 TScalable_ChangeScale_Params = class(Tl3CProtoObject, IScalable_ChangeScale_Params)
  {* Реализация IScalable_ChangeScale_Params }
 private
 // private fields
   f_Inc : Boolean;
 protected
 // realized methods
   function Get_Inc: Boolean;
 public
 // public methods
   constructor Create(aInc: Boolean); reintroduce;
     {* Конструктор TScalable_ChangeScale_Params }
   class function Make(aInc: Boolean): IScalable_ChangeScale_Params; reintroduce;
     {* Фабрика TScalable_ChangeScale_Params }
 end;//TScalable_ChangeScale_Params

// start class TScalable_ChangeScale_Params

constructor TScalable_ChangeScale_Params.Create(aInc: Boolean);
 {-}
begin
 inherited Create;
 f_Inc := aInc;
end;//TScalable_ChangeScale_Params.Create

class function TScalable_ChangeScale_Params.Make(aInc: Boolean): IScalable_ChangeScale_Params;
var
 l_Inst : TScalable_ChangeScale_Params;
begin
 l_Inst := Create(aInc);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TScalable_ChangeScale_Params.Get_Inc: Boolean;
 {-}
begin
 Result := f_Inc;
end;//TScalable_ChangeScale_Params.Get_Inc
// start class Op_Scalable_ChangeScale

class function Op_Scalable_ChangeScale.Call(const aTarget: IvcmEntity;
  aInc: Boolean): Boolean;
var
 l_Params : IvcmExecuteParams;
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
 begin
  l_Params := TvcmExecuteParams.MakeForInternal(TScalable_ChangeScale_Params.Make(aInc));
  aTarget.Operation(TdmStdRes.opcode_Scalable_ChangeScale, l_Params);
  with l_Params do
  begin
   if Done then
   begin
    Result := true;
   end;//Done
  end;//with l_Params
 end;//aTarget <> nil
end;//Op_Scalable_ChangeScale.Call

class function Op_Scalable_ChangeScale.Call(const aTarget: IvcmAggregate;
  aInc: Boolean): Boolean;
var
 l_Params : IvcmExecuteParams;
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
 begin
  l_Params := TvcmExecuteParams.MakeForInternal(TScalable_ChangeScale_Params.Make(aInc));
  aTarget.Operation(TdmStdRes.opcode_Scalable_ChangeScale, l_Params);
  with l_Params do
  begin
   if Done then
   begin
    Result := true;
   end;//Done
  end;//with l_Params
 end;//aTarget <> nil
end;//Op_Scalable_ChangeScale.Call

class function Op_Scalable_ChangeScale.Call(const aTarget: IvcmEntityForm;
  aInc: Boolean): Boolean;
 {-}
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
  Result := Call(aTarget.Entity, aInc);
end;//Op_Scalable_ChangeScale.Call

class function Op_Scalable_ChangeScale.Call(const aTarget: IvcmContainer;
  aInc: Boolean): Boolean;
 {-}
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
  Result := Call(aTarget.AsForm, aInc);
end;//Op_Scalable_ChangeScale.Call

type
 TScalable_CanChangeScale_Params = class(Tl3CProtoObject, IScalable_CanChangeScale_Params)
  {* Реализация IScalable_CanChangeScale_Params }
 private
 // private fields
   f_nInc : Boolean;
   f_ResultValue : TCanChangeScale;
 protected
 // realized methods
   function Get_NInc: Boolean;
   function Get_ResultValue: TCanChangeScale;
   procedure Set_ResultValue(aValue: TCanChangeScale);
 public
 // public methods
   constructor Create(anInc: Boolean); reintroduce;
     {* Конструктор TScalable_CanChangeScale_Params }
   class function Make(anInc: Boolean): IScalable_CanChangeScale_Params; reintroduce;
     {* Фабрика TScalable_CanChangeScale_Params }
 end;//TScalable_CanChangeScale_Params

// start class TScalable_CanChangeScale_Params

constructor TScalable_CanChangeScale_Params.Create(anInc: Boolean);
 {-}
begin
 inherited Create;
 f_nInc := anInc;
end;//TScalable_CanChangeScale_Params.Create

class function TScalable_CanChangeScale_Params.Make(anInc: Boolean): IScalable_CanChangeScale_Params;
var
 l_Inst : TScalable_CanChangeScale_Params;
begin
 l_Inst := Create(anInc);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TScalable_CanChangeScale_Params.Get_NInc: Boolean;
 {-}
begin
 Result := f_nInc;
end;//TScalable_CanChangeScale_Params.Get_NInc

function TScalable_CanChangeScale_Params.Get_ResultValue: TCanChangeScale;
 {-}
begin
 Result := f_ResultValue;
end;//TScalable_CanChangeScale_Params.Get_ResultValue

procedure TScalable_CanChangeScale_Params.Set_ResultValue(aValue: TCanChangeScale);
 {-}
begin
 f_ResultValue := aValue;
end;//TScalable_CanChangeScale_Params.Set_ResultValue
// start class Op_Scalable_CanChangeScale

class function Op_Scalable_CanChangeScale.Call(const aTarget: IvcmEntity;
  anInc: Boolean): TCanChangeScale;
var
 l_Params : IvcmExecuteParams;
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
 begin
  l_Params := TvcmExecuteParams.MakeForInternal(TScalable_CanChangeScale_Params.Make(anInc));
  aTarget.Operation(TdmStdRes.opcode_Scalable_CanChangeScale, l_Params);
  with l_Params do
  begin
   if Done then
   begin
    Result := IScalable_CanChangeScale_Params(Data).ResultValue;
   end;//Done
  end;//with l_Params
 end;//aTarget <> nil
end;//Op_Scalable_CanChangeScale.Call

class function Op_Scalable_CanChangeScale.Call(const aTarget: IvcmAggregate;
  anInc: Boolean): TCanChangeScale;
var
 l_Params : IvcmExecuteParams;
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
 begin
  l_Params := TvcmExecuteParams.MakeForInternal(TScalable_CanChangeScale_Params.Make(anInc));
  aTarget.Operation(TdmStdRes.opcode_Scalable_CanChangeScale, l_Params);
  with l_Params do
  begin
   if Done then
   begin
    Result := IScalable_CanChangeScale_Params(Data).ResultValue;
   end;//Done
  end;//with l_Params
 end;//aTarget <> nil
end;//Op_Scalable_CanChangeScale.Call

class function Op_Scalable_CanChangeScale.Call(const aTarget: IvcmEntityForm;
  anInc: Boolean): TCanChangeScale;
 {-}
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
  Result := Call(aTarget.Entity, anInc);
end;//Op_Scalable_CanChangeScale.Call

class function Op_Scalable_CanChangeScale.Call(const aTarget: IvcmContainer;
  anInc: Boolean): TCanChangeScale;
 {-}
begin
 l3FillChar(Result, SizeOf(Result));
 if (aTarget <> nil) then
  Result := Call(aTarget.AsForm, anInc);
end;//Op_Scalable_CanChangeScale.Call
{$IfEnd} //not Admin AND not Monitorings


end.