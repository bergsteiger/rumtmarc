(*-----------------------------------------------------------------------------
 ��������:   npUtils
 �����:      �. �������
 ����������:
 �������:

 $Id: vtNavigatorUtils.pas,v 1.9 2009/07/29 06:59:02 oman Exp $

 $Log: vtNavigatorUtils.pas,v $
 Revision 1.9  2009/07/29 06:59:02  oman
 - new: {RequestLink:158336069}

 Revision 1.8  2009/07/29 06:56:43  oman
 - new: {RequestLink:158336069}

 Revision 1.7  2008/06/27 11:13:12  oman
 - fix: ������� � ����������� (cq29470)

 Revision 1.6  2008/06/27 10:37:03  oman
 - fix: ������� � ����������� (cq29470)

 Revision 1.5  2007/08/15 15:15:19  lulin
 - �� �������� ������ ��������.

 Revision 1.4  2007/08/14 19:31:40  lulin
 - ������������ ������� ������.

 Revision 1.3  2005/12/01 14:11:01  mmorozov
 - bugfix: function npIsWindowMinimazed (cq: 00018418);

 Revision 1.2  2005/07/07 08:44:43  mmorozov
 new: global function npIsWindowMinimazed;

 Revision 1.1  2005/06/09 09:47:51  mmorozov
 - ���������� ���������� � ���������� VT;

 Revision 1.8  2005/01/28 17:33:05  mmorozov
 remove: �� ������������ ������;

 Revision 1.7  2005/01/28 17:30:37  mmorozov
 new: function npIsFloatingForm;
 new: function npIsInFloatNavigator;

 Revision 1.6  2004/10/01 09:19:41  mmorozov
 change: ��� �������� npIsModalForm ���������� IvcmEntityForm.IsModalForm;

 Revision 1.5  2004/09/30 07:21:42  mmorozov
 new: method npIsParentWindow;
 new: method npIsModalForm;

 Revision 1.4  2004/09/17 12:19:11  mmorozov
 new: overload npIsOwnerWindow;

 Revision 1.3  2004/08/23 11:34:01  mmorozov
 no message

 Revision 1.2  2004/08/23 11:33:19  mmorozov
 - add cvs log;

-----------------------------------------------------------------------------*)


unit vtNavigatorUtils;

interface

uses
  Classes,
  Controls,
  
  vtNavigator
  ;

function npIsOwnerWindow(aOwner       : TComponent;
                         var aControl : TWinControl;
                         aHandle      : THandle) : Boolean;
  overload;
  {* - ��������� �������� �� aOwner ������������ ���� � ���������� aHandle. }
function npIsOwnerWindow(aOwner       : TComponent;
                         aHandle      : THandle) : Boolean;
  overload;
  {* - ��������� �������� �� aOwner ������������ ���� � ���������� aHandle. }
function npIsParentWindow(aParent : TWinControl;
                          aHandle : THandle) : Boolean;
  {* - ���������� �������� �� aParent ��������� aHandle. }
function npFindWindow(aComponent : TComponent;
                      aHandle    : THandle) : TWinControl;
  {* - ����� � aComponent ���� � ���������� aHandle. ��� ������ �����������
       Components � Controls ���� ��������� �����������. }
function npIsModalForm(aHandle : THandle) : Boolean;
  {* - ���������� �������� �� ��������� � ��������� Handle ��������� ������. }
function npIsFloatingForm(aHandle : THandle) : Boolean;
  {* - ���������� �������� �� ��������� � ��������� Handle ��������� ������. }
function npIsInFloatNavigator(aHandle : THandle) : Boolean;
  {* - ���� ��������� � ��������� ����������. }
function npIsWindowMinimazed(const aWindow : TWinControl) : Boolean;
  {* - ���������� �������� �� aWindow ����������������. }

implementation

uses
  Forms,
  Windows,
  {$IfDef Nemesis}
  SysUtils,
  vcmInterfaces,
  {$EndIf Nemesis}
  l3Base
  ;

function npIsWindowMinimazed(const aWindow : TWinControl) : Boolean;
  {* - ���������� �������� �� aWindow ����������������. }
var
 lWP : TWindowPlacement;
begin
 Result := False;
 if Assigned(aWindow) and aWindow.HandleAllocated then
 begin
  l3FillChar(lWP, SizeOf(lWP));
  lWP.length := SizeOf(lWP);
  Windows.GetWindowPlacement(aWindow.Handle, @lWP);
  Result := lWP.showCmd = SW_SHOWMINIMIZED;
 end;
end;

function npIsInFloatNavigator(aHandle : THandle) : Boolean;
  {* - ���� ��������� � ��������� ����������. }
var
 lControl : TWinControl;
begin
 Result := False;
 lControl := FindControl(aHandle);
 if Assigned(lControl) then
 begin
  while Assigned(lControl) do
  begin
   if lControl is TnpFloatingWindow then
   begin
    Result := True;
    Break;
   end;
   lControl := lControl.Parent;
  end;
 end;
end;

function npIsModalForm(aHandle : THandle) : Boolean;
  {* - ���������� �������� �� ��������� � ��������� Handle ��������� ������. }
var
 lControl : TWinControl;
 {$IfDef Nemesis}
 lForm    : IvcmEntityForm;
 {$EndIf Nemesis}
begin
 lControl := FindControl(aHandle);
 Result := Assigned(lControl) and (lControl is TCustomForm);
 if Result then
  {$IfDef Nemesis}
  if Supports(lControl, IvcmEntityForm, lForm) then
  try
   Result := lForm.IsModalForm;
  finally
   lForm := nil;
  end
  else
   Result := (fsModal in TCustomForm(lControl).FormState);
  {$Else}
  Result := (fsModal in TCustomForm(lControl).FormState);
  {$EndIf Nemesis}
end;

function npIsFloatingForm(aHandle : THandle) : Boolean;
  {* - ���������� �������� �� ��������� � ��������� Handle ��������� ������. }
var
 lControl : TWinControl;
 {$IfDef Nemesis}
 lForm    : IvcmEntityForm;
 {$EndIf Nemesis}
begin
 lControl := FindControl(aHandle);
 Result := Assigned(lControl) and (lControl is TCustomForm);
 if Result then
  {$IfDef Nemesis}
  if Supports(lControl, IvcmEntityForm, lForm) then
  try
   Result := (lForm.ZoneType in [vcm_ztFloating, vcm_ztSimpleFloat]);
  finally
   lForm := nil;
  end;
  {$Else}
  Result := TCustomForm(lControl).Owner = Application;
  {$EndIf Nemesis}
end;

function npIsOwnerWindow(aOwner       : TComponent;
                         aHandle      : THandle) : Boolean;
  {* - ��������� �������� �� aOwner ������������ ���� � ���������� aHandle. }
var
 lControl : TWinControl;
begin
 Result := npIsOwnerWindow(aOwner, lControl, aHandle);
end;

function npIsOwnerWindow(aOwner       : TComponent;
                         var aControl : TWinControl;
                         aHandle      : THandle) : Boolean;
var
 lOwner : TComponent;
begin
 Result := False;
 aControl := FindControl(aHandle);
 if Assigned(aControl) then
 begin
  if aControl = aOwner then
   Result := True
  else
  begin
   lOwner := aControl.Owner;
   while Assigned(lOwner) do
   begin
    if (lOwner = aOwner) then
    begin
     Result := True;
     Break;
    end
    else
     lOwner := lOwner.Owner;
   end;
  end;
 end;
end;

function npIsParentWindow(aParent : TWinControl;
                          aHandle : THandle) : Boolean;
{* - ���������� �������� �� aParent ��������� aHandle. }
var
 lControl : TWinControl;
 lParent  : TWinControl;
begin
 Result := False;
 lControl := FindControl(aHandle);
 if Assigned(lControl) then
 begin
  lParent := lControl.Parent;
  while Assigned(lParent) and (lParent <> aParent) do
   lParent := lParent.Parent;
  Result := Assigned(lParent);
 end;
end;

function npFindWindow(aComponent : TComponent;
                      aHandle    : THandle) : TWinControl;
var
 lIndex, J : Integer;
 lControl  : TWinControl;
begin
 Result := nil;
 with aComponent do
  for lIndex := 0 to Pred(ComponentCount) do
  begin
   (* ������� � ���� ������� ���� *)
   if (Components[lIndex] is TWinControl) then
   begin
    lControl := TWinControl(Components[lIndex]);
    if lControl.HandleAllocated and (lControl.Handle = aHandle) then
     Result := lControl;
    (* ������ � �����������, ������� �� �� ����� *)
    if not Assigned(Result) then
     for J := 0 to Pred(lControl.ControlCount) do
     begin
      if (lControl.Controls[J] is TWinControl) and
          TWinControl(lControl.Controls[J]).HandleAllocated and
         (TWinControl(lControl.Controls[J]).Handle = aHandle) then
       Result := TWinControl(lControl.Controls[J])
      else
       Result := npFindWindow(lControl.Controls[J], aHandle);
      if Assigned(Result) then
       Break;
     end;
   end;
   (* ������ � ����� ������� *)
   if not Assigned(Result) and (Components[lIndex].ComponentCount > 0) then
    Result := npFindWindow(Components[lIndex], aHandle);
   (* ���� �������, ������� *)
   if Assigned(Result) then
    Break;
  end;
end;

end.
