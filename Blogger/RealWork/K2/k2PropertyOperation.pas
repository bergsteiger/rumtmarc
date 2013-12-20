unit k2PropertyOperation;

{ Библиотека "K-2"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: k2PropertyOperation - }
{ Начат: 18.10.2005 14:04 }
{ $Id: k2PropertyOperation.pas,v 1.6 2012/07/12 18:33:21 lulin Exp $ }

// $Log: k2PropertyOperation.pas,v $
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
// Revision 1.2  2005/10/18 10:48:29  lulin
// - реализация базовой Undo-записи удаления/добавления тегов, перенесена в правильное место.
//
// Revision 1.1  2005/10/18 10:32:51  lulin
// - реализация базовой Undo-записи, изменения свойств тегов, перенесена в правильное место.
//

{$Include k2Define.inc }

interface

uses
  l3Types,

  k2Interfaces,
  k2Op,
  k2AtomOperation
  ;

type
  Tk2PropOperation = class(Tk2AtomOperation)
    protected
    // internal methods
      function  GetPtr(Old: Boolean): PLong;
        virtual;
        {-}
      function  GetP(Old: Boolean): Ik2Tag;
        {-}
      procedure SetP(Old: Boolean; const Value: Ik2Tag);
        {-}
      procedure DoUndo(const Container: Ik2Op);
        override;
        {-отменить операцию}
      procedure DoRedo(const Container: Ik2Op);
        override;
        {-повторить операцию}
    protected
    // property methods
      procedure SetValue(Old: Boolean; const Value: Ik2Tag);
        {-}
    public
    // public methods
      class procedure ToUndo(const anOpPack : Ik2Op;
                             const anAtom   : Ik2Tag;
                             const aProp    : Tk2CustomPropertyPrim;
                             const Old, New : Ik2Tag);
        reintroduce;
        {-}
      function SetParam(const anAtom : Ik2Tag;
                        const aProp  : Tk2CustomPropertyPrim;
                        const Old, New: Ik2Tag): Tk2PropOperation;
        reintroduce;                
        {-}
      procedure Clear;
        override;
        {-}
  end;//Tk2PropOperation

  Ok2AddProp = class(Tk2PropOperation)
    private
    // property fields
      f_New : Long;
    protected
    // internal methods
      function  GetPtr(Old: Boolean): PLong;
        override;
        {-}
  end;//Ok2AddProp

  Ok2DelProp = class(Tk2PropOperation)
    private
    // property fields
      f_Old : Long;
    protected
    // internal methods
      function  GetPtr(Old: Boolean): PLong;
        override;
        {-}
    public
    // public methods
      function SetLongParam(const anAtom : Ik2Tag;
                            const aProp  : Tk2CustomPropertyPrim;
                            Old          : Long): Tk2PropOperation;
        {-}
  end;//Ok2DelProp

  Ok2ModifyProp = class(Tk2PropOperation)
    private
    // property fields
      f_Old : Long;
      f_New : Long;
    protected
    // internal methods
      function  GetPtr(Old: Boolean): PLong;
        override;
        {-}
      function DoJoin(anOperation: Tk2Op): Tk2Op;
        override;
        {-соединяет две операции и возвращает:
          nil  - соединение неудачно
          Self - соединение удачно и все поместилось в старую запись
          New  - распределена новая операция }
      function CanJoinWith(anOperation: Tk2Op): Boolean;
        override;
        {-}
    public
    // public methods
      function SetLongParam(const anAtom : Ik2Tag;
                            const aProp  : Tk2CustomPropertyPrim;
                            Old, New     : Long): Tk2PropOperation;
        {-}
  end;//Ok2ModifyProp

implementation

uses
  l3Base,
  
  k2Base,
  k2BaseStruct
  ;

// start class Tk2PropOperation 

class procedure Tk2PropOperation.ToUndo(const anOpPack : Ik2Op;
                                        const anAtom   : Ik2Tag;
                                        const aProp    : Tk2CustomPropertyPrim;
                                        const Old, New : Ik2Tag);
  {-}
var
 l_Op : Tk2PropOperation;
begin
 if (anOpPack <> nil) then
 begin
  l_Op := Create.SetParam(anAtom, aProp, Old, New);
  try
   l_Op.Put(anOpPack);
  finally
   l3Free(l_Op);
  end;//try..finally
 end;//anOpPack <> nil
end;

procedure Tk2PropOperation.Clear;
  {override;}
  {-}
begin
 if (f_Prop <> nil) then
 begin
  SetP(true, nil);
  SetP(false, nil);
 end;{f_Prop <> nil}
 inherited Clear;
end;

function Tk2PropOperation.SetParam(const anAtom   : Ik2Tag;
                                   const aProp    : Tk2CustomPropertyPrim;
                                   const Old, New : Ik2Tag): Tk2PropOperation;
  {-}
begin
 inherited SetParam(anAtom, aProp);
 if (f_Prop <> nil) then
 begin
  SetValue(true, Old);
  SetValue(false, New);
 end;{f_Prop <> nil}
 Result := Self;
end;

function Tk2PropOperation.GetPtr(Old: Boolean): PLong;
  //virtual;
  {-}
begin
 Result := nil;
end;

function Tk2PropOperation.GetP(Old: Boolean): Ik2Tag;
  {virtual;}
  {-}
var
 l_Ptr : PLong;
begin
 if (f_Prop = nil) then
  Result := k2NullTag
 else
 begin
  l_Ptr := GetPtr(Old);
  if (l_Ptr = nil) then
   Result := k2NullTag
  else
   Result := Tk2Type(f_Prop.AtomType).TagFromIntRef(l_Ptr^);
 end;//f_Prop = nil
end;

procedure Tk2PropOperation.SetP(Old: Boolean; const Value: Ik2Tag);
  {virtual;}
  {-}
var
 l_P   : Ik2Tag;
 l_Ptr : PLong;
begin
 l_Ptr := GetPtr(Old);
 if (l_Ptr <> nil) then
 begin
  l_P := GetP(Old);
  if not l_P.IsSame(Value) then
  begin
   FreeIntRef(Tk2TypePrim(f_Prop.AtomType), l_Ptr^);
   if (Value = nil) then
    l_Ptr^ := 0
   else
    Value.SetIntRef(l_Ptr^);
  end;//not l_P.IsSame(Value)
 end;//l_Ptr <> nil
end;

procedure Tk2PropOperation.DoUndo(const Container: Ik2Op);
  {override;}
  {-отменить операцию}
begin
 Atom.AttrW[f_Prop.TagIndex, Container] := GetP(true);
end;

procedure Tk2PropOperation.DoRedo(const Container: Ik2Op);
  {override;}
  {-повторить операцию}
begin
 Atom.AttrW[f_Prop.TagIndex, Container] := GetP(false);
end;

procedure Tk2PropOperation.SetValue(Old: Boolean; const Value: Ik2Tag);
  {-}
begin
 if (Self <> nil) then SetP(Old, Value);
end;

// start class Ok2AddProp 

function Ok2AddProp.GetPtr(Old: Boolean): PLong;
  {override;}
  {-}
begin
 if Old then
  Result := inherited GetPtr(Old)
 else
  Result := @f_New;
end;

// start class Ok2DelProp 

function Ok2DelProp.GetPtr(Old: Boolean): Plong;
  {override;}
  {-}
begin
 if Old then
  Result := @f_Old
 else
  Result := inherited GetPtr(Old);
end;

function Ok2DelProp.SetLongParam(const anAtom : Ik2Tag;
                                 const aProp  : Tk2CustomPropertyPrim;
                                 Old          : Long): Tk2PropOperation;
  {-}
(*var
 l_AtomW : Tk2AtomW;
 l_AtomR : Tk2AtomR absolute l_AtomW;*)
begin
(* l_AtomW.Unlink(aProp.AtomType);
 l_AtomW.sLong(Old);*)
 Result := SetParam(anAtom, aProp, Tk2Type(aProp.AtomType).IntToTag(Old), k2NullTag);
end;

// start class Ok2ModifyProp 

function Ok2ModifyProp.GetPtr(Old: Boolean): PLong;
  {override;}
  {-}
begin
 if Old then
  Result := @f_Old
 else
  Result := @f_New;
end;

function Ok2ModifyProp.SetLongParam(const anAtom : Ik2Tag;
                                    const aProp  : Tk2CustomPropertyPrim;
                                    Old, New     : Long): Tk2PropOperation;
  {-}
(*var
 l_AtomW : Tk2AtomW;
 l_AtomR : Tk2AtomR absolute l_AtomW;
 l_Old   : Tk2AtomR;*)
begin
(* l_AtomW.Unlink(aProp.AtomType);
 l_AtomW.sLong(Old);
 l_Old := l_AtomR;
 l_AtomW.sLong(New);*)
 Result := SetParam(anAtom, aProp,
                    Tk2Type(aProp.AtomType).IntToTag(Old),
                    Tk2Type(aProp.AtomType).IntToTag(New));
end;

function Ok2ModifyProp.DoJoin(anOperation: Tk2Op): Tk2Op;
  //override;
  {-соединяет две операции и возвращает:
    nil  - соединение неудачно
    Self - соединение удачно и все поместилось в старую запись
    New  - распределена новая операция }
begin
 Result := nil;
// if (anOperation Is Ok2ModifyProp) then
end;

function Ok2ModifyProp.CanJoinWith(anOperation: Tk2Op): Boolean;
  //override;
  {-}
begin
 Result := (anOperation Is Ok2ModifyProp);
end;

end.

