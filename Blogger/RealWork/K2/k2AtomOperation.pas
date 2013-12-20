unit k2AtomOperation;

{ Библиотека "K-2"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: k2AtomOperation - }
{ Начат: 18.10.2005 13:53 }
{ $Id: k2AtomOperation.pas,v 1.6 2012/07/12 18:33:21 lulin Exp $ }

// $Log: k2AtomOperation.pas,v $
// Revision 1.6  2012/07/12 18:33:21  lulin
// {RequestLink:237994598}
//
// Revision 1.5  2009/07/23 13:42:34  lulin
// - переносим процессор операций туда куда надо.
//
// Revision 1.4  2009/07/22 17:16:40  lulin
// - оптимизируем использование счётчика ссылок и преобразование к интерфейсам при установке атрибутов тегов.
//
// Revision 1.3  2009/07/06 13:32:12  lulin
// - возвращаемся от интерфейсов к объектам.
//
// Revision 1.2  2008/02/12 12:53:20  lulin
// - избавляемся от излишнего метода на базовом классе.
//
// Revision 1.1  2005/10/18 10:03:09  lulin
// - реализация базовой Undo-записи перенесена в правильное место.
//

{$Include k2Define.inc }

interface

uses
  l3Types,

  k2Op,
  k2Interfaces
  ;

type
  Tk2AtomOperation = class(Tk2Op)
    protected
    // property fields
      f_Atom : Long;
      f_Prop : Tk2CustomPropertyPrim;
    protected
    // property methods
      function  pm_GetAtom: Ik2Tag;
        {-}
    protected
    // internal methods
      function SetParam(const anAtom : Ik2Tag;
                        const aProp  : Tk2CustomPropertyPrim): Tk2AtomOperation;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      procedure Clear;
        virtual;
        {-}
    public
    // public methods
      property Prop: Tk2CustomPropertyPrim
        read f_Prop;
        {-}
      property Atom: Ik2Tag
        read pm_GetAtom;
        {-}
  end;//Tk2AtomOperation
  
implementation

uses
  k2Base,
  k2BaseStruct
  ;

// start class Tk2AtomOperation 

procedure Tk2AtomOperation.Cleanup;
  {override;}
  {-}
begin
 Clear;
 inherited;
end;

procedure Tk2AtomOperation.Clear;
  {override;}
  {-}
begin
 inherited;
 if (f_Atom <> 0) then
  FreeIntRef(Tk2TypePrim(f_Prop.ParentType), f_Atom);
 f_Prop := nil;
end;

function  Tk2AtomOperation.pm_GetAtom: Ik2Tag;
  {-}
begin
 if (f_Prop = nil) then
  Result := k2NullTag
 else
  Result := Tk2Type(f_Prop.ParentType).TagFromIntRef(f_Atom);
end;

function Tk2AtomOperation.SetParam(const anAtom : Ik2Tag;
                                   const aProp  : Tk2CustomPropertyPrim): Tk2AtomOperation;
  {-}
begin
 Clear;
 f_Prop := aProp;
 anAtom.SetIntRef(f_Atom);
 Result := Self;
end;

end.

