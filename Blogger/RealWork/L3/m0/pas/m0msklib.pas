unit    m0MSKLib;

(*
//
// module:  m0msklib.pas
// author:  Mickael P. Golovin
//
// Copyright (c) 1997-2000 by Archivarius Team, free for non commercial use.
//
// $Id: m0msklib.pas,v 1.3 2013/04/08 14:50:45 lulin Exp $
//
*)

{$I m0Define.inc}

interface

uses
  Windows,
  Messages,
  SysUtils,
  Consts,
  Classes,

  m0Const,
  m0AddTyp
  ;

const
  Cm0MSKLibAusterisk    = '*';
  Cm0MSKLibQuestionMark = '?';


function m0MSKPosition(APatern: PAnsiChar): LongInt;

function m0MSKCompare(APatern: PAnsiChar; AText: PAnsiChar): LongBool;


implementation


 { -- unit.public -- }

function m0MSKPosition(APatern: PAnsiChar): LongInt;
begin

  Result := 0;

  while (APatern^ <> #000) do
  begin

    case APatern^ of

      Cm0MSKLibQuestionMark,
      Cm0MSKLibAusterisk:
      begin

        Exit;

      end;

    end;

    Inc(Result);
    Inc(LongInt(APatern));

  end;

  Result := Cm0MaxLongInt;

end;

function m0MSKCompare(APatern: PAnsiChar; AText: PAnsiChar): LongBool;

  function __Compare(APatern: PAnsiChar; AText: PAnsiChar): LongBool;
  var
    LResult: LongBool;
  begin

    Result := False;

    while ((APatern^ = Cm0MSKLibQuestionMark) or (APatern^ = Cm0MSKLibAusterisk)) do
    begin

      if (APatern^ = Cm0MSKLibQuestionMark) then
      begin

        if (AText^ = #000) then
        begin

          Exit;

        end;

        Inc(LongInt(AText));

      end;

      Inc(LongInt(APatern));

    end;

    if (APatern^ <> #000) then
    begin

      repeat

        LResult := m0MSKCompare(APatern, AText);

        if (AText^ = #000) then
        begin

          Exit;

        end;

        Inc(LongInt(AText));

      until (LResult = True);

    end;

    Result := True;

  end;

begin

  Result := False;

  while (APatern^ <> #000) do
  begin

    if (AText^ = #000) then
    begin

      if (APatern^ = Cm0MSKLibAusterisk) then
      begin

        Inc(LongInt(APatern));

        if (APatern^ = #000) then
        begin

          Result := True;

        end
        else
        begin

          if (APatern^ = Cm0MSKLibAusterisk) then
          begin

            Continue;

          end;

        end;

      end;

      Exit;

    end;

    case APatern^ of

      Cm0MSKLibQuestionMark:
      begin
      end;

      Cm0MSKLibAusterisk:
      begin

        Result := __Compare(APatern, AText);
        Exit;

      end;

      else
      begin

        if (APatern^ <> AText^) then
        begin

          Exit;

        end;

      end;

    end;

    Inc(LongInt(AText));
    Inc(LongInt(APatern));

  end;

  if (AText^ = #000) then
  begin

    Result := True;

  end;

end;


end.
