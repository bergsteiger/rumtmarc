unit vtReminder;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VT$Rem"
// ������: "w:/common/components/gui/Garant/VT/vtReminder.pas"
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<GuiControl::Class>> Shared Delphi::VT$Rem::Reminders::TvtReminder
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  vtCustomReminder
  ;

type
//#UC START# *4FDF1B08029Aci*
//#UC END# *4FDF1B08029Aci*
 TvtReminder = class(TvtCustomReminder)
//#UC START# *4FDF1B08029Apubl*
 published
   property Picture;
   property ImageIndex;
   property Images;
   property RemindersLine;
   property Flashing;
   property FlashInterval;
   property DrawCaption;
   property ShowPopupFormOnDock;
   property AfterBaloonShowed;
   property AfterBaloonHidden;
   property IsBaloonVisible;
   property Capturing;
   property PopupMenu;
//#UC END# *4FDF1B08029Apubl*
 end;//TvtReminder

implementation


//#UC START# *4FDF1B08029Aimpl*
//#UC END# *4FDF1B08029Aimpl*
end.