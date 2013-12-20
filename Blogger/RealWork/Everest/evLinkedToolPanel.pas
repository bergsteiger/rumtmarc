unit evLinkedToolPanel;
{* Реализация базового класса для инструментальных панелей, привязанных к Control'ам. }

{ Библиотека "Эверест"  }
{ Автор: Люлин А.В. ©   }
{ Модуль: evLinkedToolPanel - }
{ Начат: 27.05.99 12:05 }
{ $Id: evLinkedToolPanel.pas,v 1.7 2003/05/28 13:13:35 law Exp $ }

// $Log: evLinkedToolPanel.pas,v $
// Revision 1.7  2003/05/28 13:13:35  law
// - change: развязал модули evEdWnd и evSubPanel, так что чисто теоретически можно использовать другую панель Sub'ов.
//
// Revision 1.6  2002/09/17 15:07:47  law
// - new behavior: сделана трансляция сообщений колеса мыши от TevCustomLinkedToolPanel к Control.
//
// Revision 1.5  2001/02/26 14:06:12  law
// - дописаны комментарии.
//
// Revision 1.4  2000/12/15 15:10:36  law
// - вставлены директивы Log.
//

{$I evDefine.inc }

interface

uses
  Messages,

  Controls,

  evVisualInterfaces,
  evToolPanel
  ;

type
  TevCustomLinkedToolPanel = class(TevCustomToolPanel, IevLinkedToolWindow)
   {* - базовый класса для инструментальных панелей, привязанных к Control'ам. }
    private
    {property fields}
      f_Control : TWinControl;
    protected
    {property methods}
      function  pm_GetControl: TWinControl;
      procedure pm_SetControl(Value: TWinControl);
        {-}
    protected
    // internal methods
      procedure MouseWheelHandler(var Message: TMessage);
        override;
        {-}
    public
    {public properties}
      property Control: TWinControl
        read f_Control
        write pm_SetControl;
        {* - управляющий элемент к которому привязана панель. }
  end;{TevCustomLinkedToolPanel}

implementation

{ start class TevCustomLinkedToolPanel }

function TevCustomLinkedToolPanel.pm_GetControl: TWinControl;
  {-}
begin
 Result := Control;
end;

procedure TevCustomLinkedToolPanel.pm_SetControl(Value: TWinControl);
  {-}
begin
 if (Control <> Value) then f_Control := Value;
end;

procedure TevCustomLinkedToolPanel.MouseWheelHandler(var Message: TMessage);
  //override;
  {-}
begin
 if (Control = nil) then
  inherited
 else
  with Message do
   Result := Control.Perform(Msg, WParam, LParam);
end;

end.

