unit vcmUserTypesIterator;

{ ���������� "vcm"        }
{ �����: ����� �.�. �     }
{ ������: vcm -           }
{ �����: 21.02.2003 16:19 }
{ $Id: vcmUserTypesIterator.pas,v 1.6 2008/03/19 14:23:42 lulin Exp $ }

// $Log: vcmUserTypesIterator.pas,v $
// Revision 1.6  2008/03/19 14:23:42  lulin
// - cleanup.
//
// Revision 1.5  2008/02/07 19:13:02  lulin
// - ����������� �� ������� ������������� ������� ������� �������.
//
// Revision 1.4  2004/06/02 10:20:38  law
// - ������ ����������� Tl3VList.MakeIUnknown - ����������� _Tl3InterfaceList.Make.
//
// Revision 1.3  2004/02/10 12:59:47  law
// - change: IvcmUserTypesIterator ������ ���������� IvcmUserTypeDef.
//
// Revision 1.2  2003/07/28 11:42:22  law
// - new behavior: � ����� ��������� Toolbar'�� ������� ������ ���������������� ����� ��������.
//
// Revision 1.1  2003/07/25 17:51:54  law
// - new behavior: ����� �������� ������ UserType'��.
//

{$I vcmDefine.inc }

interface

uses
  Classes,
  
  vcmInterfaces,

  vcmBase,
  vcmIterator
  ;

type
  TvcmUserTypesIterator = class(TvcmIterator, IvcmUserTypesIterator)
    private
    // interface methods
      function Next: IvcmUserTypeDef;
        {-}
    public
    // public methods
      class function Make(aList: TvcmInterfaceList): IvcmUserTypesIterator;
        reintroduce;
        {-}
  end;//TvcmUserTypesIterator

implementation

uses
  SysUtils
  ;

// start class TvcmUserTypesIterator

class function TvcmUserTypesIterator.Make(aList: TvcmInterfaceList): IvcmUserTypesIterator;
  //reintroduce;
  {-}
var
 l_Iterator : TvcmUserTypesIterator;
begin
 l_Iterator := Create(aList);
 try
  Result := l_Iterator;
 finally
  vcmFree(l_Iterator);
 end;//try..finally
end;

function TvcmUserTypesIterator.Next: IvcmUserTypeDef;
  {-}
begin
 Result := IvcmUserTypeDef(GetNext);
end;
  
end.

