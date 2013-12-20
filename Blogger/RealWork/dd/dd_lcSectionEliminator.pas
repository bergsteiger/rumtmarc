unit dd_lcSectionEliminator;
{ ”дал€ет псевдономера страниц из текста судебных постановлений }
// $Id: dd_lcSectionEliminator.pas,v 1.8 2013/04/11 16:46:29 lulin Exp $

// $Log: dd_lcSectionEliminator.pas,v $
// Revision 1.8  2013/04/11 16:46:29  lulin
// - отлаживаем под XE3.
//
// Revision 1.7  2013/03/28 10:21:09  narry
// ”дал€ет не только разрывы разделов, но и разрывы страниц
//


interface

uses
 k2Interfaces, ddTypes, DT_Types, l3Types, k2Types,
 k2TagFilter;

type
 Tdd_lcSectionEliminator = class(Tk2TagFilter)
 private
  f_OnError: TddErrorEvent;
  f_SectionCount: Integer;
 protected
  procedure DoStartChild(TypeID: Long); override;
    // internal methods
  function NeedTranslateChildToNext: Boolean; override;
 public
  procedure CloseStructure(NeedUndo: Boolean); override;
  property OnError: TddErrorEvent read f_OnError write f_OnError;
 end;

implementation

uses
 l3Base, l3String, k2Tags,
 SectionBreak_Const, Document_Const, SysUtils, PageBreak_Const;

procedure Tdd_lcSectionEliminator.CloseStructure(NeedUndo: Boolean);
var
 l_Msg: AnsiString;
begin
 if CurrentType.InheritsFrom(k2_idDocument) and (f_sectionCount > 0) then
 begin
  l_Msg:= Format('”далено разрывов разделов - %d. ¬озможно, остались номера страниц.', [f_SectionCount]);
  if Assigned(f_OnError) then
   f_OnError(l_Msg)
  else
   l3System.Msg2Log(l_Msg);
 end;
 inherited;
end;

procedure Tdd_lcSectionEliminator.DoStartChild(TypeID: Long);
begin
 inherited;
 if CurrentType.InheritsFrom(k2_idDocument) then
  f_SectionCount:= 0;
end;


function Tdd_lcSectionEliminator.NeedTranslateChildToNext: Boolean;
begin
 with CurrentType do
  Result := not InheritsFrom([k2_idSectionBreak, k2_idPageBreak]);
 if not Result then
  Inc(f_SectionCount);
end;

end.
