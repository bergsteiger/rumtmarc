unit evParaEliminator;
{* Фильтр, выкидывающий все параграфы, кроме документа (и соответственно его шапки). }

{ Библиотека "Эверест"    }
{ Начал: Люлин А.В.       }
{ Модуль: evParaEliminator - }
{ Начат: 26.11.2004 16:39 }
{ $Id: evParaEliminator.pas,v 1.2 2009/03/17 09:43:48 lulin Exp $ }

// $Log: evParaEliminator.pas,v $
// Revision 1.2  2009/03/17 09:43:48  lulin
// - bug fix: не собиралось.
//
// Revision 1.1  2004/11/26 13:45:30  lulin
// - new unit: evParaEliminator.
//

{$I evDefine.inc }

interface

uses
  k2TagFilter
  ;

type
  TevParaEliminator = class(Tk2TagFilter)
   {* Фильтр, выкидывающий все параграфы, кроме документа (и соответственно его шапки). }
    protected
    // internal methods
      function  NeedTranslateChildToNext: Boolean;
        override;
        {-}
  end;//TevParaEliminator

implementation

uses
  k2Tags,

  Document_Const
  ;

// start class TevParaEliminator

function TevParaEliminator.NeedTranslateChildToNext: Boolean;
  //override;
  {-}
begin
 with CurrentType do
  Result := InheritsFrom(k2_idDocument);
end;

end.

