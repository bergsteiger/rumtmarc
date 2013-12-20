unit evFormulaPainter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evFormulaPainter.pas"
// Начат: 15.12.2002 15:28
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::LeafPara Painters::TevFormulaPainter
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evTextParaPainterEx,
  l3InternalInterfaces
  ;

type
 TevFormulaPainter = class(TevTextParaPainterEx)
 protected
 // overridden protected methods
   procedure DoFillSelection; override;
   function DrawLeaf: Boolean; override;
   function GetBitmapForPara: Il3Bitmap; override;
 end;//TevFormulaPainter

implementation

uses
  k2Tags
  ;

// start class TevFormulaPainter

procedure TevFormulaPainter.DoFillSelection;
//#UC START# *4804B86403BE_4804CC63006C_var*
//#UC END# *4804B86403BE_4804CC63006C_var*
begin
//#UC START# *4804B86403BE_4804CC63006C_impl*
//#UC END# *4804B86403BE_4804CC63006C_impl*
end;//TevFormulaPainter.DoFillSelection

function TevFormulaPainter.DrawLeaf: Boolean;
//#UC START# *4804C81000B9_4804CC63006C_var*
//#UC END# *4804C81000B9_4804CC63006C_var*
begin
//#UC START# *4804C81000B9_4804CC63006C_impl*
 if ParaX.BoolA[k2_tiCollapsed] then
 begin
  //evCheckRenderedFormula(ParaX);
  Result := DrawPicture
 end//ParaX.BoolA[k2_tiCollapsed]
 else
  Result := inherited DrawLeaf;
//#UC END# *4804C81000B9_4804CC63006C_impl*
end;//TevFormulaPainter.DrawLeaf

function TevFormulaPainter.GetBitmapForPara: Il3Bitmap;
//#UC START# *4E53B9A500B4_4804CC63006C_var*
//#UC END# *4E53B9A500B4_4804CC63006C_var*
begin
//#UC START# *4E53B9A500B4_4804CC63006C_impl*
 //Assert(ParaX.HasSubAtom(k2_tiObject));
 Result := inherited GetBitmapForPara;
//#UC END# *4E53B9A500B4_4804CC63006C_impl*
end;//TevFormulaPainter.GetBitmapForPara

end.