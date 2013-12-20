unit vtDateEditRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "VT"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/VT/vtDateEditRes.pas"
// �����: 03.03.2010 14:43
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> Shared Delphi::VT::DateEdit::vtDateEditRes
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\VT\vtDefine.inc}

interface

uses
  l3StringIDEx
  ;

type
 TvtMonths = 1..12;
  {* ������ }

var
  { ������������ ������ TvtDateEditHints }
 str_vtStrPrevYear : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtStrPrevYear'; rValue : '���������� ���');
  { '���������� ���' }
 str_vtStrPrevMonth : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtStrPrevMonth'; rValue : '���������� �����');
  { '���������� �����' }
 str_vtStrNextMonth : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtStrNextMonth'; rValue : '��������� �����');
  { '��������� �����' }
 str_vtStrNextYear : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtStrNextYear'; rValue : '��������� ���');
  { '��������� ���' }

var
  { ������������ ������ TvtMiscMessages }
 str_vtTodayLongLabel : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtTodayLongLabel'; rValue : '������� %s');
  { '������� %s' }
 str_vtTodayHint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtTodayHint'; rValue : '������� ��� ��������� ����������� ����');
  { '������� ��� ��������� ����������� ����' }
 str_vtCancel : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtCancel'; rValue : '������');
  { '������' }
 str_vtTodayShortLabel : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtTodayShortLabel'; rValue : '�������');
  { '�������' }
 str_vtChoose : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtChoose'; rValue : '�������');
  { '�������' }

var
  { ������������ ������ Months }
 str_vtJanuary : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtJanuary'; rValue : '������');
  { '������' }
 str_vtFebruary : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtFebruary'; rValue : '�������');
  { '�������' }
 str_vtMarch : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtMarch'; rValue : '����');
  { '����' }
 str_vtApril : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtApril'; rValue : '������');
  { '������' }
 str_vtMay : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtMay'; rValue : '���');
  { '���' }
 str_vtJune : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtJune'; rValue : '����');
  { '����' }
 str_vtJuly : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtJuly'; rValue : '����');
  { '����' }
 str_vtAugust : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtAugust'; rValue : '������');
  { '������' }
 str_vtSeptember : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtSeptember'; rValue : '��������');
  { '��������' }
 str_vtOctober : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtOctober'; rValue : '�������');
  { '�������' }
 str_vtNovember : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtNovember'; rValue : '������');
  { '������' }
 str_vtDecember : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtDecember'; rValue : '�������');
  { '�������' }

var
  { ������������ ������ TStDayType }
 str_vtSunday : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtSunday'; rValue : '��');
  { '��' }
 str_vtMonday : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtMonday'; rValue : '��');
  { '��' }
 str_vtTuesday : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtTuesday'; rValue : '��');
  { '��' }
 str_vtWednesday : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtWednesday'; rValue : '��');
  { '��' }
 str_vtThursday : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtThursday'; rValue : '��');
  { '��' }
 str_vtFriday : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtFriday'; rValue : '��');
  { '��' }
 str_vtSaturday : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'vtSaturday'; rValue : '��');
  { '��' }

implementation

uses
  l3MessageID
  ;


initialization
// ������������� str_vtStrPrevYear
 str_vtStrPrevYear.Init;
// ������������� str_vtStrPrevMonth
 str_vtStrPrevMonth.Init;
// ������������� str_vtStrNextMonth
 str_vtStrNextMonth.Init;
// ������������� str_vtStrNextYear
 str_vtStrNextYear.Init;
// ������������� str_vtTodayLongLabel
 str_vtTodayLongLabel.Init;
// ������������� str_vtTodayHint
 str_vtTodayHint.Init;
// ������������� str_vtCancel
 str_vtCancel.Init;
// ������������� str_vtTodayShortLabel
 str_vtTodayShortLabel.Init;
// ������������� str_vtChoose
 str_vtChoose.Init;
// ������������� str_vtJanuary
 str_vtJanuary.Init;
// ������������� str_vtFebruary
 str_vtFebruary.Init;
// ������������� str_vtMarch
 str_vtMarch.Init;
// ������������� str_vtApril
 str_vtApril.Init;
// ������������� str_vtMay
 str_vtMay.Init;
// ������������� str_vtJune
 str_vtJune.Init;
// ������������� str_vtJuly
 str_vtJuly.Init;
// ������������� str_vtAugust
 str_vtAugust.Init;
// ������������� str_vtSeptember
 str_vtSeptember.Init;
// ������������� str_vtOctober
 str_vtOctober.Init;
// ������������� str_vtNovember
 str_vtNovember.Init;
// ������������� str_vtDecember
 str_vtDecember.Init;
// ������������� str_vtSunday
 str_vtSunday.Init;
// ������������� str_vtMonday
 str_vtMonday.Init;
// ������������� str_vtTuesday
 str_vtTuesday.Init;
// ������������� str_vtWednesday
 str_vtWednesday.Init;
// ������������� str_vtThursday
 str_vtThursday.Init;
// ������������� str_vtFriday
 str_vtFriday.Init;
// ������������� str_vtSaturday
 str_vtSaturday.Init;

end.