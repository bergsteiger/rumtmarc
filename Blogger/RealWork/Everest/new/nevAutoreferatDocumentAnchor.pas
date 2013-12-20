unit nevAutoreferatDocumentAnchor;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/new/nevAutoreferatDocumentAnchor.pas"
// Начат: 02.03.2011 19:13
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Anchors::TnevAutoreferatDocumentAnchor
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\new\nevDefine.inc}

interface

uses
  nevParaListAnchor,
  nevTools,
  nevParaListAnchorModifyTypes
  ;

type
 TnevAutoreferatDocumentAnchor = class(TnevParaListAnchor)
 protected
 // overridden protected methods
   function DoIncLine(const aView: InevView;
    var theLine: Integer;
    aSmall: Boolean;
    const aChildrenInfo: TnevChildrenInfo): Integer; override;
 end;//TnevAutoreferatDocumentAnchor

implementation

// start class TnevAutoreferatDocumentAnchor

function TnevAutoreferatDocumentAnchor.DoIncLine(const aView: InevView;
  var theLine: Integer;
  aSmall: Boolean;
  const aChildrenInfo: TnevChildrenInfo): Integer;
//#UC START# *4B1D18650208_4D6E6C6501F9_var*
//#UC END# *4B1D18650208_4D6E6C6501F9_var*
begin
//#UC START# *4B1D18650208_4D6E6C6501F9_impl*
 if not aSmall AND
    aChildrenInfo.rLinear AND
    (Abs(theLine) > aChildrenInfo.rLeafCount * 2) then
  Result := 0
 else
  Result := inherited DoIncLine(aView, theLine, aSmall, aChildrenInfo);
//#UC END# *4B1D18650208_4D6E6C6501F9_impl*
end;//TnevAutoreferatDocumentAnchor.DoIncLine

end.