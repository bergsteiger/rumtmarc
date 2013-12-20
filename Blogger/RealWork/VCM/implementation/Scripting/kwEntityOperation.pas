unit kwEntityOperation;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VCM$Scripting"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/VCM/implementation/Scripting/kwEntityOperation.pas"
// Начат: 24.05.2011 18:15
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi Scripting::VCM$Scripting::Operations::TkwEntityOperation
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  vcmBaseOperationsCollectionItem,
  tfwScriptingInterfaces,
  vcmBaseEntitiesCollectionItem
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}
type
 TkwEntityOperation = class(TtfwWord)
 private
 // private fields
   f_En : TvcmBaseEntitiesCollectionItem;
   f_Op : TvcmBaseOperationsCollectionItem;
 protected
 // realized methods
   procedure DoDoIt(const aCtx: TtfwContext); override;
 public
 // public methods
   constructor Create(anEn: TvcmBaseEntitiesCollectionItem;
     anOp: TvcmBaseOperationsCollectionItem); reintroduce;
   class procedure Register(anEn: TvcmBaseEntitiesCollectionItem;
     anOp: TvcmBaseOperationsCollectionItem);
 end;//TkwEntityOperation
{$IfEnd} //not NoScripts AND not NoVCM

implementation

{$If not defined(NoScripts) AND not defined(NoVCM)}
uses
  SysUtils,
  StrUtils,
  l3Except,
  vcmBase,
  vcmExternalInterfaces,
  tfwScriptEngine,
  vcmRepOperationsCollectionItem,
  vcmInterfaces
  ;
{$IfEnd} //not NoScripts AND not NoVCM

{$If not defined(NoScripts) AND not defined(NoVCM)}

// start class TkwEntityOperation

constructor TkwEntityOperation.Create(anEn: TvcmBaseEntitiesCollectionItem;
  anOp: TvcmBaseOperationsCollectionItem);
//#UC START# *4DDBBDEB00DE_4DDBBDB00019_var*
//#UC END# *4DDBBDEB00DE_4DDBBDB00019_var*
begin
//#UC START# *4DDBBDEB00DE_4DDBBDB00019_impl*
 inherited Create;
 f_En := anEn;
 f_Op := anOp;
//#UC END# *4DDBBDEB00DE_4DDBBDB00019_impl*
end;//TkwEntityOperation.Create

class procedure TkwEntityOperation.Register(anEn: TvcmBaseEntitiesCollectionItem;
  anOp: TvcmBaseOperationsCollectionItem);
//#UC START# *4DDBBF790154_4DDBBDB00019_var*
var
 l_Op : TkwEntityOperation;
 l_EC : String;
 l_OC : String;
//#UC END# *4DDBBF790154_4DDBBDB00019_var*
begin
//#UC START# *4DDBBF790154_4DDBBDB00019_impl*
 if (anOp.OperationType = vcm_otInternal) then
(*  if ((anOp As TvcmRepOperationsCollectionItem).FormActivate = nil) OR
     ((anOp As TvcmRepOperationsCollectionItem).FormActivate.Name = '') then*)
  Exit;
 l_Op := Create(anEn, anOp);
 try
  l_EC := anEn.Caption;
  if (l_EC = '') then
   l_EC := anEn.Name;
  l_OC := anOp.Caption;
  if (l_OC = '') then
   l_OC := anOp.Name;
  l_EC := ANSIReplaceStr(l_EC, #32, '_');
  l_OC := ANSIReplaceStr(l_OC, #32, '_');
  try
   TtfwScriptEngine.GlobalAddWord('оп::' + l_EC + '_' + l_OC, l_Op);
  except
   on El3DuplicateItem do
    try
     TtfwScriptEngine.GlobalAddWord('оп::' + anEn.Name + '::' + l_EC + '_' + l_OC, l_Op);
    except
     on El3DuplicateItem do
      ;
    end;//try..except  
  end;//try..except
 finally
  FreeAndNil(l_Op);
 end;//try..finally
//#UC END# *4DDBBF790154_4DDBBDB00019_impl*
end;//TkwEntityOperation.Register

procedure TkwEntityOperation.DoDoIt(const aCtx: TtfwContext);
//#UC START# *4DAEEDE10285_4DDBBDB00019_var*
var
 l_Op  : TvcmOPID;
 l_Res : Boolean;
 l_E   : IvcmEntity;
 l_S   : String;
//#UC END# *4DAEEDE10285_4DDBBDB00019_var*
begin
//#UC START# *4DAEEDE10285_4DDBBDB00019_impl*
 l_Op.rEnID := f_En.Index + 1;
 l_Op.rOpID := f_Op.Index + 1;
 l_Res := vcmDispatcher.EntityOperation(l_Op, vcmParams);
 if not l_Res then
 begin
  l_E := vcmDispatcher.ActiveEntity;
  l_S := '<no active form>';
  if (l_E <> nil) then
   l_S := l_E.AsForm.VCLWinControl.ClassName;
  aCtx.rCaller.Check(false,
                     Format('Операция %s.%s - %s.%s не выполнилась. Активная форма %s',
                            [f_En.Name, f_Op.Name,
                             f_En.Caption, f_Op.Caption,
                             l_S]));
 end;//not l_Res
//#UC END# *4DAEEDE10285_4DDBBDB00019_impl*
end;//TkwEntityOperation.DoDoIt

{$IfEnd} //not NoScripts AND not NoVCM

end.