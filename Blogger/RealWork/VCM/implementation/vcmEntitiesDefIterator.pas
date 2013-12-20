unit vcmEntitiesDefIterator;
{* ������� ���������� ��������� �� ��������� ���������. }

{ ���������� "vcm"        }
{ �����: ����� �.�. �     }
{ ������: vcmEntitiesDefIterator - }
{ �����: 26.02.2003 22:04 }
{ $Id: vcmEntitiesDefIterator.pas,v 1.1 2003/04/01 12:54:41 law Exp $ }

// $Log: vcmEntitiesDefIterator.pas,v $
// Revision 1.1  2003/04/01 12:54:41  law
// - ��������������� MVC � VCM.
//
// Revision 1.3  2003/03/05 09:12:42  law
// - ���������� help.
//
// Revision 1.2  2003/03/05 09:01:20  law
// - new unit: vcmIterator.
//
// Revision 1.1  2003/02/27 07:57:37  law
// - new behavior: ������� ��������� ��������� ������.
//

{$I vcmDefine.inc }

interface

uses
  vcmInterfaces,

  vcmBase,
  vcmIterator
  ;

type
  TvcmEntitiesDefIterator = class(TvcmIterator, IvcmEntitiesDefIterator)
   {* ������� ���������� ��������� �� ��������� ���������. }
    protected
    // interface methods
      // IvcmOperationsDefIterator
      function Get_Next: IvcmEntityDef;
        {* - ���������� ��������� ��������� ��������. }
  end;//TvcmEntitiesDefIterator

implementation

// start class TvcmEntitiesDefIterator

function TvcmEntitiesDefIterator.Get_Next: IvcmEntityDef;
  {-}
begin
 Result := IvcmEntityDef(GetNext);
end;

end.

