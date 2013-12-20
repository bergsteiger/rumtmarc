unit Readers;

{ $Id: Readers.pas,v 1.11 2003/04/19 12:30:36 law Exp $ }

// $Log: Readers.pas,v $
// Revision 1.11  2003/04/19 12:30:36  law
// - new file: ddDefine.inc.
//
// Revision 1.10  2002/01/05 11:00:42  law
// - some cosmetics.
//
// Revision 1.9  2001/10/23 09:03:38  law
// - new const: evEverestReaders & evEverestWriters.
//
// Revision 1.8  2001/05/24 13:36:10  law
// no message
//
// Revision 1.7  2000/12/15 15:29:53  law
// - вставлены директивы Log и Id.
//

{$I ddDefine.inc }

interface

uses
  ddRTFReader,
  ddDocReader,
  ddHTML_r
  ;

type
  TRTFReader = class(TddRTFReader)
    published
      property Filer;
        {-}
      property Generator;
        {-}
  end;{TRTFReader}

  TevRTFReader = TRTFReader;

{$IfDef l3ConsoleApp}
{$Else  l3ConsoleApp}
{$IfNDef evRunTime}
procedure Register;
{$EndIf  evRunTime}
{$EndIf l3ConsoleApp}

implementation

{$IfDef l3ConsoleApp}
{$Else  l3ConsoleApp}
uses
  Classes,
  
  evConst
  ;

{$IfNDef evRunTime}
procedure Register;
begin
 RegisterComponents(evReaders, [TRTFReader, TddDocReader, TddHTMLReader]);
end;
{$EndIf  evRunTime}
{$EndIf l3ConsoleApp}

end.