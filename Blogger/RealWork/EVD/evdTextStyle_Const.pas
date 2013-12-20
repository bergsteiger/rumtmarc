unit evdTextStyle_Const;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "EVD"
// �����: ����� �.�.
// ������: "w:/common/components/rtl/Garant/EVD/evdTextStyle_Const.pas"
// �����: 07.06.2008 19:47
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<Tag::Class>> Shared Delphi::EVD::Standard::evdNative::TextStyle
//
// ����� ���������� ������
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ��������� ��� �������� ���� TextStyle - "����� ���������� ������".
// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\EVD\evdDefine.inc}

interface

uses
  k2Base {a},
  evdStyles
  ;

const
 k2_idTextStyle = 39;
var k2_idTextStyle_Header : Integer = -1;
var k2_idTextStyle_Footer : Integer = -1;

function k2_typTextStyle: Tk2Type;

const
 evd_saTxtNormalANSI = -1;
  { ���������� } 
 evd_saObject = -35;
  { ������-�����, ��� ��������� ��������� } 
 evd_saMistake = -36;
  { ����� � ��������� } 
 evd_saColorSelection = -10;
  { �������� ��������� } 
 evd_saHyperLink = -8;
  { �������������� ������ } 
 evd_saInterface = -38;
  { ����� ��� ������������ ��������� } 
 evd_saActiveHyperLink = -39;
  { �������� ����������� } 
 evd_saNormalTable = -17;
  { ���������� ��� ������ } 
 evd_saCenteredTable = -40;
  { �������������� � ������� } 
 evd_saColorSelectionForBaseSearch = -51;
  { ��������� ��� �������� ������ } 
 evd_saItalicColorSelectionForBaseSearch = evdStyles.ev_saItalicColorSelectionForBaseSearch;
  { ��������� ��� �������� ������ (������) } 
 evd_saDialogs = evdStyles.ev_saDialogs;
  { ����� �������� } 
 evd_saTOC = evdStyles.ev_saTOC;
  {  } 
 evd_saAttention = evdStyles.ev_saAttention;
  { �������� } 
 evd_saWriteToUs = evdStyles.ev_saWriteToUs;
  { �������� ��� } 

//#UC START# *484D2CBA0213const_intf*
const
 evd_saGUI =
  {$IfDef Archi}
  evd_saInterface
  {$Else  Archi}
  //evd_saTxtNormalANSI
  evd_saInterface
  // http://mdp.garant.ru/pages/viewpage.action?pageId=96475831
  {$EndIf Archi};
//#UC END# *484D2CBA0213const_intf*

implementation

uses
  evdNative_Schema,
  k2Facade {a}
  ;
var
 g_TextStyle : Tk2Type = nil;


// start class TextStyleTag

function k2_typTextStyle: Tk2Type;
begin
 if (g_TextStyle = nil) then
 begin
  Assert(Tk2TypeTable.GetInstance Is TevdNativeSchema);
  g_TextStyle := TevdNativeSchema(Tk2TypeTable.GetInstance).t_TextStyle;
 end;//g_TextStyle = nil
 Result := g_TextStyle;
end;

end.