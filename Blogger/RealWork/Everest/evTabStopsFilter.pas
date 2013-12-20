unit evTabStopsFilter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/evTabStopsFilter.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Generators::TevTabStopsFilter
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evdBufferedFilter,
  k2Types,
  k2Interfaces
  ;

type
 _DigitalSeparatorSupport_Parent_ = TevdBufferedFilter;
 {$Include ..\Everest\DigitalSeparatorSupport.imp.pas}
 TevTabStopsFilter = class(_DigitalSeparatorSupport_)
 protected
 // overridden protected methods
   procedure AddAtomEx(AtomIndex: Integer;
    const Value: Tk2Variant); override;
   procedure DoStartChild(TypeID: Integer); override;
   function NeedStartBuffering(aID: Integer): Boolean; override;
   function NeedFlushBuffer(const aLeaf: Ik2Tag;
     aTagId: Integer): Boolean; override;
   procedure DoCloseStructure(NeedUndo: Boolean); override;
 end;//TevTabStopsFilter

implementation

uses
  TabStop_Const,
  TextPara_Const,
  k2Tags,
  l3Interfaces,
  TableCell_Const,
  Table_Const
  ;

{$Include ..\Everest\DigitalSeparatorSupport.imp.pas}

// start class TevTabStopsFilter

procedure TevTabStopsFilter.AddAtomEx(AtomIndex: Integer;
  const Value: Tk2Variant);
//#UC START# *4836D52400D9_4E5E1032016E_var*
//#UC END# *4836D52400D9_4E5E1032016E_var*
begin
//#UC START# *4836D52400D9_4E5E1032016E_impl*
 if CurrentType.InheritsFrom(k2_idTabStop) then
  SetDigitalSeparatorParams(AtomIndex, Value);
 inherited;
//#UC END# *4836D52400D9_4E5E1032016E_impl*
end;//TevTabStopsFilter.AddAtomEx

procedure TevTabStopsFilter.DoStartChild(TypeID: Integer);
//#UC START# *4A2D1217037A_4E5E1032016E_var*
//#UC END# *4A2D1217037A_4E5E1032016E_var*
begin
//#UC START# *4A2D1217037A_4E5E1032016E_impl*
 if (TypeID = k2_idTable) then
  CellFinished;
 if (TypeID = k2_idTableCell) then
  CellStarted;
 inherited; 
//#UC END# *4A2D1217037A_4E5E1032016E_impl*
end;//TevTabStopsFilter.DoStartChild

function TevTabStopsFilter.NeedStartBuffering(aID: Integer): Boolean;
//#UC START# *4C56D54B002A_4E5E1032016E_var*
//#UC END# *4C56D54B002A_4E5E1032016E_var*
begin
//#UC START# *4C56D54B002A_4E5E1032016E_impl*
 Result := (aID > 0) AND TypeTable.TypeByHandle[aID].InheritsFrom(k2_tiTabStops);
//#UC END# *4C56D54B002A_4E5E1032016E_impl*
end;//TevTabStopsFilter.NeedStartBuffering

function TevTabStopsFilter.NeedFlushBuffer(const aLeaf: Ik2Tag;
  aTagId: Integer): Boolean;
//#UC START# *4CF7BC520161_4E5E1032016E_var*
//#UC END# *4CF7BC520161_4E5E1032016E_var*
begin
//#UC START# *4CF7BC520161_4E5E1032016E_impl*
 Result := not NeedStartBuffering(aTagId);
//#UC END# *4CF7BC520161_4E5E1032016E_impl*
end;//TevTabStopsFilter.NeedFlushBuffer

procedure TevTabStopsFilter.DoCloseStructure(NeedUndo: Boolean);
//#UC START# *4E45166B0156_4E5E1032016E_var*
//#UC END# *4E45166B0156_4E5E1032016E_var*
begin
//#UC START# *4E45166B0156_4E5E1032016E_impl*
 if CurrentType.InheritsFrom(k2_idTextPara) and HasDigitalSeparatorAlignment then
 begin
  try
   Generator.StartTag(k2_tiTabStops);
   try
    Generator.StartDefaultChild;
    try
     Generator.AddIntegerAtom(k2_tiType, Ord(l3_tssDecimal));
     Generator.AddIntegerAtom(k2_tiStart, GetDigitalSeparatorOffset);
    finally
     Generator.Finish;
    end;
   finally
    Generator.Finish;
   end;
  finally
   CellFinished;
  end;
 end;
 inherited;
//#UC END# *4E45166B0156_4E5E1032016E_impl*
end;//TevTabStopsFilter.DoCloseStructure

end.