unit evQueryDocumentContainer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Инишев Д.А.
// Модуль: "w:/common/components/gui/Garant/Everest/qf/evQueryDocumentContainer.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::qf::TevQueryDocumentContainer
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  nevBase,
  nevTools,
  nevPrintableDocumentContainer,
  evOpProc,
  nevDocumentContainer
  ;

type
 TevQueryDocumentContainer = class(TnevPrintableDocumentContainer, InevQueryDocumentContainer)
 private
 // private fields
   f_ModelNotify : Pointer;
    {* InevControlListner}
 protected
 // realized methods
   function GetCurrPara: InevTag;
   procedure SetCursorToPara(const aPara: InevPara;
    bAtEnd: Boolean;
    aNeedClear: Boolean);
     {* Устанавливает курсор на определенный параграф. }
   procedure ClearCard;
     {* Обработчик очистки КЗ. }
   procedure AfterCollapsed;
   procedure ReleaseListners;
   procedure LinkListner(const aListner: InevControlListner);
   procedure UnlinkListner(const aListner: InevControlListner);
   function Get_ModelNotify: InevControlListner;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure MakeProcessor(out theProcessor: TevCustomUndoProcessor); override;
   function PartGeneratorClass: RevDocumentPartGenerator; override;
   {$If not defined(DesignTimeLibrary)}
   procedure DoStyleTableChanged; override;
   {$IfEnd} //not DesignTimeLibrary
 public
 // public methods
   class function Make(const aDocument: InevTag = nil): InevQueryDocumentContainer; reintroduce;
   constructor Create(const aDocument: InevTag); reintroduce;
 end;//TevQueryDocumentContainer

implementation

uses
  evQueryCardInt,
  evQueryCardProcessor,
  evControlGenerator,
  evDefaultContext
  ;

// start class TevQueryDocumentContainer

class function TevQueryDocumentContainer.Make(const aDocument: InevTag = nil): InevQueryDocumentContainer;
var
 l_Inst : TevQueryDocumentContainer;
begin
 l_Inst := Create(aDocument);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

constructor TevQueryDocumentContainer.Create(const aDocument: InevTag);
//#UC START# *48DBA7E101F6_48DB9DC1035C_var*
//#UC END# *48DBA7E101F6_48DB9DC1035C_var*
begin
//#UC START# *48DBA7E101F6_48DB9DC1035C_impl*
 inherited Create;
 Document := aDocument;
//#UC END# *48DBA7E101F6_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.Create

function TevQueryDocumentContainer.GetCurrPara: InevTag;
//#UC START# *47C6BA30033F_48DB9DC1035C_var*
var
 l_Editor: IevQueryCardEditor; 
//#UC END# *47C6BA30033F_48DB9DC1035C_var*
begin
//#UC START# *47C6BA30033F_48DB9DC1035C_impl*
 Result := nil;
 TextSource.CastAnyEditorTo(IevQueryCardEditor, l_Editor);
 if l_Editor <> nil then
  Result := l_Editor.GetCurrPara;
//#UC END# *47C6BA30033F_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.GetCurrPara

procedure TevQueryDocumentContainer.SetCursorToPara(const aPara: InevPara;
  bAtEnd: Boolean;
  aNeedClear: Boolean);
//#UC START# *47C6BA4200E7_48DB9DC1035C_var*
var
 l_Editor: IevQueryCardEditor; 
//#UC END# *47C6BA4200E7_48DB9DC1035C_var*
begin
//#UC START# *47C6BA4200E7_48DB9DC1035C_impl*
 TextSource.CastAnyEditorTo(IevQueryCardEditor, l_Editor);
 if l_Editor <> nil then
  l_Editor.SetCursorToPara(aPara, bAtEnd, aNeedClear);
//#UC END# *47C6BA4200E7_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.SetCursorToPara

procedure TevQueryDocumentContainer.ClearCard;
//#UC START# *47C6BA6300ED_48DB9DC1035C_var*
//#UC END# *47C6BA6300ED_48DB9DC1035C_var*
begin
//#UC START# *47C6BA6300ED_48DB9DC1035C_impl*
 Processor.UndoBuffer.Clear;
//#UC END# *47C6BA6300ED_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.ClearCard

procedure TevQueryDocumentContainer.AfterCollapsed;
//#UC START# *47C6BA6E01D2_48DB9DC1035C_var*
//#UC END# *47C6BA6E01D2_48DB9DC1035C_var*
begin
//#UC START# *47C6BA6E01D2_48DB9DC1035C_impl*
 TextSource.SetFlag(ev_uwfCursor)
//#UC END# *47C6BA6E01D2_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.AfterCollapsed

procedure TevQueryDocumentContainer.ReleaseListners;
//#UC START# *47C6BA7402A6_48DB9DC1035C_var*
//#UC END# *47C6BA7402A6_48DB9DC1035C_var*
begin
//#UC START# *47C6BA7402A6_48DB9DC1035C_impl*
 f_ModelNotify := nil;
//#UC END# *47C6BA7402A6_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.ReleaseListners

procedure TevQueryDocumentContainer.LinkListner(const aListner: InevControlListner);
//#UC START# *47C6BA81030D_48DB9DC1035C_var*
//#UC END# *47C6BA81030D_48DB9DC1035C_var*
begin
//#UC START# *47C6BA81030D_48DB9DC1035C_impl*
 Assert((f_ModelNotify = nil) or (f_ModelNotify = Pointer(aListner)));
 f_ModelNotify := Pointer(aListner);
//#UC END# *47C6BA81030D_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.LinkListner

procedure TevQueryDocumentContainer.UnlinkListner(const aListner: InevControlListner);
//#UC START# *47C6BA8D0081_48DB9DC1035C_var*
//#UC END# *47C6BA8D0081_48DB9DC1035C_var*
begin
//#UC START# *47C6BA8D0081_48DB9DC1035C_impl*
 Assert((f_ModelNotify = nil) or (f_ModelNotify = Pointer(aListner)));
 f_ModelNotify := nil;
//#UC END# *47C6BA8D0081_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.UnlinkListner

function TevQueryDocumentContainer.Get_ModelNotify: InevControlListner;
//#UC START# *47C6BA9902AB_48DB9DC1035Cget_var*
//#UC END# *47C6BA9902AB_48DB9DC1035Cget_var*
begin
//#UC START# *47C6BA9902AB_48DB9DC1035Cget_impl*
 Result := InevControlListner(f_ModelNotify);
//#UC END# *47C6BA9902AB_48DB9DC1035Cget_impl*
end;//TevQueryDocumentContainer.Get_ModelNotify

procedure TevQueryDocumentContainer.Cleanup;
//#UC START# *479731C50290_48DB9DC1035C_var*
//#UC END# *479731C50290_48DB9DC1035C_var*
begin
//#UC START# *479731C50290_48DB9DC1035C_impl*
 f_ModelNotify := nil; 
 inherited;
//#UC END# *479731C50290_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.Cleanup

procedure TevQueryDocumentContainer.MakeProcessor(out theProcessor: TevCustomUndoProcessor);
//#UC START# *47F35245009A_48DB9DC1035C_var*
//#UC END# *47F35245009A_48DB9DC1035C_var*
begin
//#UC START# *47F35245009A_48DB9DC1035C_impl*
 theProcessor := TevQueryCardProcessor.Create(TevDefaultContext);
//#UC END# *47F35245009A_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.MakeProcessor

function TevQueryDocumentContainer.PartGeneratorClass: RevDocumentPartGenerator;
//#UC START# *48033300004D_48DB9DC1035C_var*
//#UC END# *48033300004D_48DB9DC1035C_var*
begin
//#UC START# *48033300004D_48DB9DC1035C_impl*
 Result := TevControlGenerator;
//#UC END# *48033300004D_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.PartGeneratorClass

{$If not defined(DesignTimeLibrary)}
procedure TevQueryDocumentContainer.DoStyleTableChanged;
//#UC START# *4A485B710126_48DB9DC1035C_var*
//#UC END# *4A485B710126_48DB9DC1035C_var*
begin
//#UC START# *4A485B710126_48DB9DC1035C_impl*
 inherited;
 if Get_ModelNotify <> nil then
  Get_ModelNotify.HideDroppedControl(True); //Убираем дерево
  // - а дерево само не может подписаться на смену таблицы стилей?
  // http://mdp.garant.ru/pages/viewpage.action?pageId=119473921&focusedCommentId=119473962#comment-119473962
//#UC END# *4A485B710126_48DB9DC1035C_impl*
end;//TevQueryDocumentContainer.DoStyleTableChanged
{$IfEnd} //not DesignTimeLibrary

end.