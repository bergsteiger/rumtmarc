unit evCellInfo;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evCellInfo.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::CellUtils::TevCellInfo
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evdTypes,
  evEditorInterfaces,
  l3ProtoObject
  ;

type
 TevCellInfo = class(Tl3ProtoObject)
 private
 // private fields
   f_CellType : TedCellType;
    {* Поле для свойства CellType}
   f_BoundaryEqualUp : TedBoundaryCorrespondence;
    {* Поле для свойства BoundaryEqualUp}
   f_BoundaryEqualDown : TedBoundaryCorrespondence;
    {* Поле для свойства BoundaryEqualDown}
   f_OldWidth : Integer;
    {* Поле для свойства OldWidth}
   f_NewWidth : Integer;
    {* Поле для свойства NewWidth}
   f_Index : Integer;
    {* Поле для свойства Index}
   f_MergeStatus : TevMergeStatus;
    {* Поле для свойства MergeStatus}
 public
 // public methods
   constructor Create(anIndex: Integer;
     const aCell: IedCell); reintroduce;
   procedure UpdateBoundaryType(aType: TedBoundaryCorrespondence;
     anUp: Boolean);
 public
 // public properties
   property CellType: TedCellType
     read f_CellType;
   property BoundaryEqualUp: TedBoundaryCorrespondence
     read f_BoundaryEqualUp;
   property BoundaryEqualDown: TedBoundaryCorrespondence
     read f_BoundaryEqualDown;
   property OldWidth: Integer
     read f_OldWidth;
   property NewWidth: Integer
     read f_NewWidth;
   property Index: Integer
     read f_Index;
   property MergeStatus: TevMergeStatus
     read f_MergeStatus;
 end;//TevCellInfo

implementation

// start class TevCellInfo

constructor TevCellInfo.Create(anIndex: Integer;
  const aCell: IedCell);
//#UC START# *516D4FC00331_515ACFFB008D_var*
//#UC END# *516D4FC00331_515ACFFB008D_var*
begin
//#UC START# *516D4FC00331_515ACFFB008D_impl*
 inherited Create;
 f_Index := anIndex;
 f_MergeStatus := aCell.MergeStatus;
 f_CellType := aCell.GetCellType;
 f_OldWidth := aCell.Width;
 f_BoundaryEqualUp := ed_bcNonEqual;
 f_BoundaryEqualDown := ed_bcNonEqual;
//#UC END# *516D4FC00331_515ACFFB008D_impl*
end;//TevCellInfo.Create

procedure TevCellInfo.UpdateBoundaryType(aType: TedBoundaryCorrespondence;
  anUp: Boolean);
//#UC START# *516D50000139_515ACFFB008D_var*
//#UC END# *516D50000139_515ACFFB008D_var*
begin
//#UC START# *516D50000139_515ACFFB008D_impl*
 if anUp then
  f_BoundaryEqualUp := aType
 else
  f_BoundaryEqualDown := aType;
//#UC END# *516D50000139_515ACFFB008D_impl*
end;//TevCellInfo.UpdateBoundaryType

end.