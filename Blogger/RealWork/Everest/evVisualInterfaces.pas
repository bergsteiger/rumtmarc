unit evVisualInterfaces;
{* Интерфейсы утилитных визуальных компонент. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evVisualInterfaces - }
{ Начат: 23.05.2003 21:31 }
{ $Id: evVisualInterfaces.pas,v 1.8 2009/04/23 06:14:41 dinishev Exp $ }

// $Log: evVisualInterfaces.pas,v $
// Revision 1.8  2009/04/23 06:14:41  dinishev
// <K> : 142613601
//
// Revision 1.7  2008/04/11 13:54:04  lulin
// - передаём вью в рамках <K>: 89096854.
//
// Revision 1.6  2007/12/04 12:47:07  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.5.8.1  2005/07/19 12:50:06  lulin
// - часть базовых интерфейсов переехала в модуль nevTools.
//
// Revision 1.5  2005/02/22 12:27:39  lulin
// - рефакторинг работы с Tl3Point и Tl3Rect.
//
// Revision 1.4  2003/05/28 16:15:52  law
// - chage: развязал модули evEdWnd и evRuler.
//
// Revision 1.3  2003/05/28 13:13:35  law
// - change: развязал модули evEdWnd и evSubPanel, так что чисто теоретически можно использовать другую панель Sub'ов.
//
// Revision 1.2  2003/05/26 16:38:35  law
// - new method: IevToolWindow.Invalidate.
//
// Revision 1.1  2003/05/23 17:38:14  law
// - new unit: evVisualInterfaces - задел на развязку окна редактора с реализацией линейки и панели Sub'ов.
//

{$Include evDefine.inc }

interface

uses
  Controls,

  l3Interfaces,
  l3Types,
  l3Units,

  nevTools
  ;

type
  IevToolWindow = interface(IUnknown)
   {* Базовый интерфейс, представляющий собой визуальный компонент,
      работающий с другим визуальным компонентом. }
    ['{550A522B-CDFB-4904-8D05-C3D56B2B4FF7}']
    // property methods
      function  pm_GetVisible: Boolean;
      procedure pm_SetVisible(aValue: Boolean);
        {-}
    // public methods
      procedure Scroll(iD: Tl3Inch);
        {-}
      procedure Invalidate;
        {* - сообщает компоненту, о необходимости перерисовки. }
    // public properties
      property Visible: Boolean
        read pm_GetVisible
        write pm_SetVisible;
        {-}
  end;//IevToolWindow

  IevLinkedToolWindow = interface(IevToolWindow)
   {* Базовый интерфейс, представляющий собой визуальный компонент,
      работающий с другим визуальным компонентом. }
    ['{1E8C838E-93B5-483F-89D8-4BC55C048E24}']
    // property methods
      function  pm_GetControl: TWinControl;
      procedure pm_SetControl(Value: TWinControl);
        {-}
    // public properties
      property Control: TWinControl
        read pm_GetControl
        write pm_SetControl;
        {* - управляющий элемент к которому привязана панель. }
  end;//IevLinkedToolWindow

  IevZoomedLinkedToolWindow = interface(IevLinkedToolWindow)
    ['{67A4B2F7-1648-4F2B-B0D3-7198B81F1A06}']
    // property methods
      function  pm_GetZoom: SmallInt;
      procedure pm_SetZoom(Value: SmallInt);
        {-}
    // public properties
      property Zoom: SmallInt
        read pm_GetZoom
        write pm_SetZoom;
        {-}
  end;//IevZoomedLinkedToolWindow

  IevSubPanel = interface(IevZoomedLinkedToolWindow)
    ['{8CC20EFE-82FE-4AF8-9171-AC0345A832B4}']
    // public methods
      procedure NeedDrawSub(const aR   : Tl3Rect;
                            const aSub : IevSub);
        {* - нотификации о необходимости перерисовки метки. }
  end;//IevSubPanel

  TevOnSetMarker = procedure (Sender       : TObject;
                              const Marker : IevMarker;
                              Value        : Long) of object;

  IevRuler = interface(IevZoomedLinkedToolWindow)
    ['{2753816B-1131-495A-AA93-51AAF586222C}']
    // property methods
      procedure pm_SetMargin(aValue: Long);
        {-}
      procedure pm_SetDelta(aValue: Long);
        {-}
      procedure pm_SetOnSetMarker(const aValue: TevOnSetMarker);
        {-}
    // public methods
      procedure MarkersChanged(const aView : InevView;
                               const aCursor: IevMarkersSource);
        {* - нотификация об изменении маркеров. }
      procedure ViewChanged(const aView: InevView);
        {* - нотификация об изменении View'а для макросов. }
      procedure ControlMoved;
        {-}    
    // public properties
      property Margin: Long
        write pm_SetMargin;
        {-}
      property Delta: Long
        write pm_SetDelta;
        {-}
      property OnSetMarker: TevOnSetMarker
        write pm_SetOnSetMarker;
        {-}
  end;//IevRuler

implementation

end.

