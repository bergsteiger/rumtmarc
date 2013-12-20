unit k2PlTxRd;

{ Библиотека "K-2"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: k2PlTxRd -      }
{ Начат: 23.04.1999 18:27 }
{ $Id: k2PlTxRd.pas,v 1.17 2008/02/05 18:20:40 lulin Exp $ }

// $Log: k2PlTxRd.pas,v $
// Revision 1.17  2008/02/05 18:20:40  lulin
// - удалено ненужное свойство строк.
//
// Revision 1.16  2008/02/05 17:39:37  lulin
// - избавляемся от ненужного именованного объекта.
//
// Revision 1.15  2008/02/05 16:13:16  lulin
// - избавляем базовый объект от лишнего свойства.
//
// Revision 1.14  2008/02/05 12:49:23  lulin
// - упрощаем базовые объекты.
//
// Revision 1.13  2000/12/15 15:18:58  law
// - вставлены директивы Log.
//

{$I k2Define.inc }

interface

uses
  l3Types,
  l3Base,

  k2Types,
  k2TagGen
  ;

type
  Tk2CustomPlainTextReader = class(Tk2TagGenerator)
    protected
    {internal methods}
      procedure DoText(S: Tl3PrimString);
        virtual;
        abstract;
        {-метод вызывается для каждой строки текста}
    public
    {public methods}
      procedure AddAtom(AtomIndex: Long; TK: Tk2TypeKind; const Value);
        override;
        {-}
  end;{Tk2CustomPlainTextReader}

implementation

uses
  k2Tags
  ;

{ start class Tk2CustomPlainTextReader }

procedure Tk2CustomPlainTextReader.AddAtom(AtomIndex: Long; TK: Tk2TypeKind; const Value);
  {override;}
  {-}
begin
 inherited AddAtom(AtomIndex, TK, Value);
 if (AtomIndex = k2_tiText) then begin
  Case TK of
   k2_tkObject:
    if (TObject(Value) is Tl3PrimString) then
     DoText(Tl3PrimString(Value))
    else
     Assert(false);
  end;{Case TI^.Kind}
 end;{AtomIndex = k2_tiText}
end;

end.

