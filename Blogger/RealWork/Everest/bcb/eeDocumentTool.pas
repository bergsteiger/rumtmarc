unit eeDocumentTool;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeDocumentTool - }
{ Начат: 11.02.2003 15:53 }
{ $Id: eeDocumentTool.pas,v 1.4 2007/12/04 12:47:33 lulin Exp $ }

// $Log: eeDocumentTool.pas,v $
// Revision 1.4  2007/12/04 12:47:33  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.3.14.1  2005/12/05 06:04:55  lulin
// - реализация инструментов перенесена в базовую библиотеку.
//
// Revision 1.3  2005/01/28 15:35:02  lulin
// - bug fix: был нарушен баланс между временем жизни HotSpot'а и редактора - соответственно не убивалась мертвая ссылка на редактор и был AV.
//
// Revision 1.2  2003/08/29 12:17:22  law
// - bug fix: не вызывался inherited Notification.
// - bug fix: были циклические зависимости между TeeDocumentTool и редактором.
// - bug fix: после вставки inherited было зависание (бесконечная рекурсия).
// - bug fix: в итоге поправлена ошибка от Опоссума.
//
// Revision 1.1  2003/02/11 14:20:20  law
// - change: расширена работа со списком меток - сделана возможность добавлять и удалять метки.
//

{$Include evDefine.inc }

interface

uses
  l3Types,
  l3Base,
  l3Tool,

  eeInterfacesEx
  ;

type
  TeeDocumentTool = class(Tl3Tool)
    protected
    // property methods
      function pm_GetDocument: IeeDocumentEx;
        {-}
    public
    // public methods
      constructor Create(const aDocument: IeeDocumentEx);
        reintroduce;
        {-}
    protected
    // protected properties
      property Document: IeeDocumentEx
        read pm_GetDocument;
        {-}
  end;//TeeDocumentTool

implementation

// start class TeeDocumentTool

constructor TeeDocumentTool.Create(const aDocument: IeeDocumentEx);
  //reintroduce;
  {-}
begin
 inherited Create(aDocument As IeeToolOwner);
end;

function TeeDocumentTool.pm_GetDocument: IeeDocumentEx;
  {-}
begin
 Result := IeeToolOwner(f_Owner) As IeeDocumentEx;
end;

end.

