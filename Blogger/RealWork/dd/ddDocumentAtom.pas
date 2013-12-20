unit ddDocumentAtom;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "dd"
// Модуль: "w:/common/components/rtl/Garant/dd/ddDocumentAtom.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::dd::ddCommon::TddDocumentAtom
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

interface

uses
  k2Interfaces,
  l3ProtoPersistentOwnedDataContainer,
  ddBase,
  ddCustomDestination,
  Classes
  ;

type
 TddDocumentAtom = class(Tl3ProtoPersistentOwnedDataContainer)
 private
 // private fields
   f_Owner : TObject;
   f_AtomType : TddDocAtomType;
    {* Поле для свойства AtomType}
   f_Closed : Boolean;
    {* Поле для свойства Closed}
 protected
 // property methods
   procedure pm_SetClosed(aValue: Boolean);
 protected
 // overridden protected methods
   procedure Cleanup; override;
     {* Функция очистки полей объекта. }
   function GetOwner: TPersistent; override;
   function GetEmpty: Boolean; override;
   procedure DoSetOwner(Value: TObject); override;
     {* метод для установки "владельца" объекта. Для перекрытия в потомках. }
 protected
 // protected fields
   f_Destination : TddCustomDestination;
 protected
 // protected methods
   procedure DoClose; virtual;
 public
 // public methods
   procedure Clear; virtual;
   procedure Write2Generator(const Generator: Ik2TagGenerator;
     aNeedProcessRow: Boolean;
     LiteVersion: Boolean); virtual; abstract;
   function JoinWith(P: TObject;
     aCorrectSegment: Boolean = False): Integer; virtual;
   constructor Create(anOwner: TObject;
    aDetination: TddCustomDestination); reintroduce; virtual;
 public
 // public properties
   property AtomType: TddDocAtomType
     read f_AtomType
     write f_AtomType;
   property Closed: Boolean
     read f_Closed
     write pm_SetClosed;
 end;//TddDocumentAtom

implementation

// start class TddDocumentAtom

procedure TddDocumentAtom.Clear;
//#UC START# *518A48F500CF_4FACE0E4032F_var*
//#UC END# *518A48F500CF_4FACE0E4032F_var*
begin
//#UC START# *518A48F500CF_4FACE0E4032F_impl*
//#UC END# *518A48F500CF_4FACE0E4032F_impl*
end;//TddDocumentAtom.Clear

procedure TddDocumentAtom.DoClose;
//#UC START# *518A4950037A_4FACE0E4032F_var*
//#UC END# *518A4950037A_4FACE0E4032F_var*
begin
//#UC START# *518A4950037A_4FACE0E4032F_impl*
//#UC END# *518A4950037A_4FACE0E4032F_impl*
end;//TddDocumentAtom.DoClose

function TddDocumentAtom.JoinWith(P: TObject;
  aCorrectSegment: Boolean = False): Integer;
//#UC START# *51921142034B_4FACE0E4032F_var*
//#UC END# *51921142034B_4FACE0E4032F_var*
begin
//#UC START# *51921142034B_4FACE0E4032F_impl*
 Result := -1;
//#UC END# *51921142034B_4FACE0E4032F_impl*
end;//TddDocumentAtom.JoinWith

procedure TddDocumentAtom.pm_SetClosed(aValue: Boolean);
//#UC START# *5192108D0091_4FACE0E4032Fset_var*
//#UC END# *5192108D0091_4FACE0E4032Fset_var*
begin
//#UC START# *5192108D0091_4FACE0E4032Fset_impl*
 f_Closed := aValue;
 if f_Closed then
  DoClose;
//#UC END# *5192108D0091_4FACE0E4032Fset_impl*
end;//TddDocumentAtom.pm_SetClosed

constructor TddDocumentAtom.Create(anOwner: TObject;
  aDetination: TddCustomDestination);
//#UC START# *51E91BA80051_4FACE0E4032F_var*
//#UC END# *51E91BA80051_4FACE0E4032F_var*
begin
//#UC START# *51E91BA80051_4FACE0E4032F_impl*
 inherited Create(anOwner);
 f_Destination := aDetination;
//#UC END# *51E91BA80051_4FACE0E4032F_impl*
end;//TddDocumentAtom.Create

procedure TddDocumentAtom.Cleanup;
//#UC START# *479731C50290_4FACE0E4032F_var*
//#UC END# *479731C50290_4FACE0E4032F_var*
begin
//#UC START# *479731C50290_4FACE0E4032F_impl*
 f_Destination := nil;
 inherited;
//#UC END# *479731C50290_4FACE0E4032F_impl*
end;//TddDocumentAtom.Cleanup

function TddDocumentAtom.GetOwner: TPersistent;
//#UC START# *480DD1890221_4FACE0E4032F_var*
//#UC END# *480DD1890221_4FACE0E4032F_var*
begin
//#UC START# *480DD1890221_4FACE0E4032F_impl*
 Result := f_Owner as TPersistent;
//#UC END# *480DD1890221_4FACE0E4032F_impl*
end;//TddDocumentAtom.GetOwner

function TddDocumentAtom.GetEmpty: Boolean;
//#UC START# *4A54E03B009A_4FACE0E4032F_var*
//#UC END# *4A54E03B009A_4FACE0E4032F_var*
begin
//#UC START# *4A54E03B009A_4FACE0E4032F_impl*
 Result := false;
//#UC END# *4A54E03B009A_4FACE0E4032F_impl*
end;//TddDocumentAtom.GetEmpty

procedure TddDocumentAtom.DoSetOwner(Value: TObject);
//#UC START# *4A60A2CF0329_4FACE0E4032F_var*
//#UC END# *4A60A2CF0329_4FACE0E4032F_var*
begin
//#UC START# *4A60A2CF0329_4FACE0E4032F_impl*
 f_Owner := Value;
//#UC END# *4A60A2CF0329_4FACE0E4032F_impl*
end;//TddDocumentAtom.DoSetOwner

end.