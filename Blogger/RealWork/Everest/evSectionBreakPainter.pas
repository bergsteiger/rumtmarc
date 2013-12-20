unit evSectionBreakPainter;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// ���������� "Everest"
// �����: ����� �.�.
// ������: "w:/common/components/gui/Garant/Everest/evSectionBreakPainter.pas"
// �����: 03.10.2000 18:59
// ������ Delphi ���������� (.pas)
// Generated from UML model, root element: <<SimpleClass::Class>> Shared Delphi::Everest::LeafPara Painters::TevSectionBreakPainter
//
// ���������� ����������� ��������� ��� ������� ������.
//
//
// ��� ����� ����������� ��� ��� "������-������".
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// ! ��������� ������������ � ������. ������� ������ - ������. !

{$Include ..\Everest\evDefine.inc}

interface

uses
  evPageBreakPainter,
  l3StringIDEx,
  l3Interfaces,
  l3Units
  ;

type
 TevSectionBreakPainter = class(TevPageBreakPainter)
  {* ���������� ����������� ��������� ��� ������� ������. }
 protected
 // overridden protected methods
   function GetString: Il3CString; override;
     {* ������� ������� ��� �����������. }
   procedure NewPage; override;
     {* ���������� ����� ������� ����� ��������. }
   procedure DrawLine(const A: Tl3Point;
    const B: Tl3Point); override;
     {* ���������� ����� �������. }
 end;//TevSectionBreakPainter

implementation

uses
  nevInterfaces,
  k2Tags,
  nevTools,
  l3String,
  evdTypes,
  evSectionPara,
  l3Defaults,
  l3MessageID
  ;

var
   { ������������ ������ Local }
  str_nevPortaitSection : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'nevPortaitSection'; rValue : ' ������ �������. (%s, �������) ');
   { ' ������ �������. (%s, �������) ' }
  str_nevLandscapeSection : Tl3StringIDEx = (rS : -1; rLocalized : false; rKey : 'nevLandscapeSection'; rValue : ' ������ �������. (%s, ���������) ');
   { ' ������ �������. (%s, ���������) ' }

// start class TevSectionBreakPainter

function TevSectionBreakPainter.GetString: Il3CString;
//#UC START# *480C9DC4032F_480CA641014D_var*
var
 l_PageOrientation : Tl3PageOrientation;
 l_Paras           : InevTag;
//#UC END# *480C9DC4032F_480CA641014D_var*
begin
//#UC START# *480C9DC4032F_480CA641014D_impl*
 l_Paras := ParaX.Attr[k2_tiParas];
 with l_Paras do
  if IsValid then 
  begin
   if (IntA[k2_tiOrientation] = Ord(ev_poLandscape)) then
    l_PageOrientation := l3_poLandscape
   else
    l_PageOrientation := l3_poPortrait;
  end 
  else
   l_PageOrientation := l3_poPortrait;
 if (l_PageOrientation = l3_poPortrait) then
  Result := l3Fmt(str_nevPortaitSection.AsCStr,
                   [evGetPaperSizeName(l_Paras)])
 else
  Result := l3Fmt(str_nevLandscapeSection.AsCStr,
                   [evGetPaperSizeName(l_Paras)]);
//#UC END# *480C9DC4032F_480CA641014D_impl*
end;//TevSectionBreakPainter.GetString

procedure TevSectionBreakPainter.NewPage;
//#UC START# *480C9DDD01B0_480CA641014D_var*
//#UC END# *480C9DDD01B0_480CA641014D_var*
begin
//#UC START# *480C9DDD01B0_480CA641014D_impl*
 inherited;
 Area.rCanvas.SectionExtent := evSectionExtent(ParaX);
//#UC END# *480C9DDD01B0_480CA641014D_impl*
end;//TevSectionBreakPainter.NewPage

procedure TevSectionBreakPainter.DrawLine(const A: Tl3Point;
  const B: Tl3Point);
//#UC START# *480C9DEF0099_480CA641014D_var*
var
 l_Delta  : Tl3Point;  
//#UC END# *480C9DEF0099_480CA641014D_var*
begin
//#UC START# *480C9DEF0099_480CA641014D_impl*
 l_Delta := l3PointY(10);
 with Area.rCanvas do
 begin
  Line(A.Sub(l_Delta), B.Sub(l_Delta));
  Line(A.Add(l_Delta), B.Add(l_Delta));
 end;//with Area.rCanvas
//#UC END# *480C9DEF0099_480CA641014D_impl*
end;//TevSectionBreakPainter.DrawLine

initialization
// ������������� str_nevPortaitSection
 str_nevPortaitSection.Init;
// ������������� str_nevLandscapeSection
 str_nevLandscapeSection.Init;

end.