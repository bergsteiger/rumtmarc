unit m3Types;

{ Библиотека "M3"         }
{ Автор: Люлин А.В. ©     }
{ Модуль: m3Types -       }
{ Начат: 21.11.2002 19:29 }
{ $Id: m3Types.pas,v 1.2 2009/03/19 16:28:30 lulin Exp $ }

// $Log: m3Types.pas,v $
// Revision 1.2  2009/03/19 16:28:30  lulin
// [$139443095].
//
// Revision 1.1  2004/09/02 08:09:48  law
// - cleanup.
//
// Revision 1.1  2002/11/21 17:15:55  law
// - new unit: m3OldBaseTools.
//

{$I m3Define.inc}

interface

uses
  l3Types
  ;

type
  Tm3FilesProcessedProc = procedure (Sender: TObject; aCurrentID: Long);
  Tm3FilesProcessed = procedure (aCurrentID: Long) of object;
  Tm3FilesProcessedExProc = procedure (Sender     : TObject;
                                       aCurrentID : Long;
                                       aMaxID     : Long;
                                       aTime      : TDateTime);
  Tm3FilesProcessedEx = procedure (aCurrentID : Long;
                                   aMaxID     : Long;
                                   aTime      : TDateTime) of object;
implementation

end.

