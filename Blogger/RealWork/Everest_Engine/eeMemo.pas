unit eeMemo;

{------------------------------------------------------------------------------}
{ Модуль     : eeMemo;                                                         }
{ Автор      : ;                                                               }
{ Назначение : Публикуемые в DesignTime многострочные поля ввода.              }
{------------------------------------------------------------------------------}

{$Include eeDefine.inc}

interface

uses
  Classes,
  Controls,
  evEditorWithOperations,
  evCustomMemo
  ;

type

  TeeCustomMemo = class(TevCustomMemo)
  {*}
    public
    // public methods
      constructor Create(AOwner: TComponent);
        override;
        {-}
      property NeedDefaultPopupMenu
        default false;
        {-}  
  end;//TeeCustomMemo

  TeeMemo = class(TeeCustomMemo)
  {* - компонент используемый в DesignTime. }
  published
  // published properties
    property AutoSelect;
    property Canvas;
    property TextSource;
    property Align;
    property Anchors;
    property BevelEdges;
    property BevelInner;
    property BevelKind default bkNone;
    property BevelOuter;
    property BiDiMode;
    property BorderStyle;
    property Color;
    property Constraints;
    property Ctl3D;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Text;
    property Wrap;
    property NeedDefaultPopupMenu;
    property Font;
    property ImeMode;
    property ImeName;
    property ParentBiDiMode;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    property OnContextPopup;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;//TeeMemo

  TeeMemoWithEditOperations = class(TeeMemo)
  {* - многострочное поле вводе без операций редактирования таблицы и печати. }
  protected
  // protected methods
    function DefineProvideOperations: TevEditorProvideOperationTypes;
      override;
      {* - Какие операции публикуются компонентом. }
  end;//TeeMemoWithEditOperations

implementation

// start class TeeCustomMemo

constructor TeeCustomMemo.Create(AOwner: TComponent);
  //override;
  {-}
begin
 inherited;
 NeedDefaultPopupMenu := false;
end;
 
// start class TeeMemoWithEditOperations

function TeeMemoWithEditOperations.DefineProvideOperations: TevEditorProvideOperationTypes;
begin
 Result := [potEdit];
end;

end.
