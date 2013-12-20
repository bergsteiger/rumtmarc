unit vcmBaseOperationStates;

{ Библиотека "vcm"        }
{ Автор: Люлин А.В. ©     }
{ Модуль: vcmBaseOperationStates - }
{ Начат: 21.02.2003 16:19 }
{ $Id: vcmBaseOperationStates.pas,v 1.2 2004/01/14 16:24:32 law Exp $ }

// $Log: vcmBaseOperationStates.pas,v $
// Revision 1.2  2004/01/14 16:24:32  law
// - new method: TvcmBaseOperationsCollectionItem.StatesClass.
//
// Revision 1.1  2004/01/14 16:18:17  law
// - new units: vcmBaseOperationState, vcmBaseOperationStates.
//

{$I vcmDefine.inc }

interface

uses
  Classes,

  vcmBaseCollection,
  vcmBaseOperationState
  ;

type
  TvcmBaseOperationStates = class(TvcmBaseCollection)
   {* Коллекция операций. }
    public
    // public methods
      class function GetItemClass: TCollectionItemClass;
        override;
        {-}
  end;//TvcmBaseOperationStates
  RvcmBaseOperationStates = class of TvcmBaseOperationStates;

implementation

// start class TvcmOperationStates

class function TvcmBaseOperationStates.GetItemClass: TCollectionItemClass;
  //override;
  {-}
begin
 Result := TvcmBaseOperationState;
end;

end.

