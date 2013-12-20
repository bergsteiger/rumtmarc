unit nsTextWithCommentsRes;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/nsTextWithCommentsRes.pas"
// �����: 15.02.2011 15:23
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<UtilityPack::Class>> F1 Core::Base Operations::View::Base Forms::nsTextWithCommentsRes
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3Interfaces,
  afwInterfaces,
  l3CProtoObject,
  l3StringIDEx
  ;

var
  { ������������ ������ ShowVersionComments }
 str_svcCollapsed : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'svcCollapsed'; rValue : '� ��������� ����');
  { '� ��������� ����' }
 str_svcExpanded : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'svcExpanded'; rValue : '� ����������� ����');
  { '� ����������� ����' }

const
  { ����� �������������� �������������� ����� ShowVersionComments }
 ShowVersionCommentsMap : array [Boolean] of Pl3StringIDEx = (
  @str_svcCollapsed
  , @str_svcExpanded
 );//ShowVersionCommentsMap

type
 ShowVersionCommentsMapHelper = {final} class
  {* ��������� ����� ��� �������������� �������� ShowVersionCommentsMap }
 public
 // public methods
   class procedure FillStrings(const aStrings: IafwStrings);
     {* ���������� ������ ����� ���������� }
   class function DisplayNameToValue(const aDisplayName: Il3CString): Boolean;
     {* �������������� ���������� �������� � ����������� }
 end;//ShowVersionCommentsMapHelper

 TShowVersionCommentsMapImplPrim = {abstract} class(Tl3CProtoObject, Il3IntegerValueMap)
  {* ����� ��� ���������� ���� ��� ShowVersionCommentsMap }
 protected
 // realized methods
   function pm_GetMapID: Tl3ValueMapID;
   procedure GetDisplayNames(const aList: Il3StringsEx);
     {* ��������� ������ ���������� "UI-������" }
   function MapSize: Integer;
     {* ���������� ��������� � ����. }
   function DisplayNameToValue(const aDisplayName: Il3CString): Integer;
   function ValueToDisplayName(aValue: Integer): Il3CString;
 public
 // public methods
   class function Make: Il3IntegerValueMap; reintroduce;
     {* ��������� ����� ��� TShowVersionCommentsMapImplPrim }
 end;//TShowVersionCommentsMapImplPrim

 TShowVersionCommentsMapImpl = {final} class(TShowVersionCommentsMapImplPrim)
  {* ����� ��� ���������� ���� ��� ShowVersionCommentsMap }
 public
 // public methods
   class function Make: Il3IntegerValueMap; reintroduce;
     {* ��������� ����� ��� TShowVersionCommentsMapImpl }
 end;//TShowVersionCommentsMapImpl

var
  { ������������ ������ Local }
 str_pi_Document_ShowVersionsComment : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'pi_Document_ShowVersionsComment'; rValue : '���������� ���������� �� ���������� � ������ ���������');
  { '���������� ���������� �� ���������� � ������ ���������' }
 str_pi_Document_ShowVersionsComment_Hint : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'pi_Document_ShowVersionsComment_Hint'; rValue : '���������� ���������� �� ���������� � ������ ���������');
  { '���������� ���������� �� ���������� � ������ ���������' }
 str_pi_Document_SubPanel_ShowVersionComments : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'pi_Document_SubPanel_ShowVersionComments'; rValue : '���������� �� ����������');
  { '���������� �� ����������' }
{$IfEnd} //not Admin AND not Monitorings

implementation

{$If not defined(Admin) AND not defined(Monitorings)}
uses
  l3MessageID,
  l3String,
  SysUtils,
  l3Base
  ;

// start class ShowVersionCommentsMapHelper

class procedure ShowVersionCommentsMapHelper.FillStrings(const aStrings: IafwStrings);
var
 l_Index: Boolean;
begin
 aStrings.Clear;
 for l_Index := Low(l_Index) to High(l_Index) do
  aStrings.Add(ShowVersionCommentsMap[l_Index].AsCStr);
end;//ShowVersionCommentsMapHelper.FillStrings

class function ShowVersionCommentsMapHelper.DisplayNameToValue(const aDisplayName: Il3CString): Boolean;
var
 l_Index: Boolean;
begin
 for l_Index := Low(l_Index) to High(l_Index) do
  if l3Same(aDisplayName, ShowVersionCommentsMap[l_Index].AsCStr) then
  begin
   Result := l_Index;
   Exit;
  end;//l3Same..
 raise Exception.CreateFmt('Display name "%s" not found in map "ShowVersionCommentsMap"', [l3Str(aDisplayName)]);
end;//ShowVersionCommentsMapHelper.DisplayNameToValue
// start class TShowVersionCommentsMapImplPrim

class function TShowVersionCommentsMapImplPrim.Make: Il3IntegerValueMap;
var
 l_Inst : TShowVersionCommentsMapImplPrim;
begin
 l_Inst := Create;
 try
  Result := l_Inst;
 finally
  l_Inst.Free;
 end;//try..finally
end;

function TShowVersionCommentsMapImplPrim.pm_GetMapID: Tl3ValueMapID;
 {-}
begin
 l3FillChar(Result, SizeOf(Result));
 Assert(false);
end;//TShowVersionCommentsMapImplPrim.pm_GetMapID

procedure TShowVersionCommentsMapImplPrim.GetDisplayNames(const aList: Il3StringsEx);
 {-}
begin
 ShowVersionCommentsMapHelper.FillStrings(aList);
end;//TShowVersionCommentsMapImplPrim.GetDisplayNames

function TShowVersionCommentsMapImplPrim.MapSize: Integer;
 {-}
begin
 Result := Ord(High(Boolean)) - Ord(Low(Boolean));
end;//TShowVersionCommentsMapImplPrim.MapSize

function TShowVersionCommentsMapImplPrim.DisplayNameToValue(const aDisplayName: Il3CString): Integer;
 {-}
begin
 Result := Ord(ShowVersionCommentsMapHelper.DisplayNameToValue(aDisplayName));
end;//TShowVersionCommentsMapImplPrim.DisplayNameToValue

function TShowVersionCommentsMapImplPrim.ValueToDisplayName(aValue: Integer): Il3CString;
 {-}
begin
 Assert(aValue >= Ord(Low(Boolean)));
 Assert(aValue <= Ord(High(Boolean)));
 Result := ShowVersionCommentsMap[Boolean(aValue)].AsCStr;
end;//TShowVersionCommentsMapImplPrim.ValueToDisplayName
// start class TShowVersionCommentsMapImpl

var g_TShowVersionCommentsMapImpl : Pointer = nil;

procedure TShowVersionCommentsMapImplFree;
begin
 IUnknown(g_TShowVersionCommentsMapImpl) := nil;
end;


class function TShowVersionCommentsMapImpl.Make: Il3IntegerValueMap;
begin
 if (g_TShowVersionCommentsMapImpl = nil) then
 begin
  l3System.AddExitProc(TShowVersionCommentsMapImplFree);
  Il3IntegerValueMap(g_TShowVersionCommentsMapImpl) := inherited Make;
 end;
 Result := Il3IntegerValueMap(g_TShowVersionCommentsMapImpl);
end;
{$IfEnd} //not Admin AND not Monitorings

initialization
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_svcCollapsed
 str_svcCollapsed.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_svcExpanded
 str_svcExpanded.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_pi_Document_ShowVersionsComment
 str_pi_Document_ShowVersionsComment.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_pi_Document_ShowVersionsComment_Hint
 str_pi_Document_ShowVersionsComment_Hint.Init;
{$IfEnd} //not Admin AND not Monitorings
{$If not defined(Admin) AND not defined(Monitorings)}
// ������������� str_pi_Document_SubPanel_ShowVersionComments
 str_pi_Document_SubPanel_ShowVersionComments.Init;
{$IfEnd} //not Admin AND not Monitorings

end.