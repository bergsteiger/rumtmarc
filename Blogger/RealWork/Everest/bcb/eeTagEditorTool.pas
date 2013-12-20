unit eeTagEditorTool;

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: eeTagEditorTool - }
{ Начат: 12.02.2003 18:13 }
{ $Id: eeTagEditorTool.pas,v 1.8 2009/07/23 13:42:13 lulin Exp $ }

// $Log: eeTagEditorTool.pas,v $
// Revision 1.8  2009/07/23 13:42:13  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.7  2007/12/04 12:47:34  lulin
// - перекладываем ветку в HEAD.
//
// Revision 1.6.8.1  2005/11/09 15:28:28  lulin
// - базовые интерфейсы перенесены в правильный модуль.
//
// Revision 1.6  2005/03/28 11:32:10  lulin
// - интерфейсы переехали в "правильный" модуль.
//
// Revision 1.5  2005/03/21 16:28:19  lulin
// - переходим к Ik2Tag.
//
// Revision 1.4  2004/10/13 10:33:33  lulin
// - new behavior: синхронизируем удаление комментариев.
//
// Revision 1.3  2003/07/21 16:14:13  law
// - bug fix: TeeTagEditorTool теперь не владеет окном редактора - похоже окончательно ликвидирован AV при переходе по ссылке из синхронного просмотра.
//
// Revision 1.2  2003/07/21 15:55:25  law
// - bug fix: устранена вторая причина AV при переходе по ссылке из синхронного просмотра (остался еще один редкий случай, которые непонятно как повторяется).
//
// Revision 1.1  2003/02/12 15:29:18  law
// - new units.
//

{$Include evDefine.inc }

interface

uses
  l3Interfaces,

  k2Interfaces,
  k2InternalInterfaces,
  k2TagTools,

  nevBase,
  
  eeInterfacesEx
  ;

type
  TeeTagEditorTool = class(Tk2ProcessorTagTool, IeeTool)
    private
    // internal fields
      f_Document : Pointer;
    protected
    // property methods
      function pm_GetDocument: IeeDocumentEx;
        {-}  
      function pm_GetProcessor: InevProcessor;
        override;
        {-}
    private
    // interface methods
      // IeeTool  
      procedure OwnerDead;
        {-}
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(const aTagWrap   : Ik2Tag;
                         const aDocument  : IeeDocumentEx;
                         const aProcessor : InevProcessor);
        reintroduce;
        {-}
    protected
    // protected properties
      property Document: IeeDocumentEx
        read pm_GetDocument;
        {-}
  end;//TeeTagEditorTool

implementation

// start class TeeTagEditorTool

constructor TeeTagEditorTool.Create(const aTagWrap   : Ik2Tag;
                                    const aDocument  : IeeDocumentEx;
                                    const aProcessor : InevProcessor);
  //reintroduce;
  {-}
begin
 inherited Create(aTagWrap, aProcessor);
 f_Document := Pointer(aDocument);
 if (f_Document <> nil) then
  (Document As IeeToolOwner).AddTool(Self);
end;

procedure TeeTagEditorTool.Cleanup;
  //override;
  {-}
begin
 if (f_Document <> nil) then
  (Document As IeeToolOwner).RemoveTool(Self);
 f_Document := nil;
 inherited;
end;

function TeeTagEditorTool.pm_GetDocument: IeeDocumentEx;
  {-}
begin
 Result := IeeDocumentEx(f_Document);
end;

function TeeTagEditorTool.pm_GetProcessor: InevProcessor;
  //override;
  {-}
begin
 Result := inherited pm_GetProcessor;
 if (Result = nil) AND (Document <> nil) then
  Result := Document.Processor;
end;

procedure TeeTagEditorTool.OwnerDead;
  {-}
begin
 f_Document := nil;
end;

end.

