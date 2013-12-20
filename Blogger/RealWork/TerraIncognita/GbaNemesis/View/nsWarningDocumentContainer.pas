unit nsWarningDocumentContainer;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "View"
// Автор: Люлин А.В.
// Модуль: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsWarningDocumentContainer.pas"
// Начат: 17.01.2012 13:13
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Работа с документом и списком документов::Document::View::Warning::TnsWarningDocumentContainer
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  eeDocumentContainer,
  nevTools,
  DocumentAndListInterfaces
  {$If not defined(NoVCM)}
  ,
  vcmUserControls
  {$IfEnd} //not NoVCM
  ,
  l3Interfaces,
  nevBase,
  afwInterfaces,
  k2Base
  ;
{$IfEnd} //not Admin AND not Monitorings

{$If not defined(Admin) AND not defined(Monitorings)}
type
 TnsWarningDocumentContainer = class(TeeDocumentContainer)
 private
 // private fields
   f_ViewArea : IdsWarning;
   f_UserType : TvcmUserType;
 protected
 // overridden protected methods
   function GetDocument: InevTag; override;
   procedure ClearFields; override;
 public
 // public methods
   constructor Create(const aViewArea: IdsWarning;
     aUserType: TvcmUserType); reintroduce;
   class function Make(const aViewArea: IdsWarning;
     aUserType: TvcmUserType): InevDocumentContainer; reintroduce;
     {* Сигнатура фабрики TnsWarningDocumentContainer.Make }
 end;//TnsWarningDocumentContainer
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}

// start class TnsWarningDocumentContainer

constructor TnsWarningDocumentContainer.Create(const aViewArea: IdsWarning;
  aUserType: TvcmUserType);
//#UC START# *4F153CE400E6_4F153BA50321_var*
//#UC END# *4F153CE400E6_4F153BA50321_var*
begin
//#UC START# *4F153CE400E6_4F153BA50321_impl*
 inherited Create;
 f_ViewArea := aViewArea;
 f_UserType := aUserType;
//#UC END# *4F153CE400E6_4F153BA50321_impl*
end;//TnsWarningDocumentContainer.Create

class function TnsWarningDocumentContainer.Make(const aViewArea: IdsWarning;
  aUserType: TvcmUserType): InevDocumentContainer;
var
 l_Inst : TnsWarningDocumentContainer;
begin
 l_Inst := Create(aViewArea, aUserType);
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TnsWarningDocumentContainer.GetDocument: InevTag;
//#UC START# *47F27DA80172_4F153BA50321_var*
//#UC END# *47F27DA80172_4F153BA50321_var*
begin
//#UC START# *47F27DA80172_4F153BA50321_impl*
 Result := inherited GetDocument;
 if (Result = nil) OR not Result.IsValid then
 begin
  f_ViewArea.GenerateWarning(Self{Viewer.TextSource}.GetGenerator(nil{Viewer.View}, nil), f_UserType);
  Result := inherited GetDocument;
  // - надо вернуть то, что нагенерировали
  Assert(Result.IsValid);
 end;//Result = nil
//#UC END# *47F27DA80172_4F153BA50321_impl*
end;//TnsWarningDocumentContainer.GetDocument

procedure TnsWarningDocumentContainer.ClearFields;
 {-}
begin
 f_ViewArea := nil;
 inherited;
end;//TnsWarningDocumentContainer.ClearFields

{$IfEnd} //not Admin AND not Monitorings

end.