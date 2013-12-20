unit evControlGenerator;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/qf/evControlGenerator.pas"
// Начат: 28.09.1999 10:18
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::qf::TevControlGenerator
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\common\components\gui\Garant\Everest\evDefine.inc}

interface

uses
  l3InterfacedString,
  evDocumentPartGenerator,
  nevBase
  ;

type
 TevControlGenerator = class(TevDocumentPartGenerator)
 private
 // private fields
   f_DataString : Tl3InterfacedString;
   f_MultiLine : Boolean;
   f_FirstPara : Boolean;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   procedure InsertPara(const aChild: InevTag); override;
   procedure StartInsertion; override;
   procedure FinishInsertion; override;
   function InsertTable(const aChild: InevTag): Boolean; override;
 end;//TevControlGenerator

implementation

uses
  k2Tags,
  l3Base,
  l3Chars,
  evParaTools,
  evdTypes,
  TextPara_Const,
  ControlPara_Const,
  nevTools
  ;

// start class TevControlGenerator

procedure TevControlGenerator.Cleanup;
//#UC START# *479731C50290_48DBA80F01C8_var*
//#UC END# *479731C50290_48DBA80F01C8_var*
begin
//#UC START# *479731C50290_48DBA80F01C8_impl*
 l3Free(f_DataString);
 inherited;
//#UC END# *479731C50290_48DBA80F01C8_impl*
end;//TevControlGenerator.Cleanup

procedure TevControlGenerator.InsertPara(const aChild: InevTag);
//#UC START# *48E4B7DA0313_48DBA80F01C8_var*
//#UC END# *48E4B7DA0313_48DBA80F01C8_var*
begin
//#UC START# *48E4B7DA0313_48DBA80F01C8_impl*
 if aChild.InheritsFrom(k2_idTextPara) then
 begin
  if not f_FirstPara then
  begin
   if f_MultiLine then
    f_DataString.Append(cc_SoftEnter)
   else
    f_DataString.Append(cc_HardSpace);
  end;
  f_FirstPara := False;
  if evHasText(aChild) then
   f_DataString.Append(aChild.PCharLenA[k2_tiText]);
 end;
//#UC END# *48E4B7DA0313_48DBA80F01C8_impl*
end;//TevControlGenerator.InsertPara

procedure TevControlGenerator.StartInsertion;
//#UC START# *48E4B7E90296_48DBA80F01C8_var*
var
 l_Para: PInevObject;
//#UC END# *48E4B7E90296_48DBA80F01C8_var*
begin
//#UC START# *48E4B7E90296_48DBA80F01C8_impl*
 Inherited;
 f_DataString := Tl3InterfacedString.Create;
 l_Para := Cursor.MostInner.Obj;
 f_MultiLine := l_Para.InheritsFrom(k2_idControlPara) and
   (TevControlType(l_Para.IntA[k2_tiType]) = ev_ctMemoEdit);
 f_FirstPara := True;
//#UC END# *48E4B7E90296_48DBA80F01C8_impl*
end;//TevControlGenerator.StartInsertion

procedure TevControlGenerator.FinishInsertion;
//#UC START# *48E4B7F403D6_48DBA80F01C8_var*
//#UC END# *48E4B7F403D6_48DBA80F01C8_var*
begin
//#UC START# *48E4B7F403D6_48DBA80F01C8_impl*
 EnableUndo;
 if f_DataString.Len > 0 then
  InsCursor.Text.Modify.InsertString(View, f_DataString, Context, True,
   [misfDirect
   , misfLockCursors]);
 Inherited;
//#UC END# *48E4B7F403D6_48DBA80F01C8_impl*
end;//TevControlGenerator.FinishInsertion

function TevControlGenerator.InsertTable(const aChild: InevTag): Boolean;
//#UC START# *48E4B802032E_48DBA80F01C8_var*
//#UC END# *48E4B802032E_48DBA80F01C8_var*
begin
//#UC START# *48E4B802032E_48DBA80F01C8_impl*
 Result := False;
//#UC END# *48E4B802032E_48DBA80F01C8_impl*
end;//TevControlGenerator.InsertTable

end.