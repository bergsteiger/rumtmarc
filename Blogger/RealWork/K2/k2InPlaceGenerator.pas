unit k2InPlaceGenerator;

{ Библиотека "K-2"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: k2InPlaceGenerator - }
{ Начат: 24.06.2005 21:52 }
{ $Id: k2InPlaceGenerator.pas,v 1.3 2007/08/10 18:27:17 lulin Exp $ }

// $Log: k2InPlaceGenerator.pas,v $
// Revision 1.3  2007/08/10 18:27:17  lulin
// - избавляемся от излишнего использования интерфейсов, т.к. переносимость может быть достигнута другими методами.
//
// Revision 1.2  2005/06/25 12:17:45  lulin
// - сделана возможнось использовать генератор для моногоразовой генерации.
//
// Revision 1.1  2005/06/24 18:12:26  lulin
// - добавлен генератор, который может генерировать внутрь существующего тега.
//

{$Include k2Define.inc }

interface

uses
  l3Types,
  
  k2Interfaces,
  k2Base,
  k2DocumentGenerator
  ;

type
  Tk2InPlaceGenerator = class(Tk2DocumentGenerator)
    private
    // internal fields
      f_Root : Ik2Tag;
      f_Type : Tk2Type;
    protected
    // internal methods
      procedure StartChild(TypeID: Long);
        override;
        {-}
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Make(const aType : Tk2Type;
                       const aRoot : Ik2Tag);
        reintroduce;
        {-}
    public
    // public properties
      property Root: Ik2Tag
        read f_Root
        write f_Root;
        {-}
      property TagType: Tk2Type
        read f_Type
        write f_Type;
        {-}
  end;//Tk2InPlaceGenerator

implementation

// start class Tk2InPlaceGenerator

constructor Tk2InPlaceGenerator.Make(const aType : Tk2Type;
                                     const aRoot : Ik2Tag);
  //reintroduce;
  {-}
begin
 inherited Create;
 f_Root := aRoot;
 f_Type := aType;
end;

procedure Tk2InPlaceGenerator.Cleanup;
  //override;
  {-}
begin
 f_Type := nil;
 f_Root := nil;
 inherited;
end;

procedure Tk2InPlaceGenerator.StartChild(TypeID: Long);
  //override;
  {-}
begin
 inherited;
 if (f_Root <> nil) then
 begin
  f_Tags.Drop;
  f_Tags.Push(f_Type, f_Root, true, -1);
  f_Type := nil;
  f_Root := nil;
 end;//f_Root <> nil
end;

end.

