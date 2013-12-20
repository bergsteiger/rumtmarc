unit ddTableCell;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddTableCell.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::ddCommon::TddTableCell
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  ddBase,
  ddDocumentAtom,
  ddDocumentAtomList,
  ddTextParagraph,
  Classes,
  ddCustomDestination
  ;

type
 TddTableCell = class(TddDocumentAtom)
 private
 // private fields
   f_ParaList : TddDocumentAtomList;
   f_anIndex : Integer;
    {* Поле для свойства anIndex}
   f_Props : TddCellProperty;
    {* Поле для свойства Props}
 protected
 // property methods
   function pm_GetHi: Integer;
   function pm_GetCount: Integer;
   procedure pm_SetProps(aValue: TddCellProperty);
   function pm_GetLastTextPara: TddTextParagraph;
   function pm_GetItems(anIndex: Integer): TddDocumentAtom;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   procedure Assign(Source: TPersistent); override;
   procedure Clear; override;
   constructor Create(anOwner: TObject;
    aDetination: TddCustomDestination); override;
 public
 // public methods
   function PrevCell: TddTableCell;
   procedure Delete(anIndex: Integer);
   procedure Add(aPara: TddDocumentAtom);
   function AddParagraph: TddTextParagraph;
   function LastTableAtom: TddDocumentAtom;
     {* Возвращает последнюю открытую вложенную таблицу. }
 public
 // public properties
   property anIndex: Integer
     read f_anIndex
     write f_anIndex;
   property Hi: Integer
     read pm_GetHi;
   property Count: Integer
     read pm_GetCount;
   property Props: TddCellProperty
     read f_Props
     write pm_SetProps;
   property LastTextPara: TddTextParagraph
     read pm_GetLastTextPara;
   property Items[anIndex: Integer]: TddDocumentAtom
     read pm_GetItems;
 end;//TddTableCell

implementation

uses
  ddTableRow,
  SysUtils,
  ddTable
  ;

// start class TddTableCell

function TddTableCell.PrevCell: TddTableCell;
//#UC START# *518A33100064_4FACE127032F_var*
//#UC END# *518A33100064_4FACE127032F_var*
begin
//#UC START# *518A33100064_4FACE127032F_impl*
 if f_anIndex > 0 then
  Result := TddTableRow(Self.GetOwner).Cells[anIndex - 1]
 else
  Result := nil;
//#UC END# *518A33100064_4FACE127032F_impl*
end;//TddTableCell.PrevCell

procedure TddTableCell.Delete(anIndex: Integer);
//#UC START# *518A3340021D_4FACE127032F_var*
//#UC END# *518A3340021D_4FACE127032F_var*
begin
//#UC START# *518A3340021D_4FACE127032F_impl*
 f_ParaList.Delete(anIndex);
//#UC END# *518A3340021D_4FACE127032F_impl*
end;//TddTableCell.Delete

procedure TddTableCell.Add(aPara: TddDocumentAtom);
//#UC START# *518A338F0065_4FACE127032F_var*
//#UC END# *518A338F0065_4FACE127032F_var*
begin
//#UC START# *518A338F0065_4FACE127032F_impl*
 if aPara.AtomType = dd_docTextParagraph then
  TddTextparagraph(aPara).PAP.InTable := True;
 f_ParaList.Add(aPara);
//#UC END# *518A338F0065_4FACE127032F_impl*
end;//TddTableCell.Add

function TddTableCell.AddParagraph: TddTextParagraph;
//#UC START# *518A33AE0245_4FACE127032F_var*
var
 l_P: TddTextParagraph;
//#UC END# *518A33AE0245_4FACE127032F_var*
begin
//#UC START# *518A33AE0245_4FACE127032F_impl*
 l_P := TddTextParagraph.Create(Self, f_Destination);
 try
  l_P.PAP.InTable := True;
  Add(l_P);
  Result := TddTextParagraph(f_ParaList.Last);
 finally
  FreeAndNil(l_P);
 end;
//#UC END# *518A33AE0245_4FACE127032F_impl*
end;//TddTableCell.AddParagraph

function TddTableCell.LastTableAtom: TddDocumentAtom;
//#UC START# *519333B6005A_4FACE127032F_var*
var
 i: Integer;
//#UC END# *519333B6005A_4FACE127032F_var*
begin
//#UC START# *519333B6005A_4FACE127032F_impl*
 Result := nil;
 i := Hi;
 while (Result = nil) and (i <> -1) do
 begin
  if Items[i] is TddTable then
   Result := Items[i]
  else
   Dec(i);
 end;
//#UC END# *519333B6005A_4FACE127032F_impl*
end;//TddTableCell.LastTableAtom

function TddTableCell.pm_GetHi: Integer;
//#UC START# *518A2E3702C4_4FACE127032Fget_var*
//#UC END# *518A2E3702C4_4FACE127032Fget_var*
begin
//#UC START# *518A2E3702C4_4FACE127032Fget_impl*
 Result := f_ParaList.Hi;
//#UC END# *518A2E3702C4_4FACE127032Fget_impl*
end;//TddTableCell.pm_GetHi

function TddTableCell.pm_GetCount: Integer;
//#UC START# *518A2E710337_4FACE127032Fget_var*
//#UC END# *518A2E710337_4FACE127032Fget_var*
begin
//#UC START# *518A2E710337_4FACE127032Fget_impl*
  Result := f_ParaList.Count;
//#UC END# *518A2E710337_4FACE127032Fget_impl*
end;//TddTableCell.pm_GetCount

procedure TddTableCell.pm_SetProps(aValue: TddCellProperty);
//#UC START# *518A2EEC00C9_4FACE127032Fset_var*
//#UC END# *518A2EEC00C9_4FACE127032Fset_var*
begin
//#UC START# *518A2EEC00C9_4FACE127032Fset_impl*
 Assert(Self <> nil);
 Assert(f_Props <> nil);
 f_Props.Assign(aValue);
//#UC END# *518A2EEC00C9_4FACE127032Fset_impl*
end;//TddTableCell.pm_SetProps

function TddTableCell.pm_GetLastTextPara: TddTextParagraph;
//#UC START# *518A2F3D013C_4FACE127032Fget_var*
var
 i: Integer;
//#UC END# *518A2F3D013C_4FACE127032Fget_var*
begin
//#UC START# *518A2F3D013C_4FACE127032Fget_impl*
 Result := nil;
 i := Hi;
 while (Result = nil) and (i <> -1) do
 begin
  if Items[i] is TddTextParagraph then
   Result := TddTextParagraph(Items[i])
  else
   Dec(i);
 end;
 if Result = nil then
 begin
  AddParagraph;
  Result := pm_GetLastTextPara;
 end; 
//#UC END# *518A2F3D013C_4FACE127032Fget_impl*
end;//TddTableCell.pm_GetLastTextPara

function TddTableCell.pm_GetItems(anIndex: Integer): TddDocumentAtom;
//#UC START# *518A328E02CF_4FACE127032Fget_var*
//#UC END# *518A328E02CF_4FACE127032Fget_var*
begin
//#UC START# *518A328E02CF_4FACE127032Fget_impl*
 Result := TddDocumentAtom(f_ParaList.Items[anIndex]);
//#UC END# *518A328E02CF_4FACE127032Fget_impl*
end;//TddTableCell.pm_GetItems

procedure TddTableCell.Assign(Source: TPersistent);
//#UC START# *478CF34E02CE_4FACE127032F_var*
//#UC END# *478CF34E02CE_4FACE127032F_var*
begin
//#UC START# *478CF34E02CE_4FACE127032F_impl*
 if (Source Is TddTableCell) then
 begin
  f_ParaList.Assign(TddTableCell(Source).f_ParaList);
  f_Props.Assign(TddTableCell(Source).Props);
 end // if (Source Is TddTableCell) then
 else
  inherited Assign(Source);
//#UC END# *478CF34E02CE_4FACE127032F_impl*
end;//TddTableCell.Assign

procedure TddTableCell.Cleanup;
//#UC START# *479731C50290_4FACE127032F_var*
//#UC END# *479731C50290_4FACE127032F_var*
begin
//#UC START# *479731C50290_4FACE127032F_impl*
 FreeAndNil(f_Props);
 FreeAndNil(f_ParaList);
 inherited;                                                                                 
//#UC END# *479731C50290_4FACE127032F_impl*
end;//TddTableCell.Cleanup

procedure TddTableCell.Clear;
//#UC START# *518A48F500CF_4FACE127032F_var*
//#UC END# *518A48F500CF_4FACE127032F_var*
begin
//#UC START# *518A48F500CF_4FACE127032F_impl*
 f_paraList.Clear;
 f_Props.Clear;
 Closed:= False;
//#UC END# *518A48F500CF_4FACE127032F_impl*
end;//TddTableCell.Clear

constructor TddTableCell.Create(anOwner: TObject;
  aDetination: TddCustomDestination);
//#UC START# *51E91BA80051_4FACE127032F_var*
//#UC END# *51E91BA80051_4FACE127032F_var*
begin
//#UC START# *51E91BA80051_4FACE127032F_impl*
 inherited Create(anOwner, aDetination);
 f_ParaList := TddDocumentAtomList.Make;
 AtomType:= dd_docTableCell;
 f_Props := TddCellProperty.Create(nil);
//#UC END# *51E91BA80051_4FACE127032F_impl*
end;//TddTableCell.Create

end.