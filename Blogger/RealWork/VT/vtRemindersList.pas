unit vtRemindersList;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Библиотека "VT$Rem"
// Модуль: "w:/common/components/gui/Garant/VT/vtRemindersList.pas"
// Родные Delphi интерфейсы (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::VT$Rem::Reminders::TvtRemindersList
//
//
// Все права принадлежат ООО НПП "Гарант-Сервис".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! Полностью генерируется с модели. Править руками - нельзя. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  l3ProtoDataContainer,
  vtCustomReminder,
  vtReminderUtils,
  l3Types,
  l3Memory,
  l3Interfaces,
  l3Core,
  l3Except,
  Classes
  ;

type
 _ItemType_ = TvtCustomReminder;
 _l3ObjectPtrList_Parent_ = Tl3ProtoDataContainer;
 {$Define l3Items_IsProto}
 {$Include w:\common\components\rtl\Garant\L3\l3ObjectPtrList.imp.pas}
 TvtRemindersList = class(_l3ObjectPtrList_)
 private
 // private fields
   f_RemindersLine : pointer;
    {* Поле для свойства RemindersLine}
 public
 // overridden public methods
   function Add(const anItem: _ItemType_): Integer; override;
     {* Добавляет элемент списка. }
 public
 // public methods
   constructor Create(const aRemindersLine: IvtRemindersLine); reintroduce;
 public
 // public properties
   property RemindersLine: pointer
     read f_RemindersLine
     write f_RemindersLine;
 end;//TvtRemindersList

implementation

uses
  l3Base,
  l3MinMax,
  RTLConsts,
  SysUtils
  ;

type _Instance_R_ = TvtRemindersList;

{$Include w:\common\components\rtl\Garant\L3\l3ObjectPtrList.imp.pas}

// start class TvtRemindersList

constructor TvtRemindersList.Create(const aRemindersLine: IvtRemindersLine);
//#UC START# *4FB3ADDB02A0_4FB3A300001C_var*
//#UC END# *4FB3ADDB02A0_4FB3A300001C_var*
begin
//#UC START# *4FB3ADDB02A0_4FB3A300001C_impl*
 inherited Create;
 f_RemindersLine := Pointer(aRemindersLine);
//#UC END# *4FB3ADDB02A0_4FB3A300001C_impl*
end;//TvtRemindersList.Create

function TvtRemindersList.Add(const anItem: _ItemType_): Integer;
//#UC START# *47A750E70096_4FB3A300001C_var*
//#UC END# *47A750E70096_4FB3A300001C_var*
begin
//#UC START# *47A750E70096_4FB3A300001C_impl*
 inherited Add(anItem);
 anItem.RemindersLine := IvtRemindersLine(f_RemindersLine);
 IvtRemindersLine(f_RemindersLine).UpdatePositions;
//#UC END# *47A750E70096_4FB3A300001C_impl*
end;//TvtRemindersList.Add

end.