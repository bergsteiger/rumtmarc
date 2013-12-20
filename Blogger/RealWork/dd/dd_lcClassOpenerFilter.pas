unit dd_lcClassOpenerFilter;

interface
Uses
 ddHeaderFilter, k2Interfaces;

type
 Tdd_lcClassOpenerFilter = class(TddHeaderFilter)
 private
 protected
  procedure AfterFlushHeader(aHeaderRoot: Ik2Tag); override;
 end;

implementation

uses
  Document_Const, k2Tags, Stage_Const,
  dt_Types, DT_UserConst, l3Date;

procedure Tdd_lcClassOpenerFilter.AfterFlushHeader(aHeaderRoot: Ik2Tag);
begin
  Generator.StartTag(k2_tiStages);
  try
   Generator.StartChild(k2_idStage);
   try
    Generator.AddIntegerAtom(k2_tiType, Ord(stClass));
    Generator.StartTag(k2_tiUser);
    try
     Generator.AddIntegerAtom(k2_tiHandle, usServerService);
    finally
     Generator.Finish;
    end; // try..finally
    Generator.AddIntegerAtom(k2_tiStart, CurrentDate);
   finally
    Generator.Finish;
   end; // try..finally
  finally
   Generator.Finish;
  end; // try..finally
end;

end.
