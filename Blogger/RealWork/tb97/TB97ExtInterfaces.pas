unit TB97ExtInterfaces;

{-----------------------------------------------------------------------------
 Название:   TB97ExtInterfaces
 Автор:      Морозов М.А.
 Назначение: Интерфейсы используемые внешними библиотеками, компонентами;
 Версия:----------------------------------------------------------------------
   $Id: TB97ExtInterfaces.pas,v 1.5 2007/04/20 12:04:44 lulin Exp $
 История:---------------------------------------------------------------------
   $Log: TB97ExtInterfaces.pas,v $
   Revision 1.5  2007/04/20 12:04:44  lulin
   - bug fix: при хождении по истории опять кнопки не нарезались в несколько строк (CQ OIT5-24967).

   Revision 1.4  2007/04/19 11:10:29  lulin
   - если самая краяняя правая кнопка умещается в две строки, то не обрезаем ее текст (CQ OIT5-25091).

   Revision 1.3  2007/04/18 08:56:33  lulin
   - cleanup.

   Revision 1.2  2005/05/31 14:41:50  mmorozov
   change: comment;

   Revision 1.1  2005/05/31 14:41:20  mmorozov
   new: Интерфейсы используемые внешними библиотеками, компонентами;

------------------------------------------------------------------------------}

{$WEAKPACKAGEUNIT ON}

interface

type
  ITB97Ctrl = interface(IUnknown)
  {* - интерфейс поддерживаемый по необходимости компонентами размещенными на
       toolbar-е. }
  ['{2B1FDB0C-D8F7-45D4-9C9A-50D8533FE42F}']
  // property methods
    function pm_GetFullWidth : Integer;
      {-}
    function pm_GetIsSizeable : Boolean;
      {-}
    function pm_GetMinWidth : Integer;
      {-}
  // public methods
    procedure DoFitToWidth(aWidth: Integer);
      {-}
    procedure DoUnFitToWidth(aWidth: Integer);
      {-}
    procedure Expand;
      {-}
  // public properties
    property FullWidth : Integer
      read pm_GetFullWidth;
      {* - обычный размер компонента, для вычисления и размещения компонентов. }
    property IsSizeable : Boolean
      read pm_GetIsSizeable;
      {* - компонент может изменять размеры. }
    property MinWidth : Integer
      read pm_GetMinWidth;
      {* - минимальный размер до которого может сжиматься компонент. }
  end;//ITB97Ctrl

implementation

end.