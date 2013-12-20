unit evAutoreferatDocument_InterfaceFactory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evAutoreferatDocument_InterfaceFactory.pas"
// Начат: 02.03.2011 19:09
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<InterfaceFactory::Class>> Shared Delphi::Everest::Standard::TevAutoreferatDocument
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evStdInt,
  AutoreferatDocument_Const,
  k2Interfaces,
  nevBase,
  l3IID
  ;

type
 TevAutoreferatDocumentInterfaceFactory = class(TevDocumentInterfaceFactory)
 protected
 // overridden protected methods
   function COMQueryTool(const aTag: Ik2Tag;
     const IID: Tl3GUID;
     out Tool;
     const aProcessor: InevProcessor): Boolean; override;
 end;//TevAutoreferatDocumentInterfaceFactory

implementation

uses
  nevTools,
  nevAutoreferatDocumentAnchor
  ;

// start class TevAutoreferatDocumentInterfaceFactory

function TevAutoreferatDocumentInterfaceFactory.COMQueryTool(const aTag: Ik2Tag;
  const IID: Tl3GUID;
  out Tool;
  const aProcessor: InevProcessor): Boolean;
//#UC START# *4D63C26E01AC_4D6E6BA90279_var*
//#UC END# *4D63C26E01AC_4D6E6BA90279_var*
begin
//#UC START# *4D63C26E01AC_4D6E6BA90279_impl*
 Result := true;
 if IID.EQ(InevAnchor) then
  InevAnchor(Tool) := TnevAutoreferatDocumentAnchor.Make(aTag)
 else
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
//#UC END# *4D63C26E01AC_4D6E6BA90279_impl*
end;//TevAutoreferatDocumentInterfaceFactory.COMQueryTool

end.