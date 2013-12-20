unit evReqGroup_InterfaceFactory;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/evReqGroup_InterfaceFactory.pas"
// Начат: 22.02.2011 17:01
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<InterfaceFactory::Class>> Shared Delphi::Everest::Standard::TevReqGroup
//
// Фабрика интерфейсов для группы реквизитов
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
  ReqGroup_Const,
  k2Interfaces,
  nevBase,
  l3IID
  ;

type
 TevReqGroupInterfaceFactory = class(TevTableInterfaceFactory)
  {* Фабрика интерфейсов для группы реквизитов }
 protected
 // overridden protected methods
   function COMQueryTool(const aTag: Ik2Tag;
     const IID: Tl3GUID;
     out Tool;
     const aProcessor: InevProcessor): Boolean; override;
 end;//TevReqGroupInterfaceFactory

implementation

uses
  nevRealTools,
  nevGUIInterfaces
  {$If defined(evReqGroupNeedsRadio)}
  ,
  evReqGroupPainter
  {$IfEnd} //evReqGroupNeedsRadio
  
  {$If defined(evReqGroupNeedsRadio)}
  ,
  evReqGroupHotSpotTester
  {$IfEnd} //evReqGroupNeedsRadio
  
  ;

// start class TevReqGroupInterfaceFactory

function TevReqGroupInterfaceFactory.COMQueryTool(const aTag: Ik2Tag;
  const IID: Tl3GUID;
  out Tool;
  const aProcessor: InevProcessor): Boolean;
//#UC START# *4D63C26E01AC_4D63C1860228_var*
//#UC END# *4D63C26E01AC_4D63C1860228_var*
begin
//#UC START# *4D63C26E01AC_4D63C1860228_impl*
 {$IfDef evReqGroupNeedsRadio}
 Result := true;
 if IID.EQ(IevPainter) then
  IevPainter(Tool) := TevReqGroupPainter.Make(aTag)
 else
 if IID.EQ(InevHotSpotTester2) then
  InevHotSpotTester2(Tool) := TevReqGroupHotSpotTester.Make(aTag, aProcessor)
 else
 {$EndIf evReqGroupNeedsRadio}
  Result := inherited COMQueryTool(aTag, IID, Tool, aProcessor);
//#UC END# *4D63C26E01AC_4D63C1860228_impl*
end;//TevReqGroupInterfaceFactory.COMQueryTool

end.