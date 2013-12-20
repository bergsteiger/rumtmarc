unit nevDocumentPartAnchor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevDocumentPartAnchor.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Anchors::TnevDocumentPartAnchor
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\new\nevDefine.inc}

interface

uses
  nevParaListAnchor
  ;

type
 TnevDocumentPartAnchor = class(TnevParaListAnchor)
 protected
 // overridden protected methods
   procedure CheckInner; override;
 end;//TnevDocumentPartAnchor

implementation

uses
  k2Tags
  ;

// start class TnevDocumentPartAnchor

procedure TnevDocumentPartAnchor.CheckInner;
//#UC START# *4A58C42A029C_4ED8C0B600A4_var*
//#UC END# *4A58C42A029C_4ED8C0B600A4_var*
begin
//#UC START# *4A58C42A029C_4ED8C0B600A4_impl*
 if not ParaX.BoolA[k2_tiCollapsed] then
  inherited CheckInner;
//#UC END# *4A58C42A029C_4ED8C0B600A4_impl*
end;//TnevDocumentPartAnchor.CheckInner

end.