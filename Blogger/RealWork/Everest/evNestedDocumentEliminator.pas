unit evNestedDocumentEliminator;
{ ‘ильтр замен€ющий несколько следующих друг за другом документов одним }

{ $Id: evNestedDocumentEliminator.pas,v 1.2 2010/11/30 08:17:05 lulin Exp $ }

// $Log: evNestedDocumentEliminator.pas,v $
// Revision 1.2  2010/11/30 08:17:05  lulin
// - настройки.
//
// Revision 1.1  2009/04/24 12:31:30  narry
// - вместо TevRTFDocumentEliminator
//
// Revision 1.2  2009/03/04 13:32:46  lulin
// - <K>: 137470629. √енерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.1  2007/12/04 13:04:55  lulin
// - объедин€ем два каталога с исходниками Ёвереста.
//
// Revision 1.3  2007/09/28 10:44:11  narry
// - упрощение алгоритма
//
// Revision 1.2  2007/09/12 13:05:35  narry
// - "съедались" параметры страницы
//
// Revision 1.1  2007/08/21 13:56:20  narry
// - ѕреобразование нескольких документов в один
//

interface

uses
 k2TagFilter,
 l3Types;

type
  TevNestedDocumentEliminator = class(Tk2TagFilter)
    private
    protected
    // internal methods
      function  NeedTranslateChildToNext: Boolean;
        override;
        {-}
  end;//TevNestedDocumentEliminator

implementation

uses
  Document_Const
  ;


function TevNestedDocumentEliminator.NeedTranslateChildToNext: Boolean;
begin
 if CurrentType.InheritsFrom(k2_idDocument) then
  Result:= (TopType[1] = nil)
 else
  Result:= True;
end;


end.
