unit nscSimpleEditor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Nemesis$Tails"
// Модуль: "w:/common/components/gui/Garant/Nemesis/nscSimpleEditor.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi::Nemesis$Tails::Editors::TnscSimpleEditor
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Nemesis\nscDefine.inc}

interface

uses
  evCustomMemo,
  Classes,
  nevBase,
  evEditorWithOperations
  ;

type
 TBreakingParaEvent = procedure (aSender: TObject;
  out aHandled: Boolean) of object;

//#UC START# *4CFF6CF60266ci*
//#UC END# *4CFF6CF60266ci*
 TnscSimpleEditor = class(TevCustomMemo)
 private
 // private fields
   f_OnBreakingPara : TBreakingParaEvent;
 protected
 // overridden protected methods
   function AllowDrawDocumentEdge: Boolean; override;
   function DoBreakPara(aDrawLines: Boolean;
    const anOp: InevOp): Boolean; override;
   function DefineProvideOperations: TevEditorProvideOperationTypes; override;
     {* Какие операции публикуются компонентом. }
   function SelectWhenUnfocused: Boolean; override;
 public
 // overridden public methods
   constructor Create(AOwner: TComponent); override;
//#UC START# *4CFF6CF60266publ*
 published
  property Align;
  property TabOrder;
  property TextSource;
  property IsStaticText;
  property ScrollStyle;// default ssNone;
  property OnGetHotSpotInfo;
  property OnJumpTo;
  property OnMouseAction;
  property Visible;
  property AutoHeightByText default True;
  property OnBreakingPara: TBreakingParaEvent read f_OnBreakingPara write f_OnBreakingPara;
  property AutoHideSelection default True;
  property AfterAdjustHeight;
//#UC END# *4CFF6CF60266publ*
 end;//TnscSimpleEditor

implementation

uses
  StdCtrls
  ;

// start class TnscSimpleEditor

constructor TnscSimpleEditor.Create(AOwner: TComponent);
//#UC START# *47D1602000C6_4CFF6CF60266_var*
//#UC END# *47D1602000C6_4CFF6CF60266_var*
begin
//#UC START# *47D1602000C6_4CFF6CF60266_impl*
 inherited;
 ParentFont := False;
 AutoHeightByText := True;
 AutoHideSelection := True;
 PlainText := False;
 KeepAllFormatting := True;
 ScrollStyle := ssNone;
//#UC END# *47D1602000C6_4CFF6CF60266_impl*
end;//TnscSimpleEditor.Create

function TnscSimpleEditor.AllowDrawDocumentEdge: Boolean;
//#UC START# *482BFBEE00D5_4CFF6CF60266_var*
//#UC END# *482BFBEE00D5_4CFF6CF60266_var*
begin
//#UC START# *482BFBEE00D5_4CFF6CF60266_impl*
 Result := False;
//#UC END# *482BFBEE00D5_4CFF6CF60266_impl*
end;//TnscSimpleEditor.AllowDrawDocumentEdge

function TnscSimpleEditor.DoBreakPara(aDrawLines: Boolean;
  const anOp: InevOp): Boolean;
//#UC START# *482BFCBF01F0_4CFF6CF60266_var*
//#UC END# *482BFCBF01F0_4CFF6CF60266_var*
begin
//#UC START# *482BFCBF01F0_4CFF6CF60266_impl*
 if Assigned(f_OnBreakingPara) then
 begin
  f_OnBreakingPara(Self, Result);
  if Result then 
   Exit;
 end;
 Result := inherited DoBreakPara(aDrawLines,anOp);
//#UC END# *482BFCBF01F0_4CFF6CF60266_impl*
end;//TnscSimpleEditor.DoBreakPara

function TnscSimpleEditor.DefineProvideOperations: TevEditorProvideOperationTypes;
//#UC START# *48735C4A03C3_4CFF6CF60266_var*
//#UC END# *48735C4A03C3_4CFF6CF60266_var*
begin
//#UC START# *48735C4A03C3_4CFF6CF60266_impl*
 Result := [];
//#UC END# *48735C4A03C3_4CFF6CF60266_impl*
end;//TnscSimpleEditor.DefineProvideOperations

function TnscSimpleEditor.SelectWhenUnfocused: Boolean;
//#UC START# *48E22AD302CE_4CFF6CF60266_var*
//#UC END# *48E22AD302CE_4CFF6CF60266_var*
begin
//#UC START# *48E22AD302CE_4CFF6CF60266_impl*
 Result := True; 
//#UC END# *48E22AD302CE_4CFF6CF60266_impl*
end;//TnscSimpleEditor.SelectWhenUnfocused

//#UC START# *4CFF6CF60266impl*
//#UC END# *4CFF6CF60266impl*

end.