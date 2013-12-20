unit vcmOperationsDefIterator;
{* Базовая реализация итератора по описаниям операций. }

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmOperationsDefIterator - }
{ Начат: 24.02.2003 17:56 }
{ $Id: vcmOperationsDefIterator.pas,v 1.2 2009/02/20 15:18:56 lulin Exp $ }

// $Log: vcmOperationsDefIterator.pas,v $
// Revision 1.2  2009/02/20 15:18:56  lulin
// - <K>: 136941122.
//
// Revision 1.1  2003/04/01 12:54:42  law
// - переименовываем MVC в VCM.
//
// Revision 1.3  2003/03/05 09:01:20  law
// - new unit: vcmIterator.
//
// Revision 1.2  2003/02/26 18:35:33  law
// - rename unit: vcmModuleOperationsDefIterator -> vcmOperationsDefIterator.
//
// Revision 1.1  2003/02/26 18:21:37  law
// - rename unit: vcmModuleOperationsDefIterator -> vcmOperationsDefIterator.
//
// Revision 1.2  2003/02/25 11:08:05  law
// - change: добавлено определение операций модуля.
//
// Revision 1.1  2003/02/24 16:13:37  law
// - new prop: IvcmModuleDef.OperationsDefIterator.
//

{$Include vcmDefine.inc }

interface

uses
  vcmUserControls,
  vcmInterfaces,
  vcmBase,
  vcmIterator
  ;

type
  TvcmOperationsDefIterator = class(TvcmIterator, IvcmOperationsDefIterator)
   {* Базовая реализация итератора по описаниям операций. }
    protected
    // interface methods
      // IvcmOperationsDefIterator
      function Get_Next: IvcmOperationDef;
        {* - возвращает следующий описатель операции. }
  end;//TvcmOperationsDefIterator

implementation

// start class TvcmOperationsDefIterator

function TvcmOperationsDefIterator.Get_Next: IvcmOperationDef;
  {-}
begin
 Result := IvcmOperationDef(GetNext);
end;

end.

