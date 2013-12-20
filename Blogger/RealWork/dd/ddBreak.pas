unit ddBreak;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddBreak.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::ddCommon::TddBreak
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
  RTFtypes,
  ddCustomDestination,
  k2Interfaces
  ;

type
 TddBreak = class(TddDocumentAtom)
 private
 // private fields
   f_BreakType : TddBreakType;
    {* Поле для свойства BreakType}
   f_SEP : TddSectionProperty;
    {* Поле для свойства SEP}
 protected
 // realized methods
   procedure Write2Generator(const Generator: Ik2TagGenerator;
     aNeedProcessRow: Boolean;
     LiteVersion: Boolean); override;
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
 public
 // overridden public methods
   constructor Create(anOwner: TObject;
    aDetination: TddCustomDestination); override;
 public
 // public properties
   property BreakType: TddBreakType
     read f_BreakType
     write f_BreakType;
   property SEP: TddSectionProperty
     read f_SEP;
 end;//TddBreak

implementation

uses
  PageBreak_Const,
  SectionBreak_Const,
  k2Tags,
  l3Interfaces,
  l3MinMax,
  SysUtils
  ;

// start class TddBreak

procedure TddBreak.Write2Generator(const Generator: Ik2TagGenerator;
  aNeedProcessRow: Boolean;
  LiteVersion: Boolean);
//#UC START# *518A504F00F5_51E8EFD50162_var*
//#UC END# *518A504F00F5_51E8EFD50162_var*
begin
//#UC START# *518A504F00F5_51E8EFD50162_impl*
 case BreakType of
   breakPage :
       begin
        Generator.StartChild(k2_idPageBreak);
        Generator.Finish;
       end;
   breakSection:
       begin
        Generator.StartChild(k2_idSectionBreak);
        try
         Generator.StartTag(k2_tiParas);
         try
          if SEP.fLandscape then
          begin
           Generator.AddIntegerAtom(k2_tiOrientation, Ord(l3_poLandscape));
           Generator.AddIntegerAtom(k2_tiHeight, Max(SEP.yaPage, SEP.xaPage));
           Generator.AddIntegerAtom(k2_tiWidth, Min(SEP.xaPage, SEP.yaPage));
          end
          else
          begin
           Generator.AddIntegerAtom(k2_tiOrientation, Ord(l3_poPortrait));
           Generator.AddIntegerAtom(k2_tiHeight, Max(SEP.yaPage, SEP.xaPage));
           Generator.AddIntegerAtom(k2_tiWidth, Min(SEP.xaPage, SEP.yaPage));
          end;
         finally
          Generator.Finish;
         end;{try..finally}
        finally
         Generator.Finish;
        end;
       end;
 end;
//#UC END# *518A504F00F5_51E8EFD50162_impl*
end;//TddBreak.Write2Generator

procedure TddBreak.Cleanup;
//#UC START# *479731C50290_51E8EFD50162_var*
//#UC END# *479731C50290_51E8EFD50162_var*
begin
//#UC START# *479731C50290_51E8EFD50162_impl*
  FreeAndNil(f_SEP);
  inherited;
//#UC END# *479731C50290_51E8EFD50162_impl*
end;//TddBreak.Cleanup

constructor TddBreak.Create(anOwner: TObject;
  aDetination: TddCustomDestination);
//#UC START# *51E91BA80051_51E8EFD50162_var*
//#UC END# *51E91BA80051_51E8EFD50162_var*
begin
//#UC START# *51E91BA80051_51E8EFD50162_impl*
  inherited Create(anOwner, aDetination);
  AtomType:= dd_docBreak;
  f_SEP:= TddSectionProperty.Create(nil);
//#UC END# *51E91BA80051_51E8EFD50162_impl*
end;//TddBreak.Create

end.