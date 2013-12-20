unit nsPostingsTreeSingle;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "View$For F1 and Monitorings"
// �����: ����� �.�.
// ������: "w:/garant6x/implementation/Garant/GbaNemesis/View/Search/nsPostingsTreeSingle.pas"
// �����: 31.10.2011 17:46
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> F1 Common For Shell And Monitoring::Search::View$For F1 and Monitorings::Search$Presentation for F1 and Monitorings::TnsPostingsTreeSingle
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include w:\garant6x\implementation\Garant\nsDefine.inc}

interface

{$If defined(Monitorings) AND not defined(Admin)}
uses
  nsPostingsLine
  ;
{$IfEnd} //Monitorings AND not Admin

{$If defined(Monitorings) AND not defined(Admin)}
type
 TnsPostingsTreeSingle = {final} class(TnsPostingsTree)
 public
 // singleton factory method
   class function Instance: TnsPostingsTreeSingle;
    {- ���������� ��������� ����������. }
 end;//TnsPostingsTreeSingle
{$IfEnd} //Monitorings AND not Admin

implementation

{$If defined(Monitorings) AND not defined(Admin)}
uses
  l3Base {a}
  ;
{$IfEnd} //Monitorings AND not Admin


// start class TnsPostingsTreeSingle

var g_TnsPostingsTreeSingle : TnsPostingsTreeSingle = nil;

procedure TnsPostingsTreeSingleFree;
begin
 l3Free(g_TnsPostingsTreeSingle);
end;

class function TnsPostingsTreeSingle.Instance: TnsPostingsTreeSingle;
begin
 if (g_TnsPostingsTreeSingle = nil) then
 begin
  l3System.AddExitProc(TnsPostingsTreeSingleFree);
  g_TnsPostingsTreeSingle := Create;
 end;
 Result := g_TnsPostingsTreeSingle;
end;


end.