unit mgIndexList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "m4"
// Автор: Люлин А.В.
// Модуль: "w:/common/components/rtl/Garant/m4/mgIndexList.pas"
// Начат: 17.09.2009 14:41
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi For Archi::m4::mg::TmgIndexList
//
// Список индексов для разбора заголовков
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\m4\m4Define.inc}

interface

uses
  Classes,
  l3ProtoDataContainer,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except
  ;

type
 _ItemType_ = Integer;
 _l3AtomicList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3AtomicList.imp.pas}
 TmgIndexList = class(_l3AtomicList_)
  {* Список индексов для разбора заголовков }
 protected
 // overridden protected methods
   {$If not defined(DesignTimeLibrary)}
   class function IsCacheable: Boolean; override;
     {* функция класса, определяющая могут ли объекты данного класса попадать в кэш повторного использования. }
   {$IfEnd} //not DesignTimeLibrary
 public
 // public methods
   procedure LoadFromStreamEx(aPos: LongWord;
    aStream: TStream);
   function SaveToStreamEx(aStream: TStream): Int64;
 end;//TmgIndexList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

type _Instance_R_ = TmgIndexList;

{$Include w:\common\components\rtl\Garant\L3\l3AtomicList.imp.pas}

// start class TmgIndexList

procedure TmgIndexList.LoadFromStreamEx(aPos: LongWord;
  aStream: TStream);
//#UC START# *4AB2149001E7_4AB2125001FB_var*
var
 l_Count : Integer;
//#UC END# *4AB2149001E7_4AB2125001FB_var*
begin
//#UC START# *4AB2149001E7_4AB2125001FB_impl*
 if (APos <> High(LongWord)) then
 begin
  aStream.Seek(aPos, soBeginning);
  aStream.ReadBuffer(l_Count, SizeOf(l_Count));
  Count := l_Count;
  aStream.ReadBuffer(ItemSlot(0)^, l_Count * SizeOf(Integer));
 end;//APos <> High(LongWord)
//#UC END# *4AB2149001E7_4AB2125001FB_impl*
end;//TmgIndexList.LoadFromStreamEx

function TmgIndexList.SaveToStreamEx(aStream: TStream): Int64;
//#UC START# *4AB217D40007_4AB2125001FB_var*
var
 l_Count : Integer;
//#UC END# *4AB217D40007_4AB2125001FB_var*
begin
//#UC START# *4AB217D40007_4AB2125001FB_impl*
 Result := aStream.Seek(0, soCurrent);
 l_Count := Count;
 aStream.WriteBuffer(l_Count, SizeOf(l_Count));
 aStream.WriteBuffer(ItemSlot(0)^, l_Count * SizeOf(Integer));
//#UC END# *4AB217D40007_4AB2125001FB_impl*
end;//TmgIndexList.SaveToStreamEx

{$If not defined(DesignTimeLibrary)}
class function TmgIndexList.IsCacheable: Boolean;
//#UC START# *47A6FEE600FC_4AB2125001FB_var*
//#UC END# *47A6FEE600FC_4AB2125001FB_var*
begin
//#UC START# *47A6FEE600FC_4AB2125001FB_impl*
 Result := true;
//#UC END# *47A6FEE600FC_4AB2125001FB_impl*
end;//TmgIndexList.IsCacheable
{$IfEnd} //not DesignTimeLibrary

end.