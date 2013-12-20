unit nevDocumentContainerPrim;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "Everest"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/gui/Garant/Everest/nevDocumentContainerPrim.pas"
// Начат: 24.06.2009 19:47
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::Document::TnevDocumentContainerPrim
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  l3CBase,
  l3Interfaces,
  k2Interfaces,
  l3Types,
  k2Base,
  k2Prim,
  k2BaseStruct,
  k2PureMixIns,
  k2BaseTypes
  ;

type
 _k2Tag_Parent_ = Tl3CBase;
 {$Include w:\common\components\rtl\Garant\K2\k2Tag.imp.pas}
 TnevDocumentContainerPrim = class(_k2Tag_)
 protected
 // realized methods
   {$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
   function SetAtomPrim(const aProp: _PropIn_;
    var V: Tk2Values): Boolean; override;
   {$IfEnd} //not _Box_ AND not k2TagIsAtomic
 protected
 // overridden protected methods
   procedure InitFields; override;
 end;//TnevDocumentContainerPrim

implementation

uses
  k2Facade,
  k2Object_Const,
  k2TagList,
  k2List,
  k2Tags,
  l3Dict,
  k2Const,
  l3Const,
  SysUtils,
  l3String,
  k2Except,
  k2Strings,
  TypInfo,
  l3Stream,
  l3Base,
  Classes
  ;

type _Instance_R_ = TnevDocumentContainerPrim;

{$Include w:\common\components\rtl\Garant\K2\k2Tag.imp.pas}

// start class TnevDocumentContainerPrim

{$If not defined(_Box_) AND not defined(k2TagIsAtomic)}
function TnevDocumentContainerPrim.SetAtomPrim(const aProp: _PropIn_;
  var V: Tk2Values): Boolean;
//#UC START# *49A545580241_4A69D7830067_var*
//#UC END# *49A545580241_4A69D7830067_var*
begin
//#UC START# *49A545580241_4A69D7830067_impl*
 Result := false;
 Assert(false);
//#UC END# *49A545580241_4A69D7830067_impl*
end;//TnevDocumentContainerPrim.SetAtomPrim
{$IfEnd} //not _Box_ AND not k2TagIsAtomic

procedure TnevDocumentContainerPrim.InitFields;
//#UC START# *47A042E100E2_4A69D7830067_var*
//#UC END# *47A042E100E2_4A69D7830067_var*
begin
//#UC START# *47A042E100E2_4A69D7830067_impl*
 inherited;
 f_TagType := k2.TypeTable[k2_idObject];
//#UC END# *47A042E100E2_4A69D7830067_impl*
end;//TnevDocumentContainerPrim.InitFields

end.