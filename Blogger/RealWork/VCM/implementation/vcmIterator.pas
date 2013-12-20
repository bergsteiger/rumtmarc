unit vcmIterator;
{* Базовая реализация итератора. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmIterator -   }
{ Начат: 05.03.2003 11:53 }
{ $Id: vcmIterator.pas,v 1.6 2008/03/19 14:23:42 lulin Exp $ }

// $Log: vcmIterator.pas,v $
// Revision 1.6  2008/03/19 14:23:42  lulin
// - cleanup.
//
// Revision 1.5  2008/02/07 19:13:02  lulin
// - избавляемся от излишне универсальных методов базовых списков.
//
// Revision 1.4  2004/11/18 17:33:58  lulin
// - new interface: IvcmParamsPrim.
//
// Revision 1.3  2004/09/07 16:19:42  law
// - перевел VCM на кшированные обьекты.
//
// Revision 1.2  2004/06/02 10:20:38  law
// - удален конструктор Tl3VList.MakeIUnknown - пользуйтесь _Tl3InterfaceList.Make.
//
// Revision 1.1  2003/04/01 12:54:42  law
// - переименовываем MVC в VCM.
//
// Revision 1.1  2003/03/05 09:01:20  law
// - new unit: vcmIterator.
//

{$I vcmDefine.inc }

interface

uses
  vcmInterfaces,
  vcmExternalInterfaces,
  vcmBase
  ;

type
  TvcmIterator = class(TvcmCacheableBase)
   {* Базовая реализация итератора. }
    private
    // internal fields
      f_List  : TvcmInterfaceList;
      f_Index : Integer;
    protected
    // internal methods
      function GetNext: IvcmBase;
        {* - возвращает следующий элемент. }
    protected
    // internal methods
      procedure Cleanup;
        override;
        {-}
    public
    // public methods
      constructor Create(aList: TvcmInterfaceList);
        reintroduce;
        {* - создает итератор. }
  end;//TvcmIterator

implementation

// start class TvcmIterator

constructor TvcmIterator.Create(aList: TvcmInterfaceList);
  //reintroduce;
  {-}
begin
 inherited Create;
 vcmSet(f_List, aList);
end;

procedure TvcmIterator.Cleanup;
  //override;
  {-}
begin
 f_Index := 0;
 vcmFree(f_List);
 inherited;
end;

function TvcmIterator.GetNext: IvcmBase;
  {-}
begin
 if (f_Index >= f_List.Count) then
  Result := nil
 else begin
  Result := IvcmBase(f_List.Items[f_Index]);
  Inc(f_Index);
 end;
end;

end.

