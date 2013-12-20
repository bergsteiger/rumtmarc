unit evBlocksButNotCommentsEliminator;
{* Фильтр, выкидивающий блоки, но не комментарии. }

{ Библиотека "Эверест"    }
{ Автор: Люлин А.В. ©     }
{ Модуль: evBlocksButNotCommentsEliminator - }
{ Начат: 17.11.2004 16:39 }
{ $Id: evBlocksButNotCommentsEliminator.pas,v 1.2 2009/03/04 13:32:45 lulin Exp $ }

// $Log: evBlocksButNotCommentsEliminator.pas,v $
// Revision 1.2  2009/03/04 13:32:45  lulin
// - <K>: 137470629. Генерируем идентификаторы типов с модели и убираем их из общей помойки.
//
// Revision 1.1  2004/11/18 08:12:28  lulin
// - забыл добавить.
//

{$I evDefine.inc }

interface

uses
  k2TagFilter
  ;

type
  TevBlocksButNotCommentsEliminator = class(Tk2TagFilter)
    protected
    // internal methods
      function  NeedTranslateChildToNext: Boolean;
        override;
        {-}
  end;//TevBlocksButNotCommentsEliminator

implementation

uses
  Block_Const,
  Document_Const,
  CommentPara_Const
  ;

// start class TevBlocksButNotCommentsEliminator

function TevBlocksButNotCommentsEliminator.NeedTranslateChildToNext: Boolean;
  //override;
  {-}
begin
 with CurrentType do
  Result := not InheritsFrom(k2_idBlock) OR InheritsFrom(k2_idDocument) OR
            InheritsFrom(k2_idCommentPara);
end;

end.

